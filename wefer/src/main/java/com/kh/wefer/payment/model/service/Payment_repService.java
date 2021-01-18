package com.kh.wefer.payment.model.service;


import java.util.List;

import com.kh.wefer.payment.model.domain.Payment_rep;

public interface Payment_repService {
 
    // 댓글 목록
    public List<Payment_rep> commentList(Payment_rep payment_id) throws Exception;
 
    // 댓글 작성
    public int commentInsert(Payment_rep my_name) throws Exception;
    
    // 댓글 수정
    public int commentUpdate(Payment_rep comment) throws Exception;
 
    // 댓글 삭제
    public int commentDelete(int cno) throws Exception;}
