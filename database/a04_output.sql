-- 한 회원이 진행하는 프로젝트 등록한 산출물
SELECT *
  FROM Z_OUTPUTS
 WHERE j_no IN (
	SELECT j_no
	  FROM Z_JOB
	 WHERE u_no = 4
	   AND p_no IN (1,7)
 );


-- 4번 회원이 참여 하고있는 프로젝트
SELECT p_no
  FROM Z_RESOURCE
 WHERE u_no = 4;

-- 4번 회원이 맡고있는 작업
SELECT *
FROM Z_JOB
 WHERE p_no IN (
	SELECT p_no FROM Z_RESOURCE WHERE u_no = 4
 );

-- 그 작업들의 산출물
SELECT p.p_no, p.p_name, j.j_name, o.*
  FROM Z_OUTPUTS o, Z_JOB j, Z_PROJECT p
 WHERE o.j_no = j.j_no
   AND j.p_no = p.p_no
	AND j.j_no IN (
	SELECT j_no FROM Z_JOB WHERE p_no IN (
		SELECT p_no FROM Z_RESOURCE WHERE u_no = 4
	 )
 )
ORDER BY o_no DESC;




SELECT * FROM Z_JOB WHERE u_no = 3;
SELECT * FROM Z_USER zu ;
SELECT * FROM Z_PROJECT zp ;
