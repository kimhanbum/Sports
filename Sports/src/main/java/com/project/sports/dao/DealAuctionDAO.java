package com.project.sports.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;

@Repository
public class DealAuctionDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		
		return sqlSession.selectOne("Auction.count");
	}

	public List<DealAuction> getAuctionList(HashMap<String, Integer> map) {
		
		return sqlSession.selectList("Auction.list", map);
	}

	public void insertBoard(DealAuction auction) {
		 sqlSession.insert("Auction.insert" , auction);
		
	}



}
