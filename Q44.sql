-- 检索至少选修两门课程的学生学号
SELECT 
    s_id
FROM
    score
GROUP BY s_id
HAVING COUNT(c_id) >= 2