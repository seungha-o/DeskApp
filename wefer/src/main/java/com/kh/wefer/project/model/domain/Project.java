package com.kh.wefer.project.model.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kh.wefer.member.model.domain.Member;

import lombok.Data;
@Data
@Component
public class Project {
//	PROJECT_ID       NOT NULL VARCHAR2(2000) 
//	PROJECT_TITLE    NOT NULL VARCHAR2(2000) 
//	PROJECT_STD_DATE NOT NULL DATE           
//	PROJECT_END_DATE NOT NULL DATE           
//	PROJECT_STATUS   NOT NULL VARCHAR2(2000) 
	private String project_id;
	private String project_title;
	private Date project_std_date;
	private Date project_end_date;
	private String project_status;
	private String project_color;
	private String id;
	private List<Member> members;
	private List<ProjectMember> projectMembers;

	
	

}
