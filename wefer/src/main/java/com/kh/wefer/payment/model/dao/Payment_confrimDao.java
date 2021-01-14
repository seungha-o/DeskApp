package com.kh.wefer.payment.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Payment;

@Repository("pcDao")
public class Payment_confrimDao {
	@Autowired
	private SqlSession sqlSession;
	
	public int insertPaymentConfirm(Payment payment) {
		return sqlSession.insert("Payment_confirmMapper.selectMember", payment);
	}
}
