package com.kh.wefer.project.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.project.model.dao.ProjectDao;
import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectComment;
import com.kh.wefer.project.model.domain.ProjectDetail;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectReComment;
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
		return pDao.projectSubUpdate(ps);
	}

	@Override
	public int projectSubUpdateInsertMember(ProjectMember pm) {
		// TODO Auto-generated method stub
		return pDao.projectSubUpdateInsertMember(pm);
	}
	
	//프로젝트 히스토리 체크
	@Override
	public List<ProjectMember> projectMemberChk(ProjectMember pm) {
		return pDao.projectMemberChk(pm);
	}

	@Override
	public List<ProjectMember> projectChk(ProjectMember pm) {
		return pDao.projectChk(pm);
	}

	@Override
	public List<ProjectSub> projectSubTitles(String subid) {
		return pDao.projectSubTitles(subid);
	}

	@Override
	public Member projectMemberImg(Member m) {
		return pDao.projectMemberImg(m);
	}

	@Override
	public int historyInsert(ProjectDetail pd) {
		return pDao.historyInsert(pd);
	}

	@Override
	public List<ProjectDetail> projectHistoryList(ProjectDetail pd) {
		return pDao.projectHistoryList(pd);
	}

	@Override
	public String historyFileName(String project_datail_id) {
		return pDao.historyFileName(project_datail_id);
	}

	@Override
	public void historyUpdateFile(ProjectDetail pd) {
		pDao.historyUpdateFile(pd);
		
	}

	@Override
	public int projectHistoryDelete(ProjectDetail pd) {
		return pDao.projectHistoryDelete(pd);
	}

	@Override
	public int projectCommentWirte(ProjectComment pc) {
		return pDao.projectCommentWirte(pc);
	}

	@Override
	public List<ProjectComment> projectCommentList(ProjectComment pc) {
		return pDao.projectCommentList(pc);
	}

	@Override
	public List<ProjectComment> projectCommentInsertList(ProjectComment pc) {
		return pDao.projectCommentInsertList(pc);
	}

	@Override
	public int projecthistoryReCommentInsert(ProjectReComment prc) {
		return pDao.projecthistoryReCommentInsert(prc);
	}

	@Override
	public List<ProjectReComment> projectreReCommentInsertList(ProjectReComment prc) {
		return pDao.projectreReCommentInsertList(prc);
	}

	@Override
	public List<ProjectReComment> projectReCommentList(ProjectReComment prc) {
		return pDao.projectReCommentList(prc);
	}

	@Override
	public int projectCommentDelete(ProjectComment pc) {
		return pDao.projectCommentDelete(pc);
		
	}

	@Override
	public int projectReCommentDelete(ProjectReComment prc) {
		return pDao.projectReCommentDelete(prc);
	}

	@Override
	public String projectSubChkGrade(String id) {
		return pDao.projectSubChkGrade(id);
	}

	@Override
	public List<Project> projectEndList(ProjectMember pm) {
		return pDao.projectEndList(pm);

	}

	@Override
	public List<ProjectSub> projectProgress(ProjectSub ps) {
		return pDao.projectProgress(ps);
	}

	
	



	
}




	
	
	
	

