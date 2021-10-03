package com.project.sports.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/water")
public class WaterIntakeController {

	private static final Logger logger	
	= LoggerFactory.getLogger(BbsFrController.class);
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String waterlist() {
		return "sports_water/datepicker";
	} 
}
