package com.kh.wefer.project.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectComment;
import com.kh.wefer.project.model.domain.ProjectDetail;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectReComment;
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

	public List<ProjectMember> projectSubMemberList(String project_id) {
		return sqlSession.selectList("Project.projectSubMemberList", project_id);	
	}

	public int projectDelete(Project p) {
		return sqlSession.delete("Project.projectDelete", p);
	}

	public int updateProject(Project p) {
		System.out.println("�ٿ�"+p.toString());
		return sqlSession.update("Project.updateProject", p);
	}

	public int updateTitleProject(Project p) {
		return sqlSession.update("Project.updateTitleProject", p);
	}

	public int projectSubDelete(ProjectSub ps) {
		return sqlSession.delete("Project.projectSubDelete", ps);
	}

	public List<Project> projectDate(String project_id) {
		return sqlSession.selectList("Project.projectDate", project_id);
	}

	public int projectSubAdd(ProjectSub ps) {
		return sqlSession.insert("Project.projectSubAdd", ps);
	}

	public int projectSubAddMember(ProjectMember pm) {
		return sqlSession.insert("Project.projectSubAddMember", pm);
	}

	public int projectSubUpdate(ProjectSub ps) {
		return sqlSession.update("Project.projectSubUpdate", ps);
	}

	public int projectSubUpdateInsertMember(ProjectMember pm) {
		return sqlSession.insert("Project.projectSubUpdateInsertMember", pm);
	}

	public List<ProjectMember> projectMemberChk(ProjectMember pm) {
		return sqlSession.selectList("Project.projectMemberChk", pm);
	}

	public List<ProjectMember> projectChk(ProjectMember pm) {
		return sqlSession.selectList("Project.projectChk", pm);
	}

	public List<ProjectSub> projectSubTitles(String subid) {
		return sqlSession.selectList("Project.projectSubTitles", subid);
	}

	public Member projectMemberImg(Member m) {
		return sqlSession.selectOne("Project.projectMemberImg", m);
	}

	public int historyInsert(ProjectDetail pd) {
		return sqlSession.insert("Project.historyInsert", pd);
	}

	public List<ProjectDetail> projectHistoryList(ProjectDetail pd) {
		return sqlSession.selectList("Project.projectHistoryList", pd);
	}

	

	public String historyFileName(String project_datail_id) {
		return sqlSession.selectOne("Project.historyFileName", project_datail_id);
	}

	public int historyUpdateFile(ProjectDetail pd) {
		return sqlSession.update("Project.historyUpdateFile", pd);
	}

	public int projectHistoryDelete(ProjectDetail pd) {
		return sqlSession.delete("Project.projectHistoryDelete", pd);
	}

	public int projectCommentWirte(ProjectComment pc) {
		return sqlSession.insert("Project.projectCommentWirte", pc);
	}

	public List<ProjectComment> projectCommentList(ProjectComment pc) {
		return sqlSession.selectList("Project.projectCommentList", pc);
	}

	public List<ProjectComment> projectCommentInsertList(ProjectComment pc) {
		return sqlSession.selectList("Project.projectCommentInsertList", pc);
	}

	public int projecthistoryReCommentInsert(ProjectReComment prc) {
		return sqlSession.insert("Project.projecthistoryReCommentInsert", prc);
	}

	public List<ProjectReComment> projectreReCommentInsertList(ProjectReComment prc) {
		return sqlSession.selectList("Project.projectreReCommentInsertList", prc);
		
	}

	public List<ProjectReComment> projectReCommentList(ProjectReComment prc) {
		return sqlSession.selectList("Project.projectReCommentList", prc);
	}

	public int projectCommentDelete(ProjectComment pc) {
		return sqlSession.delete("Project.projectCommentDelete", pc);
	}

	public int projectReCommentDelete(ProjectReComment prc) {
		return sqlSession.delete("Project.projectReCommentDelete", prc);
	}

	public String projectSubChkGrade(String id) {
		return sqlSession.selectOne("Project.projectSubChkGrade", id);
	}

	


}
