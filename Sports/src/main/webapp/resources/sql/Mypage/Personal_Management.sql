create table PERSONAL_MANAGEMENT(
PM_NO			 NUMBER primary key,
USER_ID			 VARCHAR2(60) references MEMBER_INFO(USER_ID),
PM_KCAL			 VARCHAR2(20),
PM_DATE			 DATE,
SPORTS_NAME		 VARCHAR2(100) NOT NULL references SPORTS(SPORTS_NAME)
);

insert into PERSONAL_MANAGEMENT values(
					1,'user01', '63', SYSDATE, '�߱�'); 
insert into PERSONAL_MANAGEMENT values(
					2, 'user01', '810', SYSDATE, '�ｺ'); 
insert into PERSONAL_MANAGEMENT values(
					3, 'user01', '63', SYSDATE, '�౸');  
					
select * from personal_management;