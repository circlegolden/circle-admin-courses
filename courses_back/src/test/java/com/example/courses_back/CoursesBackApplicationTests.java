package com.example.courses_back;

import com.example.courses_back.entity.Teacher;
import com.example.courses_back.mapper.admin_teamapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class CoursesBackApplicationTests {

    @Autowired
    private admin_teamapper ad;
    @Test
    void contextLoads() {

        List<Teacher> teacher=ad.selectList(null);
        teacher.forEach(System.out::println);
    }

}
