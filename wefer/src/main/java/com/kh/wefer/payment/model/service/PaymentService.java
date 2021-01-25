package com.kh.wefer.payment.model.service;

import java.util.List;

import com.kh.wefer.payment.model.domain.Payment;

public interface PaymentService {
	public List<Payment> paymentList(Payment my_name);
	public List<Payment> paymentReciveList(Payment  mymy_name);
	public Payment paymentDetail(String payment_id);
	public int confirmCnt(Payment confirm_id) ;
	public int status(Payment confirm_id) ;
}
