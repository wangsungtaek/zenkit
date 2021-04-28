INSERT INTO "z_user" (U_NO,U_ID,U_PASS,U_NAME,U_EMAIL,U_PHONE,U_IMG,D_NO,POS_NO,R_NO) VALUES
	 (1,'ceo','ceo','CEO',NULL,NULL,NULL,1,1,1),
	 (2,'hr','hr','김기영',NULL,NULL,NULL,3,2,2),
	 (3,'pm','pm','이나영',NULL,NULL,NULL,5,3,3),
	 (4,'st1','st1','오현석',NULL,NULL,NULL,5,4,5),
	 (5,'st2','st2','이수현',NULL,NULL,NULL,5,4,6),
	 (6,'210426-6','210426-6','왕성택','wj1234@gmail.com','01045621578',NULL,5,4,6),
	 (7,'210426-7','210426-7','이슬','ls4214@gmail.com','01045621578',NULL,5,4,6),
	 (8,'210426-8','210426-8','이재완','lew2342@gmail.com','01045621578',NULL,5,4,6),
	 (9,'210426-9','210426-9','이지은','lje2342@gmail.com','01045621578',NULL,5,4,6),
	 (10,'210426-10','210426-10','최혜주','chj2392@gmail.com','01045621578',NULL,5,4,6);
INSERT INTO "z_user" (U_NO,U_ID,U_PASS,U_NAME,U_EMAIL,U_PHONE,U_IMG,D_NO,POS_NO,R_NO) VALUES
	 (11,'210426-11','210426-11','김현철','khc0101@gmail.com','01012341234',NULL,6,3,2);
SELECT * FROM z_risk;
SELECT * FROM z_risk WHERE r_no=1;
SELECT * FROM z_project;
SELECT * FROM Z_RESOURCE zr ;
SELECT z_risk_no_seq.currval FROM dual;
SELECT * FROM Z_RISK_ACTION zra ;
INSERT INTO Z_PROJECT (P_NO,P_NAME,P_STARTD,P_ENDD,P_CONTENT,P_PM,D_NO) VALUES
	 (1,'친환경제품 판매 및 펀딩 - Ecobean',TIMESTAMP'2021-01-11 00:00:00',TIMESTAMP'2021-02-04 00:00:00','친환경 제품을 판매하는 웹 쇼핑몰 사이트','pm',5),
	 (2,'미니 웹게임 사이트 - Gameflix',TIMESTAMP'2021-02-01 00:00:00',TIMESTAMP'2021-02-25 00:00:00','여러 미니게임 모아둔 사이트','pm',5),
	 (3,'음악 스트리밍 사이트 - Plo',TIMESTAMP'2021-02-26 00:00:00',TIMESTAMP'2021-04-08 00:00:00','음원 스트리밍, 사용에 음악 추천','pm',5),
	 (4,'프로젝트 관리 시스템 - FPMS',TIMESTAMP'2021-03-22 00:00:00',TIMESTAMP'2021-04-30 00:00:00','프로젝트 관리 시스템, PMS','pm',5),
	 (5,'외환관리시스템',TIMESTAMP'2021-01-03 00:00:00',TIMESTAMP'2021-03-20 00:00:00','외환관리','210426-11',6),
	 (6,'PML시스템개발',TIMESTAMP'2021-03-20 00:00:00',TIMESTAMP'2021-04-20 00:00:00','PML','210426-11',6);
	 
INSERT INTO Z_RESOURCE (P_NO,U_NO) VALUES
	 (6,11);
INSERT INTO Z_RESOURCE (P_NO,U_NO) VALUES
	 (7,3);
	 SELECT * FROM 