package com.project.sports.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.PersonalManagementDAO;
import com.project.sports.domain.PersonalManagement;
import com.project.sports.domain.Sports;

@Service
public class PersonalManagementServiceImpl implements PersonalManagementService{

	@Autowired
	PersonalManagementDAO dao;

	@Override
	public void insertPM(PersonalManagement pm) {
		dao.insertPM(pm);
	}

	@Override
	public List<Sports> getSelect(String select) {
		return dao.getSelect(select);
	}

	@Override
	public List<Map<String, Object>> getList(PersonalManagement pm) {
		return dao.getList(pm);
	}

	@Override
	public int delete(int num) {
		return dao.delete(num);
	}

}
