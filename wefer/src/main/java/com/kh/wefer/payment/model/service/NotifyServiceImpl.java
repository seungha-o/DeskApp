package com.kh.wefer.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.NotifyDao;
import com.kh.wefer.payment.model.domain.Notify;

@Service
public class NotifyServiceImpl implements NotifyService{

	@Autowired
	NotifyDao ntDao;
	@Override
	public int insertNotify(Notify vo) {
		return ntDao.insertNotify(vo);
	}

}
