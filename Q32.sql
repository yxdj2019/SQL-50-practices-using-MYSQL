-- 查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
SELECT 
    c_id, AVG(s_score) AS average_score
FROM
    score
GROUP BY c_id
ORDER BY average_score DESC , c_id ASC