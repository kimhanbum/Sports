package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MemberDAO;
import com.project.sports.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO dao;

	@Override
	public int isId(String id, String password) {
		Member rmember = dao.isId(id);
		int result = -1;	//ID�� �������� �ʴ� ��� - rmember=null�� ���
		if(rmember!=null) {	//ID�� �����ϴ� ���
			if(rmember.getUSER_PASS().equals(password)) {
				result=1;	//ID,Password ��ġ
			}else {
				result=0;	//ID��ġ, Password ����ġ
			}
		}
		return result;
	}

	@Override
	public int isId(String id) {
		Member rmember = dao.isId(id);
		return (rmember==null)? -1 : 1 ;
		//1 : ID�����ϴ� ���, -1 : ID �������� �ʴ� ���
	}

	@Override
	public int insert(Member m) {
		return dao.insert(m);
	}
}
