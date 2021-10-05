package com.project.sports.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/mypage")
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	//글 목록 보기
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView mainPage(ModelAndView mv) {
		mv.setViewName("sports_mypage/mypage_home");
		return mv;
	}
	//내 멘티,멘토 글 작성 리스트
	@RequestMapping(value = "/mmwriteList", method = RequestMethod.GET)
	public ModelAndView mmwriteList(ModelAndView mv) {
		mv.setViewName("sports_mypage/mypage_mmwritelist");
		return mv;
	}
	
}
