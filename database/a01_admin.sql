SELECT * FROM Z_DEPARTMENT;

INSERT INTO Z_DEPARTMENT VALUES (Z_DEPARTMENT_NO_SEQ.NEXTVAL,'IT팀');

DELETE Z_DEPARTMENT
 WHERE d_name = '테스트';
 

SELECT u.u_id, u.u_name, d.d_name, r.r_name, p.pos_name
  FROM Z_USER u, Z_DEPARTMENT d, Z_POSITION p, Z_RANK r
 WHERE u.d_no = d.d_no
   AND u.r_no = r.r_no
   AND u.pos_no = p.pos_no
   AND d.d_name LIKE '%'||''||'%'
   AND r.r_name LIKE '%'||''||'%'
   AND p.pos_name LIKE '%'||''||'%';
  
SELECT u.u_id, u.u_name, d.d_name, r.r_name, p.pos_name
  FROM Z_USER u, Z_DEPARTMENT d, Z_POSITION p, Z_RANK r
 WHERE u.d_no = d.d_no(+)
   AND u.r_no = r.r_no
   AND u.pos_no = p.pos_no
   AND d.d_name LIKE '%'||''||'%'
   AND r.r_name LIKE '%'||''||'%'
   AND p.pos_name LIKE '%'||''||'%';
  
SELECT u.u_id, u.u_name, d.d_name, r.r_name, p.pos_name
  FROM Z_USER u LEFT OUTER JOIN Z_DEPARTMENT d ON(u.d_no = d.d_no),
  		 Z_POSITION p, Z_RANK r
 WHERE u.r_no = r.r_no
 	AND u.pos_no = p.pos_no;
 
 	AND d.d_name LIKE  '%'||''||'%'
	 OR d.d_name IS NULL
	AND r.r_name LIKE '%'||''||'%'
   AND p.pos_name LIKE '%'||''||'%';

SELECT * FROM (
	SELECT u.u_id, u.u_name, d.d_name, r.r_name, p.pos_name
 	  FROM Z_USER u LEFT OUTER JOIN Z_DEPARTMENT d ON(u.d_no = d.d_no),
			 Z_POSITION p, Z_RANK r
 	 WHERE u.r_no = r.r_no
		AND u.pos_no = p.pos_no
)
WHERE pos_name LIKE '%'||'IT'||'%'
  AND r_name LIKE '%'||''||'%'
  AND (d_name LIKE  '%'||''||'%' OR d_name IS NULL)
ORDER BY d_name;
  
SELECT u.u_id, u.u_name, d.d_name
  FROM Z_USER u LEFT OUTER JOIN Z_DEPARTMENT d ON(u.d_no = d.d_no);
 
 
 
SELECT u.u_id, u.u_name, d.d_name, r.r_name
  FROM Z_USER u, Z_DEPARTMENT d, Z_RANK r
 WHERE u.d_no = d.d_no(+)
   AND u.r_no = r.r_no;
  



SELECT * FROM Z_USER;
SELECT * FROM Z_DEPARTMENT
ORDER BY d_no;
SELECT * FROM Z_POSITION;
SELECT * FROM z_rank;

INSERT INTO Z_USER VALUES
(Z_USER_NO_SEQ.NEXTVAL, 'TEST','you55','유성환',
							'hwan@google.com','01055198510','img/user/19IT574_유성환.jpg',59,10,06);

SELECT *
  FROM Z_USER;
 
UPDATE Z_USER
   SET d_no = 56
 WHERE u_no = 14;
 
UPDATE Z_USER
   SET d_no = (
		SELECT d_no
		  FROM Z_DEPARTMENT
		 WHERE d_name = '부서없음'
   )
 WHERE d_no = (
		SELECT d_no
		  FROM Z_DEPARTMENT
		 WHERE d_name = 'ㄹㄹㄹㄹㄹ'
);
