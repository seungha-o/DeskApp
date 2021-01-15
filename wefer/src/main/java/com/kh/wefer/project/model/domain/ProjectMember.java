package com.kh.wefer.project.model.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kh.wefer.member.model.domain.Member;
import com.oracle.webservices.internal.api.databinding.DatabindingMode;

import lombok.Data;

//CREATE TABLE project_member (
//	project_member_id	varchar2(2000)	NULL,
//    project_id varchar2(2000) NOT NULL,
//	project_sub_id	varchar2(2000)	NOT NULL,
//	ID	varchar2(2000)	NOT NULL,
//    foreign key(ID) references member(ID),
//    foreign key(project_sub_id) references project_sub(project_sub_id),
//    foreign key(project_id) references project(project_id)
//);
@Data
@Component
public class ProjectMember {
	private String project_member_id;
	private String project_id;
	private String project_sub_id;
	private String id;
	private int project_member_grade;
	
	private String project_title;
	private Date project_std_date;
	private Date project_end_date;
	private String project_status;
	private String project_color;

	private String project_sub_title;
	private String project_sub_std_date;
	private String project_sub_end_date;
	private String project_sub_important;
	private String project_sub_status;
	
	private Member member;
	private Project project;
	private ProjectSub projectSub;

	
	

	
}
