create table Deal_Auction (
	AUC_NUMBER		 NUMBER primary key , 		--�۹�ȣ 
	AUC_SUBJECT 	 VARCHAR2(50) , 				--������
	AUC_CONTENT 	 VARCHAR2(4000), 			--�۳���
	USER_ID			 VARCHAR2(60) references MEMBER_INFO(USER_ID)
					on delete cascade , 		--���̵�
	AUC_DATE 		 DATE, 						--��űⰣ/		
	AUC_PRICE 		 NUMBER, 					--��Ű�
	AUC_UNIT		 NUMBER, 					--��������
	AUC_LPRICE		 NUMBER, 					--��ñ��Ű�
	AUC_COUNT		 NUMBER, 					--������
	AUC_DELIVERY	 VARCHAR2(20), 				--��۹��
	AUC_DELIVERYCOM	 VARCHAR2(30), 				--�ù��
	AUC_DELIVERYNUM  NUMBER, 					--�����ȣ
	ORI_AUC_MAINFILE	  VARCHAR2(100),			--��¥ ���λ���
	SAVE_AUC_MAINFILE	 VARCHAR2(100),			--����� ���λ���
	ORI_AUC_FILE2		 VARCHAR2(100), 			--��¥ ����2
	SAVE_AUC_FILE2		 VARCHAR2(100), 			--����� ����2
	ORI_AUC_FILE3		 VARCHAR2(100), 			--��¥ ����3
	SAVE_AUC_FILE3		 VARCHAR2(100), 			--����� ����3
	ORI_AUC_FILE4		 VARCHAR2(100), 			-- ��¥����4
	SAVE_AUC_FILE4		 VARCHAR2(100) );			-- ��������4
	
	
select * from Deal_Auction;
select * from board;
select * from member_info;

/*�߰��� �κ�*/
create sequence Auc_seq; 


