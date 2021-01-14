
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
	public void updateSchedules(Schedules schd) {		
		schdDao.updateSchedules(schd);
	}
	@Override
	public void deleteSchedules(String scid) {
		schdDao.deleteSchedules(scid);
	}
	@Override
	public List<Schedules> schedulesList() {
		return schdDao.schedulesList();
	}
	@Override
	public List<Schedules> schedulesstList(String type) {
		return schdDao.schedulesstList(type);
	}
	@Override
	public List<Schedules> schedulesdeptList(String type) {
		return schdDao.schedulesdeptList(type);
	}
	

}
