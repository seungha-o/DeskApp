package com.kh.wefer.attendance.model.service;

import java.util.List;

import com.kh.wefer.attendance.model.domain.Attendance;

public interface AttendanceService {

	List<Attendance> attendanceDaylist();

	List<Attendance> attendanceWeeklist();

	List<Attendance> searchattendancelist(String startdate, String enddate);

	List<Attendance> attendancedetail(String id);

	int insertattend(String id);

	List<Attendance> selectattend(String id);

	String selectattendafter(String id);

	int updateattend(String id, String date5,String date2);

	List<Attendance> selectattend2(String id);

	List<Attendance> workaverage(String id);

	List<Attendance> attendToDay(String id);



}
