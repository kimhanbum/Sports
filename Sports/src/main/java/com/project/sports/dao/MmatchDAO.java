package com.project.sports.dao;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.sports.domain.Match;
import com.project.sports.domain.Member;
import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;

@Repository
public class MmatchDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<String> getSportlist(int selType) {
		return sqlSession.selectList("Mmatches.sportList",selType);
	}
	
	public List<String> getSilist() {
		return sqlSession.selectList("Mmatches.siList");
	}
	
	public List<String> getDonglist(String selType) {
		return sqlSession.selectList("Mmatches.dongList",selType);
	}
	
	public void insertMentorWriting(Mentor mentor) {
		sqlSession.insert("Mmatches.insertWMentor",mentor);
	}
}
