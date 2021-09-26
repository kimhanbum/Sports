package com.project.sports.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.sports.domain.Member;
import com.project.sports.service.MemberService;

/*
@Component�� �̿��ؼ� ������ �����̳ʰ� �ش� Ŭ���� ��ü�� �����ϵ��� ������ �� ������
��� Ŭ������ @Component�� �Ҵ��ϸ� � Ŭ������ � ������ �ϴ��� �ľ�����
��ƽ��ϴ�. ������ �����ӿ�ũ������ �̷� Ŭ�������� �з��ϱ� ���ؼ�
@Component�� ����Ͽ� ������ ���� 3���� �ֳ����̼��� �����մϴ�.

1. @Controller - ������� ��û�� �����ϴ� Controller Ŭ����
2. @Repository - DB������ ó���ϴ� DAO Ŭ����
3. @Service - ����Ͻ� ������ ó���ϴ� Service Ŭ����
 */
@Controller
@RequestMapping(value="/member")//http://localhost:8088/myhome6/member/�� �����ϴ� �ּ� ����
public class MemberController {
	private static final Logger logger
	= LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService memberservice;
	
/*
@CookieValue(value="saveid", required=false) Cookie readCookie
�̸��� saveid�� ��Ű�� Cookie Ÿ������ ���޹޽��ϴ�.
������ �̸��� ��Ű�� �������� ���� ���� �ֱ� ������ required=false�� �����ؾ� �մϴ�.
��, id ����ϱ⸦ �������� ���� ���� �ֱ� ������ required=false�� �����ؾ� �մϴ�.
required=true ���¿��� ������ �̸��� ���� ��Ű�� �������� ������ ������ MVC�� �ͼ����� �߻���ŵ�ϴ�.
 */
	
//http://localhost:8088/myhome6/login �α��� �� �̵�
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public ModelAndView login(ModelAndView mv,
//Model:���� �����ϴ°�, View:���� �����ִ°�
//Model�� ����� ��� String���� ����
//ModelAndView�� addObject�� ���� �������� setViewName���� �����ش�.
			@CookieValue(value="saveid", required=false) Cookie readCookie
			) {
		if(readCookie != null) {
			mv.addObject("saveid",readCookie.getValue());
			logger.info("cookie time=" + readCookie.getMaxAge());
		}
		mv.setViewName("sports_member/login");
		return mv;
	}
	
	//ȸ������ �� �̵�
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String join() {
		return "member/member_joinForm";//WEB-INF/views/member/member_joinForm.jsp
	}
	
	//ȸ������ �� ���̵� �˻�
	@RequestMapping(value="/idcheck", method=RequestMethod.GET)
	public void idcheck(@RequestParam("id") String id,
			HttpServletResponse response) throws Exception{
		int result = memberservice.isId(id);//idId���� �Ѿ�� int��
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
	}
	
	//ȸ������ ���� ���� ����
	@RequestMapping(value="/joinProcess", method=RequestMethod.POST)
	public String joinProcess(Member member,//Member : command ��ü
			RedirectAttributes rattr, Model model,
			HttpServletRequest request) throws Exception{
		int result = memberservice.insert(member);
/*
���������� �����ϴ� RedirectAttributes�� ������ Serlvet���� ���Ǵ�
response.sendRedirect()�� ����� ���� ������ �뵵�� ����մϴ�.
�����̷�Ʈ�� �����ϸ� �Ķ���͸� �����ϰ��� �� �� addAttribute()�� addFlashAttribute()�� ����մϴ�.
��) response.sendRedirect("/test?result=1");
	=> rattr.addAttribute("result",1)
 */
		//������ �� ���
		if(result==1) {
			rattr.addFlashAttribute("result","joinSuccess");
			return "redirect:login";
		}else {
			model.addAttribute("url",request.getRequestURL());
			model.addAttribute("message","ȸ�� ���� ����");
			return "error/error";
		}
	}
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public String loginProcess(//������°�
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam(value="remember",defaultValue="",required=false)
			String remember,
			HttpSession session, RedirectAttributes rattr,
			HttpServletResponse response) throws Exception{
		int result = memberservice.isId(id, password);
		logger.info("���: " + result);
		
		if(result == 1) {
			//�α��� ����
			session.setAttribute("id", id);
			Cookie savecookie = new Cookie("saveid",id);
			if(!remember.equals("")) {
				savecookie.setMaxAge(60*60);
				logger.info("��Ű���� : 60*60");
			}else {
				logger.info("��Ű���� : 0");
				savecookie.setMaxAge(0);
			}
			response.addCookie(savecookie);
			return "redirect:/board/list";//boardController��
		}else {
			rattr.addFlashAttribute("result",result);
			return "redirect:login";
		}
		
	}
	
/*
1. header.jsp���� �̵��ϴ� ���
	href="${pageContext.request.contextPath}/member/list"
2. member_list.jsp���� �̵��ϴ� ���
	<a href="list?page=2&search_field=-1&search_word=" class="page-link">2</a>
 */
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
}
