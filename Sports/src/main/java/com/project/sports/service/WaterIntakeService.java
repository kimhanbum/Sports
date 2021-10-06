package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.WaterIntake;

public interface WaterIntakeService {

	public void Waterinsert(WaterIntake water);

	public List<WaterIntake> getList(String yearMonth);
	
		
	}

