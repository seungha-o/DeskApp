package com.kh.wefer.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Payment;

@Repository("pmDao")
public class PaymentDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Payment> paymentList(){
		return sqlSession.selectList("PaymentMapper.paymentList");
	}
	public int insertPayment(Payment b) {
		return sqlSession.insert("PaymentMapper.paymentInsert", b);
	}
}
