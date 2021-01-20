package com.kh.wefer.member.model.service;

import java.util.List;

import com.kh.wefer.member.model.domain.AnnualSc;
import com.kh.wefer.payment.model.domain.Annual;

public interface AnnualScService {
	List<Annual>selectAnnualList(String id);
	void updatescheduleSc(AnnualSc vo);
}
