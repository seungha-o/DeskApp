package com.kh.wefer.project.model.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kh.wefer.member.model.domain.Member;

import lombok.Data;
@Data
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
	private String project_datail_content;
	private Date project_datail_write_date;
	private String project_datail_file;
	private String id;
	private String project_id;
	private String project_sub_id;
	private String project_datail_status;
	private String name;
	private String profile;
	
	
	
	
	
	
}
