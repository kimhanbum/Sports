package com.project.sports.service;

import java.util.List;
import java.util.Map;

import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;

public interface PersonalManagementService {

	List<Sports> getSelect(String select);

	void insertPM(PersonalManagement pm);

	List<Map<String, Object>> getList(PersonalManagement pm);

	int delete(int num);

	
}
