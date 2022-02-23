-- 查询下月过生日的学生
SELECT 
    *
FROM
    student
WHERE
    DATE_FORMAT(s_birth, '%m') = MOD(MONTH(NOW()), 12) + 1
