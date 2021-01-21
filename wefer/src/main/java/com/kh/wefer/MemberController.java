package com.kh.wefer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.member.model.domain.AnnualSc;
import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.AnnualScService;
import com.kh.wefer.member.model.service.AnnualScServiceImpl;
import com.kh.wefer.member.model.service.MemberService;
import com.kh.wefer.payment.model.service.AnnualService;
import com.kh.wefer.schedules.model.service.SchedulesService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService; // impl���ִ� serviceȣ��
	
	@Autowired
	private AnnualScServiceImpl aScService;
	@Autowired
	private SchedulesService schdservice;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
//	@RequestMapping(value = "/profile.do", method = RequestMethod.GET)
//	public String profile(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);		
//		String formattedDate = dateFormat.format(date);	
//		model.addAttribute("serverTime", formattedDate );	
//		
//		return "mypage/profile";
//	}
	
	//Profile 화면
	 @RequestMapping(value ="/profile.do", method = RequestMethod.GET)
	 public ModelAndView ProfileList( Member m, ModelAndView mv, HttpSession session, HttpServletRequest request)	 {		 
		 if(session == null) {
			 session = request.getSession();		 
			 String id = (String) session.getAttribute("loginId");
			 mv.addObject("profileList",mService.profileList(id));
			 mv.setViewName("member/profile");
		 }else {
			 String id = (String) session.getAttribute("loginId");
			 mv.addObject("profileList",mService.profileList(id));
			 mv.setViewName("member/profile");
			mv.addObject("list",aScService.selectAnnualList(id));
			 
		 }
		 return mv;
	  }
	 // 주소록 사원 프로필정보 보여주기
	 @RequestMapping(value ="/personerProfileList.do", method = RequestMethod.GET)
	 public ModelAndView PersonerProfileList( Member m, ModelAndView mv, @RequestParam(name="addrMemberId") String addrMember, HttpServletRequest request)	 {		 
		 System.out.println(addrMember);
		 m.setId(addrMember);
		 mv.addObject("personerProfileList",mService.personerProfileList(m));
		 mv.setViewName("member/personerProfileList");
		 return mv;
		
	  }
	 
	 @RequestMapping("/UpdateProfile.do")
	 public ModelAndView UpdateProfile(Member m, ModelAndView mv,HttpServletRequest request )	 {	
		 System.out.println(m);
		 try {
			 mService.updateProfile(m);
			 mv.setViewName("redirect:profile.do");
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return mv;
	 }
	 //pw 변경
	 @RequestMapping(value = "/UpdatePwProfile.do", method = RequestMethod.POST)
	 public ModelAndView UpdatePwProfile(Member m, ModelAndView mv,HttpServletRequest request, 
			 @RequestParam(name="id") String id, @RequestParam(name="passwordck") String passwordck,
			 @RequestParam(name="password") String password, HttpServletResponse response, HttpSession session)	 {	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		 String sessionId = (String) session.getAttribute("loginId");
		 System.out.println(sessionId);
		 System.out.println(passwordck);
		 System.out.println(password);
		 PrintWriter out = null;	
		 m.setId(sessionId);
		 m.setPassword(passwordck);
		 List<Member> pw = new ArrayList<Member>();
		 pw = mService.pwCheck(m);
				 
		 if(pw.size()>0) {
			 if(passwordck.equals(pw.get(0).getPassword())) {
				 m.setPassword(password);
				 mService.updatePw(m);
				
				 mv.setViewName("redirect:profile.do");
			 }else {
				  System.out.println("비번다름");
				  	try {
						out = response.getWriter();
						out.append("<script>alert('비밀번호가 틀립니다.');location.href='profile.do'</script>");
						out.flush();
						out.close();
					} catch (IOException e) {
						e.printStackTrace();
					}			
			 } 
		 }else {
			 try {
				 System.out.println("비번 못가져옴");
				out = response.getWriter();
				out.append("<script>alert('비밀번호가 틀립니다.');location.href='profile.do'</script>");
				out.flush();
				out.close();
			 } catch (IOException e) {
				e.printStackTrace();
			}
			 
		 }
		 return mv;
	 }
//	//Profile 화면에서 본인이 수정  ajax안씀 
//	@ResponseBody  
//	@RequestMapping(value="/UpdateProfile.do",method=RequestMethod.POST , produces = "application/json; charset=UTF-8")
//	public String ProfileUpdate(Member m) {
//		JSONObject job = new JSONObject();
//		try {
//			job.put("ack", mService.updateProfile(m));		
//		} catch (Exception e) {
//			job.put("ack", -1);
//		} finally {
//			return job.toJSONString(); //전달된 데이터 /리턴은 string 타입
//			}
//		}
	
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
	
	@RequestMapping("/")
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
				mv.setViewName("redirect:");
				
			}else {
				session.setAttribute("loginId", result.getId()); 
				session.setAttribute("dept_no", result.getDept_no()); 
				session.setAttribute("position",result.getPosition());
				System.out.println(result.getPosition());
				mv.setViewName("redirect:home.do");			
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
	@RequestMapping("/schdmanagement.do")
	public ModelAndView schdmanagement(ModelAndView mv,HttpSession session) {
		String id = (String) session.getAttribute("loginId");
		mv.addObject("list",aScService.selectAnnualList(id));
		mv.setViewName("/member/schdmanagement");
		return mv;
	}
	@RequestMapping("/update_scheduleSc.do")
	public ModelAndView update_scheduleSc(ModelAndView mv,AnnualSc vo) {
		if(vo.getAnnual_kind().equals("")||vo.getAnnual_kind()==null) {
			vo.setAnnual_kind("월차");
		}
		aScService.updatescheduleSc(vo);
		mv.setViewName("redirect:schdmanagement.do");
		return mv;
	}
	@RequestMapping("/insert_scheduleSc.do")
	public ModelAndView insert_scheduleSc(ModelAndView mv,AnnualSc vo,HttpSession session) {
		if(vo.getAnnual_kind().equals("")||vo.getAnnual_kind()==null) {
			vo.setAnnual_kind("월차");
		}
		String id = (String) session.getAttribute("loginId");
		vo.setId(id);
		System.out.println(vo.getAnnual_stddate());
		System.out.println(vo.getannual_enddate());
		aScService.insertscheduleSc(vo);
		mv.setViewName("redirect:schdmanagement.do");
		return mv;
	}
	@ResponseBody
	@RequestMapping("/checkuserid.do")
	public int checkuserid(@RequestParam(name="id")String id,@RequestParam(name="dept")String dept) {
		int result = 0;
		List<Member>list = mService.checkuserid(id);
		String resultid = list.get(0).getPosition();
		if(resultid.equals("부장")) {
			result =1;
		}
		return result; 
	}
		@ResponseBody
		@RequestMapping("/checkuserid2.do")
		public int checkuserid2(@RequestParam(name="id")String id,@RequestParam(name="dept")String dept,@RequestParam(name="dept2")String dept2) {
			int result = 0;
			List<Member>list = mService.checkuserid(id);
			String resultdept=list.get(0).getDept_no();
			String resultid = list.get(0).getPosition();
			if(resultid.equals("부장")&&resultdept.equals(dept2)) {
				result =1;
			}
			return result; 
		}
}
