package com.project.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.DealAuctionDAO;
import com.project.sports.dao.DealDirectDAO;
import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;

@Service
public class DealServiceImpl implements DealService {

		@Autowired
		private DealAuctionDAO dao;
		
		@Autowired
		private DealDirectDAO dao2;

		@Override
		public int getListCount() {
			return dao.getListCount();
		}
		
		@Override
		public int getListCount2() {
			return dao2.getListCount();
		} 

		@Override
		public List<DealAuction> getAuctionList(int page, int limit) {
			HashMap<String , Integer>map = new HashMap<String,Integer>();
			int startrow=(page-1)*limit +1; 
			int endrow = startrow+limit-1;
			map.put("start", startrow);
			map.put("end",endrow);
			return dao.getAuctionList(map);
		}

		@Override
		public void insert(DealAuction auction) {
			dao.insertBoard(auction);
			
		}

		@Override
		public void D_insert(DealDirect direct) {
			dao2.insertBoard(direct);
			
		}

		@Override
		public List<DealDirect> getDirectList(int page, int limit) {
			HashMap<String , Integer>map = new HashMap<String,Integer>();
			int startrow=(page-1)*limit +1; 
			int endrow = startrow+limit-1;
			map.put("start", startrow);
			map.put("end",endrow);
			return dao2.getDirectList(map);
		}

		@Override
		public DealDirect D_getDetail(int num) {
			return dao2.D_getDetail(num);
		}

		@Override
		public int D_Delete(int num) {
			int result = 0;
			return result = dao2.D_Delete(num);
		}

		@Override
		public int D_Modify(DealDirect direct) {
			return dao2.D_Modify(direct);
		}

		@Override
		public List<DealDirect> getSearchDirecList(int page, int limit, String search) {
			HashMap<String , Object>map = new HashMap<String,Object>();
			int startrow=(page-1)*limit +1; 
			int endrow = startrow+limit-1;
			map.put("start", startrow);
			map.put("end",endrow);
			map.put("search_word", "%" + search + "%");
			return dao2.getSearchDirectList(map);
		}

		@Override
		public int D_readcount(int num) {
			return dao2.D_readcount(num);
		}

		@Override
		public List<DealAuction> getSearchAuctionList(int page, int limit, String search) {
			HashMap<String , Object>map = new HashMap<String,Object>();
			int startrow=(page-1)*limit +1; 
			int endrow = startrow+limit-1;
			map.put("start", startrow);
			map.put("end",endrow);
			map.put("search_word", "%" + search + "%");
			return dao.getSearchAuctionList(map);
		}


}
