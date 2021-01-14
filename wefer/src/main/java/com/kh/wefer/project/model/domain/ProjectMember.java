package com.kh.wefer.project.model.domain;

import org.springframework.stereotype.Component;

//CREATE TABLE project_member (
//	project_member_id	varchar2(2000)	NULL,
//    project_id varchar2(2000) NOT NULL,
//	project_sub_id	varchar2(2000)	NOT NULL,
//	ID	varchar2(2000)	NOT NULL,
//    foreign key(ID) references member(ID),
//    foreign key(project_sub_id) references project_sub(project_sub_id),
//    foreign key(project_id) references project(project_id)
//);

@Component
public class ProjectMember {
	private String project_member_id;
	private String project_id;
	private String project_sub_id;
	private String id;
	private int project_member_grade;
	
	public ProjectMember() {
		// TODO Auto-generated constructor stub
	}
	
	

	public ProjectMember(String project_member_id, String project_id, String project_sub_id, String id,
			int project_member_grade) {
		super();
		this.project_member_id = project_member_id;
		this.project_id = project_id;
		this.project_sub_id = project_sub_id;
		this.id = id;
		this.project_member_grade = project_member_grade;
	}



	public String getProject_member_id() {
		return project_member_id;
	}

	public void setProject_member_id(String project_member_id) {
		this.project_member_id = project_member_id;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProject_member_grade() {
		return project_member_grade;
	}

	public void setProject_member_grade(int project_member_grade) {
		this.project_member_grade = project_member_grade;
	}

	@Override
	public String toString() {
		return "ProjectMember [project_member_id=" + project_member_id + ", project_id=" + project_id
				+ ", project_sub_id=" + project_sub_id + ", id=" + id + ", project_member_grade=" + project_member_grade
				+ "]";
	}
	
	
}
