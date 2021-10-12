package com.project.sports.service;

import java.util.List;
import java.util.Map;

import com.project.sports.domain.WaterIntake;

public interface WaterIntakeService {

	public void Waterinsert(WaterIntake water);

	public List<WaterIntake> getList(String yearMonth);

	public void wateradd(WaterIntake water);

	
		
	}

