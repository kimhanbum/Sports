package com.project.sports.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.sports.domain.Member;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member isId(String id) {
		return sqlSession.selectOne("Members.idcheck",id);//xml mapper¿Ã∏ß
	}
	public int insert(Member m) {
		return sqlSession.insert("Members.insert",m);
	}
	public Member member_info(String id) {
		return sqlSession.selectOne("Members.idcheck",id);
	}
	public void delete(String id) {
		sqlSession.delete("Members.delete",id);
	}
	public int update(Member m) {
		return sqlSession.update("Members.update",m);
	}
	
}
