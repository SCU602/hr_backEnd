package org.hr.modelOv;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PerformanceOV {
    private String username;
    private Integer current_index;
    private Integer page_size;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getCurrent_index() {
        return current_index;
    }

    public void setCurrent_index(Integer current_index) {
        this.current_index = current_index;
    }

    public Integer getPage_size() {
        return page_size;
    }

    public void setPage_size(Integer page_size) {
        this.page_size = page_size;
    }
}
