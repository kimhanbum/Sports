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
		int result = -1;	//ID가 존재하지 않는 경우 - rmember=null인 경우
		if(rmember!=null) {	//ID가 존재하는 경우
			if(rmember.getUSER_PASS().equals(password)) {
				result=1;	//ID,Password 일치
			}else {
				result=0;	//ID일치, Password 불일치
			}
		}
		return result;
	}

	@Override
	public int isId(String id) {
		Member rmember = dao.isId(id);
		return (rmember==null)? -1 : 1 ;
		//1 : ID존재하는 경우, -1 : ID 존재하지 않는 경우
	}

	@Override
	public int insert(Member m) {
		return dao.insert(m);
	}
}
