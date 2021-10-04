package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.WaterIntakeDAO;
import com.project.sports.domain.WaterIntake;

@Service
public class WaterIntakeServiceImpl implements WaterIntakeService{

	@Autowired
	WaterIntakeDAO dao;

	@Override
	public void Waterinsert(WaterIntake water) {
		dao.Waterinsert(water);
	}

		
}
	
	
