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
	
	
}
