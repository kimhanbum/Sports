package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Mentor;

public interface MmatchService {
	public List<String> getSportlist(int selType);
	public List<String> getSilist();
	public List<String> getDonglist(String selType);
	public void insertMentorWriting(Mentor mentor);
}
