package com.project.sports.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MmatchDAO;
import com.project.sports.domain.Mentor;


@Service
public class MmatchServiceImpl implements MmatchService {
	@Autowired
	private MmatchDAO dao;

	@Override
	public List<String> getSportlist(int selType) {
		return dao.getSportlist(selType);
	}

	@Override
	public List<String> getSilist() {
		return dao.getSilist();
	}

	@Override
	public List<String> getDonglist(String selType) {
		return dao.getDonglist(selType);
	}

	@Override
	public void insertMentorWriting(Mentor mentor) {
		dao.insertMentorWriting(mentor);
	}
}
