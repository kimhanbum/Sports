package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;



public interface DealService {
	
	// 글의 갯수 구하기
	public int getListCount();
	
	public int getListCount2();
	
	// 글 목록 보기
	public List<DealAuction> getAuctionList(int page, int limit);

	public void insert(DealAuction auction);

	public void D_insert(DealDirect direct);

	public List<DealDirect> getDirectList(int page, int limit);

}
