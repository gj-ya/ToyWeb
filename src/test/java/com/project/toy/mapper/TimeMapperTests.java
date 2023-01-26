package com.project.toy.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.log4j.Log4j2;

@SpringBootTest
@Log4j2
public class TimeMapperTests {
    
    @Autowired(required = false)
    TimeMapper timeMapper;

    @Test
    public void test1(){
        log.info(timeMapper);

        log.info(timeMapper.getTime());
    }

    @Test
    public void test2(){
        log.info(timeMapper.getTime2());
    }
}
