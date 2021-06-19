package org.hr.model;

import java.io.Serializable;

public class Performance implements Serializable {
    private Integer id;
    private String username;
    private Integer total_time;
    private Integer month;
    private Integer day;
    private Integer year;

    @Override
    public String toString() {
        return "Performance{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", total_time=" + total_time +
                ", month='" + month + '\'' +
                ", day='" + day + '\'' +
                ", year='" + year + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getTotal_time() {
        return total_time;
    }

    public void setTotal_time(Integer total_time) {
        this.total_time = total_time;
    }
    public void setMonth(Integer month) {
        this.month = month;
    }

    public void setDay(Integer day) {
        this.day = day;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMonth() {
        return month;
    }

    public Integer getDay() {
        return day;
    }

    public Integer getYear() {
        return year;
    }
}
