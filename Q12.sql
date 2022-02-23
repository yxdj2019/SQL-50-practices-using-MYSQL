-- 查询至少有一门课与学号为"01"的同学所学相同的同学的信息

SELECT DISTINCT
    st1.*
FROM
    student AS st1
        JOIN
    score AS sc1 USING (s_id)
WHERE
    sc1.c_id IN (SELECT 
            c_id
        FROM
            student AS st
                JOIN
            score AS sc USING (s_id)
        WHERE
            st.s_id = 01)
        AND st1.s_id != 01;