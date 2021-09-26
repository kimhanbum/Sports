package com.project.sports.controller;

import java.io.File;
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
import com.project.sports.service.DealService;

@Controller
@RequestMapping(value="/DealA")
public class DealAuctionController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(DealAuctionController.class);
	
	@Autowired
	private DealService DealService;
	
	//savefolder.properties���� �ۼ��� savefoldername �Ӽ��� ���� String saveFolder�� �����մϴ�.
	@Value("${savefoldername}")
	private String saveFolder;
	
	//���� ������ ����Ʈ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView AuctionList(
			@RequestParam(value="page",defaultValue="1",required=false)int page,
			 ModelAndView mv) {
		
//		int limit = 6; 	//�� ȭ�鿡 ����� ���ڵ� ����
//		
//		int listcount = DealService.getListCount();	//�� ����Ʈ ���� �޾ƿ�
//		
//		//�� ������ ��
//		int maxpage=(listcount + limit-1) / limit;
//		
//		//���� �������� ������ ���� ������ �� (1, 11, 21 �� ...)
//		int startpage = ((page -1 ) / 10) * 10 + 1 ; 
//		
//		//���� �������� ������ ������ ������ �� (10, 20 ,30 ��...)
//		int endpage = startpage +10 -1 ;
//		
//		if (endpage > maxpage)
//			endpage = maxpage;
//		
//		List<DealAuction> boardlist = DealService.getAuctionList(page, limit); //����Ʈ�� �޾ƿ� 
//		
		mv.setViewName("Deal/DealA_list");
		
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
			String fileName = uploadfile1.getOriginalFilename();//���� ���ϸ�
			Auction.setORI_AUC_MAINFILE(fileName);//���� ���ϸ� ����
			//String saveFolder = 
					// request.getSession().getServletContext().getRealPath("resources")
					// 	+ "/upload/";
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�. 
			uploadfile1.transferTo(new File(saveFolder + fileDBName));
			
			//�ٲ� ���ϸ����� ���� 
			Auction.setSAVE_AUC_MAINFILE(fileDBName);
		}
		
		DealService.insert(Auction);	//����޼��� ȣ��
		
		return "Deal/Auction_write";
	}
	
	private String fileDBName(String fileName , String saveFolder) {
		//���ο� ���� �̸� : ���� ��+��+��
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);	//���� �⵵ ���մϴ�. 
		int month = c.get(Calendar.MONTH)+1 ; //���� �� ���մϴ�. 
		int date = c.get(Calendar.DATE);	//���� �� ���մϴ�.
		
		String homedir = saveFolder + year + "-" + month + "-" + date;
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
		String refileName = "bbs" + year + month + date + random + "." + fileExtension ;
		logger.info("refileName = " + refileName);
		
		//����Ŭ ��� ����� ���� �� 
		String fileDBName = "/" + year + "-" + month + "-" +date + "/" + refileName;
		logger.info("fileDBName = " + fileDBName);
		return fileDBName ;
	}
	
}
