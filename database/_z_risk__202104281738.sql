INSERT INTO "z_risk" (R_NO,R_NAME,R_CONTENT,R_REGDATE,R_SEND,R_RECEIVE,R_RCONTENT,P_NO,RS_NAME,R_STRAT) VALUES
	 (1,'일정 지연','이슈 발생으로 인한 일정 지연',TIMESTAMP'2021-04-28 16:16:01','pm','st1','0',1,'조치완료','완화'),
	 (2,'프로그램 에러 발생','에러 발생',TIMESTAMP'2021-04-28 16:18:35','st1','pm','0',1,'조치완료','수용'),
	 (3,'장비 부재','업무에 필요한 장비 부재',TIMESTAMP'2021-04-28 16:36:51','st2','pm','0',2,'조치완료','수용'),
	 (4,'에러발생','에러발생',TIMESTAMP'2021-04-28 16:58:10','9','1','0',3,'조치완료','전가');