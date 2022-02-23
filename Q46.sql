-- 查询各学生的年龄
SELECT 
    s_id, TIMESTAMPDIFF(YEAR, s_birth, NOW())
FROM
    student
