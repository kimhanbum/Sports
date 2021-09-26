package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.BBS_FR;


public interface Bbs_FrService {
	//글의 개수 구하기
	public int getListCount();
		
	//글의 목록 보기
	public List<BBS_FR> getBoardList(int page, int limit);
}
