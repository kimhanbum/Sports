package com.project.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MatchDAO;
import com.project.sports.domain.Match;
import com.project.sports.domain.Sports;

@Service
public class MatchServiceImpl implements MatchService {
	@Autowired
	private MatchDAO dao;
	
	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Match> getMatchList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1)*limit +1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getMatchList(map);
	}

	@Override
	public String selSportName(Sports param){
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int sports_num = param.getSports_num();
		map.put("sports_num", sports_num);
		return dao.selSportName(map);
	}

	@Override
	public void insertMatch(Match match) {
		dao.insertMatch(match);
	}
	
}
