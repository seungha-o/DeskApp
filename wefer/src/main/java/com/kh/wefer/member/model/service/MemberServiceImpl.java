package com.kh.wefer.member.model.service;

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
	public int insertMember(Member m) {
		return mDao.insertMember(m);

	}

	@Override
	public Member login(Member m) {
		return mDao.login(m);

	}
	
}
