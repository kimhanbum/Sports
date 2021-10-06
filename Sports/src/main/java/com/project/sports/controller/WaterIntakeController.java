package com.project.sports.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sports.domain.WaterIntake;
import com.project.sports.service.WaterIntakeService;

@Controller
@RequestMapping(value="/water")
public class WaterIntakeController {

	private static final Logger logger	
	= LoggerFactory.getLogger(BbsFrController.class);
	
	@Autowired
	private WaterIntakeService WaterService;
	
	@RequestMapping(value="/calendar")
	public String water1() {
		return "sports_water/Water_Calendar";
	}
	
	@ResponseBody
	@RequestMapping(value="/list")
	public List<WaterIntake> water(String yearMonth ) {
		logger.info("yearMonth="+yearMonth);//2021-10
		List<WaterIntake> list = WaterService.getList(yearMonth);
		return list;
	} 
	
	@PostMapping(value="/wateradd")
	@ResponseBody
	public String add(WaterIntake water, HttpServletRequest request, HttpSession session)
			throws Exception {
		
		String date = water.getTime_start();
		logger.info("date:" + date);
		water.setUser_id((String)session.getAttribute("USER_ID"));
		
		WaterService.Waterinsert(water);
		logger.info("water:" + water);
		return "redirect:calendar";
	}
	
}
