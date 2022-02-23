-- 检索"01"课程分数小于60，按分数降序排列的学生信息

SELECT 
    st1.*,IFNULL(sc1.s_score, 0)
FROM
    student AS st1
        LEFT JOIN
    score AS sc1 ON st1.s_id = sc1.s_id AND sc1.c_id = 01
WHERE
    IFNULL(sc1.s_score, 0) < 60
ORDER BY IFNULL(sc1.s_score, 0) DESC;


--  给出的答案
SELECT
    st.*,
    sc.s_score 
FROM
    student st
    LEFT JOIN score sc ON sc.s_id = st.s_id 
WHERE
    sc.c_id = "01" 
    AND sc.s_score < 60 
ORDER BY
    sc.s_score DESC