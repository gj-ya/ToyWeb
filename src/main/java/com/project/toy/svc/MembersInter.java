package com.project.toy.svc;

import com.project.toy.vo.Members;

public interface MembersInter {
    
    Members login(String id, String pw) throws Exception;

    int id_check(String id) throws Exception;

    void sign_up(Members dto) throws Exception;
}
