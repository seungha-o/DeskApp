package com.kh.wefer.payment.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.payment.model.domain.Notify;


@Repository("ntDao")
public class NotifyDao {
	@Autowired
	private SqlSession sqlSession;
	
	public int insertNotify(Notify vo) {
		return sqlSession.insert("Notify.insertNotify", vo);
	}
}
