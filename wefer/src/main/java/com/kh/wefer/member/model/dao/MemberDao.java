package com.kh.wefer.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Member> memberAllList() {
		return sqlSession.selectList("Member.memberAllList");
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

	public int delete(String id) {
		System.out.println(id);
		return sqlSession.delete("Member.delete", id);
	}

	public List<Member> deptmemberlist(String dept_no) {
		return sqlSession.selectList("Member.deptmemberlist", dept_no);
	}
	public List<Member> searchmemberlist(String keyword) {
		return sqlSession.selectList("Member.searchmemberlist", keyword);
	}
	
	//======= Profile Page ========
	public Member profileList(String id) { //Profile페이지 연락처 정보 보여주기
		return sqlSession.selectOne("Member.ProfileList", id);
	}
	public int updateProfile(Member m) {
		return sqlSession.update("Member.updateProfile", m);
	}
	//주소록의 사원 연락처 보여주기
	public Member personerProfileList(Member m) {
		return sqlSession.selectOne("Member.personerProfileList", m);
	}
	// pw 변경
	public int updatePw(Member m) {	
		return sqlSession.update("Member.updatePw" ,m);	
	}
	// pw 체크
	public List<Member> pwCheck(Member m) { 
		return sqlSession.selectList("Member.pwCheck" ,m);
	}
	public List<Member> checkuserid(String id) {
		return sqlSession.selectList("Member.checkuserid",id);
	}
	public String selectuserdept(String addrMember) {
		
		return sqlSession.selectOne("Member.selectuserdept",addrMember);
	}
	public String gotoid(String email) {
		return sqlSession.selectOne("Member.gotoid",email);
	}
	public String gotopw(String email, String id) {
		Map<String, Object> parameters = new HashMap<String, Object>();
		
		parameters.put("email", email);
		parameters.put("id", id);
		
		return sqlSession.selectOne("Member.gotopw",parameters);
	}
	
}
