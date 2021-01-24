package com.kh.wefer.project.model.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kh.wefer.member.model.domain.Member;

import lombok.Data;
@Data
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
private String name;
private String profile;



}
