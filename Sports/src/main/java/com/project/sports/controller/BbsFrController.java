package com.project.sports.controller;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	private Bbs_FcmService FcmService;
	
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
	//리스트
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
	
	@ResponseBody
	@RequestMapping(value = "/list_ajax")
	public Map<String,Object> boardListAjax(
			@RequestParam(value="page",defaultValue="1",required=false) int page,
			@RequestParam(value="limit",defaultValue="10",required=false) int limit
			) {
		
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
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("boardlist",boardlist);
		map.put("limit",limit);
		return map;
	}
	
	//글쓰기 
	@RequestMapping(value="/write", method=RequestMethod.GET)
		public String board_write() {
			return "FR/Bbs_FrWrite";
		}

	
	@PostMapping("/add")
	//@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(BBS_FR board, HttpServletRequest request)
			throws Exception {
		
		MultipartFile uploadfile = board.getUploadfile();
		
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();//원래 파일명
			board.setFR_ORIGINAL(fileName);	//원래 파일명 저장
			String saveFolder =
					request.getSession().getServletContext().getRealPath("resources")
					+ "/BBS_FRupload/";
			String fileDBName = fileDBName(fileName, saveFolder);
			Logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
			uploadfile.transferTo(new File(saveFolder + fileDBName));
			
			//분류
			Logger.info("분류 값 : " + board.getFR_CSFC());
			System.out.println(board.getFR_CSFC());
			
			//바뀐 파일명으로 저장
			board.setFR_FILE(fileDBName);
			
		}
		
		FrService.insertBoard(board); //저장메서드 호출
		
		return "redirect:list";
	 
}
	@GetMapping(value="/detail")
	public ModelAndView Detail (int num, ModelAndView mv,
			HttpServletRequest request) {

		BBS_FR board = FrService.getDetail(num);
		//board=null;//error 페이지 이동 확인하고자 임의로 지정합니다.
		if(board==null) {
			Logger.info("상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url",request.getRequestURL());
			mv.addObject("message", "상세보기 실패입니다.");
		}else {
			Logger.info("상세보기 성공");
			int count = FcmService.getListCount(num);
			mv.setViewName("FR/Bbs_FrView");
			mv.addObject("count", count);
			mv.addObject("boarddata", board);
		}
		return mv;
	}
}
