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

	public List<Attendance> attendancedetail(String id) {	
		return sqlSession.selectList("Attendance.attendancedetail",id);
	}

	public int insertattend(String id) {	
		System.out.println("dao인서트 옴"+id);
		return sqlSession.insert("Attendance.insertattend", id);
	}

	public List<Attendance> selectattend(String id) {
	
		return sqlSession.selectList("Attendance.selectattend", id);
	}

	public String selectattendafter(String id) {
		return sqlSession.selectOne("Attendance.selectattendafter", id);
	}


	public int updateattend(String id, String date5,String date2) {
		Map<String, Object> parameters = new HashMap<String, Object>();
		 DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 
		  try { 
			  java.util.Date gohome = format.parse(date2); 
			  java.util.Date time = format.parse(date5);
			  parameters.put("id", id);
			  parameters.put("date5", gohome);
			  parameters.put("date2", time);
			  System.out.println("dao : id="+id+" date5="+date5+" date2="+date2);
			  
			  System.out.println("gohome: "+gohome); System.out.println("time: "+time); }
		  catch (ParseException e) { // TODO Auto-generated catch block
		  		System.out.println("ㄴㄴ"); e.printStackTrace(); }
		  			
		
		return sqlSession.update("Attendance.updateattend",parameters);
	}

	public List<Attendance> selectattend2(String id) {
		System.out.println("dao 두번째 셀랙"+id);
		return sqlSession.selectList("Attendance.selectattend2", id);
	}

	public List<Attendance> workaverage(String id) {
		return sqlSession.selectList("Attendance.workaverage", id);
	}

	public List<Attendance> attendToDay(String id) {
		return sqlSession.selectList("Attendance.attendToDay", id);
	}
	
	
	
}
