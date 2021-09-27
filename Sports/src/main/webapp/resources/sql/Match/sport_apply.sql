DROP TABLE SPORT_DEADLINE cascade constraints purge;

select * from SPORT_DEADLINE
create table SPORT_DEADLINE(
	REGISTER_ID references SPORT_REGISTER(REGISTER_ID) on delete cascade,
	APPLY_ID references SPORT_APPLY(APPLY_ID) on delete cascade,
	DEADLINE_NUM NUMBER primary key,
	SPORT_NUM references SPORTS(SPORTS_NUM)
);

create sequence dead_seq;


insert into SPORT_DEADLINE(REGISTER_ID, APPLY_ID, DEADLINE_NUM, SPORT_NUM)
values('admin01', 'admin03', dead_seq.nextval, 1);

insert into SPORT_DEADLINE(REGISTER_ID, APPLY_ID, DEADLINE_NUM, SPORT_NUM)
values('admin02', 'admin01', dead_seq.nextval, 2);

insert into SPORT_DEADLINE(REGISTER_ID, APPLY_ID, DEADLINE_NUM, SPORT_NUM)
values('admin03', 'admin02', dead_seq.nextval, 3);


