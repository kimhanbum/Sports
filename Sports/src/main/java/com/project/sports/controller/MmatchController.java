package com.project.sports.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;
import com.project.sports.service.MmatchService;

@Controller
@RequestMapping(value="/mmatch")
public class MmatchController {
	private static final Logger logger = LoggerFactory.getLogger(MmatchController.class);
	
	@Autowired
	private MmatchService mmatchservice;
	
	@Value("${savefoldername}")
	private String saveFolder;

	/*
	 * //멘토 글 리스트 보기
	 * 
	 * @RequestMapping(value = "/mentorPage", method = RequestMethod.GET) public
	 * String metorMainPage() { return "sport_menMatch/sports_mentor"; }
	 */
	
	//멘토 글 작성
	@RequestMapping(value = "/mentorWrite", method = RequestMethod.GET)
	public String mentorWrite() {
		return "sport_menMatch/sports_mentor_write";
	}
	
	//멘토 글 리스트 보기
	@RequestMapping(value = "/mentorPage", method = RequestMethod.GET)
	public ModelAndView mentorlist(
			@RequestParam(value="page" ,defaultValue="1", required=false) int page,
			ModelAndView mv)
	{
	    int limit = 6; //한 화면에 출력할 레코드 갯수(고정)
	    
	    int listcount = mmatchservice.getMentorListCount(); //총 리스트 수를 받아옴
	    //총 페이지 수
	    int maxpage = (listcount + limit - 1) /limit;
	    
	    //현재 페이지에 보여줄 시작 페이지 수 (1,11,21 등등)
	    int startpage = ((page-1) / 10) * 10 + 1;
	    
	    //현재 페이지에 보내줄 마지막 페이지 수 (10,20.30 등등)
	    int endpage = startpage + 10 -1;
	    
	    if(endpage > maxpage)
	    	endpage = maxpage;
	    
	    List<Mentor> mentorlist = mmatchservice.getMentorList(page, limit); //리스트를 받아옴
	    
	    mv.setViewName("sport_menMatch/sports_mentor");
	    mv.addObject("page",page);
	    mv.addObject("maxpage",maxpage);
	    mv.addObject("startpage",startpage);
	    mv.addObject("endpage",endpage);
	    mv.addObject("listcount",listcount);
	    mv.addObject("mentorlist",mentorlist);
	    mv.addObject("saveFolder",saveFolder);
	    logger.info("page : " +page);
	    logger.info("maxpage : " +maxpage);
	    logger.info("startpage : " +startpage);
	    logger.info("endpage : " +endpage);
	    logger.info("listcount : " +listcount);
	    for(Mentor m : mentorlist) {
	    	logger.info("사진 : " +m.getMentor_pic1());	    	
	    	logger.info("종목 : " +m.getSports_name());	
	    	logger.info("시 : " +m.getCity());	
	    	logger.info("군구 : " +m.getSigungu());	
	    	logger.info("인원 : " +m.getMentor_number());	
	    }
	    logger.info("saveFolder : " +saveFolder);
		return mv;
	}
	
