package com.kh.wefer.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.member.model.dao.MemberDao;
import com.kh.wefer.member.model.domain.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;

	@Override
	public List<Member> memberList() {
		return mDao.memberList();
	}
	
	@Override
	public List<Member> memberAllList() {
		return mDao.memberAllList();
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);

	}

	@Override
	public Member login(Member m) {
		return mDao.login(m);

	}

	@Override
	public int delete(String id) {
		System.out.println(id);
		return mDao.delete(id);
	}

	@Override
	public List<Member> deptmemberlist(String dept_no) {
		return mDao.deptmemberlist(dept_no);
	}

	@Override
	public List<Member> searchmemberlist(String keyword) {
		return mDao.searchmemberlist(keyword);
	}
	
	
	//mypage?��?
	@Override
	public Member profileList(String id) {
		return mDao.profileList(id);
	}

	@Override
	public int updateProfile(Member m) {
		return mDao.updateProfile(m);
	}

	@Override
	public Member personerProfileList(Member m) {
		return mDao.personerProfileList(m);
	}
	@Override
	public List<Member> checkuserid(String id) {
		return mDao.checkuserid(id);
	}

	@Override
	public List<Member> pwCheck(Member m) {//pw üũ	
		return mDao.pwCheck(m);
	}

	@Override
	public void updatePw(Member m) {//pw ����
		mDao.updatePw(m);
		
	}

	@Override
	public String selectuserdept(String addrMember) {
		return mDao.selectuserdept(addrMember);
	}


	
}
