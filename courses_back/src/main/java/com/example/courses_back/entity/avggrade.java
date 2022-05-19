package com.example.courses_back.entity;

import lombok.Data;

@Data //同一学期同一课程不同老师班级学生平均分
public class avggrade {
    private String teaid;
    private String name;
    private double avggrade;
}
