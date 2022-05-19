package com.example.courses_back.entity;

import lombok.Data;

@Data //做可视化时显示对应工号的班级人数
public class classdatamap {
    private int value;//同一个学期和课程号不同教师班级人数
    private String name; //教师姓名+工号
}
