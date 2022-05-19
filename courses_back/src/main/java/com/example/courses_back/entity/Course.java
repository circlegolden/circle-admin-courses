package com.example.courses_back.entity;

import lombok.Data;

@Data //课程信息
public class Course {
    private String couid;
    private String name;
    private int xf;
    private int xs;
    private String coll;
}
