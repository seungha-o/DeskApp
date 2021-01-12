package com.kh.wefer.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.AnnualDao;
import com.kh.wefer.payment.model.dao.PaymentDao;
import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Payment;

@Service("aService")
public class AnnualServiceImpl implements AnnualService {
	@Autowired
	private AnnualDao aDao;
	@Autowired
	private PaymentDao pmDao;
	@Override
	public int insertAnnual(Annual a) {
		return aDao.insertAnnual(a);
	}
	@Override
	public int insertAnnualPayment(Annual a, Payment b) {
		String seq = aDao.seqAnnualPayment();
		System.out.println("seq: "+ seq);
		a.setAnnual_id(seq);
		b.setAnnual_id(seq);
		int resultA = aDao.insertAnnual(a);
		int resultB= pmDao.insertPayment(b);
		if(resultA==1&& resultB==1)
			return 1;
		else
			return 0;
	}

}
