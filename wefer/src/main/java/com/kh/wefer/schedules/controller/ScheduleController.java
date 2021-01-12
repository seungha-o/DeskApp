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

	// 일정게시

	@RequestMapping(value = "/schedule.do", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) {

		mv.addObject("list",schdservice.schedulesList("test1"));
		mv.setViewName("schedules/schedule");
		return mv;
	}

	// 일정추가

	@ResponseBody
	@RequestMapping(value = "/insertSchedules", method = RequestMethod.POST)
	public Map<Object, Object> insertSchedules(@RequestBody Schedules schd) throws Exception {
		Map<Object, Object> map = new HashMap<Object, Object>();

		schdservice.insertSchedules(schd);

		return map;
	}

	@RequestMapping(value = "/a.do", method = RequestMethod.POST)
	public ModelAndView submitsc(ModelAndView mv, Schedules vo) {
		schdservice.insertSchedules(vo);
		mv.setViewName("redirect:schedule.do");
		return mv;
	}

}
