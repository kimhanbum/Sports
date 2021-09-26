package com.project.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.Bbs_FrDAO;
import com.project.sports.domain.BBS_FR;

@Service
public class Bbs_FrSeviceImpl implements Bbs_FrService{

	@Autowired
	private Bbs_FrDAO dao;

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<BBS_FR> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow=(page-1)*limit+1;
		int endrow=startrow+limit-1;
		map.put("start", startrow);
		map.put("end",endrow);
		return dao.getBoardList(map);
	}
}
