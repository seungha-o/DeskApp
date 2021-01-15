package com.kh.wefer.attendance.model.domain;

import java.util.Date;
import java.util.List;
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
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private java.sql.Date attend_work_time;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private java.sql.Date attend_gotowork;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private java.sql.Date attend_gotohome;
	private String id;
	private Member member;
	
	
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


	public java.sql.Date getAttend_work_time() {
		return attend_work_time;
	}


	public void setAttend_work_time(java.sql.Date attend_work_time) {
		this.attend_work_time = attend_work_time;
	}


	public java.sql.Date getAttend_gotowork() {
		return attend_gotowork;
	}


	public void setAttend_gotowork(java.sql.Date attend_gotowork) {
		this.attend_gotowork = attend_gotowork;
	}


	public java.sql.Date getAttend_gotohome() {
		return attend_gotohome;
	}


	public void setAttend_gotohome(java.sql.Date attend_gotohome) {
		this.attend_gotohome = attend_gotohome;
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


	public Attendance(String attend_id, java.sql.Date attend_work_date, java.sql.Date attend_work_time,
			java.sql.Date attend_gotowork, java.sql.Date attend_gotohome, String id, Member member) {
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