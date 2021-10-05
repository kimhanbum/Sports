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
	
	//���� ������ ����Ʈ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView AuctionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			@RequestParam(value = "search",
			defaultValue = "", required = false) String search ,
			 ModelAndView mv
			 ) {
		
		
		int limit = 6; // �� ȭ�鿡 ����� ���ڵ� ����
		
		
		
		int listcount = DealService.getListCount(); // �� ����Ʈ ���� �޾ƿ�
		
		logger.info("����Ʈ��" + listcount);
		// �� ������ ��
		int maxpage = (listcount + limit - 1) / limit;

		// ���� �������� ������ ���� ������ �� (1, 11, 21 �� ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// ���� �������� ������ ������ ������ �� (10, 20 ,30 ��...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;
		
		List<DealAuction> Auction = new ArrayList<DealAuction>();
		
		if(search == "") {
			Auction = DealService.getAuctionList(page, limit); //����Ʈ�� �޾ƿ�
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
	
	// �۾��� 
	@GetMapping(value="/write")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public String Auction_write() {
		return "Deal/Auction_write";
	}
	
	// �� ������
	@GetMapping(value="/detail")
	//@RequestMapping(value="/write", method=requestMethod.GET)
	public ModelAndView Auction_detail(int num, ModelAndView mv,
			HttpServletRequest request,
			HttpSession session
			) {
		
		
		
		DealAuction Auction = DealService.A_getDetail(num);
		
		session.setAttribute("session", "admin01");
		
		String sessionid = (String) session.getAttribute("session");
		
		//���ѹ�ǰ���� Ȯ��
		Object pickcheck = DealService.pickcheck(sessionid, num);
		if(pickcheck == null) {
			mv.addObject("pickcheck", "possible");
		}else {
			mv.addObject("pickcheck", "impossible");
		}
		
		//���� �����̵�� �������� ��Ǭ���� Ȯ��
		Object bidcheck = DealService.bidcheck(sessionid , num);
		if(bidcheck == null) {
			mv.addObject("bidcheck" , "possible");
			
		}else {
			mv.addObject("bidcheck" , "impossible");
		}
		
		
		logger.info(bidcheck +"   ��� üũ");
		
		//��ȸ��
		int count = DealService.A_readcount(num);
		
		if(Auction==null) {
			logger.info("�󼼺��� ����");
			mv.setViewName("error/error");
			mv.addObject("url",request.getRequestURL());
			mv.addObject("message", "�󼼺��� ���� �Դϴ�.");
		}else {
			logger.info("�󼼺��� ����");
			mv.setViewName("Deal/Auction_detail");
			logger.info("����" + Auction.getSAVE_AUC_FILE2());
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
			String fileName = uploadfile1.getOriginalFilename();//���� ���ϸ�
			Auction.setORI_AUC_MAINFILE(fileName);//���� ���ϸ� ����
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			logger.info("������" + saveFolder + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�. 
			uploadfile1.transferTo(new File(saveFolder + fileDBName));
			
			//�ٲ� ���ϸ����� ���� 
			Auction.setSAVE_AUC_MAINFILE(fileDBName);
		}
		
		if(!uploadfile2.isEmpty()) {
			String fileName = uploadfile2.getOriginalFilename();//���� ���ϸ�
			Auction.setORI_AUC_FILE2(fileName);//���� ���ϸ� ����
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�. 
			uploadfile2.transferTo(new File(saveFolder + fileDBName));
			
			//�ٲ� ���ϸ����� ���� 
			Auction.setSAVE_AUC_FILE2(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE2("0");
			Auction.setORI_AUC_FILE2("0");
		}
		
		if(!uploadfile3.isEmpty()) {
			String fileName = uploadfile3.getOriginalFilename();//���� ���ϸ�
			Auction.setORI_AUC_FILE3(fileName);//���� ���ϸ� ����
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�. 
			uploadfile3.transferTo(new File(saveFolder + fileDBName));
			
			//�ٲ� ���ϸ����� ���� 
			Auction.setSAVE_AUC_FILE3(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE3("0");
			Auction.setORI_AUC_FILE3("0");
		}
		
		if(!uploadfile4.isEmpty()) {
			String fileName = uploadfile4.getOriginalFilename();//���� ���ϸ�
			Auction.setORI_AUC_FILE4(fileName);//���� ���ϸ� ����
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�. 
			uploadfile4.transferTo(new File(saveFolder + fileDBName));
			
			//�ٲ� ���ϸ����� ���� 
			Auction.setSAVE_AUC_FILE4(fileDBName);
		}else {
			Auction.setSAVE_AUC_FILE4("0");
			Auction.setORI_AUC_FILE4("0");
		}
		
		logger.info("����" + Auction.getAUC_SUBJECT());
		logger.info("���۰�" + Auction.getAUC_PRICE());
		logger.info("���Ѱ�" + Auction.getAUC_LPRICE());
		logger.info("��������" + Auction.getAUC_UNIT());
		logger.info("����" + Auction.getAUC_CONTENT());
		logger.info("����1" + Auction.getORI_AUC_MAINFILE());
		logger.info("����1" + Auction.getSAVE_AUC_MAINFILE());
		logger.info("��¥" + Auction.getAUC_DATE());
		logger.info("���" + Auction.getAUC_DELIVERY());
		logger.info("save����" + saveFolder);
		
		
		//������س� 9-26 
		Auction.setUSER_ID("admin01");
		
		
		
		//�� �߰�
		DealService.insert(Auction);	//����޼��� ȣ��
		
		//�Ǹ��� ���ŷ����� �Ǹ��� �߰�
		DealService.Myinsert(Auction);
		
		return "Deal/Auction_write";
	}
	
	private String fileDBName(String fileName , String saveFolder) {
		//���ο� ���� �̸� : ���� ��+��+��
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);	//���� �⵵ ���մϴ�. 
		int month = c.get(Calendar.MONTH)+1 ; //���� �� ���մϴ�. 
		int date = c.get(Calendar.DATE);	//���� �� ���մϴ�.
		
		String homedir = saveFolder;
		logger.info(homedir);
		File path1 = new File(homedir);
		if(!(path1.exists())) {
			path1.mkdir();//���ο� ������ ���� 
		}
		
		//������ ���մϴ�. 
		Random r = new Random(); 
		int random = r.nextInt(100000000);
		
		/*****Ȯ���� ���ϱ� ���� *****/
		int index = fileName.lastIndexOf(".");
		//���ڿ����� Ư�� ���ڿ��� ��ġ �� (index)�� ��ȯ�մϴ�.
		//indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
		//lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�. 
		//(���ϸ� ���� ������ ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
		logger.info("index=" + index);
		
		String fileExtension = fileName.substring(index + 1);
		logger.info("fileExtension = " + fileExtension);
		/**** Ȯ���� ���ϱ� �� ***/
		
		//���ο� ���ϸ� 
		String refileName = "auc" + year + month + date + random + "." + fileExtension ;
		logger.info("refileName = " + refileName);
		
		//����Ŭ ��� ����� ���� �� 
		String fileDBName =  refileName;
		logger.info("fileDBName = " + fileDBName);
		return fileDBName ;
	}
	
	//����
	@RequestMapping(value="/bid")
	public String AuctionBid(RedirectAttributes rattr , 
			HttpServletRequest request , int num,
			HttpSession session) {
		
		
		int change = DealService.Auction_bidchange(num); 
		
		String sessionid = (String) session.getAttribute("session");
		logger.info("����2��" + sessionid);
		
		DealService.Auction_biding(sessionid , num);
		
		DealAuction Auction = DealService.A_getDetail(num);
		
		int pricemodify = DealService.Auction_pricemodi(Auction);
		
		
		
		return "Deal/DealD_list"; 
	}
	
	//��� ���ϱ�
	@RequestMapping(value="/pick")
	public String Auctionpick(RedirectAttributes rattr , 
			HttpServletRequest request , int num,
			HttpSession session) {
			
		String sessionid = (String) session.getAttribute("session");
	
		
		
		//���ϱ� ���
		DealService.Auction_pick(sessionid , num);
		
		return "Deal/DealA_list";
	}
	
}
