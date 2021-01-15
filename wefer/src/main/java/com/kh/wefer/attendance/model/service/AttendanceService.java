package com.kh.wefer.attendance.model.service;

import java.util.List;

import com.kh.wefer.attendance.model.domain.Attendance;

public interface AttendanceService {

	List<Attendance> attendanceDaylist();

	List<Attendance> attendanceWeeklist();

	List<Attendance> searchattendancelist(String startdate, String enddate);


}
