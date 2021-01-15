package com.kh.wefer.attendance.model.dao;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.attendance.model.domain.Attendance;

@Repository("attendanceDao")
public class AttendanceDao {
	@Autowired
	private SqlSession sqlSession;

	public List<Attendance> attendanceDaylist() {
		
		return sqlSession.selectList("Attendance.attendanceDaylist");
	}

	public List<Attendance> attendanceWeeklist() {
		
		return sqlSession.selectList("Attendance.attendanceWeeklist");
	}

	public List<Attendance> searchattendancelist(String startdate, String enddate) {
		Map<String, Object> parameters = new HashMap<String, Object>();
		Calendar cal = Calendar.getInstance();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date = null;
		try {
			date = df.parse(enddate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		cal.setTime(date);
		cal.add(Calendar.DATE,1);
		enddate = df.format(cal.getTime());
		parameters.put("startdate", startdate);
		parameters.put("enddate", enddate);
		System.out.println("dao : startdate="+startdate+" enddate="+enddate);
		return sqlSession.selectList("Attendance.searchattendancelist",parameters);
	}
	
	
	
}
