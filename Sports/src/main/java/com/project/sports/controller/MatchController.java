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
	
	@RequestMapping(value = "/football", method = RequestMethod.GET)
	public ModelAndView football(ModelAndView mv) {
		mv.setViewName("sport_match/match_football");
		return mv;
	}
	
	@RequestMapping(value = "/basketball", method = RequestMethod.GET)
	public ModelAndView basketball(ModelAndView mv) {
		mv.setViewName("sport_match/match_basketball");
		return mv;
	}
	
	@RequestMapping(value = "/golf", method = RequestMethod.GET)
	public ModelAndView golf(ModelAndView mv) {
		mv.setViewName("sport_match/match_golf");
		return mv;
	}
	
	@RequestMapping(value = "/bowling", method = RequestMethod.GET)
	public ModelAndView bowling(ModelAndView mv) {
		mv.setViewName("sport_match/match_bowling");
		return mv;
	}
	
	@RequestMapping(value = "/tennis", method = RequestMethod.GET)
	public ModelAndView tennis(ModelAndView mv) {
		mv.setViewName("sport_match/match_tennis");
		return mv;
	}
	
	@RequestMapping(value = "/badminton", method = RequestMethod.GET)
	public ModelAndView badminton(ModelAndView mv) {
		mv.setViewName("sport_match/match_badminton");
		return mv;
	}
	
	
	@RequestMapping(value = "/tabletennis", method = RequestMethod.GET)
	public ModelAndView tabletennis(ModelAndView mv) {
		mv.setViewName("sport_match/match_tabletennis");
		return mv;
	}
	
	@RequestMapping(value = "/volleyball", method = RequestMethod.GET)
	public ModelAndView vallyball(ModelAndView mv) {
		mv.setViewName("sport_match/match_volleyball");
		return mv;
	}
}
