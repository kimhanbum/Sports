package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.BBS_FR;


public interface Bbs_FrService {
	//���� ���� ���ϱ�
	public int getListCount();
		
	//���� ��� ����
	public List<BBS_FR> getBoardList(int page, int limit);
	
	//�� �ۼ�
	public void insertBoard(BBS_FR board);

	//�󼼺���	
	public BBS_FR getDetail(int num);

}