	//sport 종목 가져오기(이름만)
	@GetMapping("/sportlist")
	@ResponseBody
	public List<String> Sportlist(int selType) {
		logger.info("seltype :" + selType);
		List<String> list = mmatchservice.getSportlist(selType);
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//sport 종목 가져오기(이름,img 데이터 response)
	@GetMapping("/sportDeatilList")
	@ResponseBody
	public List<Sports> SportDetailList(int selType) {
		logger.info("seltype :" + selType);
		List<Sports> list = mmatchservice.getSportDeatilList(selType);
		for(Sports sp : list) {
			logger.info("value :" + sp.getSPORTS_NAME());
			logger.info("value :" + sp.getSPORTS_IMG());
		}			
		return list;
	}
	
	//주소(시) 종목 가져오기
	@GetMapping("/siList")
	@ResponseBody
	public List<String> silist() {
		logger.info("si List");
		List<String> list = mmatchservice.getSilist();
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//주소(동) 종목 가져오기
	@GetMapping("/dongList")
	@ResponseBody
	public List<String> donglist(String selType) {
		logger.info("dongtype :" + selType);
		List<String> list = mmatchservice.getDonglist(selType);
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//멘토 작성 글 추가
	@PostMapping("/addWMentor")
	public String addMetorWriting(Mentor mentor,String[] mentor_yoil,
			String[] mentor_startTime,String[] mentor_endTime) throws Exception{
		
		MultipartFile uploadfile1 =mentor.getUploadfile1();
		MultipartFile uploadfile2 =mentor.getUploadfile2();
		MultipartFile uploadfile3 =mentor.getUploadfile3();
		String mentorDate="";
		
		if(!uploadfile1.isEmpty()) {
			String fileName = uploadfile1.getOriginalFilename(); //원래파일명
			mentor.setMentor_origin_pic1(fileName); //원래 파일명 저장
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName1 = " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
			uploadfile1.transferTo(new File(saveFolder+fileDBName));
			
			//바뀐 파일명으로 저장
			mentor.setMentor_pic1(fileDBName);
		}
		
		if(!uploadfile2.isEmpty()) {
			String fileName = uploadfile2.getOriginalFilename(); //원래파일명
			mentor.setMentor_origin_pic2(fileName); //원래 파일명 저장
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName2 = " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
			uploadfile2.transferTo(new File(saveFolder+fileDBName));
			
			//바뀐 파일명으로 저장
			mentor.setMentor_pic2(fileDBName);
		}
		
		if(!uploadfile3.isEmpty()) {
			String fileName = uploadfile3.getOriginalFilename(); //원래파일명
			mentor.setMentor_origin_pic3(fileName); //원래 파일명 저장
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName3 = " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
			uploadfile3.transferTo(new File(saveFolder+fileDBName));
			
			//바뀐 파일명으로 저장
			mentor.setMentor_pic3(fileDBName);
		}
		for(int i=0; i<mentor_yoil.length; i++) {
			mentorDate += mentor_yoil[i]+"/"+ mentor_startTime[i]+"/"+mentor_endTime[i]+",";
		}
		mentor.setMentor_date(mentorDate);
		
		/*
		 * logger.info(mentor.getUser_id()); logger.info(mentor.getMentor_title());
		 * logger.info(mentor.getSports_name()); logger.info(mentor.getCity());
		 * logger.info(mentor.getSigungu()); logger.info(mentor.getMentor_loc_detail());
		 * logger.info("금액 : " + mentor.getMentor_amount()); logger.info("인원 : " +
		 * mentor.getMentor_number()); logger.info(mentor.getMentor_caution());
		 * logger.info(mentor.getMentor_career()); logger.info(mentor.getMentor_date());
		 */
		mmatchservice.insertMentorWriting(mentor);
		//Thread.sleep(3000); //2초 대기
		return "redirect:mentorPage";
	}
	
	//랜덤 파일 이름 저장(동일 파일 이름 관리를 위한)
	private String fileDBName(String fileName , String saveFolder) {
		//새로운 폴더 이름 : 오늘 년+월+일
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int date = c.get(Calendar.DATE);
		
		String homedir  = saveFolder + year +"-"+month+"-"+date;
		logger.info(homedir);
		File path1 = new File(homedir);
		if(!(path1.exists())) {
			path1.mkdir();
		}
		
		//난수를 구합니다.
		Random r = new Random();
		int random = r.nextInt(100000000);
		
		/* 확장자 구하기 */
		int index = fileName.lastIndexOf(".");
		
		//문자열에서 특정 문자열의 위치 값(index)를 반환합니다.
		//indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면,
		//lastIndexOf는 마지막에 발견되는 문자열의 index를 반환합니다.
		//(파일명에 점이 여러개 있을 경우 맨마지막에 발견되는 문자열의 위치를 리턴합니다.)
		
		logger.info("index = " + index);
		
		String fileExtension = fileName.substring(index+1);
		logger.info("fileExtension = " + fileExtension);
		
		//새로운 파일 명 
		String refileName = "bbs" + year + month + date + random + "." + fileExtension;
		logger.info("refileName = " + refileName);
		
		//오라클 디비에 저장될 파일 명
		String fileDBName = "/" + year +"-"+month+"-"+date + "/" + refileName;
		logger.info("fileDBName = " + fileDBName);
		return fileDBName;
		
	}
}
