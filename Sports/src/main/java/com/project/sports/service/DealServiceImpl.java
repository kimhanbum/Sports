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


}
