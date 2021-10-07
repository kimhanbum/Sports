package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Match;
import com.project.sports.domain.Sports;


public interface MatchService {
	
	public int getListCount(int num);
	
	public List<Match> getMatchList(int page, int limit, int num);
	
	public String selSportName(Sports param);

	public void insertMatch(Match match);
}
