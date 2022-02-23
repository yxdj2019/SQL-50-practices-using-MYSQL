-- 查询学生的总成绩并进行排名

SELECT 
    st.*, SUM(IFNULL(s_score, 0)) AS total_score
FROM
    student AS st
        LEFT JOIN
    score AS sc USING (s_id)
GROUP BY s_id
ORDER BY total_score DESC
