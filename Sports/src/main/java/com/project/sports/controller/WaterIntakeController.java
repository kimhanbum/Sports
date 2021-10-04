package com.project.sports.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value="/calendar", method = RequestMethod.GET)
	public String water() {
		return "sports_water/Water_Calendar";
	} 
	
	@PostMapping(value="/wateradd")
	public String add(WaterIntake water, HttpServletRequest request)
			throws Exception {
		String waterintake = water.getWI_INTAKE();
		logger.info("waterintake:" + waterintake);

		WaterService.Waterinsert(water);
		logger.info("water:" + water);
		return "redirect:calendar";
	}
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping(value="/calendar_ajax") public Map<String,Object> Calendar(
	 * 
	 * @RequestParam(value="cup", defaultValue="1",required=false) int cup){
	 * 
	 * }
	 */
}
