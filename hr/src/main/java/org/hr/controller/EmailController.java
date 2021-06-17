package org.hr.controller;

import org.hr.service.EmailService;
import org.hr.util.VerCodeGenerateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
public class EmailController {
    @Autowired
    RedisTemplate<String,String> redisTemplate;

    @Autowired
    EmailService emailService;

    @PostMapping("/email")
    public Object sendEmail(String emailAddress) {
        Map<String, Object> map = new HashMap<>();
        String emailReg = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
        Pattern pattern = Pattern.compile(emailReg);
        Matcher matcher = pattern.matcher(emailAddress);
        if(matcher.find()){
            String code = VerCodeGenerateUtil.generateVerCode();
            //向redis里存入数据和设置缓存时间
            redisTemplate.opsForValue().set(emailAddress, code, 60 * 5, TimeUnit.SECONDS);
            try {
                emailService.sendEmailVerCode(emailAddress, code);
                map.put("state", 200);
                map.put("notes", "邮件发送成功");
            } catch (Exception e) {
                map.put("state", 201);
                map.put("notes", "邮件发送失败");
            }
        }else{
            map.put("state",202);
            map.put("notes","邮箱格式错误");
        }
        return map;
    }
}
