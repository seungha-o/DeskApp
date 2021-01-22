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
	public List<Payment> paymentList(Payment my_name) {
		return pmDao.paymentList(my_name);
	}
	@Override
	public List<Payment> paymentReciveList(Payment my_name) {
		return pmDao.paymentReciveList(my_name);
	}

	@Override
	public Payment paymentDetail(String payment_id) {
		return pmDao.paymentDetail(payment_id);
	}
	@Override
	public int confirmCnt(Payment confirm_id) {
		return pmDao.confirmCnt(confirm_id);
	}
}
