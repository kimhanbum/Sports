package com.project.sports.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;
import com.project.sports.service.PersonalManagementService;

@Controller
@RequestMapping(value="/pm")
public class PersonalManagementController {
	
	private static final Logger logger	
	= LoggerFactory.getLogger(BbsFrController.class);

	@Autowired
	private PersonalManagementService pmService;
	
	@RequestMapping(value="/view")
	public String list(){
		return "sports_management/personal_management";
	}
	
	@RequestMapping(value="/select")
	@ResponseBody
	public List<Sports> select(String select) {
		List<Sports> list = pmService.getSelect(select);
		logger.info("select=" + select);
		for(Sports value : list) {
		logger.info("½ºÆ÷Ã÷¸í="+value.getSPORTS_NAME());
		logger.info("Ä®·Î¸®:" + value.getCAL());
		}
		return list;
	}	
	
	@PostMapping(value="/add")
	@ResponseBody
	public String add(PersonalManagement pm,  HttpSession session,
					 @RequestParam(value="time", defaultValue="0",required=false)
					  int time,
					 @RequestParam(value="sports_name", required=false)
					  String sports_name,
					 @RequestParam(value="cal", required=false) 
						int cal){
		
			pm.setSPORTS_NAME(sports_name);
			pm.setPM_KCAL(cal * time);
			pm.setUSER_ID((String)session.getAttribute("USER_ID"));
			pmService.insertPM(pm);
			
		return "success";
	}
	
	@RequestMapping(value="/list")
	@ResponseBody
	public List<Map<String, Object>> getList(PersonalManagement pm, HttpSession session){
		
		pm.setUSER_ID((String)session.getAttribute("USER_ID"));
		return pmService.getList(pm);
	}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public void delete(@RequestParam(value="num", required=false) int num) {
		int result = pmService.delete(num);
		logger.info("result=" + result);
		logger.info("num=" + num);
	}
	
}
