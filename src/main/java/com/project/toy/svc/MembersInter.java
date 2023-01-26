package com.project.toy.svc;


import com.project.toy.vo.Members;

public interface MembersInter {
    
    Members login(String id, String pw) throws Exception;
}
