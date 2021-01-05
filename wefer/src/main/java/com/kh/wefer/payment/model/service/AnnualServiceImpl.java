package com.kh.wefer.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.payment.model.dao.AnnualDao;
import com.kh.wefer.payment.model.domain.Annual;

@Service("aService")
public class AnnualServiceImpl implements AnnualService {
	@Autowired
	private AnnualDao aDao;
	@Override
	public int insertAnnual(Annual a) {
		return aDao.insertAnnual(a);
	}

}
