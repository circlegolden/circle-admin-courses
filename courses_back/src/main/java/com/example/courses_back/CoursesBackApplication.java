package com.example.courses_back;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.courses_back.mapper")
public class CoursesBackApplication {

    public static void main(String[] args) {
        SpringApplication.run(CoursesBackApplication.class, args);
    }

}
