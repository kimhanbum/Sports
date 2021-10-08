package com.project.sports.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;

@Repository
public class PersonalManagementDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertPM(PersonalManagement pm) {
		sqlSession.insert("Pm.insert", pm);
	}

	public List<Sports> getSelect(String select) {
		return sqlSession.selectList("Pm.select", select);
	}

	public List<Map<String, Object>> getList(PersonalManagement pm) {
		return sqlSession.selectList("Pm.selectdate", pm);
	}

	public int delete(int num) {
		return sqlSession.delete("Pm.delete", num);
	}
}
