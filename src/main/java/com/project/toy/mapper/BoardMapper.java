package com.project.toy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.toy.vo.BoardDTO;

@Mapper
public interface BoardMapper {
    // 게시판 전체 출력
    List<BoardDTO> board_list() throws Exception;

    // 게시글 작성
    void insertBoard(@Param("dto") BoardDTO dto) throws Exception;

    // 게시글 디테일
    BoardDTO selectBoard(@Param("num") int num) throws Exception;

    // 게시글 삭제
    void deleteBoard(@Param("num") int num) throws Exception;

    // 게시글 수정
    void updateBoard(@Param("dto") BoardDTO dto) throws Exception;
}
