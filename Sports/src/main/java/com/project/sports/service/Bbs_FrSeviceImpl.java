package com.project.sports.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		int startrow = (page-1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end",endrow);
		return dao.getBoardList(map);
	}

	@Override
	public void insertBoard(BBS_FR board) {
		dao.insertBoard(board);
	}

	@Override 
	public BBS_FR getDetail(int num) { if(setReadCountUpdate(num)!=1)
		return null; return dao.getDetail(num); 
	}
	  
	@Override 
	public int setReadCountUpdate(int num) { return
	  dao.setReadCountUpdate(num);
	}

	@Override
	public boolean isFrWriter(int num, String pass) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("pass",pass);
		BBS_FR result = dao.isFrWriter(map);
		if(result==null)
			return false;
		else
			return true;
	}

	@Override
	public int FrDelete(int num) {
		int result = 0;
		BBS_FR board =dao.getDetail(num);
		if(board!=null) {
			result=dao.FrDelete(board);
		}
		return result;	}
	 
}
