package com.kh.wefer.payment.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.HomeController;
import com.kh.wefer.payment.model.domain.Annual;
import com.kh.wefer.payment.model.domain.Notify;
import com.kh.wefer.payment.model.domain.Payment;
import com.kh.wefer.payment.model.domain.Payment_confirm;
import com.kh.wefer.payment.model.service.AnnualService;
import com.kh.wefer.payment.model.service.NotifyService;
import com.kh.wefer.payment.model.service.PaymentService;
import com.kh.wefer.payment.model.service.Payment_confrimService;

@Controller
public class PaymentController {

	@Autowired
	private AnnualService aService;
	@Autowired
	private PaymentService pmService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/approval.do", method = RequestMethod.GET)
	public ModelAndView apprlist(Payment my_name, Payment mymy_name, Locale locale, ModelAndView mv, HttpSession session,
			HttpServletRequest request) {
		my_name.setId((String) session.getAttribute("loginId"));
		mymy_name.setName((String) session.getAttribute("loginName"));
		mv.addObject("pmlist", pmService.paymentList(my_name));
		mv.addObject("pmrclist", pmService.paymentReciveList(mymy_name));
		mv.setViewName("approval/apprlist");
		return mv;
	}

	@RequestMapping(value = "/apprForm.do", method = RequestMethod.GET)
	public String apprform(ModelAndView mv) {
		return "approval/apprform";
	}

	@RequestMapping("/aInsert.do")
	public String annualInsert(Annual a, Payment b, Payment_confirm pc, HttpSession session, HttpServletRequest request,
			@RequestParam(name = "annual_enddate", required = false) String end) {
		try {
			a.setId((String) session.getAttribute("loginId"));
			if(a.getAnnual_kind().equals("반차")) {
				a.setAnnual_enddate(a.getAnnual_stddate());
			}
			b.setId((String) session.getAttribute("loginId"));
			System.out.println(pc.getS_member_id0());
			System.out.println(pc.getS_member_id1());
			System.out.println(pc.getS_member_id2());
			aService.insertAnnualPayment(a, b);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:approval.do";
	}
	@RequestMapping(value="/deleteannual.do")
	public String deleteannual(@RequestParam(name="scid")String hcid) {
		aService.deleteAnnual(hcid);
		return "redirect:approval.do";
	}

	@RequestMapping(value = "/apprDetail.do", method = RequestMethod.GET)
	public ModelAndView paymentDetail(@RequestParam(name = "payment_id") String payment_id, ModelAndView mv) {
		mv.addObject("payment_id", pmService.paymentDetail(payment_id));
		mv.setViewName("approval/apprdetail");
		return mv;
	}

	@RequestMapping(value = "/confirm.do", method = RequestMethod.GET)
	public String apprForm(Payment p, HttpSession session) {
		try {
			p.setId((String) session.getAttribute("loginId"));
			pmService.confirmCnt(p);
			pmService.status(p);
			System.out.println("cnt:"+pmService.confirmCnt(p));
			System.out.println("status"+pmService.status(p));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:approval.do";
	}

}
