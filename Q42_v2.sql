-- 查询每门功成绩最好的前两名

SELECT 
    a.c_id, st.*, a.s_score
FROM
    score AS a
        LEFT JOIN
    student AS st USING (s_id)
WHERE
    (SELECT 
            COUNT(s_id)
        FROM
            score AS b
        WHERE
            b.c_id = a.c_id
                AND b.s_score > a.s_score) <= 1
ORDER BY a.c_id