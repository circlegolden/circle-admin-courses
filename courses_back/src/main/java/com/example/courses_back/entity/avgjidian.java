package com.example.courses_back.entity;

import lombok.Data;

@Data  //学生学分完成以及均绩
public class avgjidian {
    private String name;
    private String sno;
    private String sumxf;
    private double avggrade;
}
