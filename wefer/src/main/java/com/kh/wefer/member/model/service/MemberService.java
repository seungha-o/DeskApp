package com.kh.wefer.member.model.service;

import java.util.List;

import com.kh.wefer.member.model.domain.Member;

public interface MemberService {
	List<Member> memberList(); // 전체 읽기
}
