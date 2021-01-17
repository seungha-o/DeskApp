/*
 * package com.kh.wefer.schedules.controller;
 * 
 * import java.text.DateFormat; import java.util.Date; import java.util.Locale;
 * 
 * import org.slf4j.Logger; import org.slf4j.LoggerFactory; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod;
 * 
 * import com.kh.wefer.HomeController;
 * 
 *//**
	 * Handles requests for the application home page.
	 */
/*
 * @Controller public class ScheduleController {
 * 
 * private static final Logger logger =
 * LoggerFactory.getLogger(HomeController.class);
 * 
 *//**
	 * Simply selects the home view to render by returning its name.
	 *//*
		 * @RequestMapping(value = "/schedule.do", method = RequestMethod.GET) public
		 * String home(Locale locale, Model model) {
		 * logger.info("Welcome home! The client locale is {}.", locale);
		 * 
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate);
		 * 
		 * return "schedules/schedule"; } }
		 */

package com.kh.wefer.schedules.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wefer.HomeController;
import com.kh.wefer.schedules.model.domain.Schedules;
import com.kh.wefer.schedules.model.service.SchedulesService;

/*import com.kh.wefer.schedules.model.domain.Schedules;
import com.kh.wefer.schedules.model.service.SchedulesService;
*/
@Controller
public class ScheduleController {

	@Autowired
	private SchedulesService schdservice;

	// 일정표시
	@RequestMapping(value = "/schedule.do", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv,@RequestParam(name="type", required = false, defaultValue = "all")String type) {

		if(type.equals("1")) {
			type ="1";
			mv.addObject("list", schdservice.schedulesDeptList(type));		
		}else if(type.equals("2")) {
			type ="2";
			mv.addObject("list", schdservice.schedulesDeptList(type));		
		}else if(type.equals("3")) {
			type ="3";
			mv.addObject("list", schdservice.schedulesDeptList(type));
		}else if(type.equals("회사")) {
			type ="회사";
			mv.addObject("list", schdservice.schedulesStList(type));
		}else if(type.equals("all")) {
			mv.addObject("list", schdservice.schedulesList());
		}
		mv.setViewName("schedules/schedule");
		return mv;
	}

	@RequestMapping(value = "/delete_schedule.do")
	public ModelAndView deleteSchedules(@RequestParam(name = "scid") String scid, ModelAndView mv) {

		schdservice.deleteSchedules(scid);
		mv.setViewName("redirect:schedule.do");
		return mv;
	}

	// 일정수정
	@RequestMapping(value = "/update_schedule.do", method = RequestMethod.POST)
	public ModelAndView submitsc2(ModelAndView mv, Schedules schd) {

		String color = schd.getDept_no();

		if (color.equals("1")) {
			schd.setSchedules_color("#FF0000");
			
		} else if (color.equals("2")) {
			schd.setSchedules_color("#228B22");
			
		} else if (color.equals("3")) {
			schd.setSchedules_color("#0000FF");
		}
		schdservice.updateSchedules(schd);

		mv.setViewName("redirect:schedule.do");
		return mv;
	}
	
	// 일정 추가
	@RequestMapping(value = "/add_schedule.do", method = RequestMethod.POST)
	public ModelAndView submitsc(ModelAndView mv, Schedules schd) {

		String color = schd.getDept_no();

		if (color.equals("1")) {
			schd.setSchedules_color("#FF0000");
			
		} else if (color.equals("2")) {
			schd.setSchedules_color("#228B22");
			
		} else if (color.equals("3")) {
			schd.setSchedules_color("#0000FF");
		}
		schdservice.insertSchedules(schd);

		mv.setViewName("redirect:schedule.do");
		return mv;
	}

}
