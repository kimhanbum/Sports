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
	
	//�� ��� ����
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView mainPage(ModelAndView mv) {
		mv.setViewName("sports_mypage/mypage_home");
		return mv;
	}

}
