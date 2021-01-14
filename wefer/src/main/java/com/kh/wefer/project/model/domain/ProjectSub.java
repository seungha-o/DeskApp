package com.kh.wefer.project.model.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ProjectSub {
//	PROJECT_SUB_ID        NOT NULL VARCHAR2(2000) 
//	PROJECT_SUB_TITLE     NOT NULL VARCHAR2(2000) 
//	PROJECT_SUB_STD_DATE  NOT NULL DATE           
//	PROJECT_SUB_END_DATE  NOT NULL DATE           
//	PROJECT_SUB_IMPORTANT NOT NULL VARCHAR2(2000) 
//	PROJECT_SUB_STATUS    NOT NULL VARCHAR2(2000) 
//	PROJECT_SUB_GRADE     NOT NULL NUMBER         
//	ID                    NOT NULL VARCHAR2(2000) 
//	PROJECT_ID            NOT NULL VARCHAR2(2000) 
	private String project_sub_id;
	private String project_sub_title;
	private String project_sub_std_date;
	private String project_sub_end_date;
	private String project_sub_important;
	private String project_sub_status;
	private String project_id;
	
	public ProjectSub() {
		// TODO Auto-generated constructor stub
	}
	
	

	@Override
	public String toString() {
		return "ProjectSub [project_sub_id=" + project_sub_id + ", project_sub_title=" + project_sub_title
				+ ", project_sub_std_date=" + project_sub_std_date + ", project_sub_end_date=" + project_sub_end_date
				+ ", project_sub_important=" + project_sub_important + ", project_sub_status=" + project_sub_status
				+ ", project_id=" + project_id + "]";
	}



	public String getProject_sub_id() {
		return project_sub_id;
	}

	public void setProject_sub_id(String project_sub_id) {
		this.project_sub_id = project_sub_id;
	}

	public String getProject_sub_title() {
		return project_sub_title;
	}

	public void setProject_sub_title(String project_sub_title) {
		this.project_sub_title = project_sub_title;
	}

	public String getProject_sub_std_date() {
		return project_sub_std_date;
	}

	public void setProject_sub_std_date(String project_sub_std_date) {
		this.project_sub_std_date = project_sub_std_date;
	}

	public String getProject_sub_end_date() {
		return project_sub_end_date;
	}

	public void setProject_sub_end_date(String project_sub_end_date) {
		this.project_sub_end_date = project_sub_end_date;
	}

	public String getProject_sub_important() {
		return project_sub_important;
	}

	public void setProject_sub_important(String project_sub_important) {
		this.project_sub_important = project_sub_important;
	}

	public String getProject_sub_status() {
		return project_sub_status;
	}

	public void setProject_sub_status(String project_sub_status) {
		this.project_sub_status = project_sub_status;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public ProjectSub(String project_sub_id, String project_sub_title, String project_sub_std_date,
			String project_sub_end_date, String project_sub_important, String project_sub_status, String project_id) {
		super();
		this.project_sub_id = project_sub_id;
		this.project_sub_title = project_sub_title;
		this.project_sub_std_date = project_sub_std_date;
		this.project_sub_end_date = project_sub_end_date;
		this.project_sub_important = project_sub_important;
		this.project_sub_status = project_sub_status;
		this.project_id = project_id;
	}

	
	
	
	
	
	
	
	
	
	
}
