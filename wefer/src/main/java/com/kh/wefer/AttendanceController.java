package com.kh.wefer;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.attendance.model.domain.Attendance;
import com.kh.wefer.attendance.model.service.AttendanceService;

@Controller
public class AttendanceController {
	@Autowired AttendanceService attendanceService;
	
	@RequestMapping("/attendancelist.do")
	public ModelAndView attendancelist(ModelAndView mv) {
		List<Attendance> daylist = attendanceService.attendanceDaylist();
		List<Attendance> weeklist = attendanceService.attendanceWeeklist();
		mv.setViewName("attendance/attendancelist");
		mv.addObject("dlist" , daylist);
		mv.addObject("wlist" , weeklist);
		System.out.println(daylist);
		System.out.println(weeklist);
		return mv;
	}
		
}
