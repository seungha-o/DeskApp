package com.kh.wefer.project.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectSub;

@Repository("pDao")
public class ProjectDao {

	@Autowired
	private SqlSession sqlSession;

	
	public int projectInsert(Project p) {
		 return sqlSession.insert("Project.projectInsert", p);
		 
		
		
	}

	public int projectSubInsert(ProjectSub ps) {
		return sqlSession.insert("Project.projectSubInsert", ps);
//		 return sqlSession.insert("Project.projectSubInsert", p);		
	}

	public int projectSubMember(ProjectMember pm) {
		return sqlSession.insert("Project.projectSubMember", pm);		
	}

	public List<Project> projectList(ProjectMember pm) {
		return sqlSession.selectList("Project.projectList", pm);	
		
	}

	public List<ProjectMember> projectSubList(String project_id) {
		return sqlSession.selectList("Project.projectSubList", project_id);	
	}


}
