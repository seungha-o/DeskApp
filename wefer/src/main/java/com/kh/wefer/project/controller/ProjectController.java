package com.kh.wefer.project.controller;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectComment;
import com.kh.wefer.project.model.domain.ProjectDetail;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectSub;
import com.kh.wefer.project.model.service.ProjectService;

import net.sf.json.JSONObject;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService pService;
	
	
	private static final String FILE_SERVER_PATH = "C:/spring_java/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/wefer/resources/projectFiles";
	//프로젝트 리스트 출력
	@RequestMapping(value = "/projectlist.do", method = RequestMethod.GET)
	public ModelAndView projectList(HttpServletRequest request, ModelAndView mv, ProjectMember pm, HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		pm.setId(id);
		List<Project> projectLists = new ArrayList<Project>();
		projectLists = pService.projectList(pm);
		System.out.println(projectLists.toString());
		mv.addObject("projectLists", projectLists);
		mv.setViewName("project/projectList");
		return mv;
	}
	//프로젝트 삭제
	@RequestMapping(value = "/projectDelete.do", method = RequestMethod.POST)
	public void projectDelete(HttpServletResponse response, Project p) {
		PrintWriter out = null;
		JSONObject job = new JSONObject();
		try {
			job.put("ack", pService.projectDelete(p));
			System.out.println(pService.projectDelete(p));
			out = response.getWriter();
			out.append(job.toString());
		} catch (Exception e) {
			job.put("ack", -1);
		} finally {
			out.flush();
			out.close();
		}
	}
	//프로젝트 삭제
	@RequestMapping(value = "/projectSubDelete.do", method = RequestMethod.POST)
	public void projectSubDelete(HttpServletResponse response, ProjectSub ps) {
		PrintWriter out = null;
		JSONObject job = new JSONObject();
		try {
			job.put("ack", pService.projectSubDelete(ps));
			System.out.println(response);
			out = response.getWriter();
			out.append(job.toString());
		} catch (Exception e) {
			job.put("ack", -1);
		} finally {
			out.flush();
			out.close();
		}
	}

	//작업출력
	@RequestMapping(value = "/projectDetail.do", method = RequestMethod.GET)
	public ModelAndView projectDetail(@RequestParam(name="id", required = false) String project_id, HttpServletRequest request,
			ModelAndView mv, HttpSession session,HttpServletResponse response, ProjectMember pm, ProjectSub ps, Project p) {
		System.out.println(project_id);
		System.out.println(pService.projectSubList(project_id));
		System.out.println(pService.projectDate(project_id));
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		PrintWriter out = null;
		
		int result = 0;
		String id = (String) session.getAttribute("loginId");
		pm.setId(id);
		pm.setProject_id(project_id);
		List<ProjectMember> projectChk = new ArrayList<ProjectMember>();
		projectChk = pService.projectChk(pm);
		
		for(int i=0; i<projectChk.size(); i++) {
			if(id.equals(projectChk.get(i).getId().toString())) {
				result = 1;
				break;
			}
			
		}
		if(result == 1) {
			mv.addObject("projectSubList", pService.projectSubList(project_id));
			mv.addObject("projectDate", pService.projectDate(project_id));
//			mv.addObject("projectSubMemberList", pService.projectSubMemberList(project_id));
			mv.setViewName("project/projectDetail");
		}else {
			try {
				out = response.getWriter();
				out.append("<script>alert('프로인원에 포함되지 않았습니다.');location.href='projectlist.do'</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	
		
		
		return mv;
	}
	//히스토리 화면이동
	@RequestMapping(value = "/projectHistory.do", method = RequestMethod.GET)
	public ModelAndView projectHistory(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, ModelAndView mv, ProjectMember pm, Member m, ProjectDetail pd,
			@RequestParam(name="subid") String subid, @RequestParam(name="pid") String project_id) {
		
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		String id = (String) session.getAttribute("loginId");
		m.setId(id);
		System.out.println(id);
		PrintWriter out = null;
		pm.setProject_sub_id(subid);
		List<ProjectMember> projectMemChk = new ArrayList<ProjectMember>();
		projectMemChk = pService.projectMemberChk(pm);
		int result = 0;

		for(int i = 0; i<projectMemChk.size(); i++) {
			System.out.println(projectMemChk.get(i).getId());
			String a = projectMemChk.get(i).getId();
			if(id.equals(a)) {
				result = 1;
				break;
			}
		}
		System.out.println(result);
		if(result == 1) {
			pd.setProject_id(project_id);
			pd.setProject_sub_id(subid);
			mv.addObject("projectHistoryList", pService.projectHistoryList(pd));
			System.out.println(pService.projectHistoryList(pd));
			System.out.println(pd);
			mv.addObject("projectMemberImg",pService.projectMemberImg(m));
			mv.addObject("projectSubList", pService.projectSubTitles(subid));
			mv.addObject("projectDate", pService.projectDate(project_id));
			mv.addObject("subid",subid);
			mv.setViewName("project/projectHistory");	
			System.out.println("redirect:projectHistory.do?subid="+subid+"&pid="+project_id+"");
		}else {
			try {
				out = response.getWriter();
				out.append("<script>alert('작업인원에 포함되지 않았습니다.');location.href='projectDetail.do?id="+project_id+"'</script>");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	

		
		//		else {

//		}
			
			

			
		
		return mv;
	}
	
	
	
	
	
	//프로젝트 생성
	@RequestMapping(value = "/projectInsert.do", method = RequestMethod.POST)
	public ModelAndView projectInsert(HttpServletRequest request, ModelAndView mv, Project p, ProjectSub ps, ProjectMember pm,
			@RequestParam(name="project_title", required = false)String project_title,@RequestParam(name="project_color")String project_color,
			@RequestParam(name="project_std_date")String project_std_date, @RequestParam(name="project_end_date")String project_end_date,
			@RequestParam(name="project_sub_title")String sub_work,@RequestParam(name="id", required = false)String prj_members_id,
			@RequestParam(name="prj_members_id_count")String prj_members_id_count, @RequestParam(name="project_sub_std_date")String project_sub_std_date,
			@RequestParam(name="project_sub_end_date")String project_sub_end_date,@RequestParam(name="project_sub_important")String important) {
		try {
			
	
			
			
			Date prjStartDate; // 삭제 시작일
			Date currentDate; // 현재날짜 Date
			String oTime = ""; // 현재날짜
			String prjStatus = null;

			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );

			Date currentTime = new Date();

			oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)



			prjStartDate = mSimpleDateFormat.parse( project_std_date );

			currentDate =  mSimpleDateFormat.parse( oTime );

								

			int stdCompare = currentDate.compareTo( prjStartDate ); // 날짜비교



			if ( stdCompare > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
				prjStatus = "진행중";					

			} else if ( stdCompare < 0) { // 현재날짜가 삭제 시작일 전 인 경우

				prjStatus = "진행예정";


			} else if(stdCompare == 0) { // 현재날짜가 삭제 시작일 인 경우

				prjStatus = "진행중";

				
			}
			System.out.println("프로젝트 이름" +project_title);
			System.out.println("프로젝트 색" +project_color);
			System.out.println("프로젝트 시작일" +project_std_date);
			System.out.println("프로젝트 종료일" +project_end_date);
			System.out.println("프로젝트 상태" +prjStatus);
			p.setProject_status(prjStatus);
			pService.projectInsert(p);
			

			
			
			//작업제목
			String prj_titles = sub_work.substring(1);
			String[] prj_sub_titles = prj_titles.split(",");
			ArrayList<String> prj_sub_title = new ArrayList<String>(Arrays.asList(prj_sub_titles));
			System.out.println("all: " +prj_sub_title.toString() + prj_sub_title.size());
			
			//작업 중요도
			String[] prj_sub_important = important.split(",");
			ArrayList<String> prj_sub_importants = new ArrayList<String>(Arrays.asList(prj_sub_important));
			System.out.println("all: " +prj_sub_importants.toString());
			

			
			//시작일
			String project_sub_std_dates[] = project_sub_std_date.split(",");
			ArrayList<String> project_sub_std_dates2 = new ArrayList<String>(Arrays.asList(project_sub_std_dates));
			System.out.println("all: " + project_sub_std_dates2.toString());
			
			//종료일
			String project_end_dates[] = project_sub_end_date.split(",");
			ArrayList<String> project_sub_end_dates2 = new ArrayList<String>(Arrays.asList(project_end_dates));
			System.out.println("all: " + project_sub_end_dates2.toString());
			
			
			//작업자
			String prj_members_ids[] = prj_members_id.split(",");
			ArrayList<String> prj_members_group = new ArrayList<String>(Arrays.asList(prj_members_ids));
			System.out.println("all: " + prj_members_group.toString());
			
			//작업자 수
			String prj_members_id_counts[] = prj_members_id_count.split(",");
	
			
			Date prjStartDate2; // 삭제 시작일
			Date currentDate2; // 현재날짜 Date
			String oTime2 = ""; // 현재날짜
			String prjStatus2 = null;

			SimpleDateFormat mSimpleDateFormat2 = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );

			Date currentTime2 = new Date();

			
			
			

			System.out.println("eee :"+ prj_sub_title.size());
			for(int i = 0; i < prj_sub_title.size(); i++) {
				oTime2 = mSimpleDateFormat2.format ( currentTime2 ); //현재시간 (String)



				prjStartDate2 = mSimpleDateFormat2.parse( project_sub_std_dates2.get(i) );

				currentDate2=  mSimpleDateFormat2.parse( oTime2 );

									

				int stdCompare2 = currentDate2.compareTo( prjStartDate2 ); // 날짜비교



				if ( stdCompare2 > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
					prjStatus2 = "진행중";					

				} else if ( stdCompare2 < 0) { // 현재날짜가 삭제 시작일 전 인 경우

					prjStatus2 = "진행예정";


				} else if(stdCompare2 == 0) { // 현재날짜가 삭제 시작일 인 경우

					prjStatus2 = "진행중";

					
				}
				
				String std = project_sub_std_dates2.get(i);
				String end = project_sub_end_dates2.get(i);
				Date tempDate = null;
				Date tempDate2 = null;
				
				SimpleDateFormat datetransfer = new SimpleDateFormat("yyyy-mm-dd");
				tempDate = datetransfer.parse(std);
				
				tempDate2 = datetransfer.parse(end);
				
				
				System.out.println("aaa" + tempDate);
				System.out.println("bbb" + tempDate2);
				String toTempDate = datetransfer.format(tempDate);
				String toTempDate2 = datetransfer.format(tempDate2);

				java.sql.Date reTempDate = java.sql.Date.valueOf(toTempDate);
				java.sql.Date reTempDate2 = java.sql.Date.valueOf(toTempDate2);
				ps.setProject_sub_title(prj_sub_title.get(i));
				ps.setProject_sub_important(prj_sub_importants.get(i));
				ps.setProject_sub_std_date(reTempDate);
				ps.setProject_sub_end_date(reTempDate2);
				ps.setProject_sub_status(toTempDate2);
				pService.projectSubInsert(ps);
				
					
				int a[] = null;
			
					a = new int[prj_sub_title.size()];
					a[i] = Integer.parseInt(prj_members_id_counts[i]); //2 3
					
					System.out.println(a[i]+"번돌립니다.");
					for(int j=0; j<a[i]; j++) {
						System.out.println(a[i]+"번째의"+j+"번째입니다 위에꺼");
						System.out.println(prj_members_group.get(0));
						pm.setId(prj_members_group.get(0));
						//여기서 세션아이디 비교
						pm.setProject_member_grade(0);
						pService.projectSubMember(pm);
						prj_members_group.remove(0); 
						
					}

				
			}
			
			
//			디버깅용 주석			
//			System.out.println(project_title);
//			System.out.println(project_color);
//			System.out.println(project_std_date);
//			System.out.println(project_end_date);
//			System.out.println(sub_work);
//			System.out.println(prj_members_id);
//			System.out.println(prj_members_id_count);
//			System.out.println(project_sub_std_date);
//			System.out.println(project_sub_end_date);
//			System.out.println(important);
		
			
			
		
			
			System.out.println("성공");
			mv.setViewName("redirect:projectlist.do");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("실패");
			mv.addObject("message", e.getMessage());
			mv.setViewName("project/projectlist.do");
		}

		return mv;
	}
	
	//프로젝트 수정
		@RequestMapping(value = "/projectSubUpdate.do", method = RequestMethod.POST)
		public ModelAndView projectSubUpdate(HttpServletRequest request, ModelAndView mv, ProjectSub ps, ProjectMember pm, Project p,
				@RequestParam(name="p_pid") String p_pid, 
				@RequestParam(name="project_sub_id_update") String prj_update_id, 
				@RequestParam(name="project_sub_title_update") String project_update_title, 
				@RequestParam(name="project_std_date_update") String project_std_update_date,
				@RequestParam(name="project_end_date_update") String project_end_update_date,
				@RequestParam(name="update_important") String update_important,
				@RequestParam(name="prj_member_id_update",required = false) String prj_member_id_update
				){
				
				
				
			Date prjStartDate; // 삭제 시작일
			Date currentDate; // 현재날짜 Date
			String oTime = ""; // 현재날짜
			String prjStatus = null;

			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );

			Date currentTime = new Date();
			try {
			
				java.sql.Date project_std_update =java.sql.Date.valueOf(project_std_update_date);	
				java.sql.Date project_end_update =java.sql.Date.valueOf(project_end_update_date);	
				oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)



				prjStartDate = mSimpleDateFormat.parse(project_std_update_date);

				currentDate =  mSimpleDateFormat.parse( oTime );

									

				int stdCompare = currentDate.compareTo( prjStartDate ); // 날짜비교



				if ( stdCompare > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
					prjStatus = "진행중";					

				} else if ( stdCompare < 0) { // 현재날짜가 삭제 시작일 전 인 경우

					prjStatus = "진행예정";


				} else if(stdCompare == 0) { // 현재날짜가 삭제 시작일 인 경우

					prjStatus = "진행중";

					
				}
				
				if(prj_member_id_update == null || prj_member_id_update.equals("")) {
					ps.setProject_id(p_pid);
					ps.setProject_sub_id(prj_update_id);
					ps.setProject_sub_title(project_update_title);
					ps.setProject_sub_std_date(project_std_update);
					ps.setProject_sub_end_date(project_end_update);
					ps.setProject_sub_important(update_important);
					System.out.println("멤버없음");
					pService.projectSubUpdate(ps);
					
				}else {
					ps.setProject_id(p_pid);
					ps.setProject_sub_id(prj_update_id);
					ps.setProject_sub_title(project_update_title);
					ps.setProject_sub_std_date(project_std_update);
					ps.setProject_sub_end_date(project_end_update);
					ps.setProject_sub_important(update_important);
					pService.projectSubUpdate(ps);
					System.out.println("멤버있음");
					//프로잭트 멤버 추가
					pm.setId(prj_member_id_update);
					pm.setProject_sub_id(prj_update_id);
					pm.setProject_id(p_pid);
					pService.projectSubUpdateInsertMember(pm);
				}
				System.out.println(project_update_title);
				System.out.println(project_std_update);
				System.out.println(project_end_update);
				System.out.println(prj_member_id_update);
				
				mv.setViewName("redirect:projectlist.do");
			

				System.out.println("성공");
				
			}catch (Exception e) {
				e.printStackTrace();
				System.out.println("실패");
				mv.addObject("message", e.getMessage());
				mv.setViewName("project/projectDetail.do");
			}

			return mv;
		}
		
		//작업 추가
		@RequestMapping(value = "/projectSubInsert.do", method = RequestMethod.POST)
		public ModelAndView projectSubInsert(HttpServletRequest request, RedirectAttributes redirect, ModelAndView mv, ProjectSub ps, ProjectMember pm,
				@RequestParam(name="pid") String project_id,
				@RequestParam(name="project_sub_title")String sub_work,
				@RequestParam(name="id", required = false)String prj_members_id,
				@RequestParam(name="prj_members_id_count")String prj_members_id_count,
				@RequestParam(name="project_sub_std_date")String project_sub_std_date,
				@RequestParam(name="project_sub_end_date")String project_sub_end_date,
				@RequestParam(name="project_sub_important")String important) {
				System.out.println(project_id);
				System.out.println(sub_work);
				System.out.println(prj_members_id);
				System.out.println(prj_members_id_count);
				System.out.println(project_sub_std_date);
				System.out.println(project_sub_end_date);
				System.out.println(important);
				
				//작업제목
				String prj_titles = sub_work.substring(1);
				String[] prj_sub_titles = prj_titles.split(",");
				ArrayList<String> prj_sub_title = new ArrayList<String>(Arrays.asList(prj_sub_titles));
				System.out.println("all: " +prj_sub_title.toString() + prj_sub_title.size());
				
				//작업 중요도
				String[] prj_sub_important = important.split(",");
				ArrayList<String> prj_sub_importants = new ArrayList<String>(Arrays.asList(prj_sub_important));
				System.out.println("all: " +prj_sub_importants.toString());
				

				
				//시작일
				String project_sub_std_dates[] = project_sub_std_date.split(",");
				ArrayList<String> project_sub_std_dates2 = new ArrayList<String>(Arrays.asList(project_sub_std_dates));
				System.out.println("all: " + project_sub_std_dates2.toString());
				
				//종료일
				String project_end_dates[] = project_sub_end_date.split(",");
				ArrayList<String> project_sub_end_dates2 = new ArrayList<String>(Arrays.asList(project_end_dates));
				System.out.println("all: " + project_sub_end_dates2.toString());
				
				
				//작업자
				String prj_members_ids[] = prj_members_id.split(",");
				ArrayList<String> prj_members_group = new ArrayList<String>(Arrays.asList(prj_members_ids));
				System.out.println("all: " + prj_members_group.toString());
				
				//작업자 수
				String prj_members_id_counts[] = prj_members_id_count.split(",");
		
				
				Date prjStartDate2; // 삭제 시작일
				Date currentDate2; // 현재날짜 Date
				String oTime2 = ""; // 현재날짜
				String prjStatus2 = null;

				SimpleDateFormat mSimpleDateFormat2 = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );

				Date currentTime2 = new Date();

				
				
				

				



					try {
						for(int i = 0; i < prj_sub_title.size(); i++) {
							oTime2 = mSimpleDateFormat2.format ( currentTime2 ); //현재시간 (String)
						prjStartDate2 = mSimpleDateFormat2.parse( project_sub_std_dates2.get(i) );
						currentDate2=  mSimpleDateFormat2.parse( oTime2 );
						int stdCompare2 = currentDate2.compareTo( prjStartDate2 ); // 날짜비교



						if ( stdCompare2 > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
							prjStatus2 = "진행중";					

						} else if ( stdCompare2 < 0) { // 현재날짜가 삭제 시작일 전 인 경우

							prjStatus2 = "진행예정";


						} else if(stdCompare2 == 0) { // 현재날짜가 삭제 시작일 인 경우

							prjStatus2 = "진행중";

							
						}
						
						String std = project_sub_std_dates2.get(i);
						String end = project_sub_end_dates2.get(i);
						Date tempDate = null;
						Date tempDate2 = null;
						
						SimpleDateFormat datetransfer = new SimpleDateFormat("yyyy-mm-dd");
						tempDate = datetransfer.parse(std);
						
						tempDate2 = datetransfer.parse(end);
						
						
						System.out.println("aaa2" + tempDate);
						System.out.println("bbb2" + tempDate2);
						String toTempDate = datetransfer.format(tempDate);
						String toTempDate2 = datetransfer.format(tempDate2);

						java.sql.Date reTempDate = java.sql.Date.valueOf(toTempDate);
						java.sql.Date reTempDate2 = java.sql.Date.valueOf(toTempDate2);
						ps.setProject_id(project_id);
						ps.setProject_sub_title(prj_sub_title.get(i));
						ps.setProject_sub_important(prj_sub_importants.get(i));
						ps.setProject_sub_std_date(reTempDate);
						ps.setProject_sub_end_date(reTempDate2);
						ps.setProject_sub_status(toTempDate2);
						pService.projectSubAdd(ps);
						
							
						int a[] = null;
					
							a = new int[prj_sub_title.size()];
							a[i] = Integer.parseInt(prj_members_id_counts[i]); //2 3
							
	
							for(int j=0; j<a[i]; j++) {
								System.out.println(prj_members_group.get(0));
								pm.setId(prj_members_group.get(0));
								pm.setProject_id(project_id);
								//여기서 세션아이디 비교
								pm.setProject_member_grade(0);
								pService.projectSubAddMember(pm);
								prj_members_group.remove(0); 
								
							}
							 redirect.addAttribute("id", project_id); 
							
							mv.setViewName("redirect:projectDetail.do");

						
					}
					} catch (ParseException e) {
						System.out.println("aaaaaa");
						e.printStackTrace();
					}


										

					
				
				
			return mv;
		}
		
		//프로젝트 수정
				@RequestMapping(value = "/projectUpdate.do", method = RequestMethod.POST)
				public ModelAndView projectUpdate(HttpServletRequest request, ModelAndView mv, ProjectSub ps, ProjectMember pm, Project p,
						@RequestParam(name="prj_update_id") String prj_update_id, 
						@RequestParam(name="project_update_title") String project_update_title, 
						@RequestParam(name="project_std_update_date") String project_std_update_date,
						@RequestParam(name="project_end_update_date") String project_end_update_date
						){
						
						
						
					Date prjStartDate; // 삭제 시작일
					Date currentDate; // 현재날짜 Date
					String oTime = ""; // 현재날짜
					String prjStatus = null;

					SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );

					Date currentTime = new Date();
					try {
						
							java.sql.Date project_std_update =java.sql.Date.valueOf(project_std_update_date);	
							java.sql.Date project_end_update =java.sql.Date.valueOf(project_end_update_date);	
							oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)



							prjStartDate = mSimpleDateFormat.parse(project_std_update_date);

							currentDate =  mSimpleDateFormat.parse( oTime );

												

							int stdCompare = currentDate.compareTo( prjStartDate ); // 날짜비교



							if ( stdCompare > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
								prjStatus = "진행중";					

							} else if ( stdCompare < 0) { // 현재날짜가 삭제 시작일 전 인 경우

								prjStatus = "진행예정";


							} else if(stdCompare == 0) { // 현재날짜가 삭제 시작일 인 경우

								prjStatus = "진행중";

								
							}
							
								p.setProject_id(prj_update_id);
								p.setProject_title(project_update_title);
								p.setProject_std_date(project_std_update);
								p.setProject_end_date(project_end_update);
								p.setProject_status(prjStatus);
								pService.updateProject(p);
								pService.updateTitleProject(p);
								mv.setViewName("redirect:projectlist.do");
						
					
						
				
						
						
					

						System.out.println("성공");
						
					}catch (Exception e) {
						e.printStackTrace();
						System.out.println("실패");
						mv.addObject("message", e.getMessage());
						mv.setViewName("project/projectlist.do");
					}

					return mv;
				}
				
				
				
				@RequestMapping(value = "/historyInsert.do", method = RequestMethod.POST)
				public ModelAndView historyInsert(ProjectDetail pd, 
						@RequestParam(name = "upload_project_file", required = false) MultipartFile report, @RequestParam(name="pid") String pid,
						@RequestParam(name="psid", required = false) String psid, 
						@RequestParam(name="sessionId") String id, 
						@RequestParam(name="project_datail_content") String project_datail_content,
						@RequestParam(name="stauts") String stauts,
						HttpServletRequest request, ModelAndView mv) {
					try {
						if (report != null && !report.equals("")) {
							saveFile(report, request);
							System.out.println(pid);
							System.out.println(psid);
						
							pd.setProject_datail_file(report.getOriginalFilename());
							pd.setId(id);
							pd.setProject_datail_status(stauts);
							pd.setProject_datail_content(project_datail_content);
							pd.setProject_id(pid);
							pd.setProject_sub_id(psid);
							System.out.println("pdpd : " +pd);
							pService.historyInsert(pd);
							
							mv.setViewName("redirect:projectHistory.do?subid="+psid+"&pid="+pid+"");
						}else {
							pd.setId(id);
							pd.setProject_datail_status(stauts);
							pd.setProject_datail_content(project_datail_content);
							pd.setProject_id(pid);
							pd.setProject_sub_id(psid);
							pService.historyInsert(pd);
							mv.setViewName("redirect:projectHistory.do?subid="+psid+"&pid="+pid+"");
						}
							
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
				
					
					@RequestMapping(value = "/projectHistoryUpdate.do", method = RequestMethod.POST)
				public ModelAndView projectHistoryUpdate(ProjectDetail pd, 
						@RequestParam(name = "update_file", required = false) MultipartFile report, 
						@RequestParam(name="pid") String pid,
						@RequestParam(name="subid", required = false) String subid,
						@RequestParam(name="update_content") String project_datail_content,
						@RequestParam(name="update_stauts") String stauts,
						@RequestParam(name="pdid") String project_datail_id,
						HttpServletRequest request, ModelAndView mv) {
					try {
						
						//현재 project_datail_id에 저장된 파일명을 가져와지운다
						//view에서 가져온 파일명을 업데이트(저장) 시켜준다.
						//리스트에 반환한다.
						
						String befor_file = pService.historyFileName(project_datail_id);
						System.out.println("befor_file : "+befor_file);
						if (report != null && !report.equals("")) {
							removeFile(befor_file, request);
							saveFile(report, request);
							System.out.println(pid);
							System.out.println(subid);
						
							pd.setProject_datail_file(report.getOriginalFilename());
							pd.setProject_datail_status(stauts);
							pd.setProject_datail_content(project_datail_content);
							pd.setProject_datail_id(project_datail_id);
							pService.historyUpdateFile(pd);
							mv.setViewName("redirect:projectHistory.do?subid="+subid+"&pid="+pid+"");
						}else {
							mv.setViewName("redirect:projectHistory.do?subid="+subid+"&pid="+pid+"");							
						}
							
					} catch (Exception e) {
						e.printStackTrace();
					}
					return mv;
				}
//				@RequestMapping(value = "/bUpdate.do", method = RequestMethod.POST)
//				public ModelAndView boardUpdate(Board b, @RequestParam(name = "page", defaultValue = "1") int page,
//						@RequestParam("upfile") MultipartFile report, HttpServletRequest request, ModelAndView mv) {
//					try {
//						if (report != null && !report.equals("")) {
//							removeFile(b.getBoard_file(), request);
//							saveFile(report, request);
//						}
//						b.setBoard_file(report.getOriginalFilename());
//						mv.addObject("board_num", bService.updateBoard(b).getBoard_num());
//						mv.addObject("currentPage", page);
//						mv.setViewName("redirect:bDetail.do");
//					} catch (Exception e) {
//						mv.addObject("msg", e.getMessage());
//						mv.setViewName("errorPage");
//					}
//					return mv;
//				}
					
					@RequestMapping(value = "/projectHistoryDelete.do", method = RequestMethod.POST)
					public void projectHistoryDelete(HttpServletResponse response, HttpServletRequest request, ProjectDetail pd) {
						PrintWriter out = null;
						JSONObject job = new JSONObject();
						try {
							String project_datail_id = pd.getProject_datail_file();
							String file = pService.historyFileName(project_datail_id);
							removeFile(file, request);
							job.put("ack", pService.projectHistoryDelete(pd));
							System.out.println(response);
							out = response.getWriter();
							out.append(job.toString());
						} catch (Exception e) {
							job.put("ack", -1);
						} finally {
							out.flush();
							out.close();
						}
					}
				
				
					@RequestMapping(value = "/projecthistoryComment.do", method = RequestMethod.POST)
					@ResponseBody
					public Object projecthistoryComment(HttpServletResponse response, HttpServletRequest request, ProjectComment pc) {
						JSONObject job = new JSONObject();
						PrintWriter out = null;
						try {
							request.setCharacterEncoding("UTF-8");
							response.setContentType("text/html; charset=UTF-8");
							
							
							String getProject_comment_content = pc.getProject_comment_content();
							String getProject_datail_id = pc.getProject_datail_id();
							String getId = pc.getId();
							
							System.out.println(getProject_comment_content);
							System.out.println(getProject_datail_id);
							System.out.println(getId);
							List<ProjectComment> pcList = new ArrayList<ProjectComment>();
							
							job.put("project_comment",getProject_comment_content);
							job.put("project_detail_id",getId);
							job.put("id",getId);
							System.out.println(job);
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						return job;
					}
				
				
				
				private void saveFile(MultipartFile report, HttpServletRequest request) {
					String root = request.getSession().getServletContext().getRealPath("resources");
					String savePath = root + "\\projectFiles";
					File folder = new File(savePath);
					if (!folder.exists()) {
						folder.mkdir(); // 폴더가 없다면 생성한다.
					}
					String filePath = null;
					try {
						// 파일 저장
						System.out.println(report.getOriginalFilename() + "을 저장합니다.");
						System.out.println("저장 경로 : " + savePath);
						filePath = folder + "\\" + report.getOriginalFilename();
						report.transferTo(new File(filePath)); // 파일을 저장한다
						System.out.println("파일 명 : " + report.getOriginalFilename());
						System.out.println("파일 경로 : " + filePath);
						System.out.println("파일 전송이 완료되었습니다.");
					} catch (Exception e) {
						System.out.println("파일 전송 에러 : " + e.getMessage());
					}
				}

				private void removeFile(String project_file, HttpServletRequest request) {
					String root = request.getSession().getServletContext().getRealPath("resources");
					String savePath = root + "\\uploadFiles";

					String filePath = savePath + "\\" + project_file;
					try {
						// 파일 저장
						System.out.println(project_file + "을 삭제합니다.");
						System.out.println("기존 저장 경로 : " + savePath);

						File delFile = new File(filePath);
						delFile.delete();

						System.out.println("파일 삭제가 완료되었습니다.");
					} catch (Exception e) {
						System.out.println("파일 삭제 에러 : " + e.getMessage());
					}
				}
				
				@RequestMapping("/download.do")
				public ModelAndView download(@RequestParam HashMap<Object, Object> params, ModelAndView mv) {
					String fileName = (String) params.get("fileName");
					String fullPath = FILE_SERVER_PATH + "/" + fileName;
					File file = new File(fullPath);
					
					mv.setViewName("downloadView");
					mv.addObject("downloadFile", file);
					return mv;
				}
}
