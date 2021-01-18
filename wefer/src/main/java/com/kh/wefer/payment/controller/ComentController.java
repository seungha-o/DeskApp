package com.kh.wefer.payment.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.wefer.payment.model.domain.Payment_rep;
import com.kh.wefer.payment.model.service.Payment_repService;

@Controller
@RequestMapping("/comment")
public class ComentController {
	@Autowired
	Payment_repService prService;
    
    
    @RequestMapping("/list") //댓글 리스트
    @ResponseBody
    private List<Payment_rep> mCommentServiceList(Payment_rep payment_id, Model model) throws Exception{
        return prService.commentList(payment_id);
    }
    
    @RequestMapping("/insert") //댓글 작성 
    @ResponseBody
    private int commentInsert(Payment_rep my_name, HttpSession session, HttpServletRequest request) throws Exception{
    	
    	my_name.setId((String) session.getAttribute("loginId"));
       System.out.println("aaaa: "+ my_name.getId());
       
        return prService.commentInsert(my_name);
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int commentUpdate(@RequestParam String payment_comment_number, @RequestParam String contents) throws Exception{
        
    	Payment_rep comment = new Payment_rep();
        comment.setPayment_comment_number(payment_comment_number);
        comment.setContents(contents);
        return prService.commentUpdate(comment);
    }
    
    @RequestMapping("/delete/{cno}") //댓글 삭제  
    @ResponseBody
    private int commentDelete(@PathVariable int cno) throws Exception{
        return prService.commentDelete(cno);
    }
}
