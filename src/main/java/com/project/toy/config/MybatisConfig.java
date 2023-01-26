package com.project.toy.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = {"com.project.toy.mapper"})
public class MybatisConfig {
    
}
