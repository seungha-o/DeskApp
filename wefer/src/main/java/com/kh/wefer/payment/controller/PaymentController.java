package com.kh.wefer.payment.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.HomeController;
import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Payment;
import com.kh.wefer.payment.model.domain.Payment_confirm;
import com.kh.wefer.payment.model.service.AnnualService;
import com.kh.wefer.payment.model.service.PaymentService;
import com.kh.wefer.payment.model.service.Payment_confrimService;

@Controller
public class PaymentController {

	@Autowired
	private AnnualService aService;
	@Autowired
	private PaymentService pmService;
	@Autowired
	private Payment_confrimService pcService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/approval.do", method = RequestMethod.GET)
	public ModelAndView apprlist(Payment my_name, Locale locale, ModelAndView mv, HttpSession session, HttpServletRequest request) {
		
			my_name.setId((String) session.getAttribute("loginId"));
			mv.addObject("pmlist", pmService.paymentList(my_name));
			mv.setViewName("approval/apprlist");
			//System.out.println(pmService.paymentList(my_name));
		return mv;
	}

	@RequestMapping(value = "/apprForm.do", method = RequestMethod.GET)
	public String apprform(ModelAndView mv) {
		return "approval/apprform";
	}

	@RequestMapping(value = "/aInsert.do")
	public String annualInsert(Payment_confirm payment_id,  Annual a, Payment b, HttpSession session, HttpServletRequest request,
			@RequestParam(name = "annual_enddate", required = false) String end) {
		try {
			a.setId((String) session.getAttribute("loginId"));
			b.setId((String) session.getAttribute("loginId"));
			aService.insertAnnualPayment(a, b);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:aInsert2.do";
	}
	@RequestMapping(value = "/aInsert2.do")
	public String annualInsert(Payment_confirm payment_id) {
		try {
			pcService.insertPaymentConfirm(payment_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:approval.do";
	}
	@RequestMapping(value = "/apprDetail.do", method = RequestMethod.GET)
	public ModelAndView paymentDetail(@RequestParam(name = "payment_id") String payment_id, ModelAndView mv) {
	
			System.out.println("payment_id: " + payment_id);
			mv.addObject("payment_id", pmService.paymentDetail(payment_id));
			mv.setViewName("approval/apprdetail");
			System.out.println(pmService.paymentDetail(payment_id));
		return mv;
	}

}
