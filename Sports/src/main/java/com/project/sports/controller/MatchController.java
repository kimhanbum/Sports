package com.project.sports.controller;

import java.io.File; 
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.sports.domain.Match;
import com.project.sports.domain.Sports;
import com.project.sports.service.MatchService;
 
@Controller
@RequestMapping(value="/match")
public class MatchController {
	private static final Logger logger = LoggerFactory.getLogger(MatchController.class);
	
	@Autowired
	private MatchService matchservice;
	
	private ModelAndView pageSet(int num, int page, String page_name) {
		int limit = 5; // 한 화면에 출력할 레코드 갯수
		int listcount = matchservice.getListCount(num); //총 리스트 수를 받아옴
		//총페이지 수
		int maxpage = (listcount + limit - 1) / limit;
		
		//현재 페이지에 보여줄 시작 페이지 수(1,11,21, 등..)
		int startpage = ((page -1) /10) *10 +1;
		
		//현재 페이지에 보여줄 마지막 페이지 수 (10,20,30 등..)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
		   endpage = maxpage;
		
		List<Match> matchlist = matchservice.getMatchList(page, limit, num);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName(page_name);
		mv.addObject("page",page);
		mv.addObject("maxpage",maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("matchlist", matchlist);
		mv.addObject("limit", limit);
		return mv;
	}
	
	
  @RequestMapping(value = "/baseball", method = RequestMethod.GET) public
  ModelAndView baseball(
			@RequestParam(value="page",defaultValue="1",required=false) int page, ModelAndView mv) {
		int num = 2;   //sport_num =1
		String page_name = "sport_match/match_baseball";
		return pageSet(num, page, page_name);
		
	}
	
	@RequestMapping(value = "/football", method = RequestMethod.GET)
	public ModelAndView football(@RequestParam(value="page",defaultValue="1",required=false) int page, ModelAndView mv) {
		int num=3;
		String page_name ="sport_match/match_football";
		return pageSet(num, page, page_name);
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
	public ModelAndView vallyball(@RequestParam(value="page",defaultValue="1",required=false) int page,
			ModelAndView mv) {
		int num = 8;   //sport_num 확인
		String page_name = "sport_match/match_volleyball";
		return pageSet(num, page, page_name);
	}
	
	@RequestMapping(value="/mainPage",method=RequestMethod.GET)
	public ModelAndView mainPage(
			@RequestParam(value="page",defaultValue="1",required=false) int page, ModelAndView mv) {
		int num = 1;   //sport_num =1
		String page_name = "sport_match/Sport_matching";
		return pageSet(num, page, page_name);
	}
	
	@ResponseBody
	@RequestMapping(value = "/selSportName", method = RequestMethod.POST, produces="application/text;charset=utf8")
	public String selSportName(@RequestBody Sports param) throws Exception {
		return matchservice.selSportName(param);
	}
	
	@RequestMapping(value="/Regi",method=RequestMethod.POST)
	public String add(Match match, HttpServletRequest request) throws Exception{
		matchservice.insertMatch(match); // 저장 메서드 호출
		return "redirect:baseball";
	}
	
	@RequestMapping(value="/SearchList",method=RequestMethod.GET)
	public ModelAndView search(
			@RequestParam(value="page",defaultValue="1",required=false) int page, Match match, ModelAndView mv) {
		int num = 1;   //sport_num =1
		
		int limit = 5; // 한 화면에 출력할 레코드 갯수
		int listcount = matchservice.getListCount(num); //총 리스트 수를 받아옴
		
		//총페이지 수
		int maxpage = (listcount + limit - 1) / limit;
		
		//현재 페이지에 보여줄 시작 페이지 수(1,11,21, 등..)
		int startpage = ((page -1) /10) *10 +1;
		
		//현재 페이지에 보여줄 마지막 페이지 수 (10,20,30 등..)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
		   endpage = maxpage;
		
		List<Match> matchlist = matchservice.getSearchList(page, limit, num, match);
		
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
