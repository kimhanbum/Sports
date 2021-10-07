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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.sports.domain.Mentor;
import com.project.sports.service.MmatchService;

@Controller
@RequestMapping(value="/mmatch")
public class MmatchController {
	private static final Logger logger = LoggerFactory.getLogger(MmatchController.class);
	
	@Autowired
	private MmatchService mmatchservice;
	
	@Value("${savefoldername}")
	private String saveFolder;
	
	//���� �� ����Ʈ ����
	@RequestMapping(value = "/mentorPage", method = RequestMethod.GET)
	public String metorMainPage() {
		return "sport_menMatch/sports_mentor";
	}
	
	//���� �� �ۼ�
	@RequestMapping(value = "/mentorWrite", method = RequestMethod.GET)
	public String mentorWrite() {
		return "sport_menMatch/sports_mentor_write";
	}
	
	//sport ���� ��������
	@GetMapping("/sportlist")
	@ResponseBody
	public List<String> Sportlist(int selType) {
		logger.info("seltype :" + selType);
		List<String> list = mmatchservice.getSportlist(selType);
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//�ּ�(��) ���� ��������
	@GetMapping("/siList")
	@ResponseBody
	public List<String> silist() {
		logger.info("si List");
		List<String> list = mmatchservice.getSilist();
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//�ּ�(��) ���� ��������
	@GetMapping("/dongList")
	@ResponseBody
	public List<String> donglist(String selType) {
		logger.info("dongtype :" + selType);
		List<String> list = mmatchservice.getDonglist(selType);
		for(String value : list)
			logger.info("value :" + value);
		return list;
	}
	
	//���� �ۼ� �� �߰�
	@PostMapping("/addWMentor")
	public String addMetorWriting(Mentor mentor,String[] mentor_yoil,
			String[] mentor_startTime,String[] mentor_endTime) throws Exception{
		
		MultipartFile uploadfile1 =mentor.getUploadfile1();
		MultipartFile uploadfile2 =mentor.getUploadfile2();
		MultipartFile uploadfile3 =mentor.getUploadfile3();
		String mentorDate="";
		
		if(!uploadfile1.isEmpty()) {
			String fileName = uploadfile1.getOriginalFilename(); //�������ϸ�
			mentor.setMentor_origin_pic1(fileName); //���� ���ϸ� ����
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName1 = " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile1.transferTo(new File(saveFolder+fileDBName));
			
			//�ٲ� ���ϸ����� ����
			mentor.setMentor_pic1(fileDBName);
		}
		
		if(!uploadfile2.isEmpty()) {
			String fileName = uploadfile2.getOriginalFilename(); //�������ϸ�
			mentor.setMentor_origin_pic2(fileName); //���� ���ϸ� ����
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName2 = " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile2.transferTo(new File(saveFolder+fileDBName));
			
			//�ٲ� ���ϸ����� ����
			mentor.setMentor_pic2(fileDBName);
		}
		
		if(!uploadfile3.isEmpty()) {
			String fileName = uploadfile3.getOriginalFilename(); //�������ϸ�
			mentor.setMentor_origin_pic3(fileName); //���� ���ϸ� ����
			String fileDBName = fileDBName(fileName,saveFolder);
			logger.info("fileDBName3 = " + fileDBName);
			
			//transferTo(File path) : ���ε��� ������ �Ű������� ��ο� �����մϴ�.
			uploadfile3.transferTo(new File(saveFolder+fileDBName));
			
			//�ٲ� ���ϸ����� ����
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
		 * logger.info("�ݾ� : " + mentor.getMentor_amount()); logger.info("�ο� : " +
		 * mentor.getMentor_number()); logger.info(mentor.getMentor_caution());
		 * logger.info(mentor.getMentor_career()); logger.info(mentor.getMentor_date());
		 */
		
		mmatchservice.insertMentorWriting(mentor);
		return "redirect:mentorPage";
	}
	
	//���� ���� �̸� ����(���� ���� �̸� ������ ����)
	private String fileDBName(String fileName , String saveFolder) {
		//���ο� ���� �̸� : ���� ��+��+��
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
		
		//������ ���մϴ�.
		Random r = new Random();
		int random = r.nextInt(100000000);
		
		/* Ȯ���� ���ϱ� */
		int index = fileName.lastIndexOf(".");
		
		//���ڿ����� Ư�� ���ڿ��� ��ġ ��(index)�� ��ȯ�մϴ�.
		//indexOf�� ó�� �߰ߵǴ� ���ڿ��� ���� index�� ��ȯ�ϴ� �ݸ�,
		//lastIndexOf�� �������� �߰ߵǴ� ���ڿ��� index�� ��ȯ�մϴ�.
		//(���ϸ� ���� ������ ���� ��� �Ǹ������� �߰ߵǴ� ���ڿ��� ��ġ�� �����մϴ�.)
		
		logger.info("index = " + index);
		
		String fileExtension = fileName.substring(index+1);
		logger.info("fileExtension = " + fileExtension);
		
		//���ο� ���� �� 
		String refileName = "bbs" + year + month + date + random + "." + fileExtension;
		logger.info("refileName = " + refileName);
		
		//����Ŭ ��� ����� ���� ��
		String fileDBName = "/" + year +"-"+month+"-"+date + "/" + refileName;
		logger.info("fileDBName = " + fileDBName);
		return fileDBName;
		
	}
}
