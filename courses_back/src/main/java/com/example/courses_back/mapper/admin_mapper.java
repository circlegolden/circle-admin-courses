package com.example.courses_back.mapper;

import com.example.courses_back.controller.adminDTO.admindto;
import com.example.courses_back.entity.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface admin_mapper {

    List<student> stu_find_all();

    @Select("select * from admin_login where id=#{id} and pwd=#{pwd}")
    List<Admin> admin(admindto admin);

    //学生
    @Insert("insert into stu_person_data(sno,name,sex,birth,hometown,phone,coll) values(#{sno},#{name},#{sex},#{birth},#{hometown},#{phone},#{coll})")
    int insert_stu(student stu);

    @Delete("delete from stu_person_data where sno = #{sno} ")
    int del_stu(String sno);

    @Update("update stu_person_data set birth=#{birth}, coll=#{coll}, phone=#{phone} ,name=#{name}, hometown=#{hometown} where sno=#{sno}")
    int update_stu(student stu);

    List<student> stu_find_page(int pagetop, int pagesize, String name);

    @Select("select count(sno) from stu_person_data where name like concat('%',#{name},'%')")
    int stu_num(String name);

    @Select("select sno from stu_person_data")
    List<String> stu_sno();

    //老师
    @Insert("insert into tea_person_data(tno,name,sex,birth,title,coll) values(#{tno},#{name},#{sex},#{birth},#{title},#{coll})")
    int insert_tea(Teacher tea);

    @Delete("delete from tea_person_data where tno = #{tno} ")
    int del_tea(String tno);

    @Update("update tea_person_data set birth=#{birth}, coll=#{coll}, title=#{title} ,name=#{name} where tno=#{tno}")
    int update_tea(Teacher tea);

    @Select("select count(tno) from tea_person_data where name like concat('%',#{name},'%')")
    int tea_num(String name);

    List<Teacher> tea_find_page(int pagetop, int pagesize, String name);

    @Select("select tno from tea_person_data")
    List<String> tea_tno();

    @Insert("insert into courses_data(couid,name,xf,xs,coll) values (#{couid},#{name},#{xf},#{xs},#{coll})")
    int insert_course(Course cou);

    @Delete("delete from courses_data where couid=#{couid}")
    int del_course(String cou_id);

    @Update("update courses_data set xf=#{xf},xs=#{xs} where couid=#{couid}")
    int update_course(Course cou);

    @Select(" select count(couid) from courses_data where name like concat('%',#{name},'%')")
    int course_num(String name);

    List<Course> cou_find_page(int pagetop, int pagesize, String name);

    @Select("select couid from courses_data")
    List<String> cou_id();

    List<tea_class> classes(int pagetop, int pagesize);

    List<tea_class> classes_num();

    @Update("update admin_login set pwd=#{pwd} where id=#{id}")
    int updatepwd(Admin admin);

    @Select("SELECT DISTINCT term FROM choose_courses_data")
    List<String> term_list();

    //学生成绩表
    List<stu_grade> stugrade(String term);

    List<stu_grade> stugradepage(String term, int pagetop, int pagesize);

    int updatestugrade(stu_grade stu_grade);

    @Select("SELECT DISTINCT couid from choose_courses_data WHERE term= #{term}")
    List<String> couidlist(String term);

    @Select("SELECT c.teaid,count(stuid) as num ,t.name from choose_courses_data c" +
            " left JOIN tea_person_data t on c.teaid=t.tno  WHERE c.term=#{term} and c.couid=#{couid} GROUP BY c.teaid;")
    List<class_data> class_data(String term,String couid);

    @Select("SELECT c.teaid,avg(CONVERT(c.finper, UNSIGNED INTEGER)) as avggrade ,t.name from choose_courses_data c " +
            "left JOIN tea_person_data t on c.teaid=t.tno  WHERE c.term=#{term}" +
            " and c.couid=#{couid}and c.finper IS NOT null GROUP BY c.teaid")
    List<avggrade> avggradelist(String term,String couid);

    List<avgjidian> avgjidians(int pagetop,int pagesize);

    List<avgjidian> avgjidiantotal();

}
