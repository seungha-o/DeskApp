package com.kh.wefer.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.wefer.HomeController;
import com.kh.wefer.project.model.service.ProjectService;

@Controller
public class ProjectController {

	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


@RequestMapping(value = "/projectlist", method = RequestMethod.GET)
public String home(Locale locale, Model model) {
	logger.info("Welcome home! The client locale is {}.", locale);
	
	
	return "project/projectList";
}

}
