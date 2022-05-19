package com.example.courses_back.entity;

import lombok.Data;

@Data //学生成绩信息
public class stu_grade {
    private String stuid;
    private String stuname;
    private String couname;
    private String couid;
    private String term;
    private String teaid;
    private String usuper;
    private String tesper;
    private String finper;
    private String jidian;
}
