package com.project.sports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/DealA")
public class DealAuctionController {
	
	//���� ������ ����Ʈ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView AutionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			 ModelAndView mv) {
		
		mv.setViewName("Deal/DealA_list");
		
		return mv;
		
		}
	
	// �۾��� 
	@GetMapping(value="/write")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Auction_write() {
		return "Deal/Auction_write";
	}
	
	// �� ������
	@GetMapping(value="/detail")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Auction_detail() {
		return "Deal/Auction_detail";
	}
	
}
