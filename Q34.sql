-- 查询平均成绩大于等于85的所有学生的学号、姓名和平均成绩

SELECT 
    st.*, AVG(s_score) AS average_score
FROM
    student AS st
        LEFT JOIN
    score USING (s_id)
GROUP BY s_id
HAVING average_score >= 85
