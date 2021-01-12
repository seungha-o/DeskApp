
package com.kh.wefer.schedules.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.schedules.model.dao.SchedulesDao;
import com.kh.wefer.schedules.model.domain.Schedules;

@Service("schdService")
public class SchedulesServiceImpl implements SchedulesService {

	@Autowired
	private SchedulesDao schdDao;

	@Override
	public int insertSchedules(Schedules schd) {
		return schdDao.insertSchedules(schd);
	}
	@Override
	public List<Schedules> schedulesList(String test1){
		return schdDao.schedulesList(test1);
	}
}
