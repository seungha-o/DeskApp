
package com.kh.wefer.schedules.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Schedules implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;
	private String schedules_id;
	private String schedules_status;
	private String schedules_std_date;
	private String schedules_end_date;
	private String schedules_name;
	private String schedules_content;
	private String schedules_color;
	private String id;
	private String dept_no;
	public String getSchedules_id() {
		return schedules_id;
	}
	public void setSchedules_id(String schedules_id) {
		this.schedules_id = schedules_id;
	}
	public String getSchedules_status() {
		return schedules_status;
	}
	public void setSchedules_status(String schedules_status) {
		this.schedules_status = schedules_status;
	}
	public String getSchedules_std_date() {
		return schedules_std_date;
	}
	public void setSchedules_std_date(String schedules_std_date) {
		this.schedules_std_date = schedules_std_date;
	}
	public String getSchedules_end_date() {
		return schedules_end_date;
	}
	public void setSchedules_end_date(String schedules_end_date) {
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	
}
