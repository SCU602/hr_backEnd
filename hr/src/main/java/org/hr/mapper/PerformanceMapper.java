package org.hr.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hr.model.Performance;
import org.hr.model.PerformanceFlow;
import org.hr.model.User;
import org.hr.modelOv.PerformanceOV;

import java.util.Date;
import java.util.List;

@Mapper
public interface PerformanceMapper {

    /**
     * 签到
     */
    void signIn(PerformanceFlow performanceFlow);

    /**
     * 签退
     */
    void signUp(PerformanceFlow performanceFlow);

    /**
     * 查看所有人签到记录
     */
    List<PerformanceFlow> getUsersAllSigns(PerformanceOV perform);

    /**
     * 普通用户查看个人所有签到记录
     */
    List<PerformanceFlow> getUserAllSigns(String username);

    /**
     * 辅助函数，普通用户查看个人当天签到记录
     */
    PerformanceFlow getTodaySign(String username);

    /**
     * 增加一条个人当月当日工作时长记录
     */
    void addSign(Performance performance);

    /**
     * 更新 正常签到但未签退的 记录
     */
    void updateStateAndType();

    /**
     * 更新 今日的签到记录为 非今日
     */
    void updateState();

    /**
     * 查询 用户本月工作时长
     */
    Integer getUserTotalTime(Performance performance);
}
