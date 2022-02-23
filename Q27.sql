-- 查询出只有两门课程的全部学生的学号和姓名

SELECT 
    s_id, s_name
FROM
    student
        LEFT JOIN
    score USING (s_id)
GROUP BY s_id
HAVING COUNT(c_id) = 2