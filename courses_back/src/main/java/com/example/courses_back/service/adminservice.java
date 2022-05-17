package com.example.courses_back.service;

import com.example.courses_back.controller.adminDTO.admindto;
import com.example.courses_back.entity.*;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Service;

import java.util.List;


public interface adminservice {
    List<student> stu_find_all();
    //学生
    int insert_stu(student stu);
    int del_stu(String sno);
    int update_stu(student stu);
    List<student> stu_find_page(int pagetop,int pagesize,String name);
    int stu_num(String name);
    List<String> stu_sno();

    //老师
    int insert_tea(Teacher tea);
    int del_tea(String tno);
    int update_tea(Teacher tea);
    int tea_num(String name);
    List<Teacher> tea_find_page(int pagetop, int pagesize, String name);
    List<String> tea_tno();

    //课程
    int insert_course(Course cou);
    int del_course(String cou_id);
    int update_course(Course cou);
    int course_num(String name);
    List<Course> cou_find_page(int pagetop, int pagesize, String name);
    List<String> cou_id();
    List<Admin> admin(admindto admin);
 //开课表
    List<tea_class> classes(int pagetop,int pagesize);
    int updatestugrade(stu_grade stu_grade);
}
