package com.project.sports.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/mmatch")
public class MmatchController {
	private static final Logger logger = LoggerFactory.getLogger(MmatchController.class);
	
	//글 목록 보기
	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public ModelAndView mainPage(ModelAndView mv) {
		mv.setViewName("sport_menMatch/sports_mentor");
		return mv;
	}
}
