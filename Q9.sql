-- 查询学过编号为"01"并且也学过编号为"02"的课程的同学的信息
    
    
SELECT 
    * -- st.*
FROM
    student AS st
        JOIN
    score AS sc ON sc.s_id = st.s_id
        AND sc.c_id = '01'
        JOIN
	score AS sc1 ON sc1.s_id = st.s_id
        AND sc1.c_id = '02'