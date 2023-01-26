package com.project.toy.svc;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.toy.mapper.MembersMapper;
import com.project.toy.vo.Members;

@Service
public class MembersSVC implements MembersInter{
    @Autowired
    private MembersMapper membersMapper;

    @Override
    public Members login(String id, String pw) throws Exception{
        
        // 매퍼 xml에서 키, 밸류로 사용하기 위해 HashMap을 사용
        Map <String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("pw", pw);

        return membersMapper.login(map);
    }
}
