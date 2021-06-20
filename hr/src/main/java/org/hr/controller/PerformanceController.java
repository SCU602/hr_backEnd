package org.hr.controller;

import org.hr.model.Performance;
import org.hr.model.PerformanceFlow;
import org.hr.model.User;
import org.hr.service.PerformanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
public class PerformanceController {
    @Autowired
    PerformanceService performanceService;

    @PostMapping("/user/signIn")
    public Object signIn() {
        Map<String, Object> map = new HashMap<>();
        PerformanceFlow performanceFlow = new PerformanceFlow();
        //获取用户名
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        PerformanceFlow tmp = performanceService.getTodaySign(user.getUsername());
        if (tmp == null) {
            performanceFlow.setUsername(user.getUsername());
            performanceFlow.setBtime(new Date());
            performanceService.signIn(performanceFlow);
            map.put("state", 200);
            map.put("notes", "签到成功");
        } else {
            map.put("state", 201);
            map.put("notes", "今天已签到");
        }
        return map;
    }

    @PostMapping("/user/signUp")
    public Object signUp() {
        Map<String, Object> map = new HashMap<>();
        //获取用户名
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        PerformanceFlow performanceFlow = performanceService.getTodaySign(user.getUsername());
        Date eTime = new Date();

        performanceFlow.setUsername(user.getUsername());
        performanceFlow.setEtime(eTime);
        performanceFlow.setDaily_time((int) ((performanceFlow.getEtime().getTime() - performanceFlow.getBtime().getTime()) / (1000 * 60 * 60 * 24)+1));
        performanceService.signUp(performanceFlow);

        //签退后更新performance表，新建一条记录
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(eTime);
        Performance performance = new Performance();
        performance.setUsername(user.getUsername());
        performance.setDay(calendar.get(Calendar.DAY_OF_MONTH));
        performance.setMonth(calendar.get(Calendar.MONTH)+1);
        performance.setYear(calendar.get(Calendar.YEAR));
        performance.setTotal_time(performanceFlow.getDaily_time());
        performanceService.addSign(performance);
        map.put("state", 200);
        map.put("notes", "签退成功");
        return map;
    }

    @GetMapping("/admin/getAllSigns")
    public Object getUsersAllSigns() {
        Map<String, Object> map = new HashMap<>();
        List<PerformanceFlow> list = performanceService.getUsersAllSigns();
        if (list != null) {
            map.put("state", 200);
            map.put("data", list);
            map.put("notes", "获取所有人记录成功");
        } else {
            map.put("state", 201);
            map.put("data", list);
            map.put("notes", "获取所有人记录失败或不存在签到记录");
        }
        return map;
    }

    @GetMapping("/user/getAllSigns")
    public Object getUserAllSigns() {
        Map<String, Object> map = new HashMap<>();
        //获取用户名
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<PerformanceFlow> list = performanceService.getUserAllSigns(user.getUsername());
        if (list != null) {
            map.put("state", 200);
            map.put("data", list);
            map.put("notes", "获取个人所有记录成功");
        } else {
            map.put("state", 201);
            map.put("data", list);
            map.put("notes", "获取个人所有记录失败或不存在签到记录");
        }
        return map;
    }

    @Scheduled(cron = "0  0  0  *  *  ?")
    public void updatePerformanceFlow(){
        performanceService.updatePerformanceFlowStateAndType();
        performanceService.updateState();
    }
}
