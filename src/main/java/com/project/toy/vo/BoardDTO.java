package com.project.toy.vo;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

@Component
public class BoardDTO {
    int board_num, member_num;
    String title, contents, writer;
    
    public int getBoard_num() {
        return board_num;
    }
    public void setBoard_num(int board_num) {
        this.board_num = board_num;
    }
    public int getMember_num() {
        return member_num;
    }
    public void setMember_num(int member_num) {
        this.member_num = member_num;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContents() {
        return contents;
    }
    public void setContents(String contents) {
        this.contents = contents;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }
    public Timestamp getWrite_time() {
        return write_time;
    }
    public void setWrite_time(Timestamp write_time) {
        this.write_time = write_time;
    }
    Timestamp write_time;


}
