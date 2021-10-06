package com.project.sports.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
			 ModelAndView mv
			 ) {
		
		
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
	public ModelAndView Auction_detail(int num, ModelAndView mv,
			HttpServletRequest request,
			HttpSession session
			) {
		
		
		
		DealAuction Auction = DealService.A_getDetail(num);
		
	
		
		String sessionid = (String) session.getAttribute("USER_ID");
		
		//찜한물품인지 확인
		Object pickcheck = DealService.pickcheck(sessionid, num);
		if(pickcheck == null) {
			mv.addObject("pickcheck", "possible");
		}else {
			mv.addObject("pickcheck", "impossible");
		}
		
		//현재 내아이디로 입찰중인 물푼인지 확인
		Object bidcheck = DealService.bidcheck(sessionid , num);
		if(bidcheck == null) {
			mv.addObject("bidcheck" , "possible");
			
		}else {
			mv.addObject("bidcheck" , "impossible");
		}
		
		
		logger.info(bidcheck +"   비드 체크");
		
		//조회수
		int count = DealService.A_readcount(num);
		
		if(Auction==null) {
			logger.info("상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url",request.getRequestURL());
			mv.addObject("message", "상세보기 실패 입니다.");
		}else {
			logger.info("상세보기 성공");
			mv.setViewName("Deal/Auction_detail");
			logger.info("파일" + Auction.getSAVE_AUC_FILE2());
			mv.addObject("b" ,Auction);
			
		}
		
		return mv;
	}
	
	@PostMapping("/add")
	//@RequestMapping(value="/add" , method=RequestMethod.POST)
	public String Auction_add(DealAuction Auction, HttpServletRequest request ,HttpSession session)
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
		
		
		String sessionid = (String)session.getAttribute("USER_ID");
		Auction.setUSER_ID(sessionid);
		
		
		
		//글 추가
		DealService.insert(Auction);	//저장메서드 호출
		
		//판매자 내거래내역 판매중 추가
		DealService.Myinsert(Auction);
		
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
	
	//입찰
	@RequestMapping(value="/bid")
	public String AuctionBid(RedirectAttributes rattr , 
			HttpServletRequest request , int num,
			HttpSession session) {
		
		//내거래내역 입찰중이 었던사람 입찰실패로 변경
		int change = DealService.Auction_bidchange(num); 
		
		String sessionid = (String) session.getAttribute("USER_ID");
		logger.info("세션2값" + sessionid);
		
		// 내거래내역 입찰중 추가 
		DealService.Auction_biding(sessionid , num);
		
		DealAuction Auction = DealService.A_getDetail(num);
		
		// 기존 경매가 변경
		int pricemodify = DealService.Auction_pricemodi(Auction);
		
		
		
		return "Deal/DealD_list"; 
	}
	
	//경매 찜하기
	@RequestMapping(value="/pick")
	public String Auctionpick(RedirectAttributes rattr , 
			HttpServletRequest request , int num,
			HttpSession session) {
			
		String sessionid = (String) session.getAttribute("USER_ID");
	
		
		
		//찜하기 등록
		DealService.Auction_pick(sessionid , num);
		
		return "Deal/DealA_list";
	}
	
	//경매 기간 끝났을시
	@RequestMapping(value="/timeout")
	public String Auctiontimout(int num ) {
		
		//판매자 내거래내역 ( 판매중 -> 배송입력 )
		DealService.Auction_timeout(num);
		
		//구매자 내거래내역 ( 입찰중 -> 입찰완료)
		DealService.Auction_timeout2(num);
		
		//찜,입찰실패 행삭제 
		DealService.Auction_timeout3(num);
		
		return"Deal/DealA_list";
	}
	
}
