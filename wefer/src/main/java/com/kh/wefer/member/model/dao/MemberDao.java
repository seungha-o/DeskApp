package com.kh.wefer.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.member.model.domain.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Member> memberList() {
		return sqlSession.selectList("Member.memberList");
	}
	public List<Member> projectMemberList() {
		return sqlSession.selectList("Member.projectMemberList");
	}
	


	public int insertMember(Member m) {
		return sqlSession.insert("Member.insertMember", m);
	}

	public Member  login(Member m) {
		if(sqlSession.selectOne("Member.login",m) == null || sqlSession.selectOne("Member.login",m).equals("")) {
			return null;
		}else {
			return sqlSession.selectOne("Member.login",m) ;
			
		}
	}
}
