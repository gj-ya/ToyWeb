package com.project.toy.svc;

import java.util.List;

import com.project.toy.vo.Members;

public interface ManageInter {
    
    List<Members> members_list() throws Exception;
}
