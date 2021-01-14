package com.kh.wefer.project.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ProjectDetail {
//	PROJECT_DATAIL_ID         NOT NULL VARCHAR2(2000) 
//	PROJECT_DATAIL_TITLE      NOT NULL VARCHAR2(2000) 
//	PROJECT_DATAIL_CONTENT    NOT NULL VARCHAR2(2000) 
//	PROJECT_DATAIL_WRITE_DATE NOT NULL DATE           
//	PROJECT_DATAIL_FILE                VARCHAR2(2000) 
//	ID                        NOT NULL VARCHAR2(2000) 
//	PROJECT_ID                NOT NULL VARCHAR2(2000) 
//	PROJECT_SUB_ID            NOT NULL VARCHAR2(2000) 
	
	private String project_datail_id;
	private String project_datail_title;
	private String project_datail_content;
	private Date project_datail_write_date;
	private String project_datail_file;
	private String id;
	private String project_id;
	private String project_sub_id;
	
	public ProjectDetail() {}
	
	public ProjectDetail(String project_datail_id, String project_datail_title, String project_datail_content,
			Date project_datail_write_date, String project_datail_file, String id, String project_id,
			String project_sub_id) {
		super();
		this.project_datail_id = project_datail_id;
		this.project_datail_title = project_datail_title;
		this.project_datail_content = project_datail_content;
		this.project_datail_write_date = project_datail_write_date;
		this.project_datail_file = project_datail_file;
		this.id = id;
		this.project_id = project_id;
		this.project_sub_id = project_sub_id;
	}
	public String getProject_datail_id() {
		return project_datail_id;
	}
	public void setProject_datail_id(String project_datail_id) {
		this.project_datail_id = project_datail_id;
	}
	public String getProject_datail_title() {
		return project_datail_title;
	}
	public void setProject_datail_title(String project_datail_title) {
		this.project_datail_title = project_datail_title;
	}
	public String getProject_datail_content() {
		return project_datail_content;
	}
	public void setProject_datail_content(String project_datail_content) {
		this.project_datail_content = project_datail_content;
	}
	public Date getProject_datail_write_date() {
		return project_datail_write_date;
	}
	public void setProject_datail_write_date(Date project_datail_write_date) {
		this.project_datail_write_date = project_datail_write_date;
	}
	public String getProject_datail_file() {
		return project_datail_file;
	}
	public void setProject_datail_file(String project_datail_file) {
		this.project_datail_file = project_datail_file;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getProject_sub_id() {
		return project_sub_id;
	}
	public void setProject_sub_id(String project_sub_id) {
		this.project_sub_id = project_sub_id;
	}
	@Override
	public String toString() {
		return "ProjectDetail [project_datail_id=" + project_datail_id + ", project_datail_title="
				+ project_datail_title + ", project_datail_content=" + project_datail_content
				+ ", project_datail_write_date=" + project_datail_write_date + ", project_datail_file="
				+ project_datail_file + ", id=" + id + ", project_id=" + project_id + ", project_sub_id="
				+ project_sub_id + "]";
	}
	
	
}
