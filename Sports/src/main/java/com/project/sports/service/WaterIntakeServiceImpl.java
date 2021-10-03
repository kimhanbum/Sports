package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.WaterIntakeDAO;

@Service
public class WaterIntakeServiceImpl {

	@Autowired
	WaterIntakeDAO dao;
}
