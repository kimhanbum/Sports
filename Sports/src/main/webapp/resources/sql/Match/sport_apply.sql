DROP TABLE SPORT_APPLY cascade constraints purge;

create table SPORT_APPLY(
	APPLY_ID VARCHAR2(60) references MEMBER_INFO(USER_ID),
	APPLY_NUM  NUMBER(20) primary key, --seq
	REGISTER_NUM references SPORT_REGISTER(REGISTER_NUM),
	APPLY_STUS NUMBER(20) default 0
);

create sequence aply_seq;

select * from SPORT_APPLY;
insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin01', aply_seq.nextval, 2);
insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin02', aply_seq.nextval, 3);
insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin03', aply_seq.nextval, 4);

