package com.project.sports.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sports.dao.MmatchDAO;
import com.project.sports.domain.Mentor;
import com.project.sports.domain.Sports;
import com.sun.media.jfxmedia.logging.Logger;


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
	public int insertMentorWriting(Mentor mentor) {
		return dao.insertMentorWriting(mentor);
	}

	@Override
	public List<Sports> getSportDeatilList(int selType) {
		return dao.getSportDeatilList(selType);
	}
	
	@Override
	public int getMentorListCount() {
		return dao.getMentorListCount();
	}

	@Override
	public List<Mentor> getMentorList(int page, int limit) {
		HashMap <String,Integer> map = new HashMap <String,Integer>();
		int startrow =(page-1)*limit +1;
		int endrow=startrow+limit-1;
		map.put("start",startrow);
		map.put("end",endrow);
		return dao.getMentorList(map);
	}

	@Override
	public int getSearchMentorListCount(String search_field, String search_word) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		if(!search_field.equals("")) {
			//검색 영역이 있다면 map에 put
			map.put("search_field",search_field);
			
			//검색 영역에 따라 map에 put을하는 조건이 틀림
			switch(search_field) {
				case "지역" : 
					String[] loc =search_word.split(",");
					map.put("search_word",loc[0]);
					map.put("search_addword",loc[1]);
					break;
				case "수업료": 
					String money =search_word.substring(0,2)+"0000";
					map.put("search_word",money);
					break;
				case "과목" : 
				case "성별" : 
					map.put("search_word",search_word);
					break;
			}
			
		}
		return dao.getSearchMentorListCount(map);
	}

	@Override
	public List<Mentor> getSearchMentorList(int page, int limit, String search_field, String search_word) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		if(!search_field.equals("")) {
			//검색 영역이 있다면 map에 put
			map.put("search_field",search_field);
			
			//검색 영역에 따라 map에 put을하는 조건이 틀림
			switch(search_field) {
				case "지역" : 
					String[] loc =search_word.split(",");
					map.put("search_word",loc[0]);
					map.put("search_addword",loc[1]);
					break;
				case "수업료": 
					String money =search_word.substring(0,2)+"0000";
					map.put("search_word",money);
					break;
				case "과목" : 
				case "성별" : 
					map.put("search_word",search_word);
					break;
			}
			
		}
		int startrow =(page-1)*limit +1;
		int endrow=startrow+limit-1;
		map.put("start",startrow);
		map.put("end",endrow);
		return dao.getSearchMentorList(map);
	}

	@Override
	public Mentor getMentorDetail(String code) {
		return dao.getMentorDetail(code);
	}
}
