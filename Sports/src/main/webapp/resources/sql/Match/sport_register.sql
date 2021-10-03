DROP TABLE SPORT_REGISTER cascade constraints purge;

create table SPORT_REGISTER(
	REGISTER_ID VARCHAR2(60) references MEMBER_INFO(USER_ID) on delete cascade UNIQUE,
	REGISTER_NUM NUMBER(20) primary key,  --reg_seq--
	SPORT_NUM references SPORTS(SPORTS_NUM), 
	MATCH_PRS NUMBER(20),
	MATCH_ADR VARCHAR2(100),
	MATCH_DTL_ADR VARCHAR2(100),
	MATCH_TIME VARCHAR2(100),
	MATCH_SKL VARCHAR2(100),
	REGISTER_STUS NUMBER(20) default 0
	--constraint REGISTER_STUS_CK check (REGISTER_STUS in ('0','1','2'))--
	--������ 0, ����� 1, ����2 (�Խñۿ� ���� ��������) --
);

select * from SPORT_REGISTER;

create sequence reg_seq;


insert into SPORT_REGISTER(REGISTER_ID,REGISTER_NUM,SPORT_NUM,MATCH_PRS,MATCH_ADR,MATCH_DTL_ADR,MATCH_TIME,MATCH_SKL)
values('admin01',reg_seq.nextval,1,9,'��õ','������','09:00','��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('admin02', reg_seq.nextval, 2, 9, '����', '���α�', '13:00', '��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user01', reg_seq.nextval, 1, 11, '�λ�', '����', '21-10-03', '��');


insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user02', reg_seq.nextval, 1, 3, '��õ', '������', '21-10-08', '��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 5, '��õ', '������', '21-11-30', '��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user01', reg_seq.nextval, 1, 11, '���ֵ�', '��������', '21-10-08', '��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 11, '�뱸', '�߱�', '21-11-08', '��');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 11, '����', '����', '21-12-08', '��');


select * from si;
create table si(
	si_num number(20) primary key,
	si_name varchar2(100) 
)

drop table si;

insert into SI
values(1, '����Ư����');

insert into SI
values(2, '��õ������');

insert into SI
values(3, '�λ걤����');

insert into SI
values(4, '�뱸������');

insert into SI
values(5, '���ֱ�����');

insert into SI
values(6, '����������');

insert into SI
values(7, '��걤����');

insert into SI
values(8, '��⵵');

insert into SI
values(9, '���ֵ�');

drop table sigungu;
select * from sigungu;
create table sigungu(
	sigungu_num number(20) primary key,
	si_num number(20) references si(si_num) on delete cascade,
	sigungu_name varchar2(100)
)
--����--
insert into sigungu values ( 1,1,'������');
insert into sigungu values ( 2,1,'������');
insert into sigungu values ( 3,1,'���ϱ�');
insert into sigungu values ( 4,1,'������');
insert into sigungu values ( 5,1,'���Ǳ�');
insert into sigungu values ( 6,1,'������');
insert into sigungu values ( 7,1,'���α�');
insert into sigungu values ( 8,1,'��õ��');
insert into sigungu values ( 9,1,'�����');
insert into sigungu values ( 10,1,'������');
insert into sigungu values ( 11,1,'���빮��');
insert into sigungu values ( 12,1,'���۱�');
insert into sigungu values ( 13,1,'������');
insert into sigungu values ( 14,1,'���빮��');
insert into sigungu values ( 15,1,'���ʱ�');
insert into sigungu values ( 16,1,'������');
insert into sigungu values ( 17,1,'���ϱ�');
insert into sigungu values ( 18,1,'���ı�');
insert into sigungu values ( 19,1,'��õ��');
insert into sigungu values ( 20,1,'��������');
insert into sigungu values ( 21,1,'��걸');
insert into sigungu values ( 22,1,'����');
insert into sigungu values ( 23,1,'���α�');
insert into sigungu values ( 24,1,'�߱�');
insert into sigungu values ( 25,1,'�߶���');
--��õ--
insert into sigungu values ( 26,2,'�߱�');
insert into sigungu values ( 27,2,'����');
insert into sigungu values ( 28,2,'����Ȧ��');
insert into sigungu values ( 29,2,'������');
insert into sigungu values ( 30,2,'������');
insert into sigungu values ( 31,2,'����');
insert into sigungu values ( 32,2,'��籸');
insert into sigungu values ( 33,2,'����');

--�λ�--
insert into sigungu values ( 34,3,'�߱�');
insert into sigungu values ( 35,3,'����');
insert into sigungu values ( 36,3,'����');
insert into sigungu values ( 37,3,'������');
insert into sigungu values ( 38,3,'�λ�����');
insert into sigungu values ( 39,3,'������');
insert into sigungu values ( 40,3,'����');
insert into sigungu values ( 41,3,'�ϱ�');
insert into sigungu values ( 42,3,'�ؿ�뱸');
insert into sigungu values ( 43,3,'���ϱ�');
insert into sigungu values ( 44,3,'������');
insert into sigungu values ( 45,3,'������');
insert into sigungu values ( 46,3,'���');

--�뱸--
insert into sigungu values ( 47,4,'�߱�');
insert into sigungu values ( 48,4,'����');
insert into sigungu values ( 49,4,'����');
insert into sigungu values ( 50,4,'����');
insert into sigungu values ( 51,4,'�ϱ�');
insert into sigungu values ( 52,4,'������');
insert into sigungu values ( 53,4,'�޼���');


--����--
insert into sigungu values ( 54,5,'����');
insert into sigungu values ( 55,5,'����');
insert into sigungu values ( 56,5,'����');
insert into sigungu values ( 57,5,'�ϱ�');
insert into sigungu values ( 58,5,'���걸');

--����--
insert into sigungu values ( 59,6,'����');
insert into sigungu values ( 60,6,'�߱�');
insert into sigungu values ( 61,6,'����');
insert into sigungu values ( 62,6,'������');
insert into sigungu values ( 63,6,'�����');

--���--
insert into sigungu values ( 64,7,'�߱�');
insert into sigungu values ( 65,7,'����');
insert into sigungu values ( 66,7,'����');
insert into sigungu values ( 67,7,'�ϱ�');


--��⵵--
insert into sigungu values ( 68,8,'������');
insert into sigungu values ( 69,8,'������');
insert into sigungu values ( 70,8,'�����ν�');
insert into sigungu values ( 71,8,'�Ⱦ��');
insert into sigungu values ( 72,8,'��õ��');
insert into sigungu values ( 73,8,'���ý�');
insert into sigungu values ( 74,8,'����õ��');
insert into sigungu values ( 75,8,'�Ȼ��');
insert into sigungu values ( 76,8,'����');
insert into sigungu values ( 77,8,'��õ��');
insert into sigungu values ( 78,8,'������');
insert into sigungu values ( 79,8,'�����ֽ�');
insert into sigungu values ( 80,8,'�����');
insert into sigungu values ( 81,8,'�����');
insert into sigungu values ( 82,8,'������');
insert into sigungu values ( 83,8,'�ǿս�');
insert into sigungu values ( 84,8,'�ϳ���');
insert into sigungu values ( 85,8,'���ν�');
insert into sigungu values ( 86,8,'���ֽ�');
insert into sigungu values ( 87,8,'��õ��');
insert into sigungu values ( 88,8,'�ȼ���');
insert into sigungu values ( 89,8,'������');
insert into sigungu values ( 90,8,'ȭ����');
insert into sigungu values ( 91,8,'���ֽ�');
insert into sigungu values ( 92,8,'���ֽ�');
insert into sigungu values ( 93,8,'��õ��');
insert into sigungu values ( 94,8,'���ֽ�');


--���ֵ�
insert into sigungu values ( 95,9,'��������');
insert into sigungu values ( 96,9,'���ֽ�');