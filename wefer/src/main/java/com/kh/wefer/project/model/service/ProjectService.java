package com.kh.wefer.project.model.service;

import java.util.List;

import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectSub;

public interface ProjectService {


	List<Project> selectList();

	void projectInsert(Project p);

	void projectSubInsert(ProjectSub ps);

	void projectSubMember(ProjectMember pm);



}
