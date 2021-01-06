package com.kh.wefer.project.controller;


import java.sql.Date;

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
	public ModelAndView projectInsert(HttpServletRequest request, ModelAndView mv, Project p, @RequestParam(name="project_std_date")String a,
			@RequestParam(name="project_std_date")String b) {
		try {
			System.out.println(a);
			System.out.println(b);
			
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
