package com.project.toy.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.toy.vo.Members;

@Mapper
public interface MembersMapper {
    
    // 로그인 매퍼
    Members login(@Param("map") Map<String, Object> map) throws Exception;

    // 전체 멤버 정보 매퍼
    List<Members> members_list() throws Exception;
}
