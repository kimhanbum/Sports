package com.project.sports.controller;

import java.util.List; 

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.sports.domain.Match;
import com.project.sports.service.MatchService;
 
@Controller
@RequestMapping(value="/match")
public class MatchController {
	private static final Logger logger = LoggerFactory.getLogger(MatchController.class);
	
	@Autowired
	private MatchService matchservice;
	
	//글 목록 보기
	/*
	 * @RequestMapping(value = "/mainPage", method = RequestMethod.GET) public
	 * ModelAndView mainPage(ModelAndView mv) {
	 * mv.setViewName("sport_match/Sport_matching"); return mv; }
	 */
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
	
	
	@RequestMapping(value="/mainPage",method=RequestMethod.GET)
	public ModelAndView boardList(
			@RequestParam(value="page",defaultValue="1",required=false) int page, ModelAndView mv) {
		int limit =5; // 한 화면에 출력할 레코드 갯수
		
		int listcount = matchservice.getListCount(); //총 리스트 수를 받아옴
		
		//총페이지 수
		int maxpage = (listcount + limit - 1) / limit;
		
		//현재 페이지에 보여줄 시작 페이지 수(1,11,21, 등..)
		int startpage = ((page -1) /10) *10 +1;
		
		//현재 페이지에 보여줄 마지막 페이지 수 (10,20,30 등..)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
		   endpage = maxpage;
		
		List<Match> matchlist = matchservice.getMatchList(page, limit);
		
		mv.setViewName("sport_match/Sport_matching");
		mv.addObject("page",page);
		mv.addObject("maxpage",maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("matchlist", matchlist);
		mv.addObject("limit", limit);
		return mv;
	}
}
