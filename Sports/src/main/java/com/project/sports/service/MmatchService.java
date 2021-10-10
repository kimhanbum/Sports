package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;

public interface MmatchService {
	public List<String> getSportlist(int selType);
	public List<String> getSilist();
	public List<String> getDonglist(String selType);
	public int insertMentorWriting(Mentor mentor);
	public List<Sports> getSportDeatilList(int selType);
    public int getMentorListCount();
    public List<Mentor> getMentorList(int page, int limit);
    public int getSearchMentorListCount(String search_field,String search_word);
    public List<Mentor> getSearchMentorList(int page, int limit,String search_field,String search_word); 
    public Mentor getMentorDetail(String code);
}
