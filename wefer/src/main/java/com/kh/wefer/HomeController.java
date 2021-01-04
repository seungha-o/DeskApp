package com.kh.wefer;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private MemberService mService; // impl에있는 service호출
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		mv.setViewName("index");
		return mv;
	}
	@RequestMapping(value = "/approval.do", method = RequestMethod.GET)
	public String apprlist(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "approval/apprlist";
	}
		@RequestMapping(value = "/apprForm.do", method = RequestMethod.GET)
	public String apprform(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "approval/apprform";
	}
		@RequestMapping(value = "/apprDetail.do", method = RequestMethod.GET)
		public String apprdetail(Locale locale, Model model) {
			logger.info("Welcome home! The client locale is {}.", locale);
			return "approval/apprdetail";
		}
	
}
