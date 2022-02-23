-- 查询任何一门课程成绩在70分以上的姓名、课程名称和分数   
    
SELECT 
    st.*, co.c_id, sc.s_score
FROM
    course AS co
        JOIN
    score AS sc ON co.c_id = sc.c_id
        LEFT JOIN
    student AS st USING (s_id)
WHERE
    s_id IN (SELECT 
            sc1.s_id
        FROM
            course AS co1
                JOIN
            score AS sc1 ON co1.c_id = sc1.c_id AND sc1.s_score > 70
        GROUP BY sc1.s_id
        HAVING COUNT(sc1.c_id) = 3)
ORDER BY st.s_id
