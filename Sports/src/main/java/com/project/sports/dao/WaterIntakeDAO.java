package com.project.sports.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.WaterIntake;

@Repository
public class WaterIntakeDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void Waterinsert(WaterIntake water) {
		sqlSession.insert("Water.insert", water);
	}

	public List<WaterIntake> getList(String yearMonth) {
		return sqlSession.selectList("Water.select", yearMonth);
	}
	
}
