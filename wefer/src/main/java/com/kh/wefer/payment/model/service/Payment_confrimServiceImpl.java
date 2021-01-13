package com.kh.wefer.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.AnnualDao;
import com.kh.wefer.payment.model.dao.PaymentDao;
import com.kh.wefer.payment.model.dao.Payment_confrimDao;
import com.kh.wefer.payment.model.domain.Payment_confirm;

@Service("pcService")
public class Payment_confrimServiceImpl implements Payment_confrimService {
	@Autowired
	private Payment_confrimDao pcDao;

	@Override
	public int insertPaymentConfirm(Payment_confirm Payment_id) {
		String seq = pcDao.seqPaymentConfrim();
		System.out.println("paymentConfrim seq:" + seq);
		Payment_id.setPayment_id(seq);
		int result = pcDao.insertPaymentConfirm(Payment_id);
		if (result == 1) {
			return 1;
		}
		return 0;
	}
}
