create table BBS_FCM(
FCM_NO			 NUMBER primary key,
USER_ID			 VARCHAR2(60) references MEMBER_INFO(USER_ID),
FCM_CONTENT		 VARCHAR2(200),
FCM_REF_DATE		 DATE,
FR_NO			 NUMBER references BBS_FR(FR_NO) on delete cascade
);

create sequence FCM_SEQ;

insert into BBS_FCM
		values(FCM_SEQ.nextval, 'admin01', '¥Ò±€¿‘¥œ¥Ÿ1.', sysdate, 1);
insert into BBS_FCM
		values(FCM_SEQ.nextval, 'user01', '¥Ò±€¿‘¥œ¥Ÿ2.', sysdate, 1);
insert into BBS_FCM
		values(FCM_SEQ.nextval, 'user02', '¥Ò±€¿‘¥œ¥Ÿ3.', sysdate, 1);
		
SELECT * FROM BBS_FCM;
delete BBS_FCM where FCM_NO = 21;