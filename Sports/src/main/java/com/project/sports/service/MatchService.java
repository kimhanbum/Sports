package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Match;
import com.project.sports.domain.Match_Apply;
import com.project.sports.domain.Sports;


public interface MatchService {
	
	public int getListCount(int num);
	
	public List<Match> getMatchList(int page, int limit, int num);
	
	public String selSportName(Sports param);

	public void insertMatch(Match match);

	public List<Match> getSearchList(int num, String MATCH_ADR, String mATCH_DTL_ADR, String mATCH_TIME,
			int mATCH_PRS, String mATCH_SKL);

	public List<Match> selRegi(int REGISTER_NUM);

	public int RegiupdateMatch(int REGISTER_NUM);

	public String getemail(String rEGISTER_ID);

	public void ApplyMatch(Match_Apply match_apply);

	public List<Match> getRegiList(String id);

	public List<Match> getApplyList(String id);

	public int MactingUpdate(Match match);

	public int Regidelete(int REGISTER_NUM);



}
