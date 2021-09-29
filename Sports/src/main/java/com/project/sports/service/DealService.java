package com.project.sports.service;

import java.util.List;

import com.project.sports.domain.DealAuction;
import com.project.sports.domain.DealDirect;



public interface DealService {
	
	// ���� ���� ���ϱ�
	public int getListCount();
	
	public int getListCount2();
	
	// �� ��� ����
	public List<DealAuction> getAuctionList(int page, int limit);

	public void insert(DealAuction auction);

	public void D_insert(DealDirect direct);

	public List<DealDirect> getDirectList(int page, int limit);

	public DealDirect D_getDetail(int num);

	public int D_Delete(int num);

	

}
