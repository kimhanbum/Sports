package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.DealAuction;



public interface DealService {
	
	// 글의 갯수 구하기
	public int getListCount();
	
	// 글 목록 보기
	public List<DealAuction> getAuctionList(int page, int limit);

	public void insert(DealAuction auction);

}
