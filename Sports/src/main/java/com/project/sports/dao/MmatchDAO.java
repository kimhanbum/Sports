package com.project.sports.dao;

import java.util.HashMap; 
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public int insertMentorWriting(Mentor mentor) {
		return sqlSession.insert("Mmatches.insertWMentor",mentor);
	}
	public List<Sports> getSportDeatilList(int selType){
		return sqlSession.selectList("Mmatches.sportDetailList",selType);
	}
	public int getMentorListCount() {
		return sqlSession.selectOne("Mmatches.MentorCount");
	}
	public List<Mentor> getMentorList(HashMap <String,Integer> map) {
		return sqlSession.selectList("Mmatches.Mentorlist",map);
	}
	public int getSearchMentorListCount(HashMap <String,Object> map) {
		return sqlSession.selectOne("Mmatches.MentorCount",map);
	}
	public List<Mentor> getSearchMentorList(HashMap <String,Object> map) {
		return sqlSession.selectList("Mmatches.Mentorlist",map);
	}
	public Mentor getMentorDetail(String code) {
		return sqlSession.selectOne("Mmatches.MentorDetail",code);
	}
	
}
