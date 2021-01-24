package com.kh.wefer.attendance.model.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.kh.wefer.member.model.domain.Dept;
import com.kh.wefer.member.model.domain.Member;

@Component
public class Attendance {
	private String attend_id;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private java.sql.Date attend_work_date;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "HH:mm:ss", timezone = "Asia/Seoul")
	@DateTimeFormat(pattern = "HH:mm:ss")
	private java.sql.Timestamp attend_work_time;
	
	
	private String attend_gotowork;
	private String attend_gotohome;
	
	private String id;
	private Member member;
	private String worktime;
	
	public Attendance() {
		
	}


	public String getAttend_id() {
		return attend_id;
	}


	public void setAttend_id(String attend_id) {
		this.attend_id = attend_id;
	}


	public java.sql.Date getAttend_work_date() {
		return attend_work_date;
	}


	public void setAttend_work_date(java.sql.Date attend_work_date) {
		this.attend_work_date = attend_work_date;
	}


	public java.sql.Timestamp getAttend_work_time() {
		return attend_work_time;
	}


	public void setAttend_work_time(java.sql.Timestamp attend_work_time) {
		this.attend_work_time = attend_work_time;
	}


	public String getAttend_gotowork() {
		return attend_gotowork;
	}


	public void setAttend_gotowork(Date attend_gotowork) {
//		String dt = String.valueOf(attend_gotowork);
//		System.out.println("날짜"+attend_gotowork);
//		System.out.println("날짜 넣은거"+dt);
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA);
//        String Resultstr = "";
        
    
//            Date date = format.parse(dt);
//            System.out.println("date" +date);
            SimpleDateFormat resultFormat = new SimpleDateFormat("HH:mm:ss");
            
            System.out.println(resultFormat.format(attend_gotowork));
            String time1 = resultFormat.format(attend_gotowork); 
           this.attend_gotowork =time1;
			
           
           
            
        
		
	}


	public String getAttend_gotohome() {
		return attend_gotohome;
	}


	public void setAttend_gotohome(Date attend_gotohome) {
		 SimpleDateFormat resultFormat = new SimpleDateFormat("HH:mm:ss");
         
         System.out.println(resultFormat.format(attend_gotohome));
         String time2 = resultFormat.format(attend_gotohome); 
		this.attend_gotohome =time2;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}

	

	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	@Override
	public String toString() {
		return "Attendance [attend_id=" + attend_id + ", attend_work_date=" + attend_work_date + ", attend_work_time="
				+ attend_work_time + ", attend_gotowork=" + attend_gotowork + ", attend_gotohome=" + attend_gotohome
				+ ", id=" + id + ", member=" + member + "]";
	}


	public Attendance(String attend_id, java.sql.Date attend_work_date, java.sql.Timestamp attend_work_time,
			String attend_gotowork, String attend_gotohome, String id, Member member) {
		super();
		this.attend_id = attend_id;
		this.attend_work_date = attend_work_date;
		this.attend_work_time = attend_work_time;
		this.attend_gotowork = attend_gotowork;
		this.attend_gotohome = attend_gotohome;
		this.id = id;
		this.member = member;
	}

	
	
}