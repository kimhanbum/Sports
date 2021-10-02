package com.project.sports.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;
import com.project.sports.service.DealService;

@Controller
@RequestMapping(value="/DealA")
public class DealAuctionController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(DealAuctionController.class);
	
	@Autowired
	private DealService DealService;
	

	private String saveFolder = "C:\\Users\\82109\\git\\Sports\\Sports\\src\\main\\webapp\\resources\\dealupload1\\";
	
	//메인 페이지 리스트
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView AuctionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			@RequestParam(value = "search",
			defaultValue = "", required = false) String search ,
			 ModelAndView mv) {
		
	
		int limit = 6; // 한 화면에 출력할 레코드 갯수
		
		
		
		int listcount = DealService.getListCount(); // 총 리스트 수를 받아옴
		
		logger.info("리스트수" + listcount);
		// 총 페이지 수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21 등 ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20 ,30 등...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;
		
		List<DealAuction> Auction = new ArrayList<DealAuction>();
		
		if(search == "") {
			Auction = DealService.getAuctionList(page, limit); //리스트를 받아옴
		}else {
			Auction = DealService.getSearchAuctionList(page,limit,search);
		}
		
		logger.info("옥션  " + Auction.get(0).getAUC_NUMBER());
		 
		
		mv.setViewName("Deal/DealA_list");
		mv.addObject("page",page);
		mv.addObject("maxpage",maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage",endpage);
		mv.addObject("listcount",listcount);
		mv.addObject("Auction",Auction);
		mv.addObject("limit",limit);
		
		
		
		return mv;
		
		}
	
	// 글쓰기 
	@GetMapping(value="/write")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Auction_write() {
		return "Deal/Auction_write";
	}
	
	// 상세 페이지
	@GetMapping(value="/detail")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Auction_detail() {
		return "Deal/Auction_detail";
	}
	
	@PostMapping("/add")
	//@RequestMapping(value="/add" , method=RequestMethod.POST)
	public String Auction_add(DealAuction Auction, HttpServletRequest request)
			throws Exception{
		
		MultipartFile uploadfile1 = Auction.getUploadfile1();
		MultipartFile uploadfile2 = Auction.getUploadfile2();
		MultipartFile uploadfile3 = Auction.getUploadfile3();
		MultipartFile uploadfile4 = Auction.getUploadfile4();
		
		if(!uploadfile1.isEmpty()) {
			String fileName = uploadfile1.getOriginalFilename();//원래 파일명
			Auction.setORI_AUC_MAINFILE(fileName);//원래 파일명 저장
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			logger.info("성진아" + saveFolder + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다. 
			uploadfile1.transferTo(new File(saveFolder + fileDBName));
			
			//바뀐 파일명으로 저장 
			Auction.setSAVE_AUC_MAINFILE(fileDBName);
		}
		
		if(!uploadfile2.isEmpty()) {
			String fileName = uploadfile2.getOriginalFilename();//원래 파일명
			Auction.setORI_AUC_FILE2(fileName);//원래 파일명 저장
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다. 
			uploadfile2.transferTo(new File(saveFolder + fileDBName));
			
			//바뀐 파일명으로 저장 
			Auction.setSAVE_AUC_FILE2(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE2("0");
			Auction.setORI_AUC_FILE2("0");
		}
		
		if(!uploadfile3.isEmpty()) {
			String fileName = uploadfile3.getOriginalFilename();//원래 파일명
			Auction.setORI_AUC_FILE3(fileName);//원래 파일명 저장
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다. 
			uploadfile3.transferTo(new File(saveFolder + fileDBName));
			
			//바뀐 파일명으로 저장 
			Auction.setSAVE_AUC_FILE3(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE3("0");
			Auction.setORI_AUC_FILE3("0");
		}
		
		if(!uploadfile4.isEmpty()) {
			String fileName = uploadfile4.getOriginalFilename();//원래 파일명
			Auction.setORI_AUC_FILE4(fileName);//원래 파일명 저장
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다. 
			uploadfile4.transferTo(new File(saveFolder + fileDBName));
			
			//바뀐 파일명으로 저장 
			Auction.setSAVE_AUC_FILE4(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE4("0");
			Auction.setORI_AUC_FILE4("0");
		}
		
		logger.info("제목" + Auction.getAUC_SUBJECT());
		logger.info("시작가" + Auction.getAUC_PRICE());
		logger.info("상한가" + Auction.getAUC_LPRICE());
		logger.info("입찰단위" + Auction.getAUC_UNIT());
		logger.info("내용" + Auction.getAUC_CONTENT());
		logger.info("파일1" + Auction.getORI_AUC_MAINFILE());
		logger.info("파일1" + Auction.getSAVE_AUC_MAINFILE());
		logger.info("날짜" + Auction.getAUC_DATE());
		logger.info("배송" + Auction.getAUC_DELIVERY());
		logger.info("save폴더" + saveFolder);
		
		
		//예비로해놈 9-26 
		Auction.setUSER_ID("admin01");
		
		DealService.insert(Auction);	//저장메서드 호출
		
		return "Deal/Auction_write";
	}
	
	private String fileDBName(String fileName , String saveFolder) {
		//새로운 폴더 이름 : 오늘 년+월+일
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);	//오늘 년도 구합니다. 
		int month = c.get(Calendar.MONTH)+1 ; //오늘 월 구합니다. 
		int date = c.get(Calendar.DATE);	//오늘 일 구합니다.
		
		String homedir = saveFolder;
		logger.info(homedir);
		File path1 = new File(homedir);
		if(!(path1.exists())) {
			path1.mkdir();//새로운 폴더를 생성 
		}
		
		//난수를 구합니다. 
		Random r = new Random(); 
		int random = r.nextInt(100000000);
		
		/*****확장자 구하기 시작 *****/
		int index = fileName.lastIndexOf(".");
		//문자열에서 특정 문자열의 위치 값 (index)를 반환합니다.
		//indexOf가 처음 발견되는 문자열에 대한 index를 반환하는 반면,
		//lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환합니다. 
		//(파일명에 점에 여러개 있을 경우 맨 마지막에 발견되는 문자열의 위치를 리턴합니다.)
		logger.info("index=" + index);
		
		String fileExtension = fileName.substring(index + 1);
		logger.info("fileExtension = " + fileExtension);
		/**** 확장자 구하기 끝 ***/
		
		//새로운 파일명 
		String refileName = "auc" + year + month + date + random + "." + fileExtension ;
		logger.info("refileName = " + refileName);
		
		//오라클 디비에 저장될 파일 명 
		String fileDBName =  refileName;
		logger.info("fileDBName = " + fileDBName);
		return fileDBName ;
	}
	
}
