package com.project.toy.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.toy.svc.BoardInter;
import com.project.toy.svc.ManageInter;
import com.project.toy.svc.MembersInter;
import com.project.toy.vo.BoardDTO;
import com.project.toy.vo.Members;

@Controller
public class MainController {

    @Autowired
    private MembersInter membersInter;
    @Autowired
    private ManageInter manageInter;
    @Autowired
    private BoardInter boardInter;

    @RequestMapping("/home")
    public String home(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        
        return "members/login";
    }

    @RequestMapping("/sign_up")
    public String sign_up(){

        return "members/sign_up";
    }

    @RequestMapping("/sign_up_action")
    public String sign_up_action(@ModelAttribute Members dto) throws Exception{
        membersInter.sign_up(dto);

        return "redirect:/home";
    }

    @ResponseBody
    @RequestMapping("/id_check")
    public int id_check(@RequestBody HashMap<String, Object> id_txt) throws Exception{
        String id = String.valueOf(id_txt.get("id"));
        int result = membersInter.id_check(id);

        return result;
    }

    // 로그인 ID, PW 확인
    @RequestMapping("/login_confirm")
    public String login_confirm(HttpSession session, @ModelAttribute Members dto) throws Exception{
        // 로그인 페이지에서 작성한 값들을 ModelAttribute로 받아와서 DB에서 찾아 있으면 HttpSession로 세션에 세팅
        dto = membersInter.login(dto.getId(), dto.getPw());
        if(dto == null){
            System.out.println("로그인 실패");
            return "members/login_result";
        }else{
            System.out.println(dto.getId()+" 로그인 성공");
            session.setAttribute("member_num", dto.getMember_num());
            session.setAttribute("id", dto.getId());
            return "index";
        }
    }

    // 로그아웃 (session 삭제)
    @RequestMapping("/log_out")
    public String login_out(HttpSession session){
        System.out.println(session.getAttribute("id")+" 로그아웃");
        session.invalidate();
        return "index";
    }

    // 관리자 메인페이지로 이동
    @RequestMapping("/management")
    public String management_Home(Model model) throws Exception{
        List<Members> list = new ArrayList<>();
        list = manageInter.members_list();
        model.addAttribute("list", list);
        return "management/management_home";
    }
    
    // 게시판 첫 페이지로 이동
    @RequestMapping("/board_home")
    public String board_home(Model model) throws Exception{
        List<BoardDTO> list = new ArrayList<>();
        list = boardInter.board_list();

        // 모델.애드어트리뷰트로 view페이지에 값 넘겨줌
        model.addAttribute("list", list);
        return "board/board_home";
    }

    // 게시글 작성 페이지로 이동
    @RequestMapping("/board_write")
    public String board_writer(){  
        
        return "board/board_write";
    }

    // 게시글 작성완료 DB에 insert
    @RequestMapping("/board_writing")
    public String board_writing(HttpSession session, @ModelAttribute BoardDTO dto) throws Exception{
        
        // 세션에 저장되있는 멤버번호를 DTO에 넣기
        dto.setMember_num((int) session.getAttribute("member_num"));

        // 인설트 서비스 인터페이스에 작성자 멤버번호, 제목, 내용을 dto 값으로 보냄
        boardInter.insertBoard(dto);

        // 바로 컨트롤러의 다른 메소드로 이동하기 위해 "redirect:/매핑" 사용
        return "redirect:/board_home";
    }
    
    // 게시글 상세보기
    @RequestMapping("/board_detail")
    public String board_detail(Model model, @RequestParam int board_num) throws Exception{
        BoardDTO list = new BoardDTO();
        list = boardInter.selectBoard(board_num);
        model.addAttribute("list", list);
        return "board/board_detail";
    }

    // 게시글 삭제
    @RequestMapping("/board_delete")
    public String board_delete(@RequestParam int board_num) throws Exception{
        boardInter.deleteBoard(board_num);
        System.out.println(board_num+"번 글 삭제완료");
        return "redirect:/board_home";
    }

    // 수정 페이지로 이동 (디테일 매핑 그대로 사용)
    @RequestMapping("/board_fix")
    public String board_fix(Model model, @RequestParam int board_num) throws Exception{
        BoardDTO list = new BoardDTO();
        list = boardInter.selectBoard(board_num);
        model.addAttribute("list", list);
        return "board/board_fix";
    }

    // 수정 완료하고 디테일 페이지로 넘어가기
    @RequestMapping("/board_update")
    public String board_update(@ModelAttribute BoardDTO dto) throws Exception{
        boardInter.updateBoard(dto);

        // 컨트롤러의 다른 메소드로 바로 가면서 값을 전해주기
        return "redirect:/board_detail?board_num="+dto.getBoard_num();
    }
}
