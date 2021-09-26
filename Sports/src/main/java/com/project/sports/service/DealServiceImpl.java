package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.DealAuctionDAO;

@Service
public class DealServiceImpl implements DealService {

		@Autowired
		private DealAuctionDAO dao; 
}
