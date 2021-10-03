package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Match;


public interface MatchService {
	
	public int getListCount();
	
	public List<Match> getMatchList(int page, int limit);
}
