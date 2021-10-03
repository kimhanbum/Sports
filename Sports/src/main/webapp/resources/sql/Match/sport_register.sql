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
	--모집중 0, 대기중 1, 마감2 (게시글에 대한 상태정보) --
);

select * from SPORT_REGISTER;

create sequence reg_seq;


insert into SPORT_REGISTER(REGISTER_ID,REGISTER_NUM,SPORT_NUM,MATCH_PRS,MATCH_ADR,MATCH_DTL_ADR,MATCH_TIME,MATCH_SKL)
values('admin01',reg_seq.nextval,1,9,'인천','연수구','09:00','상');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('admin02', reg_seq.nextval, 2, 9, '서울', '종로구', '13:00', '중');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user01', reg_seq.nextval, 1, 11, '부산', '동구', '21-10-03', '상');


insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user02', reg_seq.nextval, 1, 3, '인천', '연수구', '21-10-08', '하');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 5, '인천', '연수구', '21-11-30', '상');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user01', reg_seq.nextval, 1, 11, '제주도', '서귀포시', '21-10-08', '상');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 11, '대구', '중구', '21-11-08', '상');

insert into SPORT_REGISTER(REGISTER_ID, REGISTER_NUM, SPORT_NUM,MATCH_PRS, MATCH_ADR, MATCH_DTL_ADR, MATCH_TIME, MATCH_SKL)
values('user03', reg_seq.nextval, 1, 11, '대전', '남구', '21-12-08', '상');


select * from si;
create table si(
	si_num number(20) primary key,
	si_name varchar2(100) 
)

drop table si;

insert into SI
values(1, '서울특별시');

insert into SI
values(2, '인천광역시');

insert into SI
values(3, '부산광역시');

insert into SI
values(4, '대구광역시');

insert into SI
values(5, '광주광역시');

insert into SI
values(6, '대전광역시');

insert into SI
values(7, '울산광역시');

insert into SI
values(8, '경기도');

insert into SI
values(9, '제주도');

drop table sigungu;
select * from sigungu;
create table sigungu(
	sigungu_num number(20) primary key,
	si_num number(20) references si(si_num) on delete cascade,
	sigungu_name varchar2(100)
)
--서울--
insert into sigungu values ( 1,1,'강남구');
insert into sigungu values ( 2,1,'강동구');
insert into sigungu values ( 3,1,'강북구');
insert into sigungu values ( 4,1,'강서구');
insert into sigungu values ( 5,1,'관악구');
insert into sigungu values ( 6,1,'광진구');
insert into sigungu values ( 7,1,'구로구');
insert into sigungu values ( 8,1,'금천구');
insert into sigungu values ( 9,1,'노원구');
insert into sigungu values ( 10,1,'도봉구');
insert into sigungu values ( 11,1,'동대문구');
insert into sigungu values ( 12,1,'동작구');
insert into sigungu values ( 13,1,'마포구');
insert into sigungu values ( 14,1,'서대문구');
insert into sigungu values ( 15,1,'서초구');
insert into sigungu values ( 16,1,'성동구');
insert into sigungu values ( 17,1,'성북구');
insert into sigungu values ( 18,1,'송파구');
insert into sigungu values ( 19,1,'양천구');
insert into sigungu values ( 20,1,'영등포구');
insert into sigungu values ( 21,1,'용산구');
insert into sigungu values ( 22,1,'은평구');
insert into sigungu values ( 23,1,'종로구');
insert into sigungu values ( 24,1,'중구');
insert into sigungu values ( 25,1,'중랑구');
--인천--
insert into sigungu values ( 26,2,'중구');
insert into sigungu values ( 27,2,'동구');
insert into sigungu values ( 28,2,'미추홀구');
insert into sigungu values ( 29,2,'연수구');
insert into sigungu values ( 30,2,'남동구');
insert into sigungu values ( 31,2,'부평구');
insert into sigungu values ( 32,2,'계양구');
insert into sigungu values ( 33,2,'서구');

--부산--
insert into sigungu values ( 34,3,'중구');
insert into sigungu values ( 35,3,'서구');
insert into sigungu values ( 36,3,'동구');
insert into sigungu values ( 37,3,'영도구');
insert into sigungu values ( 38,3,'부산진구');
insert into sigungu values ( 39,3,'동래구');
insert into sigungu values ( 40,3,'남구');
insert into sigungu values ( 41,3,'북구');
insert into sigungu values ( 42,3,'해운대구');
insert into sigungu values ( 43,3,'사하구');
insert into sigungu values ( 44,3,'금정구');
insert into sigungu values ( 45,3,'강서구');
insert into sigungu values ( 46,3,'사상구');

--대구--
insert into sigungu values ( 47,4,'중구');
insert into sigungu values ( 48,4,'동구');
insert into sigungu values ( 49,4,'남구');
insert into sigungu values ( 50,4,'서구');
insert into sigungu values ( 51,4,'북구');
insert into sigungu values ( 52,4,'수성구');
insert into sigungu values ( 53,4,'달서구');


--광주--
insert into sigungu values ( 54,5,'동구');
insert into sigungu values ( 55,5,'남구');
insert into sigungu values ( 56,5,'서구');
insert into sigungu values ( 57,5,'북구');
insert into sigungu values ( 58,5,'광산구');

--대전--
insert into sigungu values ( 59,6,'동구');
insert into sigungu values ( 60,6,'중구');
insert into sigungu values ( 61,6,'서구');
insert into sigungu values ( 62,6,'유성구');
insert into sigungu values ( 63,6,'대덕구');

--울산--
insert into sigungu values ( 64,7,'중구');
insert into sigungu values ( 65,7,'남구');
insert into sigungu values ( 66,7,'동구');
insert into sigungu values ( 67,7,'북구');


--경기도--
insert into sigungu values ( 68,8,'수원시');
insert into sigungu values ( 69,8,'성남시');
insert into sigungu values ( 70,8,'의정부시');
insert into sigungu values ( 71,8,'안양시');
insert into sigungu values ( 72,8,'부천시');
insert into sigungu values ( 73,8,'평택시');
insert into sigungu values ( 74,8,'동두천시');
insert into sigungu values ( 75,8,'안산시');
insert into sigungu values ( 76,8,'고양시');
insert into sigungu values ( 77,8,'과천시');
insert into sigungu values ( 78,8,'구리시');
insert into sigungu values ( 79,8,'남양주시');
insert into sigungu values ( 80,8,'오산시');
insert into sigungu values ( 81,8,'시흥시');
insert into sigungu values ( 82,8,'군포시');
insert into sigungu values ( 83,8,'의왕시');
insert into sigungu values ( 84,8,'하남시');
insert into sigungu values ( 85,8,'용인시');
insert into sigungu values ( 86,8,'파주시');
insert into sigungu values ( 87,8,'이천시');
insert into sigungu values ( 88,8,'안성시');
insert into sigungu values ( 89,8,'김포시');
insert into sigungu values ( 90,8,'화성시');
insert into sigungu values ( 91,8,'광주시');
insert into sigungu values ( 92,8,'양주시');
insert into sigungu values ( 93,8,'포천시');
insert into sigungu values ( 94,8,'여주시');


--제주도
insert into sigungu values ( 95,9,'서귀포시');
insert into sigungu values ( 96,9,'제주시');