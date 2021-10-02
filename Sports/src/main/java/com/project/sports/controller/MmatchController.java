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
	
	//멘토 글 리스트 보기
	@RequestMapping(value = "/mentorPage", method = RequestMethod.GET)
	public ModelAndView metorMainPage(ModelAndView mv) {
		mv.setViewName("sport_menMatch/sports_mentor");
		return mv;
	}
	
	//멘토 글 작성
	@RequestMapping(value = "/mentorWrite", method = RequestMethod.GET)
	public ModelAndView mentorWrite(ModelAndView mv) {
		mv.setViewName("sport_menMatch/sports_mentor_write");
		return mv;
	}
}
