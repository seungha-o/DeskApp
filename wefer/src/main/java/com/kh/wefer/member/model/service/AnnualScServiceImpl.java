package com.kh.wefer.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.member.model.dao.AnnualScDao;
import com.kh.wefer.member.model.domain.AnnualSc;
import com.kh.wefer.payment.model.domain.Annual;

@Service("aScService")
public class AnnualScServiceImpl implements AnnualScService {

	
	@Autowired
	private AnnualScDao aScDao;
	@Override
	public List<AnnualSc> selectAnnualList(String id) {
		return aScDao.selectAnnualList(id);
	}
	@Override
	public void updatescheduleSc(AnnualSc vo) {
aScDao.updatescheduleSc(vo);		
	}
	public void insertscheduleSc(AnnualSc vo) {
		// TODO Auto-generated method stub
		aScDao.insertscheduleSc(vo);		
	}

}
