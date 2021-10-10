package com.project.sports.dao;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.sports.domain.Match;
import com.project.sports.domain.Sports;

@Repository
public class MatchDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount(int num) {
		return sqlSession.selectOne("Match.count", num);
	}
	
	public List<Match> getMatchList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Match.list",map);
	}
	
	public String selSportName(HashMap<String, Integer> param) {
		return sqlSession.selectOne("Match.selSportName", param);
	}

	public void insertMatch(Match match) {
		sqlSession.insert("Match.insert",match);
	}

	public List<Match> getSearchList(HashMap<String, Object> map) {
		return sqlSession.selectList("Match.searchlist",map);
	}
}
