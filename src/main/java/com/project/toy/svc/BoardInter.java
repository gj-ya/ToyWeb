package com.project.toy.svc;

import java.util.List;

import com.project.toy.vo.BoardDTO;

public interface BoardInter {

    int list_count () throws Exception;

    List<BoardDTO> board_list(int list_count, int page) throws Exception;
    
    // 리턴값 없어서 void
    void insertBoard(BoardDTO dto) throws Exception; 

    BoardDTO selectBoard(int num) throws Exception;

    void deleteBoard(int num) throws Exception;

    void updateBoard(BoardDTO dto) throws Exception;
}
