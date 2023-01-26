package com.project.toy.vo;

import org.springframework.stereotype.Component;

@Component
public class Members {
    int member_num;
    String id, pw, email, phone;

    public int getMember_num() {
        return member_num;
    }
    public void setMember_num(int member_num) {
        this.member_num = member_num;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPw() {
        return pw;
    }
    public void setPw(String pw) {
        this.pw = pw;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }

    
}
