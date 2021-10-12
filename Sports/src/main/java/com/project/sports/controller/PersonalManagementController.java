package com.project.sports.controller;

import java.util.HashMap;
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
		logger.info("��������="+value.getSPORTS_NAME());
		logger.info("Į�θ�:" + value.getCAL());
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
					  int cal,
					 @RequestParam(value="sports_img", required=false)
					  String sports_img){
		
			pm.setSPORTS_NAME(sports_name);
			pm.setPM_KCAL(cal * time);
			pm.setSPORTS_IMG(sports_img);
			pm.setUSER_ID((String)session.getAttribute("USER_ID"));
			pmService.insertPM(pm);
			
		return "success";
	}
	
	@RequestMapping(value="/list")
	@ResponseBody
	public Map<String, Object> getList(
				//PersonalManagement pm, 
				HttpSession session,
				@RequestParam(value="page",defaultValue="1",required=false) int page,
				@RequestParam(value="limit",defaultValue="10",required=false) int limit
				){
		String id =(String)session.getAttribute("USER_ID");
		logger.info("id : " + id);
		limit = 3;	// �� ȭ�鿡 ����� ���ڵ� ����
		int listcount =pmService.getListCount(id); //�� ����Ʈ ���� �޾ƿ�
		//�� ������ ��
		int maxpage = (listcount + limit -1) / limit;
		//���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = ((page - 1) / 10) * 10 + 1;
		//���� �������� ������ ������ ������ �� (10, 20, 30 ��...)
		int endpage = startpage + 10 - 1;
		if(endpage > maxpage)
		  endpage = maxpage;
		List<PersonalManagement> list = pmService.getList(id,page, limit);
		
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("list",list);
		
		logger.info("page : " + map.get("page"));
		logger.info("maxpage : " + map.get("maxpage"));
		logger.info("startpage : " + map.get("startpage"));
		logger.info("endpage : " + map.get("endpage"));
		logger.info("listcount : " + map.get("listcount"));
		for(PersonalManagement p : list) {			
			logger.info("list : " + p.getPM_KCAL());
			logger.info("list : " + p.getPM_NO());
			logger.info("list : " + p.getSPORTS_IMG());
			logger.info("list : " + p.getSPORTS_NAME());
			logger.info("list : " + p.getUSER_ID());
		}
		//pm.setUSER_ID((String)session.getAttribute("USER_ID"));
		return map;
	}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public void delete(@RequestParam(value="num", required=false) int num) {
		int result = pmService.delete(num);
		logger.info("result=" + result);
		logger.info("num=" + num);
	}
	
}
