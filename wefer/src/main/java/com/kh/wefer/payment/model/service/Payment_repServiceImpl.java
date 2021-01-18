package com.kh.wefer.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.Payment_repDao;
import com.kh.wefer.payment.model.domain.Payment_rep;

@Service("prService")
public class Payment_repServiceImpl implements Payment_repService {
	@Autowired
	private Payment_repDao prDao;
	
	@Override
	public List<Payment_rep> commentList(Payment_rep payment_id) throws Exception {
		return prDao.commentList(payment_id);
	}
	@Override
	public int commentInsert(Payment_rep my_name) throws Exception {
		return prDao.commentInsert(my_name);
	}
	@Override
	public int commentUpdate(Payment_rep comment) throws Exception {
		return prDao.commentUpdate(comment);
	}
	@Override
	public int commentDelete(int cno) throws Exception {
		return prDao.commentDelete(cno);
	}
	
}
