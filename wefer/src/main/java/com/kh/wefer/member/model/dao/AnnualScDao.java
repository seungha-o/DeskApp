package com.kh.wefer.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.member.model.domain.AnnualSc;
import com.kh.wefer.payment.model.domain.Annual;
@Repository("aScDao")
public class AnnualScDao {

	@Autowired
	private SqlSession sqlSession;
	public List<AnnualSc> selectAnnualList(String id){
	return sqlSession.selectList("AnnualMapper.selectAnnualList",id);
	}
	public void updatescheduleSc(AnnualSc vo) {
		sqlSession.update("AnnualMapper.updatescheduleSc",vo);
	}
	public void insertscheduleSc(AnnualSc vo) {
		sqlSession.insert("AnnualMapper.insertscheduleSc",vo);

	}
}
