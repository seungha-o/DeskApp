package com.kh.wefer.project.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Project {
//	PROJECT_ID       NOT NULL VARCHAR2(2000) 
//	PROJECT_TITLE    NOT NULL VARCHAR2(2000) 
//	PROJECT_STD_DATE NOT NULL DATE           
//	PROJECT_END_DATE NOT NULL DATE           
//	PROJECT_STATUS   NOT NULL VARCHAR2(2000) 
private String project_id;
private String project_title;
private String project_std_date;
private String project_end_date;
private String project_status;

public Project() {
	// TODO Auto-generated constructor stub
}


public Project(String project_id, String project_title, String project_std_date, String project_end_date,
		String project_status) {
	super();
	this.project_id = project_id;
	this.project_title = project_title;
	this.project_std_date = project_std_date;
	this.project_end_date = project_end_date;
	this.project_status = project_status;
}


public String getProject_id() {
	return project_id;
}
public void setProject_id(String project_id) {
	this.project_id = project_id;
}
public String getProject_title() {
	return project_title;
}
public void setProject_title(String project_title) {
	this.project_title = project_title;
}
public String getProject_std_date() {
	return project_std_date;
}
public void setProject_std_date(String project_std_date) {
	this.project_std_date = project_std_date;
}
public String getProject_end_date() {
	return project_end_date;
}
public void setProject_end_date(String project_end_date) {
	this.project_end_date = project_end_date;
}
public String getProject_status() {
	return project_status;
}
public void setProject_status(String project_status) {
	this.project_status = project_status;
}
@Override
public String toString() {
	return "Project [project_id=" + project_id + ", project_title=" + project_title + ", project_std_date="
			+ project_std_date + ", project_end_date=" + project_end_date + ", project_status=" + project_status + "]";
}






}
