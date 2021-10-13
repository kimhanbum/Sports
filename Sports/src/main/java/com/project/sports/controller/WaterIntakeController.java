package com.project.sports.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import com.project.sports.domain.Member;
import com.project.sports.domain.WaterIntake;
import com.project.sports.service.MemberService;
import com.project.sports.service.WaterIntakeService;

@Controller
@RequestMapping(value = "/water")
public class WaterIntakeController {

	private static final Logger logger = LoggerFactory.getLogger(BbsFrController.class);

	@Autowired
	private WaterIntakeService WaterService;
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/calendar")
	public String water1() {
		return "sports_water/Water_Calendar";
	}

	@ResponseBody
	@RequestMapping(value = "/list")
	public List<WaterIntake> water(String yearMonth) {
		logger.info("yearMonth=" + yearMonth);// 2021-10
		List<WaterIntake> list = WaterService.getList(yearMonth);
		return list;
	}

	@PostMapping(value = "/wateradd")
	@ResponseBody
	public String add(WaterIntake water, HttpServletRequest request, HttpSession session) throws Exception {

		String date = water.getTime_start();
		logger.info("date:" + date);
		water.setUser_id((String) session.getAttribute("USER_ID"));

		WaterService.Waterinsert(water);
		logger.info("water:" + water);
		return "redirect:calendar";
	}

	/*
	 * @PostMapping(value = "/wateradd2")
	 * 
	 * @ResponseBody public Map<String, Object> add(WaterIntake water, HttpSession
	 * session, Member member,
	 * 
	 * @RequestParam(value = "goaldata", defaultValue = "0", required = false)
	 * double goaldata,
	 * 
	 * @RequestParam(value = "title", defaultValue = "0", required = false) String
	 * title) { water.setUser_id((String) session.getAttribute("USER_ID"));
	 * water.setTitle(title); logger.info("title" + title);
	 * WaterService.wateradd(water);
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>(); map.put("goaldata",
	 * goaldata); map.put("title", title); logger.info("goaldata" + goaldata);
	 * logger.info("water" + water);
	 * 
	 * logger.info("goaldata" + goaldata);
	 * 
	 * return map; }
	 * 
	 * @RequestMapping(value = "/view") public String view(Model md, HttpSession
	 * session) { Member member = memberService.member_info((String)
	 * session.getAttribute("USER_ID")); md.addAttribute("goaldata",
	 * member.getUSER_WWEIGHT() * 0.033); return "sports_water/GoalWater"; }
	 */

}
