-- 查询和"01"号的同学学习的课程完全相同的其他同学的信息


SELECT DISTINCT
    st1.*
FROM
    student AS st1
        JOIN
    score AS sc1 USING (s_id)
GROUP BY s_id
HAVING GROUP_CONCAT(c_id order by 1 asc) = (SELECT 
        GROUP_CONCAT(c_id order by 1 asc)
    FROM
        student AS st
            JOIN
        score AS sc USING (s_id)
    WHERE
        st.s_id = 01) 
	AND st1.s_id !=01;