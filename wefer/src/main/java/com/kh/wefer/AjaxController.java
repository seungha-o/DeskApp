package com.kh.wefer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.wefer.attendance.model.domain.Attendance;
import com.kh.wefer.attendance.model.service.AttendanceService;
import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.MemberService;

@RestController
public class AjaxController {
	@Autowired
	AttendanceService attendanceService;
	@Autowired 
	private MemberService mService;
	@Autowired
	private AttendanceService aService;
	@ResponseBody
	@PostMapping("/memeberList")
	public Object restController() {
		List<Member> arrList = new ArrayList<Member>();
		arrList= mService.memberList();
		return arrList;
	}
	@ResponseBody
	@PostMapping("/SessionmemeberList")
	public Object SessionMemberController(Member my_name,  HttpSession session ) {
		List<Member> arrList = new ArrayList<Member>();
		arrList= mService.memberList();
		my_name.setName((String) session.getAttribute("loginName"));
		return arrList;
	}
	@ResponseBody
	@RequestMapping(value="/deptmemberlist.do")
	public Object deptlist(@RequestParam(name="dept" ,defaultValue = "") String dept_no) {
		List<Member> list = new ArrayList<Member>();

		if(dept_no==null||dept_no.equals("")) {	
			try {
				list = mService.memberAllList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				list = mService.deptmemberlist(dept_no);				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(list);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/searchmemberlist.do")
	public Object searchmemberlist(
			@RequestParam(name="keyword" ,defaultValue = "") String keyword) {
		System.out.println(keyword);
		List<Member> list = new ArrayList<Member>();
		if(keyword==null||keyword.equals("")) {	
			try {
				list = mService.memberAllList();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				list = mService.searchmemberlist(keyword);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(list);
		return list;
	}
	
		@ResponseBody
		@RequestMapping(value="/searchattendancelist.do")
		public Object searchattendancelist(
				@RequestParam(name="startdate" ,defaultValue = "") String startdate,
				@RequestParam(name="enddate" ,defaultValue = "") String enddate
				) {
			
			List<Attendance> list = new ArrayList<Attendance>();
			try {
				list = aService.searchattendancelist(startdate,enddate);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(list);
			return list;
		}
		
		@ResponseBody
		@RequestMapping(value="/attendbutton.do", method = RequestMethod.POST,produces ="application/text; charset=utf8")
		public String attendbutton(HttpSession session, HttpServletRequest request) {
			session = request.getSession();
			String id = (String)session.getAttribute("loginId");
			System.out.println("세션아이디 :"+id);
			List<Attendance> list1 = new ArrayList<Attendance>();
			List<Attendance> list2 = new ArrayList<Attendance>();
			String b="0";
			list1 = attendanceService.selectattend(id);
			list2 = attendanceService.selectattend2(id);
			System.out.println("사이즈는?" + list1.size());
			if(list1.size() != 0) {
				System.out.println("사이즈는2?" + list2.size());
				if(list2.size() != 0) {
					b="0";
				}else {
					b="1";
				}
			}else {
				b = "0";
			}
			System.out.println("에이작스반환값 : "+b);
			return b;
		}
		
		
		@ResponseBody
		@RequestMapping(value="/insertattend.do", method = RequestMethod.POST,produces ="application/text; charset=utf8")
		public String insertattend(HttpSession session, HttpServletRequest request) {
			String id = (String)session.getAttribute("loginId");
			System.out.println("인써트 세션아이디 :"+id);
			String b = null;
			List<Attendance> list1 = new ArrayList<Attendance>();
			list1 = attendanceService.selectattend(id);
			System.out.println("인써트 조회 a : "+list1);
			if(list1.size()==0) {
				System.out.println("사이즈가  0임");
				attendanceService.insertattend(id);
				System.out.println("인서트 성공");
				b = "출근 처리되었습니다";
			}else {
				
				
				/*
				 * //����Ʈ�� �ִ°� �����ͼ� String a = "010:11:23"; //�տ� �ð��� �߶�ְ� String s =
				 * a.substring(0,2); System.out.println("�ð��ڸ��� : " + s); //�� �ð��� 0���ִٸ� 0�ڸ���
				 * if(s.contains("0")) { String g = s.substring(1);
				 * System.out.println("�ð��� 0 �ڸ���: " + g); }
				 */
				
				b = "이미 출근하셨습니다";
			}
			System.out.println(b);
			return b;
		}
		
		@ResponseBody
		@RequestMapping(value="/updateattend.do",method = RequestMethod.POST,produces ="application/text; charset=utf8")
		public String updateattend(HttpSession session, HttpServletRequest request) throws ParseException {
			session = request.getSession();
			String id = (String)session.getAttribute("loginId");
			System.out.println("���Ǿ��̵� :"+id);
			List<Attendance> list1 = new ArrayList<Attendance>();
			String b = "";
			String a = "";
			list1=attendanceService.selectattend2(id);
			if(list1.size()==0) {
				a=attendanceService.selectattendafter(id);
				
				SimpleDateFormat format = new SimpleDateFormat ("HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				Date curDate = new Date();
				String xxx = format.format(curDate);
				System.out.println("xxx:"+xxx);

				
				
				curDate = format.parse(format.format(curDate));
				
				System.out.println("curDate"+curDate);

				Date x = format.parse(xxx);
				System.out.println("a:"+a);
				Date aa = format.parse(a);
				
				System.out.println("x : "+ x);
				System.out.println("aa: "+ aa);
				
				long bbb = x.getTime();
				long aaa = aa.getTime();
				long ccc = (x.getTime()-aa.getTime());
				
				String date =(String)format.format(new Date(ccc));
				String date2 =(String)format.format(new Date(bbb));
				String date3 =(String)format.format(new Date(aaa));
				Date date4 = format.parse(date);
				cal.setTime(date4);
				cal.add(Calendar.HOUR,-9);
				String date5 = format.format(cal.getTime());
				System.out.println(aaa);
				System.out.println(bbb);
				System.out.println(ccc);
				System.out.println("��ٽð�"+date3);
				System.out.println("��ٽð�"+date2);
				System.out.println("�ٹ��ð�"+date5);
				
				DateTimeFormatter dtf3 = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
				SimpleDateFormat format2 = new SimpleDateFormat ("HH:mm:ss");
				System.out.println(dtf3.format(LocalDateTime.now()));
				String subYear = dtf3.format(LocalDateTime.now());
				String addYear = subYear.substring(0, 10);
				date2 = addYear +" "+ date2;
				date5 = addYear + " " + date5;
				attendanceService.updateattend(id,date5,date2);
				session.invalidate();
			
				b="퇴근 처리되었습니다";
				
			}else {
				b="이미 퇴근하셨습니다";
			}
			System.out.println("�����۽���ȯ�� : "+b);
			return b;
		}
}
