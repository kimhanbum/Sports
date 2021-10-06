package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Match;
import com.project.sports.domain.Sports;


public interface MatchService {
	
	public int getListCount();
	
	public List<Match> getMatchList(int page, int limit);
	
	public String selSportName(Sports param);

	public void insertMatch(Match match);
}
