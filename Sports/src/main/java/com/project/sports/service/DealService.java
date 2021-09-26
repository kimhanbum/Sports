package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.DealAuction;



public interface DealService {
	
	// ���� ���� ���ϱ�
	public int getListCount();
	
	// �� ��� ����
	public List<DealAuction> getAuctionList(int page, int limit);

	public void insert(DealAuction auction);

}
