package com.kh.wefer.project.model.domain;

import java.sql.Date;

public class ProjectComment {
//	PROJECT_COMMENT_ID        NOT NULL VARCHAR2(2000) 
//	PROJECT_COMMENT_CONTENT   NOT NULL VARCHAR2(2000) 
//	PROJECT_COMMENT_WRITEDATE NOT NULL DATE           
//	ID                        NOT NULL VARCHAR2(2000) 
//	PROJECT_DATAIL_ID         NOT NULL VARCHAR2(2000) 
private String project_comment_id;
private String project_comment_content;
private Date project_comment_writedate;
private String project_datail_id;
private String id;

public ProjectComment() {
	// TODO Auto-generated constructor stub
}

public ProjectComment(String project_comment_id, String project_comment_content, Date project_comment_writedate,
		String project_datail_id, String id) {
	super();
	this.project_comment_id = project_comment_id;
	this.project_comment_content = project_comment_content;
	this.project_comment_writedate = project_comment_writedate;
	this.project_datail_id = project_datail_id;
	this.id = id;
}

public String getProject_comment_id() {
	return project_comment_id;
}

public void setProject_comment_id(String project_comment_id) {
	this.project_comment_id = project_comment_id;
}

public String getProject_comment_content() {
	return project_comment_content;
}

public void setProject_comment_content(String project_comment_content) {
	this.project_comment_content = project_comment_content;
}

public Date getProject_comment_writedate() {
	return project_comment_writedate;
}

public void setProject_comment_writedate(Date project_comment_writedate) {
	this.project_comment_writedate = project_comment_writedate;
}

public String getProject_datail_id() {
	return project_datail_id;
}

public void setProject_datail_id(String project_datail_id) {
	this.project_datail_id = project_datail_id;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

@Override
public String toString() {
	return "ProjectComment [project_comment_id=" + project_comment_id + ", project_comment_content="
			+ project_comment_content + ", project_comment_writedate=" + project_comment_writedate
			+ ", project_datail_id=" + project_datail_id + ", id=" + id + "]";
}
	
	
}
