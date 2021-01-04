package com.kh.wefer;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService; // impl���ִ� serviceȣ��
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/profile.do", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mypage/profile";
	}
	
	
	@RequestMapping("/insertmember")
	public String goinsert(Locale locale, Model model) {
		return "member/insertmember";
	}
	
	@RequestMapping(value = "/insertmember.do", method = RequestMethod.POST)
	public String insertmember(Member m, HttpServletRequest request) throws IOException {
		System.out.println(m.toString());
		System.out.println(request.getParameter("id"));
		mService.insertMember(m);
		return "member/sessiontest";
	}
	
	@RequestMapping("/login")
	public String goLogin(Locale locale, Model model) {
		return "member/login";
	}
	
	@RequestMapping(value ="/login.do", method = RequestMethod.POST)
	public ModelAndView login(Member m, HttpSession session, ModelAndView mv,HttpServletRequest request) {
		System.out.println("rrr:"+request.getParameter("id"));
		System.out.println("rrr:"+m.getId());
		try {
			Member result = mService.login(m);	
			if(result == null) {
				mv.setViewName("redirect:login");
				
			}else {
				session.setAttribute("loginId", result.getId()); 
				session.setAttribute("dept", result.getDept_no()); 
				System.out.println(m.getId());
				mv.setViewName("member/sessiontest");
				
			}
			

	
		}catch (Exception e) {
		
		}
		return mv;
		
	}
	
}
