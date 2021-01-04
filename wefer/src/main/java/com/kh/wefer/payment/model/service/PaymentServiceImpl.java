package com.kh.wefer.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.PaymentDao;
import com.kh.wefer.payment.model.domain.Payment;

@Service("pmService")
public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDao pmDao;
	
	@Override
	public List<Payment> paymentList() {
		return pmDao.paymentList();
	}
}
