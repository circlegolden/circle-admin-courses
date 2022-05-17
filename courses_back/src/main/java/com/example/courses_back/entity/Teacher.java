package com.example.courses_back.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class Teacher {
    String tno;
    String name;
    String sex;
    String birth;
    String title;
    String coll;
//    @TableField(value = "指定数据库中的列名")
}
