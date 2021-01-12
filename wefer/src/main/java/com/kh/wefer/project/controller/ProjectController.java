package com.kh.wefer.project.controller;


import java.lang.reflect.Array;
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
import com.kh.wefer.project.model.service.ProjectService;

@Controller
public class ProjectController {
	@Autowired
	private ProjectService pService;

	@Autowired
	private Project project;
	@RequestMapping(value = "/projectlist.do", method = RequestMethod.GET)
	public ModelAndView projectList(HttpServletRequest request, ModelAndView mv) {
		
//		mv.addObject("prjList", pService.selectList());
		mv.setViewName("project/projectList");
		return mv;
	}
	
	@RequestMapping(value = "/projectInsert.do", method = RequestMethod.POST)
	public ModelAndView projectInsert(HttpServletRequest request, ModelAndView mv, Project p,
			@RequestParam(name="project_name")String project_name,@RequestParam(name="project_color")String project_color,
			@RequestParam(name="project_std_date")String project_std_date, @RequestParam(name="project_end_date")String project_end_date,
			@RequestParam(name="sub_members", required = false)String sub_members,@RequestParam(name="prj_members_id")String prj_members_id,
			@RequestParam(name="prj_members_id_count")String prj_members_id_count) {
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
//				if(endCompare >= 0) {
//					compareVal = "종료";
//				}else {
//				}   <--프로젝트 종료 조건
				prjStatus = "진행중";					

			} else if ( stdCompare < 0) { // 현재날짜가 삭제 시작일 전 인 경우

				prjStatus = "진행예정중";

			//System.out.println("currentDate  <  memDelStartDate");

			} else if(stdCompare == 0) { // 현재날짜가 삭제 시작일 인 경우

				prjStatus = "진행중";

			//System.out.println("currentDate  =  memDelStartDate");

			}
			System.out.println("프로젝트 이름" +project_name);
			System.out.println("프로젝트 색" +project_color);
			System.out.println("프로젝트 시작일" +project_std_date);
			System.out.println("프로젝트 종료일" +project_end_date);
			System.out.println("프로젝트 상태" +prjStatus);
			project.setProject_status(prjStatus);
			pService.projectInsert(p);
			

			
			




			
			
			String prj_members_ids[] = prj_members_id.split(",");
			ArrayList<String> prj_members_group = new ArrayList<String>(Arrays.asList(prj_members_ids));
			System.out.println("all: " + prj_members_group.toString());
			String prj_members_id_counts[] = prj_members_id_count.split(",");
			int a[] = null;
			String trash = "trash";
			for(int i=0; i<prj_members_id_counts.length; i++) {
				a = new int[prj_members_id_counts.length];
				a[i] = Integer.parseInt(prj_members_id_counts[i]);
				
				
				System.out.println(a[i]+"번돌립니다.");
				for(int j=0; j<a[i]; j++) {
					System.out.println(a[i]+"번째의"+j+"번째입니다 위에꺼");
					System.out.println(prj_members_group.get(0));
					prj_members_group.remove(0); 
					
				}

			}
			
//			pService.projectInsert(p);
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
