package com.project.sports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/DealD")
public class DealDirectController {
	
	//���� ������ ����Ʈ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView AutionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			 ModelAndView mv) {
		
		mv.setViewName("Deal/DealD_list");
		
		return mv;
		
		}
	
	// �۾��� 
	@GetMapping(value="/write")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Direct_write() {
		return "Deal/Direct_write";
	}
	
	// �� ������
	@GetMapping(value="/detail")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Direct_detail() {
		return "Deal/Direct_detail";
	}
	
	// �ۼ���
	@GetMapping(value="/modify")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Direct_modify() {
		return "Deal/Direct_modify";
	}

}
