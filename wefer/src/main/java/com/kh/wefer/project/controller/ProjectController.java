package com.kh.wefer.project.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.project.model.domain.Project;
import com.kh.wefer.project.model.domain.ProjectMember;
import com.kh.wefer.project.model.domain.ProjectSub;
import com.kh.wefer.project.model.service.ProjectService;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService pService;

	@RequestMapping(value = "/projectlist.do", method = RequestMethod.GET)
	public ModelAndView projectList(HttpServletRequest request, ModelAndView mv) {
		
		mv.setViewName("project/projectList");
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

				prjStatus = "진행예정중";


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
				oTime2 = mSimpleDateFormat.format ( currentTime2 ); //현재시간 (String)



				prjStartDate2 = mSimpleDateFormat.parse( project_sub_std_dates2.get(i) );

				currentDate2=  mSimpleDateFormat.parse( oTime2 );

									

				int stdCompare2 = currentDate2.compareTo( prjStartDate2 ); // 날짜비교



				if ( stdCompare2 > 0 ){ // 현재날짜가 삭제 시작일 후 인 경우
					prjStatus2 = "진행중";					

				} else if ( stdCompare2 < 0) { // 현재날짜가 삭제 시작일 전 인 경우

					prjStatus2 = "진행예정";


				} else if(stdCompare2 == 0) { // 현재날짜가 삭제 시작일 인 경우

					prjStatus2 = "진행중";

					
				}
				ps.setProject_sub_title(prj_sub_title.get(i));
				ps.setProject_sub_important(prj_sub_importants.get(i));
				ps.setProject_sub_std_date(project_sub_std_dates2.get(i));
				ps.setProject_sub_end_date(project_sub_end_dates2.get(i));
				ps.setProject_sub_status(prjStatus2);
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
	
}
