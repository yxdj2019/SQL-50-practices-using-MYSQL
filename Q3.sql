-- 查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩

SELECT 
    s_id, s_name, ROUND(AVG(s_score), 2) AS average_score
FROM
    student AS st
        JOIN
    score AS sc USING (s_id)
GROUP BY s_id
HAVING average_score >= 60