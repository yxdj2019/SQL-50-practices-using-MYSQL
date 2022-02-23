-- 查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩

SELECT DISTINCT
    b.s_id, b.c_id, b.s_score
FROM
    course AS a
        LEFT JOIN
    score AS b USING (c_id)
        JOIN
    score AS c ON b.c_id = c.c_id
        AND b.s_score = c.s_score
WHERE
    b.s_id != c.s_id
ORDER BY b.c_id
