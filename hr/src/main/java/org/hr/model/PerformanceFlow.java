package org.hr.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PerformanceFlow {
    private String id;
    private String username;
    @JsonFormat(pattern="yyyy-MM-dd hh:mm:ss",timezone = "GMT+8")
    private Date btime;
    @JsonFormat(pattern="yyyy-MM-dd hh:mm:ss",timezone = "GMT+8")
    private Date etime;
    private Integer daily_time;
    //type=1今天已签退；type=0未签退
    private Integer type;
    //state=1为今天，state=0不是今天
    private Integer state;

    @Override
    public String toString() {
        return "PerformanceFlow{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", btime=" + btime +
                ", etime=" + etime +
                ", daily_time=" + daily_time +
                ", type=" + type +
                ", state=" + state +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }

    public Date getEtime() {
        return etime;
    }

    public void setEtime(Date etime) {
        this.etime = etime;
    }

    public Integer getDaily_time() {
        return daily_time;
    }

    public void setDaily_time(Integer daily_time) {
        this.daily_time = daily_time;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
