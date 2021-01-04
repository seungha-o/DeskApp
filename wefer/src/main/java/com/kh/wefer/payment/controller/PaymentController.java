package com.kh.wefer.payment.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.HomeController;
import com.kh.wefer.member.model.service.MemberService;
import com.kh.wefer.payment.model.domain.Payment;
import com.kh.wefer.payment.model.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private MemberService mService;
	@Autowired
	private PaymentService pmService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/approval.do", method = RequestMethod.GET)
	public ModelAndView apprlist(Locale locale,  ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		mv.addObject("pmlist", pmService.paymentList());
		mv.setViewName("approval/apprlist");
		return mv;
	}
	@RequestMapping(value = "/aaa", method = RequestMethod.GET)
	public ModelAndView aaa(Locale locale,  ModelAndView mv) {
		logger.info("dfsdfsdfsdfsd", locale);
		List<Payment> arrList = new ArrayList<Payment>();
		arrList= pmService.paymentList();
		System.out.println(arrList);
		mv.addObject("pmlist", pmService.paymentList());
		mv.setViewName("common/aaa");
		return mv;
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
