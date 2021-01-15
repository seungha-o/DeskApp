package com.kh.wefer.project.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;


import lombok.Data;
@Data
@Component
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


	
	
}
