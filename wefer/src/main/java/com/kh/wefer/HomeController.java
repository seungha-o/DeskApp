package com.kh.wefer;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.attendance.model.domain.Attendance;
import com.kh.wefer.attendance.model.service.AttendanceService;
import com.kh.wefer.member.model.domain.AnnualSc;
import com.kh.wefer.member.model.domain.Member;
import com.kh.wefer.member.model.service.AnnualScService;
import com.kh.wefer.member.model.service.MemberService;
import com.kh.wefer.schedules.model.service.SchedulesService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private AnnualScService aScService;

	@Autowired AttendanceService attendanceService;

	@Autowired
	private SchedulesService schdservice;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv, HttpSession session, HttpServletRequest request) throws ParseException {
		String loginUserName = (String) session.getAttribute("loginId");
		String id = (String) session.getAttribute("loginId");
		mv.addObject("list", aScService.selectAnnualList(loginUserName));
		mv.addObject("list2", schdservice.schedulesList());
		mv.addObject("loginId", loginUserName);
		mv.setViewName("index");

		List<Attendance> today = attendanceService.attendToDay(id);
		SimpleDateFormat workFormat = new SimpleDateFormat("HH:mm:ss");
		String aaa = "00:00:00";
		Date bbb = workFormat.parse(aaa);
		if (today.size() != 0) {
			if (today.get(0).getAttend_work_time() == null) {
				today.get(0).setAttend_gotohome(bbb);
			} else {
				String worktime = workFormat.format(today.get(0).getAttend_work_time());
				System.out.println("today++++++++++" + today);
				System.out.println(worktime);
				mv.addObject("worktime", worktime);

				mv.addObject("today", today);
			}
		}
		// ============================================================

		List<Attendance> average = attendanceService.workaverage(id);
		System.out.println("average" + average);

		String as_h = "";
		String as_m = "";
		String as_s = "";
		System.out.println("asdasd" + average);
		int ai_h = 0;
		int ai_m = 0;
		int ai_s = 0;

		double sum_h = 0;
		double sum_m = 0;
		double sum_s = 0;

		double double_h = 0.0;
		double double_m = 0.0;
		double double_s = 0.0;
		Date utilDate = new Date();
//
//		java.util.Date utilDate = rs.getTimestamp("regdate");    
		// ->java.sql.Timestamp가 Date을 상속하기 때문에 이렇게 쓸 수 있음
		System.out.println("몇개?? " + average.size());
		Timestamp b = null;
		for (int i = 0; i < average.size(); i++) {
			if (average.get(i) == null) {
				continue;
			}
			System.out.println();
			utilDate = average.get(i).getAttend_work_time();
			String asdas = String.valueOf(utilDate);
			System.out.println("utilDate" + asdas);
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
			String stringAg = transFormat.format(utilDate);
			System.out.println("ssss :" + stringAg);

			as_h = stringAg.substring(9, 11);
			System.out.println("as_h : " + as_h);

			as_m = stringAg.substring(12, 14);
			System.out.println("as_m : " + as_m);

			as_s = stringAg.substring(15, 17);
			System.out.println("as_s : " + as_s);

			if (as_h.contains("0")) {
				as_h = as_h.substring(1);
			}
			if (as_m.contains("0")) {
				as_m = as_m.substring(1);
			}
			if (as_s.contains("0")) {
				as_s = as_s.substring(1);
			}
			System.out.println("자른시간" + as_h);
			System.out.println("자른븐" + ai_m);
			System.out.println("자른초" + as_s);

			ai_h = Integer.parseInt(as_h);
			ai_m = Integer.parseInt(as_m);
			ai_s = Integer.parseInt(as_s);

			double_h = Math.round(ai_h * 100 / 100.0);
			double_m = Math.round(ai_m * 100 / 100.0);
			double_s = Math.round(ai_s * 100 / 100.0);

			sum_h += ai_h;
			sum_m += ai_m;
			sum_s += ai_s;
			System.out.println("더한시간" + double_h);
			System.out.println("더한분" + double_m);
			System.out.println("더한초" + double_s);

		}
		double hh = double_h;
		double mm = double_m / (double) 60;
		double ss = double_s / (double) 6000;

		System.out.println("더한시간" + hh);
		System.out.println("더한분" + mm);
		System.out.println("더한초" + ss);

		double sumResult = hh + mm + ss;
		System.out.println(sumResult);

		double avgResult = sumResult / (double) average.size();
		String avgString = String.format("%,.3f", avgResult);
		System.out.println("averagetime: " + avgString);
		mv.addObject("avgString", avgString);

		return mv;
	}
	
	@RequestMapping(value = "/chat.do", method = RequestMethod.GET)
	public ModelAndView chat(ModelAndView mv, HttpSession session, HttpServletRequest request) {
		String loginUserName = (String) session.getAttribute("loginId");
		logger.info("Welcome " + loginUserName); 
		
		mv.addObject("loginId", loginUserName);
		mv.setViewName("chat");
		return mv;
		
	}

	
}
