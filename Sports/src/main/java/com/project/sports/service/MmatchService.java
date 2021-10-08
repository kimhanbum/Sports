package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;

public interface MmatchService {
	public List<String> getSportlist(int selType);
	public List<String> getSilist();
	public List<String> getDonglist(String selType);
	public void insertMentorWriting(Mentor mentor);
	public List<Sports> getSportDeatilList(int selType);
}
