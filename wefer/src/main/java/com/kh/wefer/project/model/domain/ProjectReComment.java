package com.kh.wefer.project.model.domain;

import org.springframework.stereotype.Component;

@Component
public class ProjectReComment {
//	PROJECT_RECOMMENT_ID      NOT NULL VARCHAR2(2000) 
//	PROJECT_RECOMMENT_CONTENT          VARCHAR2(2000) 
//	PROJECT_RECOMMENT_DATE             DATE           
//	PROJECT_COMMENT_ID        NOT NULL VARCHAR2(2000) 
//	ID                        NOT NULL VARCHAR2(2000) 

private String project_recomment_id;
private String project_recomment_content;
private String project_recomment_date;
private String project_comment_id;
private String id;

public ProjectReComment() {
	// TODO Auto-generated constructor stub
}

public ProjectReComment(String project_recomment_id, String project_recomment_content, String project_recomment_date,
		String project_comment_id, String id) {
	super();
	this.project_recomment_id = project_recomment_id;
	this.project_recomment_content = project_recomment_content;
	this.project_recomment_date = project_recomment_date;
	this.project_comment_id = project_comment_id;
	this.id = id;
}

public String getProject_recomment_id() {
	return project_recomment_id;
}

public void setProject_recomment_id(String project_recomment_id) {
	this.project_recomment_id = project_recomment_id;
}

public String getProject_recomment_content() {
	return project_recomment_content;
}

public void setProject_recomment_content(String project_recomment_content) {
	this.project_recomment_content = project_recomment_content;
}

public String getProject_recomment_date() {
	return project_recomment_date;
}

public void setProject_recomment_date(String project_recomment_date) {
	this.project_recomment_date = project_recomment_date;
}

public String getProject_comment_id() {
	return project_comment_id;
}

public void setProject_comment_id(String project_comment_id) {
	this.project_comment_id = project_comment_id;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

@Override
public String toString() {
	return "ProjectReComment [project_recomment_id=" + project_recomment_id + ", project_recomment_content="
			+ project_recomment_content + ", project_recomment_date=" + project_recomment_date + ", project_comment_id="
			+ project_comment_id + ", id=" + id + "]";
}


}
