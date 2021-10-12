package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;

public interface MyDealService {

	int BUY_BIDDINGcount(String sessionid);

	int BUY_BIDCOMcount(String sessionid);

	int BUY_BIDFAILcount(String sessionid);

	int BUY_DELIVERYcount(String sessionid);

	int SELL_BIDDINGcount(String sessionid);

	int SELL_BIDCOMcount(String sessionid);

	int SELL_DELIVERYcount(String sessionid);

	List<DealAuction> AuctionCartList(String sessionid);

	int Cart_Delete(int num, String sessionid);

	List<DealDirect> DirectCartList(String sessionid);

	int Cart_Delete2(int num, String sessionid);

	int getListCount(int view , String sessionid);

	List<DealAuction> MybuyList(int view, int page, int limit ,String sessionid);

}
