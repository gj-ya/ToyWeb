package com.project.toy.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.toy.mapper.MembersMapper;
import com.project.toy.vo.Members;

@Service
public class ManageSVC implements ManageInter{
    @Autowired
    private MembersMapper membersMapper;
    
    @Override
    public List<Members> members_list() throws Exception{

        return membersMapper.members_list();
    }
}
