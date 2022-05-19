package com.example.courses_back.entity;

import lombok.Data;

@Data //学生信息

public class student {
    String sno;
    String name;
    String sex;
    String birth;
    String hometown;
    String phone;
    String coll;
//    String fin_per;

    public student(String sno, String name, String sex, String birth, String hometown, String phone, String coll) {
        this.sno = sno;
        this.name = name;
        this.sex = sex;
        this.birth = birth;
        this.hometown = hometown;
        this.phone = phone;
        this.coll = coll;
//        this.fin_per=fin_per;
    }

    @Override
    public String toString() {
        return "student{" +
                "sno='" + sno + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", birth='" + birth + '\'' +
                ", hometown='" + hometown + '\'' +
                ", phone='" + phone + '\'' +
                ", coll='" + coll + '\'' +
//                ", fin_per='" + fin_per + '\'' +
                '}';
    }
}
