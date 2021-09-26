package com.project.sports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/Mydeal")
public class MydealController {

	//메인 페이지 리스트
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public ModelAndView AutionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			 ModelAndView mv) {
		
		mv.setViewName("MyDeal/MyDeal_main");
		
		return mv;
		
		}
}
