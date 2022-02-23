-- 查询没学过"柠檬"老师授课的同学的信息

SELECT 
    *
FROM
    student
WHERE
    s_id NOT IN (SELECT DISTINCT
            st.s_id
        FROM
            student AS st
                JOIN
            score AS sc USING (s_id)
                JOIN
            course AS co USING (c_id)
                JOIN
            teacher AS te ON te.t_id = co.t_id AND te.t_name = '柠檬');

