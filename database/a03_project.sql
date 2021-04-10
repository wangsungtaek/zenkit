SELECT * FROM Z_PROJECT;
SELECT * FROM Z_RESOURCE;
SELECT * FROM Z_JOB;
SELECT * FROM Z_OUTPUTS;
SELECT * FROM Z_RISK;

-- 회원별 참여 프로젝트
SELECT *
  FROM Z_PROJECT
 WHERE p_no IN (
	SELECT p_no
	  FROM Z_RESOURCE
	 WHERE u_no = 7 
 );
-- 회원별 프로젝트
SELECT *
  FROM Z_PROJECT
 WHERE p_no IN (
 	SELECT p_no
  	  FROM Z_RESOURCE
 	 WHERE u_no = 7
 );
 
-- 회원별 프로젝트
SELECT * 
  FROM Z_RESOURCE
 WHERE u_no = 7;
 
-- 프로젝트 별 작업 갯수 및 작업별 산출물 갯수
SELECT j.j_no, count(o.o_no) o_cnt
  FROM Z_JOB j, Z_OUTPUTS o
 WHERE j.j_no = o.j_no(+)
   AND p_no = 1
GROUP BY j.j_no;

-- 1번프로젝트 별 산출물 갯수
SELECT count(o.o_no) o_cnt
  FROM Z_JOB j, Z_OUTPUTS o
 WHERE j.j_no = o.j_no
   AND p_no = 1;
 
-- 프로젝트 별 산출물
SELECT p_no, count(o.o_no) o_cnt
  FROM Z_JOB j, Z_OUTPUTS o
 WHERE j.j_no = o.j_no
   AND p_no IN (
		SELECT p_no
		  FROM Z_RESOURCE
		 WHERE u_no = 7
   )
GROUP BY p_no;

-- 1번 프로젝트 별 리스크 갯수
SELECT count(r.r_no) r_cnt
  FROM Z_JOB j, Z_RISK r
 WHERE j.j_no = r.j_no
   AND p_no = 1;

-- 프로젝트 별 리스크 갯수
SELECT p_no, count(r.r_no) r_cnt
  FROM Z_JOB j, Z_RISK r
 WHERE j.j_no = r.j_no
   AND p_no IN (
		SELECT p_no
		  FROM Z_RESOURCE
		 WHERE u_no = 7
   )
GROUP BY p_no;

SELECT p_no
  FROM Z_RESOURCE
 WHERE u_no = 7;

  -- 회원별 프로젝트
SELECT *
  FROM Z_PROJECT
 WHERE p_no IN (
 	SELECT p_no
  	  FROM Z_RESOURCE
 	 WHERE u_no = 7
 );
  
SELECT * FROM Z_JOB;
SELECT * FROM Z_RISK;

SELECT j_no
  FROM Z_JOB
 WHERE p_no = 1;

-- 작업 별 산출물
SELECT *
  FROM Z_OUTPUTS
 WHERE j_no = 1;

-- 작업 별 산출물 갯수
SELECT j_no, count(o_no)
  FROM Z_OUTPUTS
GROUP BY j_no;

SELECT * FROM Z_OUTPUTS;