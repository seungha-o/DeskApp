package com.kh.wefer.project.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wefer.project.model.dao.ProjectDao;
import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectSub;

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

	@Override
	public void projectSubInsert(ProjectSub ps) {
		System.out.println("들어왔다");
		pDao.projectSubInsert(ps);
		
	}

	@Override
	public void projectSubMember(ProjectMember pm) {
		pDao.projectSubMember(pm);
		
	}




	
	
	
	
}
