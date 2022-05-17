package com.example.courses_back.controller;

import ch.qos.logback.classic.spi.STEUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.courses_back.controller.adminDTO.admindto;
import com.example.courses_back.entity.*;
import com.example.courses_back.mapper.admin_mapper;
import com.example.courses_back.service.admin_teaservice;
import com.example.courses_back.service.adminservice;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.example.courses_back.service.adminservice;
@RestController
@RequestMapping("/admin")
@CrossOrigin
public class admin_controller {
    @Autowired
    private admin_mapper admin_mapper;

    @Autowired
    adminservice adminservice;

    @PostMapping ("/login")
    public Map<String,Object> login(@RequestBody admindto admin){
        Map<String,Object> map=new HashMap<>();
        if(adminservice.admin(admin)==null){
            map.put("code",0);
            map.put("msg","请不要输入空密码或者空账号!");
            return map;
        }else if (adminservice.admin(admin).size()==0){
            map.put("code",1);
            map.put("msg","请检查密码或者账号是否正确!");
            return map;
        }else {
            map.put("code",2);
            map.put("msg","登录成功!");
            map.put("name",admin.getId());
            return map;
        }
    }

    @PostMapping ("/insertstu")
    public boolean insertstu(@RequestBody student stu){
        return adminservice.insert_stu(stu)==1;
    }

    @DeleteMapping("/delstu/{sno}")
    public boolean delstu(@PathVariable String sno){
        return admin_mapper.del_stu(sno) == 1;
    }

    @PutMapping("/updatestu")
    public boolean updatestu(@RequestBody student stu){
        return admin_mapper.update_stu(stu) == 1;
    }
//    @GetMapping("/update_grade")
//    public Integer update_grade(@RequestParam String stu_id,@RequestParam String term,@RequestParam String tea_id,@RequestParam String cou_id){
//
//    }
    @GetMapping("/page")
    public Map<String,Object> findpage(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String name){
       int pagetop=(pageNum-1)*pageSize;
       List<student> data=admin_mapper.stu_find_page(pagetop,pageSize,name);
       //返回数据的size
       int total=admin_mapper.stu_num(name);
        Map<String ,Object> map=new HashMap<>();
        map.put("data",data);
        map.put("total",total);
       return map;
    }

    @PostMapping("/inserttea")
    public boolean inserttea(@RequestBody Teacher tea){
        return adminservice.insert_tea(tea)==1;
    }

    @DeleteMapping("/deltea/{tno}")
    public boolean deltea(@PathVariable String tno){
        return adminservice.del_tea(tno)==1;
    }

    @PutMapping("/updatetea")
    public boolean updatetea(@RequestBody Teacher tea){
        return adminservice.update_tea(tea)==1;
    }

    @GetMapping("/pagetea")
    public Map<String ,Object> findteapage(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String name ){
        int pagetop=(pageNum-1)*pageSize;
        List<Teacher> data=adminservice.tea_find_page(pagetop,pageSize,name);
        //返回数据的size
        int total=adminservice.tea_num(name);
        Map<String ,Object> map=new HashMap<>();
        map.put("data",data);
        map.put("total",total);
        return map;
    }

    @PostMapping("/insertcourse")
    public boolean insertcourse(@RequestBody Course cou){
        return adminservice.insert_course(cou)==1;
    }

    @DeleteMapping("/delcourse/{cou_id}")
    public boolean delcourse(@PathVariable String cou_id){
        return adminservice.del_course(cou_id)==1;
    }

    @PutMapping("/updatecourse")
    public boolean updatecourse(@RequestBody Course cou){
        return adminservice.update_course(cou)==1;
    }

    @GetMapping("/pagecourse")
    public Map<String ,Object> findcoursepage(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String name ){
        int pagetop=(pageNum-1)*pageSize;
        List<Course> data=adminservice.cou_find_page(pagetop,pageSize,name);
        //返回数据的size
        int total=adminservice.course_num(name);
        Map<String ,Object> map=new HashMap<>();
        map.put("data",data);
        map.put("total",total);
        return map;
    }

    @GetMapping("/pageclass")
    public Map<String,Object> pageclass(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        int pagetop=(pageNum-1)*pageSize;
        List<tea_class> data=adminservice.classes(pagetop,pageSize);
        //返回数据的size
        int total=admin_mapper.classes_num().size();
        Map<String ,Object> map=new HashMap<>();
        map.put("data",data);
        map.put("total",total);
        return map;
    }

    @PutMapping("/updatepwd")
    public boolean updatepwd(@RequestBody Admin admin){
        return admin_mapper.updatepwd(admin)==1;
    }

    @GetMapping("/termlist")
    public Map<Integer,String> termlist(){
        Map<Integer,String> map=new HashMap<>();
        for(int i=0;i<admin_mapper.term_list().size();i++){
            map.put(i,admin_mapper.term_list().get(i));
        }
        return map;
    }

//GetMappering不能使用@RequestBody
    @GetMapping("/pagestugrade")
    public Map<String, Object> stugrade(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String term){
        int pagetop=(pageNum-1)*pageSize;
        List<stu_grade> data=admin_mapper.stugradepage(term,pagetop,pageSize);
        //返回数据的size
        int total=admin_mapper.stugrade(term).size();
        Map<String ,Object> map=new HashMap<>();
        map.put("data",data);
        map.put("total",total);
        return map;
    }

    @PutMapping("/updatestugrade")
    public boolean updategrade(@RequestBody stu_grade stu_grade){
        return adminservice.updatestugrade(stu_grade)==1;
    }

}
