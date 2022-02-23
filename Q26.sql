-- 查询每门课程被选修的学生数
    
SELECT 
    c_id, c_name, COUNT(s_score) AS number_student_enrolled
FROM
    course
        LEFT JOIN
    score USING (c_id)
GROUP BY c_id;