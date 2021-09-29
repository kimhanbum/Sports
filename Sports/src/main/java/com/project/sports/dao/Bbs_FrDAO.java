package com.project.sports.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.BBS_FR;

@Repository
public class Bbs_FrDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("BBS_FR.count");
	}

	public List<BBS_FR> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("BBS_FR.list", map);
	}

	public void insertBoard(BBS_FR board) {
		sqlSession.insert("BBS_FR.insert", board);
		
	}

	
	  public BBS_FR getDetail(int num) { 
		  return sqlSession.selectOne("BBS_FR.detail", num);
	}
	  
	  public int setReadCountUpdate(int num) { 
		  return sqlSession.update("BBS_FR.readCountUpdate", num);
	}

	public BBS_FR isFrWriter(Map<String, Object> map) {
		return sqlSession.selectOne("BBS_FR.FrWriter", map);
	}

	public int FrDelete(BBS_FR fr) {
		return sqlSession.delete("BBS_FR.delete",fr);
	}
	 
}
