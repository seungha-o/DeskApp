package com.kh.wefer.project.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wefer.project.model.domain.Project;

@Repository("pDao")
public class ProjectDao {

	@Autowired
	private SqlSession sqlSession;
	public List<Project> selectList() {
		return sqlSession.selectList("Project.selectList");
	}
	
	public int projectInsert(Project p) {
		return sqlSession.insert("Project.projectInsert", p);
		
		
	}

}
