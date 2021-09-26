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
		//���ο� ���� �̸� : ���� �� + �� + ��
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR); //���� ���� ���մϴ�.
		int month = c.get(Calendar.MONTH) + 1; //���� �� ���մϴ�.
		int date = c.get(Calendar.DATE); //���� �� ���մϴ�.
		
		String homedir = saveFolder + year + "_" + month + "_" + date;
		Logger.info(homedir);
		File path1 = new File(homedir);
		if(!(path1.exists())) {
			path1.mkdir();//���ο� ������ ����
		}
		
		//������ ���մϴ�.
		Random r = new Random();
		int random = r.nextInt(100000000);
		
		/**** Ȯ���� ���ϱ� ���� *****/
		int index = fileName.lastIndexOf(".");
		//���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�մϴ�.
		//indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�
		// lastIndexOf�� ���������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
		// (���ϸ� ���� ���� �� ���� ��� �� �������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
		Logger.info("index = " + index);
		
		String fileExtension = fileName.substring(index + 1);
		Logger.info("fileExtension = " + fileExtension);
		/**** Ȯ���� ���ϱ� �� ****/
		
		//���ο� ���ϸ�
		String refileName = "bbs" + year + month + date + random + "." + fileExtension;
		Logger.info("refileName = " + refileName);
		
		//����Ŭ ��� ����� ���� ��
		String fileDBName = "/" + year + "_" + month + "_" +date + "/" + refileName;
		Logger.info("fileDBName = " + fileDBName);
		return fileDBName;
	} 
	//����Ʈ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView boardList(
			@RequestParam(value="page",defaultValue="1",required=false) int page,
			ModelAndView mv) {
		int limit = 10;	// �� ȭ�鿡 ����� ���ڵ� ����
		
		int listcount =FrService.getListCount(); //�� ����Ʈ ���� �޾ƿ�
		
		//�� ������ ��
		int maxpage = (listcount + limit -1) / limit;
		
		//���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = ((page - 1) / 10) * 10 + 1;
		
		//���� �������� ������ ������ ������ �� (10, 20, 30 ��...)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<BBS_FR> boardlist = FrService.getBoardList(page, limit); //����Ʈ�� �޾ƿ�
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
		
		int listcount =FrService.getListCount(); //�� ����Ʈ ���� �޾ƿ�
		
		//�� ������ ��
		int maxpage = (listcount + limit -1) / limit;
		
		//���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
		int startpage = ((page - 1) / 10) * 10 + 1;
		
		//���� �������� ������ ������ ������ �� (10, 20, 30 ��...)
		int endpage = startpage + 10 - 1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<BBS_FR> boardlist = FrService.getBoardList(page, limit); //����Ʈ�� �޾ƿ�
		
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
	
	//�۾��� 
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
			String fileName = uploadfile.getOriginalFilename();//���� ���ϸ�
			board.setFR_ORIGINAL(fileName);	//���� ���ϸ� ����
			String saveFolder =
					request.getSession().getServletContext().getRealPath("resources")
					+ "/BBS_FRupload/";
			String fileDBName = fileDBName(fileName, saveFolder);
			Logger.info("fileDBName= " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile.transferTo(new File(saveFolder + fileDBName));
			
			//�з�
			Logger.info("�з� �� : " + board.getFR_CSFC());
			System.out.println(board.getFR_CSFC());
			
			//�ٲ� ���ϸ����� ����
			board.setFR_FILE(fileDBName);
			
		}
		
		FrService.insertBoard(board); //����޼��� ȣ��
		
		return "redirect:list";
	 
}
	@GetMapping(value="/detail")
	public ModelAndView Detail (int num, ModelAndView mv,
			HttpServletRequest request) {

		BBS_FR board = FrService.getDetail(num);
		//board=null;//error ������ �̵� Ȯ���ϰ��� ���Ƿ� �����մϴ�.
		if(board==null) {
			Logger.info("�󼼺��� ����");
			mv.setViewName("error/error");
			mv.addObject("url",request.getRequestURL());
			mv.addObject("message", "�󼼺��� �����Դϴ�.");
		}else {
			Logger.info("�󼼺��� ����");
			int count = FcmService.getListCount(num);
			mv.setViewName("FR/Bbs_FrView");
			mv.addObject("count", count);
			mv.addObject("boarddata", board);
		}
		return mv;
	}
}
