package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.PersonalManagementDAO;

@Service
public class PersonalManagementServiceImpl implements PersonalManagementService{

	@Autowired
	PersonalManagementDAO dao;
	
}
