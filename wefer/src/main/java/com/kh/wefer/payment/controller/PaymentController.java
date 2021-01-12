package com.kh.wefer.payment.controller;

import java.time.LocalDate;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.HomeController;
import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Payment;
import com.kh.wefer.payment.model.service.AnnualService;
import com.kh.wefer.payment.model.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private AnnualService aService;
	@Autowired
	private PaymentService pmService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/approval.do", method = RequestMethod.GET)
	public ModelAndView apprlist(Locale locale, ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		mv.addObject("pmlist", pmService.paymentList());
		mv.setViewName("approval/apprlist");
		return mv;
	}

	@RequestMapping(value = "/apprForm.do", method = RequestMethod.GET)
	public String apprform(ModelAndView mv) {
		return "approval/apprform";
	}

	@RequestMapping(value = "/aInsert.do")
	public String annualInsert
	(Annual a, Payment b, HttpSession session, HttpServletRequest request,
			@RequestParam(name="annual_enddate", required = false)String end) {
		System.out.println(a.getAnnual_enddate());
		System.out.println(end);
		try {
			a.setId((String) session.getAttribute("loginId"));
			b.setId((String) session.getAttribute("loginId"));
			aService.insertAnnualPayment(a, b);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:approval.do";
	}

	@RequestMapping(value = "/apprDetail.do", method = RequestMethod.GET)
	public ModelAndView paymentDetail(@RequestParam(name = "payment_id") String payment_id,
			 ModelAndView mv) {
		System.out.println("payment_id: " + payment_id);
		mv.addObject("payment_id", pmService.paymentDetail(payment_id));
		mv.setViewName("approval/apprdetail");
		return mv;
	}

}
