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
	public void projectInsert(Project p) {
		pDao.projectInsert(p);
		
	}

	@Override
	public void projectSubInsert(ProjectSub ps) {
		System.out.println("���Դ�");
		pDao.projectSubInsert(ps);
		
	}

	@Override
	public void projectSubMember(ProjectMember pm) {
		pDao.projectSubMember(pm);
		
	}

	@Override
	public List<Project> projectList(ProjectMember pm) {
		return pDao.projectList(pm);
	}

	@Override
	public List<ProjectMember> projectSubList(String project_id) {
		return pDao.projectSubList(project_id);
	}

	@Override
	public List<ProjectMember> projectSubMemberList(String project_id) {
		return pDao.projectSubMemberList(project_id);
	}

	@Override
	public int projectDelete(Project p) {
		return pDao.projectDelete(p);
	}

	@Override
	public int updateProject(Project p) {
		return pDao.updateProject(p);
	}

	@Override
	public int updateTitleProject(Project p) {
		return pDao.updateTitleProject(p);
	}

	@Override
	public int projectSubDelete(ProjectSub ps) {
		return pDao.projectSubDelete(ps);
	}

	@Override
	public List<Project> projectDate(String project_id) {
		return pDao.projectDate(project_id);
	}

	@Override
	public int projectSubAdd(ProjectSub ps) {
		return pDao.projectSubAdd(ps);
	}

	@Override
	public int projectSubAddMember(ProjectMember pm) {
		return pDao.projectSubAddMember(pm);
	}

	
	//프로젝트 수정부
	@Override
	public int projectSubUpdate(ProjectSub ps) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int projectSubUpdateInsertMember(ProjectMember pm) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}




	
	
	
	

