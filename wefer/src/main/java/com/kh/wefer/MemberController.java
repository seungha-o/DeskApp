package com.kh.wefer;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		 e.printStackTrace();
		}
		return mv;
		
	}
	
	@RequestMapping("/memberlist")
	public String mlist(Locale locale, Model model) {
		return "member/memberlist";
	}
//	@RequestMapping("/memberlist.do")
//	public ModelAndView gomlist(ModelAndView mv) {
//		List<Member> list = mService.memberAllList();
//		mv.setViewName("member/memberlist");
//		mv.addObject("list", list);
//		return mv;
//	}
	
//	@ResponseBody
//	@PostMapping("/deptmemberlist.do")
//	public Object deptlist(@RequestParam(name="dept") String dept_no) {
//		if(dept_no==null||dept_no.equals("")) {
//			dept_no = "*";
//			
//		}
//		List<Member> list = new ArrayList<Member>();
//		list = mService.deptmemberlist(dept_no);
//		System.out.println(list);
//		return list;
//	}
//	
	@RequestMapping("/deletemember.do")
	public ModelAndView delete(@RequestParam(name="id") String id,ModelAndView mv) {
		mService.delete(id);
		mv.setViewName("redirect:memberlist.do");
		return mv;
	}
	
}
