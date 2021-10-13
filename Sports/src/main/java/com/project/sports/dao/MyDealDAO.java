package com.project.sports.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;

@Repository
public class MyDealDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int BUY_BIDDINGcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.buy_bidding",sessionid);
	}

	public int BUY_BIDCOMcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.buy_bidcom",sessionid);
	}

	public int BUY_BIDFAILcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.buy_bidfail",sessionid);
	}

	public int BUY_DELIVERYcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.buy_delivery",sessionid);
	}

	public int SELL_BIDDINGcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.sell_bidding",sessionid);
	}

	public int SELL_BIDCOMcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.sell_bidcom",sessionid);
	}

	public int SELL_DELIVERYcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.sell_delivery",sessionid);
	}

	public List<DealAuction> getAuctionCartList(HashMap<String, Object> map) {
		return sqlSession.selectList("MyDeal.auccart", map);
	}

	public int Cart_Delete(HashMap<String, Object> map) {
		return sqlSession.delete("MyDeal.cartdel" , map);
	}

	public List<DealDirect> getDirectCartList(HashMap<String, Object> map) {
		return sqlSession.selectList("MyDeal.dircart", map);
	}

	public int Cart_Delete2(HashMap<String, Object> map) {
		return sqlSession.delete("MyDeal.cartdel2" , map);
	}

	public int getListCount(HashMap<String, Object> map) {
		return sqlSession.selectOne("MyDeal.count", map);
	}

	public List<DealAuction> MybuyList(HashMap<String, Object> map) {
		return sqlSession.selectList("MyDeal.buylist", map);
	}

	public int getListCount2(HashMap<String, Object> map) {
		return sqlSession.selectOne("MyDeal.count2", map);
	}

	public List<DealAuction> MysellList(HashMap<String, Object> map) {
		return sqlSession.selectList("MyDeal.selllist", map);
	}

	public void postinput1(HashMap<String, Object> map) {
		sqlSession.update("MyDeal.postinput1", map);
	}

	public void postinput2(int num) {
		sqlSession.update("MyDeal.postinput2", num);
		
	}
	public void postinput3(int num) {
		sqlSession.update("MyDeal.postinput3", num);
		 
	}

	public void receipt1(int num) {
		sqlSession.delete("MyDeal.receipt1", num);
		
	}
	public void receipt2(int num) {
		sqlSession.delete("MyDeal.receipt2", num);
		
	}

	public int BUY_QUESTIONcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.bquestion", sessionid);
	}

	public int SELL_QUESTIONcount(String sessionid) {
		return sqlSession.selectOne("MyDeal.squestion", sessionid);
	}

}
