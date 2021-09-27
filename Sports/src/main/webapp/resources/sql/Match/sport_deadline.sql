DROP TABLE SPORT_APPLY cascade constraints purge;

create table SPORT_APPLY(
	APPLY_ID VARCHAR2(60) references MEMBER_INFO(USER_ID) on delete cascade UNIQUE,
	APPLY_NUM  NUMBER(20) primary key, --seq
	REGISTER_NUM references SPORT_REGISTER(REGISTER_NUM)
);

create sequence aply_seq;


insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin01', aply_seq.nextval, 4);
insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin02', aply_seq.nextval, 6);
insert into SPORT_APPLY(APPLY_ID, APPLY_NUM , REGISTER_NUM) values('admin03', aply_seq.nextval, 5);

