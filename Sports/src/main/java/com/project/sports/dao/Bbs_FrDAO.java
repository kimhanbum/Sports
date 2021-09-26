package com.project.sports.dao;

import java.util.HashMap;
import java.util.List;

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
}
