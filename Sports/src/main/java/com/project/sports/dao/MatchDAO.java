package com.project.sports.dao;

import java.util.HashMap; 
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.sports.domain.Match;

@Repository
public class MatchDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("Match.count");
	}
	
	public List<Match> getMatchList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Match.list",map);
	}
}
