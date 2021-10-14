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
	//데이터 개수
	int getListCount(String id);
	//삭제
	int delete(int num);
	//칼로리, 운동종목, 사진 등 데이터(당일운동량페이지)
	List<PersonalManagement> getList(String id,int page, int limit);
	//캘린더에 나올 총 칼로리 데이터(캘린더 페이지)
	
	List<Map<String,Object>> getCalendar(Map<String, Object> map);
	
	
}
