package com.project.sports.service;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MmatchDAO;
import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;


@Service
public class MmatchServiceImpl implements MmatchService {
	@Autowired
	private MmatchDAO dao;

	@Override
	public List<String> getSportlist(int selType) {
		return dao.getSportlist(selType);
	}

	@Override
	public List<String> getSilist() {
		return dao.getSilist();
	}

	@Override
	public List<String> getDonglist(String selType) {
		return dao.getDonglist(selType);
	}

	@Override
	public void insertMentorWriting(Mentor mentor) {
		dao.insertMentorWriting(mentor);
	}

	@Override
	public List<Sports> getSportDeatilList(int selType) {
		return dao.getSportDeatilList(selType);
	}
	
	@Override
	public int getMentorListCount() {
		return dao.getMentorListCount();
	}

	@Override
	public List<Mentor> getMentorList(int page, int limit) {
		HashMap <String,Integer> map = new HashMap <String,Integer>();
		int startrow =(page-1)*limit +1;
		int endrow=startrow+limit-1;
		map.put("start",startrow);
		map.put("end",endrow);
		return dao.getMentorList(map);
	}
}
