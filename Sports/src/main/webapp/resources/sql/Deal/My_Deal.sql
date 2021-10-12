create table MY_DEAL(
	USER_ID VARCHAR2(60) references MEMBER_INFO(USER_ID)
					on delete cascade,			--아아디
	AUC_NUMBER NUMBER ,						--글번호
	BUY_BIDDING	 NUMBER default 0,					--입찰중(구매)
	BUY_BIDCOM         NUMBER default 0,					--입찰완료(구매)
	BUY_BIDFAIL	 NUMBER default 0,					--입찰실패(구매)
	BUY_DELIVERY	 NUMBER default 0,				--배송중(구매)
	SELL_BIDDING	 NUMBER default 0,				--입찰중(판매)
	SELL_BIDCOM		 NUMBER default 0,				--배송중(판매)
	SELL_DELIVERY	 NUMBER default 0,				--배송입력(판매)
	PICK			 NUMBER default 0);	--장바구니
	
	drop table my_deal;
	delete from my_deal;
	
	select * from my_deal;
	
	/*10-09 추가 거래분류 속성추가*/
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