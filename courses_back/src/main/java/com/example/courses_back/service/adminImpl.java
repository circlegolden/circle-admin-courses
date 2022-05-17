package com.example.courses_back.service;

import com.example.courses_back.controller.adminDTO.admindto;
import com.example.courses_back.entity.*;
import com.example.courses_back.mapper.admin_mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import com.example.courses_back.mapper.admin_mapper;
import org.springframework.stereotype.Service;

@Service
public class adminImpl implements adminservice{

    @Autowired
     admin_mapper admin_mapper;

    @Override
    public List<student> stu_find_all() {
        return null;
    }

    @Override
    public int insert_stu(student stu) {
        if (!stu_sno().contains(stu.getSno())){
            return admin_mapper.insert_stu(stu);
        }else{
            return -1;
        }
    }

    @Override
    public int del_stu(String sno) {
        return 0;
    }

    @Override
    public int update_stu(student stu) {
        return 0;
    }

    @Override
    public List<student> stu_find_page(int pagetop, int pagesize, String name) {
        return null;
    }

    @Override
    public int stu_num(String name) {
        return 0;
    }

    @Override
    public int insert_tea(Teacher tea) {
        if (!tea_tno().contains(tea.getTno())){
            return admin_mapper.insert_tea(tea);
        }else{
            return -1;
        }
    }

    @Override
    public int del_tea(String tno) {
        if(tno!=null){
            return admin_mapper.del_tea(tno);
        }else{
            return -1;
        }
    }

    @Override
    public int update_tea(Teacher tea) {
        return admin_mapper.update_tea(tea);
    }

    @Override
    public int tea_num(String name) {
       return admin_mapper.tea_num(name);
    }

    @Override
    public List<Teacher> tea_find_page(int pagetop, int pagesize, String name) {
        return admin_mapper.tea_find_page(pagetop,pagesize,name);
    }

    @Override
    public List<String> stu_sno() {
        return admin_mapper.stu_sno();
    }

    @Override
    public List<String> tea_tno() {
        return admin_mapper.tea_tno();
    }

    @Override
    public int insert_course(Course cou) {
        if (!cou_id().contains(cou.getCouid())&&cou.getName()!=null){
            return admin_mapper.insert_course(cou);
        }else{
            return -1;
        }
    }

    @Override
    public int del_course(String couid) {
        if(couid!=null){
            return admin_mapper.del_course(couid);
        }else{
            return -1;
        }
    }

    @Override
    public int update_course(Course cou) {
        return admin_mapper.update_course(cou);
    }

    @Override
    public int course_num(String name) {
        return admin_mapper.course_num(name);
    }

    @Override
    public List<Course> cou_find_page(int pagetop, int pagesize, String name) {
        return admin_mapper.cou_find_page(pagetop,pagesize,name);
    }

    @Override
    public List<String> cou_id() {
        return admin_mapper.cou_id();
    }

    @Override
    public List<Admin> admin(admindto admin) {
        if (admin.getId().length()!=0&&admin.getPwd().length()!=0){
            return admin_mapper.admin(admin);
        }else {
            return null;
        }
    }

    @Override
    public List<tea_class> classes(int pagetop, int pagesize) {
        return admin_mapper.classes(pagetop,pagesize);
    }

    @Override
    public int updatestugrade(stu_grade stu_grade) {
        int fingrade=Integer.parseInt(stu_grade.getFinper());
        double jigrade=0;
        if (fingrade>=90&&fingrade<=100){
            jigrade=4.0;
        }else if(fingrade>=85&&fingrade<=89){
            jigrade=3.7;
        }else if(fingrade>=82&&fingrade<=84){
            jigrade=3.3;
        }else if (fingrade>=78&&fingrade<=81){
            jigrade=3.0;
        }else if(fingrade>=75&&fingrade<=77){
            jigrade=2.7;
        }else if (fingrade>=72&&fingrade<=74){
            jigrade=2.3;
        }else if(fingrade>=68&&fingrade<=71){
            jigrade=2.0;
        }else if(fingrade>=64&&fingrade>=67){
            jigrade=1.7;
        }else if (fingrade>=60&&fingrade<=63){
            jigrade=1.0;
        }else if(fingrade<60){
            jigrade=0;
        }
        stu_grade.setJidian(String.valueOf(jigrade));
        return admin_mapper.updatestugrade(stu_grade);
    }
}
