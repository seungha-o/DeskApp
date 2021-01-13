package com.kh.wefer.payment.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Payment_confirm;

@Repository("pcDao")
public class Payment_confrimDao {
	@Autowired
	private SqlSession sqlSession;
	
	public String seqPaymentConfrim() {
		String seqPaymentConfrim = sqlSession.selectOne("Payment_confirmMapper.seqPaymentConfrim");
		return seqPaymentConfrim;
	}

	public int insertPaymentConfirm(Payment_confirm Payment_id) {
		return sqlSession.insert("Payment_confirmMapper.selectMember", Payment_id);
	}
	
	
}
