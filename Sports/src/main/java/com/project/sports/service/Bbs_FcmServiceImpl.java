package com.project.sports.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.Bbs_FcmDAO;

@Service
public class Bbs_FcmServiceImpl implements Bbs_FcmService{

	@Autowired
	Bbs_FcmDAO dao;
}
