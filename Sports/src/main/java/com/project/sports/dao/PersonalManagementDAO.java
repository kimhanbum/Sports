package com.project.sports.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonalManagementDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
}