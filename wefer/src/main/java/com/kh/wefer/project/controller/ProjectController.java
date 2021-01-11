package com.kh.wefer.project.controller;


import java.lang.reflect.Array;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;

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
