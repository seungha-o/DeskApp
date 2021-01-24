package com.kh.wefer.attendance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.attendance.model.dao.AttendanceDao;
import com.kh.wefer.attendance.model.domain.Attendance;

@Service("attendanceService")
public class AttendanceServiceImpl implements AttendanceService{
	@Autowired 
	private AttendanceDao attendanceDao;

	@Override
	public List<Attendance> attendanceDaylist() {
		return attendanceDao.attendanceDaylist();
	}

	@Override
	public List<Attendance> attendanceWeeklist() {
		return attendanceDao.attendanceWeeklist();
	}

	@Override
	public List<Attendance> searchattendancelist(String startdate, String enddate) {
		return attendanceDao.searchattendancelist(startdate,enddate);
	}

	@Override
	public List<Attendance> attendancedetail(String id) {
		return attendanceDao.attendancedetail(id);
	}

	@Override
	public int insertattend(String id) {
		return attendanceDao.insertattend(id);
	}

	@Override
	public List<Attendance> selectattend(String id) {
		return attendanceDao.selectattend(id);
	}

	@Override
	public String selectattendafter(String id) {
		return attendanceDao.selectattendafter(id);
	}

	@Override
	public int updateattend(String id, String date5,String date2) {
		return attendanceDao.updateattend(id,date5,date2);
	}

	@Override
	public List<Attendance> selectattend2(String id) {
		return attendanceDao.selectattend2(id);
	}

	@Override
	public List<Attendance> workaverage(String id) {
		return attendanceDao.workaverage(id);
	}

	@Override
	public List<Attendance> attendToDay(String id) {
		return attendanceDao.attendToDay(id);
	}


	
	
}
