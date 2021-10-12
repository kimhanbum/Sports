package com.project.sports.service;

import java.util.List;
import java.util.Map;

import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;

public interface PersonalManagementService {
	
	//셀렉바에 데이터 불러오기
	List<Sports> getSelect(String select);
	//데이터 삽입
	void insertPM(PersonalManagement pm);
	//테이블에 값 출력
	//List<Map<String, Object>> getList(PersonalManagement pm, int page, int limit);
	//데이터 개
	int getListCount(String id);
	//삭제
	int delete(int num);
	
	List<PersonalManagement> getList(String id,int page, int limit);
	
	
}
