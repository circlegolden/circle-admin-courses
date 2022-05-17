package com.example.courses_back.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.courses_back.entity.Teacher;
import com.example.courses_back.mapper.admin_teamapper;
import org.springframework.stereotype.Service;

@Service
public class admin_teaservice extends ServiceImpl<admin_teamapper,Teacher> {
//    @Autowired
//    private admin_mapper admin_mapper;

//    public int save(student stu){
//        if(stu.getSno()!=null){
//           admin_mapper.insert_stu(stu);
//        }
//        return 0;
//    }
    public boolean saveTeacher(Teacher teacher){
        if (teacher.getTno()==null) {
            return save(teacher);//mybatis-plus提供的方法
        }else{
            return updateById(teacher);
        }
    }
}
