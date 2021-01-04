package com.kh.wefer.schedules.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

//SCHEDULES_ID       NOT NULL VARCHAR2(2000) 
//SCHEDULES_STAUS    NOT NULL VARCHAR2(2000) 
//SCHEDULES_STD_DATE NOT NULL DATE           
//SCHEDULES_END_DATE NOT NULL DATE           
//SCHEDULES_NAME     NOT NULL VARCHAR2(2000) 
//SCHEDULES_CONTENT  NOT NULL VARCHAR2(2000) 
//SCHEDULES_COLOR    NOT NULL VARCHAR2(2000) 
//ID                 NOT NULL VARCHAR2(2000) 
//DEPT_NO            NOT NULL VARCHAR2(2000) 

@Component
public class Schedules implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;
	private String schedules_id;
	private String schedules_staus;
	private Date schedules_std_date;
	private Date schedules_end_date;
	private String schedules_name;
	private String schedules_content;
	private String schedules_color;
	private String id;
	private String dept_no;
	
	public Schedules() {
	}

	@Override
	public String toString() {
		return "Schedules [schedules_id=" + schedules_id + ", schedules_staus=" + schedules_staus
				+ ", schedules_std_date=" + schedules_std_date + ", schedules_end_date=" + schedules_end_date
				+ ", schedules_name=" + schedules_name + ", schedules_content=" + schedules_content
				+ ", schedules_color=" + schedules_color + ", id=" + id + ", dept_no=" + dept_no + "]";
	}

	public Schedules(String schedules_id, String schedules_staus, Date schedules_std_date, Date schedules_end_date,
			String schedules_name, String schedules_content, String schedules_color, String id, String dept_no) {
		super();
		this.schedules_id = schedules_id;
		this.schedules_staus = schedules_staus;
		this.schedules_std_date = schedules_std_date;
		this.schedules_end_date = schedules_end_date;
		this.schedules_name = schedules_name;
		this.schedules_content = schedules_content;
		this.schedules_color = schedules_color;
		this.id = id;
		this.dept_no = dept_no;
	}

	public String getSchedules_id() {
		return schedules_id;
	}

	public void setSchedules_id(String schedules_id) {
		this.schedules_id = schedules_id;
	}

	public String getSchedules_staus() {
		return schedules_staus;
	}

	public void setSchedules_staus(String schedules_staus) {
		this.schedules_staus = schedules_staus;
	}

	public Date getSchedules_std_date() {
		return schedules_std_date;
	}

	public void setSchedules_std_date(Date schedules_std_date) {
		this.schedules_std_date = schedules_std_date;
	}

	public Date getSchedules_end_date() {
		return schedules_end_date;
	}

	public void setSchedules_end_date(Date schedules_end_date) {
		this.schedules_end_date = schedules_end_date;
	}

	public String getSchedules_name() {
		return schedules_name;
	}

	public void setSchedules_name(String schedules_name) {
		this.schedules_name = schedules_name;
	}

	public String getSchedules_content() {
		return schedules_content;
	}

	public void setSchedules_content(String schedules_content) {
		this.schedules_content = schedules_content;
	}

	public String getSchedules_color() {
		return schedules_color;
	}

	public void setSchedules_color(String schedules_color) {
		this.schedules_color = schedules_color;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDept_no() {
		return dept_no;
	}

	public void setDept_no(String dept_no) {
		this.dept_no = dept_no;
	}
	
	
	
	
}