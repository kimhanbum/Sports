create table WATER_INTAKE(
WI_NO			 NUMBER primary key,
USER_ID			 VARCHAR2(60) references MEMBER_INFO(USER_ID),
WI_INTAKE		 VARCHAR(10),
WI_DATE			 DATE
);

insert into WATER_INTAKE values(
				1, 'user01', '2', sysdate);

select * from WATER_INTAKE;