package com.project.sports.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.DealDirect;

@Repository
public class DealDirectDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

		public void insertBoard(DealDirect direct) {
		 sqlSession.insert("Direct.insert" , direct);
	}

		public int getListCount() {
			return sqlSession.selectOne("Direct.count");
		}

		public List<DealDirect> getDirectList(HashMap<String, Integer> map) {
			return sqlSession.selectList("Direct.list", map);
		}

		public DealDirect D_getDetail(int num) {
			return sqlSession.selectOne("Direct.detail",num);
		}

		public int D_Delete(int num) {
			return sqlSession.delete("Direct.delete",num);
		}
}
