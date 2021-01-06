package com.kh.wefer.project.model.service;

import java.util.List;

import com.kh.wefer.project.model.domain.Project;

public interface ProjectService {


	List<Project> selectList();

	void projectInsert(Project p);



}
