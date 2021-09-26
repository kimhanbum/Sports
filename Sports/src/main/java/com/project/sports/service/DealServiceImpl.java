package com.project.sports.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.DealAuctionDAO;
import com.project.sports.domain.DealAuction;

@Service
public class DealServiceImpl implements DealService {

		@Autowired
		private DealAuctionDAO dao;

		@Override
		public int getListCount() {
			return dao.getListCount();
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
}
