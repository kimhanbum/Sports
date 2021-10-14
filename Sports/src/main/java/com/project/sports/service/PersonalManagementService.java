package com.project.sports.service;

import java.util.List;
import java.util.Map;

import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;

public interface PersonalManagementService {
	
	//�����ٿ� ������ �ҷ�����
	List<Sports> getSelect(String select);
	//������ ����
	void insertPM(PersonalManagement pm);
	//������ ����
	int getListCount(String id);
	//����
	int delete(int num);
	//Į�θ�, �����, ���� �� ������(���Ͽ��������)
	List<PersonalManagement> getList(String id,int page, int limit);
	//Ķ������ ���� �� Į�θ� ������(Ķ���� ������)
	
	List<Map<String,Object>> getCalendar(Map<String, Object> map);
	
	
}
