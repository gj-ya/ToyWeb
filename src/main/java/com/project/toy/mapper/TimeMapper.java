package com.project.toy.mapper;

import org.apache.ibatis.annotations.Select;

// 테스트용 인터페이스
public interface TimeMapper {
    
    @Select("select systimestamp from sys.dual;")
    String getTime();

    String getTime2();
}
