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

	public List<DealAuction> getSearchAuctionList(HashMap<String, Object> map) {
		return sqlSession.selectList("Auction.searchlist",map);
	}

	public DealAuction A_getDetail(int num) {
		return sqlSession.selectOne("Auction.detail",num);
	}

	public int Auction_pricemodi(DealAuction Auction) {
		return sqlSession.update("Auction.pricemodi" ,Auction);
	}

	public int A_readcount(int num) {
		return sqlSession.update("Auction.readcount",num);
	}

	public void Auction_biding(HashMap<String, Object> map) {
		sqlSession.insert("Auction.biding",map);
	}

	public int Auction_bidchange(int num) {
		return sqlSession.update("Auction.change", num);
	}

	public Object bidcheck(HashMap<String, Object> map) {
		return sqlSession.selectOne("Auction.bidcheck" , map);
	}

	public Object Auction_pick(HashMap<String, Object> map) {
		return sqlSession.insert("Auction.pick" , map);
	}

	public Object pickcheck(HashMap<String, Object> map) {
		return sqlSession.selectOne("Auction.pickcheck" , map);
	}

	public void Myinsert(DealAuction auction) {
		sqlSession.insert("Auction.myinsert", auction);
		
	}





}
