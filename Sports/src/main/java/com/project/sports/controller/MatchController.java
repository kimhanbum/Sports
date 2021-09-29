package com.project.sports.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/match")
public class MatchController {
	private static final Logger logger = LoggerFactory.getLogger(MatchController.class);
	
	//글 목록 보기
	@RequestMapping(value = "/mainPage", method = RequestMethod.GET)
	public ModelAndView mainPage(ModelAndView mv) {
		mv.setViewName("sport_match/Sport_matching");
		return mv;
	}
	
	@RequestMapping(value = "/baseball", method = RequestMethod.GET)
	public ModelAndView baseball(ModelAndView mv) {
		mv.setViewName("sport_match/match_baseball");
		return mv;
	}
	
	@RequestMapping(value = "/Search", method = RequestMethod.POST)
	public ModelAndView search(ModelAndView mv) {
		mv.setViewName("sport_match/match_baseball");
		return mv;
	}
}
