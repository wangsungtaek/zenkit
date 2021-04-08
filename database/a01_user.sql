SELECT * FROM Z_USER;

SELECT u.u_id, u.u_name, d.d_name, r.r_name, p.pos_name
  FROM Z_USER u, Z_DEPARTMENT d, Z_POSITION p, Z_RANK r
 WHERE u.d_no = d.d_no
   AND u.r_no = r.r_no
   AND u.pos_no = p.pos_no
   AND d.d_name LIKE '%'||'인사팀'||'%'
   AND r.r_name LIKE '%'||''||'%'
   AND p.pos_name LIKE '%'||'인사팀원'||'%';

SELECT * FROM Z_DEPARTMENT;
SELECT * FROM Z_POSITION;
SELECT * FROM z_rank;