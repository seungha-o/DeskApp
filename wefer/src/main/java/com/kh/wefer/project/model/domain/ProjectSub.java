package com.kh.wefer.project.model.domain;



import java.sql.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.kh.wefer.member.model.domain.Member;

import lombok.Data;
@Data
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
	private Date project_sub_std_date;
	private Date project_sub_end_date;
	private String project_sub_important;
	private String project_sub_status;
	private String project_id;
	private String project_color;
	
	private List<ProjectMember> projectMembers;
	private List<Project> project;
	private List<Member> Members;

	
}
