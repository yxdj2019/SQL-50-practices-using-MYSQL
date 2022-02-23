-- 查询下周过生日的学生

SELECT 
    *
FROM
    student
WHERE
    DATE_FORMAT(s_birth, '%V') = mod(WEEK(NOW())+1,54)