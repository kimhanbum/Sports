package com.project.sports.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.sports.domain.BBS_FR;
import com.project.sports.service.Bbs_FcmService;
import com.project.sports.service.Bbs_FrService;

@Controller
@RequestMapping(value="/BBS_FR")
	public class BbsFrController {

	private static final Logger Logger
	= LoggerFactory.getLogger(BbsFrController.class);

	@Autowired
	private Bbs_FrService FrService;
	
	@Autowired
	private Bbs_FcmService fcmService;
	
	private String fileDBName(String fileName, String saveFolder) {
		//새로운 폴더 이름 : 오늘 년 + 월 + 일
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR); //오늘 연도 구합니다.
		int month = c.get(Calendar.MONTH) + 1; //오늘 월 구합니다.
		int date = c.get(Calendar.DATE); //오늘 일 구합니다.
		
		String homedir = saveFolder + year + "_" + month + "_" + date;
		Logger.info(homedir);
		File path1 = new File(homedir);
		if(!(path1.exists())) {
			path1.mkdir();//새로운 폴더를 생성
		}
		
		//난수를 구합니다.
		Random r = new Random();
		int random = r.nextInt(100000000);
		
		/**** 확장자 구하기 시작 *****/
		int index = fileName.lastIndexOf(".");
		//문자열에서 특정 문자열의 위치 값(index)를 반환합니다.
		//indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면
		// lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환합니다.
		// (파일명에 점이 여러 개 있을 경우 맨 마지막에 발견되는 문자열의 위치를 리턴합니다.)
		Logger.info("index = " + index);
		
		String fileExtension = fileName.substring(index + 1);
		Logger.info("fileExtension = " + fileExtension);
		/**** 확장자 구하기 끝 ****/
		
		//새로운 파일명
		String refileName = "bbs" + year + month + date + random + "." + fileExtension;
		Logger.info("refileName = " + refileName);
		
		//오라클 디비에 저장될 파일 명
		String fileDBName = "/" + year + "_" + month + "_" +date + "/" + refileName;
		Logger.info("fileDBName = " + fileDBName);
		return fileDBName;
	} 
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView boardList(
			@RequestParam(value="page",defaultValue="1",required=false) int page,
			ModelAndView mv) {
		int limit = 10;	// 한 화면에 출력할 레코드 개수
		
		int listcount =FrService.getListCount(); //총 리스트 수를 받아옴
		
		//총 페이지 수
		int maxpage = (listcount + limit -1) / limit;
		
		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = ((page - 1) / 10) * 10 + 1;
		
		//현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등...)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<BBS_FR> boardlist = FrService.getBoardList(page, limit); //리스트를 받아옴
		Logger.info("boardlist =" + boardlist);
		
		mv.setViewName("FR/Bbs_FrList");
		mv.addObject("page",page);
		mv.addObject("maxpage",maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage",endpage);
		mv.addObject("listcount",listcount);
		mv.addObject("boardlist",boardlist);
		mv.addObject("limit",limit);
		return mv;
	}
	
	
}
