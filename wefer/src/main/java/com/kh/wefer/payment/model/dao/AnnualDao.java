package com.kh.wefer.payment.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Annual;

@Repository("aDao")
public class AnnualDao {
	@Autowired
	private SqlSession sqlSession;

	public String seqAnnualPayment() {
		String seqAnnualPayment = sqlSession.selectOne("AnnualMapper.seqAnnualPayment");
		return seqAnnualPayment;
	}

	public int insertAnnual(Annual a) {
		return sqlSession.insert("AnnualMapper.annualInsert", a);
	}
	
}
