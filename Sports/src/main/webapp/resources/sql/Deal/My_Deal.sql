create table MY_DEAL(
	USER_ID VARCHAR2(60) references MEMBER_INFO(USER_ID)
					on delete cascade,			--�ƾƵ�
	AUC_NUMBER NUMBER ,						--�۹�ȣ
	BUY_BIDDING	 NUMBER default 0,					--������(����)
	BUY_BIDCOM         NUMBER default 0,					--�����Ϸ�(����)
	BUY_BIDFAIL	 NUMBER default 0,					--��������(����)
	BUY_DELIVERY	 NUMBER default 0,				--�����(����)
	SELL_BIDDING	 NUMBER default 0,				--������(�Ǹ�)
	SELL_BIDCOM		 NUMBER default 0,				--�����(�Ǹ�)
	SELL_DELIVERY	 NUMBER default 0,				--����Է�(�Ǹ�)
	PICK			 NUMBER default 0);	--��ٱ���
	
	drop table my_deal;
	delete from my_deal;
	
	select * from my_deal;
	
	/*10-09 �߰� �ŷ��з� �Ӽ��߰�*/
	ALTER TABLE MY_DEAL ADD DEAL_CSFC number  DEFAULT 0;
	/*************************/
	
	
select * from
	(select  rownum rnum , deal_auction.AUC_NUMBER , AUC_SUBJECT, AUC_CONTENT , DEAL_AUCTION.USER_ID ,
AUC_DATE , AUC_PRICE , AUC_UNIT , AUC_LPRICE , AUC_COUNT , AUC_DELIVERY , AUC_DELIVERYCOM , AUC_DELIVERYNUM ,
AUC_READCOUNT , AUC_NOWDATE , AUC_SPRICE
from  deal_auction inner join my_deal
on deal_auction.auc_number = deal_auction.auc_number 
where deal_csfc = 1 and pick =1 and my_deal.user_id = 'admin01'
and DEAL_AUCTION.auc_number = my_deal.auc_number)
where rnum >= 1 and rnum <=10