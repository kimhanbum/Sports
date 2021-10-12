package com.project.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MyDealDAO;
import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;

@Service
public class MyDealServiceImpl implements MyDealService{
	
	@Autowired
	private MyDealDAO dao;

	@Override
	public int BUY_BIDDINGcount(String sessionid) {
		return dao.BUY_BIDDINGcount(sessionid);
	}

	@Override
	public int BUY_BIDCOMcount(String sessionid) {
		return dao.BUY_BIDCOMcount(sessionid);
	}

	@Override
	public int BUY_BIDFAILcount(String sessionid) {
		return dao.BUY_BIDFAILcount(sessionid);
	}

	@Override
	public int BUY_DELIVERYcount(String sessionid) {
		return dao.BUY_DELIVERYcount(sessionid);
	}

	@Override
	public int SELL_BIDDINGcount(String sessionid) {
		return dao.SELL_BIDDINGcount(sessionid);
	}

	@Override
	public int SELL_BIDCOMcount(String sessionid) {
		return dao.SELL_BIDCOMcount(sessionid);
	}

	@Override
	public int SELL_DELIVERYcount(String sessionid) {
		return dao.SELL_DELIVERYcount(sessionid);
	}

	@Override
	public List<DealAuction> AuctionCartList(String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		return dao.getAuctionCartList(map);
	}

	@Override
	public int Cart_Delete(int num, String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		map.put("num" , num);
		return dao.Cart_Delete(map);
	}

	@Override
	public List<DealDirect> DirectCartList(String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		return dao.getDirectCartList(map);
	}

	@Override
	public int Cart_Delete2(int num, String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		map.put("num" , num);
		return dao.Cart_Delete2(map);
	}

	@Override
	public int getListCount(int view , String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		map.put("view" , view);
		return dao.getListCount(map);
	}

	@Override
	public List<DealAuction> MybuyList(int view, int page, int limit , String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		int startrow=(page-1)*limit +1; 
		int endrow = startrow+limit-1;
		map.put("start", startrow);
		map.put("end",endrow);
		map.put("view",view);
		map.put("sessionid" , sessionid);

		return dao.MybuyList(map);
	}

	@Override
	public int getListCount2(int view, String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("sessionid" , sessionid);
		map.put("view2" , view);
		return dao.getListCount2(map);
	}

	@Override
	public List<DealAuction> MysellList(int view, int page, int limit, String sessionid) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		int startrow=(page-1)*limit +1; 
		int endrow = startrow+limit-1;
		map.put("start", startrow);
		map.put("end",endrow);
		map.put("view2",view);
		map.put("sessionid" , sessionid);

		return dao.MysellList(map);
	}

	@Override
	public void postinput1(int num, String sel, String post1) {
		HashMap<String , Object>map = new HashMap<String,Object>();
		map.put("num", num);
		map.put("sel",sel);
		map.put("post1",post1);
		
		dao.postinput1(map);
	}

	@Override
	public void postinput2(int num) {
		dao.postinput2(num);
		
	}

	@Override
	public void postinput3(int num) {
		dao.postinput3(num);
		
	}

	@Override
	public void receipt1(int num) {
		dao.receipt1(num);
		
	}

	@Override
	public void receipt2(int num) {
		dao.receipt2(num);
		
	}

}
