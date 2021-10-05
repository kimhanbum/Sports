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

	public List<DealDirect> getDirectList(int page, int limit , String view);

	public DealDirect D_getDetail(int num);

	public int D_Delete(int num);

	public int D_Modify(DealDirect direct);

	public List<DealDirect> getSearchDirecList(int page, int limit, String search, String view);

	public int D_readcount(int num);

	public List<DealAuction> getSearchAuctionList(int page, int limit, String search);

	public DealAuction A_getDetail(int num);

	public int Auction_pricemodi(DealAuction auction);

	public int A_readcount(int num);

	public void Auction_biding(String sessionid, int num);

	public int Auction_bidchange(int num);

	public Object bidcheck(String sessionid, int num);

	public void Auction_pick(String sessionid, int num);

	public Object pickcheck(String sessionid, int num);

	public void Myinsert(DealAuction auction);

	



	

}
