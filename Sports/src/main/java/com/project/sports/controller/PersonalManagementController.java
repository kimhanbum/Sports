package com.project.sports.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.sports.service.PersonalManagementService;

@Controller
@RequestMapping(value="/pm")
public class PersonalManagementController {
	
	private static final Logger logger	
	= LoggerFactory.getLogger(BbsFrController.class);

	@Autowired
	private PersonalManagementService pmService;
	
	@RequestMapping(value="/list")
	public String list(){
		return "sports_management/personal_management";
	}
}
