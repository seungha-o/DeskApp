package com.kh.wefer.payment.model.service;


import java.util.List;

import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Payment;

public interface AnnualService {
	int insertAnnual(Annual a);//휴가계글쓰기
	int insertAnnualPayment(Annual a, Payment b);//휴가계글쓰기
	void deleteAnnual(String hcid);
}
