package com.kh.wefer.project.model.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectComment;
import com.kh.wefer.project.model.domain.ProjectDetail;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectReComment;
import com.kh.wefer.project.model.domain.ProjectSub;

public interface ProjectService {




	void projectInsert(Project p);

	void projectSubInsert(ProjectSub ps);

	void projectSubMember(ProjectMember pm);

	List<Project> projectList(ProjectMember pm);

	List<ProjectMember> projectSubList(String project_id);

	List<ProjectMember> projectSubMemberList(String project_id);

	int projectDelete(Project p);

	int updateProject(Project p);

	int updateTitleProject(Project p);

	int projectSubDelete(ProjectSub ps);

	List<Project> projectDate(String project_id);

	int projectSubAdd(ProjectSub ps);

	int projectSubAddMember(ProjectMember pm);

	int projectSubUpdate(ProjectSub ps);
	
	int projectSubUpdateInsertMember(ProjectMember pm);

	List<ProjectMember> projectMemberChk(ProjectMember pm);

	List<ProjectMember> projectChk(ProjectMember pm);

	List<ProjectSub> projectSubTitles(String subid);

	Member projectMemberImg(Member m);

	int historyInsert(ProjectDetail pd);

	List<ProjectDetail> projectHistoryList(ProjectDetail pd);

	String historyFileName(String project_datail_id);

	void historyUpdateFile(ProjectDetail pd);

	int projectHistoryDelete(ProjectDetail pd);

	int projectCommentWirte(ProjectComment pc);

	List<ProjectComment> projectCommentList(ProjectComment pc);

	List<ProjectComment> projectCommentInsertList(ProjectComment pc);

	int projecthistoryReCommentInsert(ProjectReComment prc);

	List<ProjectReComment> projectreReCommentInsertList(ProjectReComment prc);

	List<ProjectReComment> projectReCommentList(ProjectReComment prc);

	int projectCommentDelete(ProjectComment pc);

	int projectReCommentDelete(ProjectReComment prc);

	String projectSubChkGrade(String id);

	List<Project> projectEndList(ProjectMember pm);

	List<ProjectSub> projectProgress(ProjectSub ps);



}
