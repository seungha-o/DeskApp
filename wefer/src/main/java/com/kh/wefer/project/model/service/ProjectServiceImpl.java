package com.kh.wefer.project.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.project.model.dao.ProjectDao;
import com.kh.wefer.project.model.domain.Project;

@Service("pService")
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	private ProjectDao pDao;

	@Override
	public List<Project> selectList() {
		return pDao.selectList();
	}

	@Override
	public void projectInsert(Project p) {
		pDao.projectInsert(p);
		
	}
	
	
	
	
}
