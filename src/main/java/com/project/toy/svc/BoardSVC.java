package com.project.toy.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.toy.mapper.BoardMapper;
import com.project.toy.vo.BoardDTO;


@Service
public class BoardSVC implements BoardInter{

    @Autowired
    private BoardMapper boardMapper;

    @Override
    public int list_count () throws Exception{
        System.out.println("리스트카운트 서비스 도착");
        return boardMapper.list_count();
    }
    @Override
    public List<BoardDTO> board_list(int list_count, int page) throws Exception{
        System.out.println("보드리스트 서비스 도착");
        // int page=1;
		// int limit=8;
		
		// int listCount= model.getListCount();
		// articlelist = (ArrayList<Tourist_SpotBean>) model.selectAllSpot(page);

   		// int maxPage = (int)((double)list_count/limit+0.95); 
   		// int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    // int endPage = startPage+10-1;
   	    
   		// if (endPage> maxPage) endPage = maxPage;

   		// PageInfo pageInfo = new PageInfo();
   		// pageInfo.setEndPage(endPage);
   		// pageInfo.setListCount(list_count);
		// pageInfo.setMaxPage(maxPage);
		// pageInfo.setPage(page);
		// pageInfo.setStartPage(startPage);
        // System.out.println("pp : "+endPage +" "+ list_count+" "+maxPage+" "+page+" "+startPage);
        int paraPage = page - 1;

        return boardMapper.board_list(paraPage);
    }

    // DB에서 리턴 받을 값이 없으면 void로 하자
    @Override
    public void insertBoard(BoardDTO dto) throws Exception{
        System.out.println("인설트보드 서비스 도착");

        boardMapper.insertBoard(dto);
    }

    @Override
    public BoardDTO selectBoard(int num) throws Exception{
        System.out.println("셀렉&픽스 보드 서비스 도착");
        return boardMapper.selectBoard(num);
    }

    @Override
    public void deleteBoard(int num) throws Exception{
        System.out.println("삭제보드 서비스 도착");
        boardMapper.deleteBoard(num);
    }

    @Override
    public void updateBoard(BoardDTO dto) throws Exception{
        System.out.println("업뎃보드 서비스 도착");
        boardMapper.updateBoard(dto);
    }
}
