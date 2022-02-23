-- 查询平均成绩小于60分的同学的学生编号和学生姓名和平均成绩(包括有成绩的和无成绩的)

SELECT 
    s_id,
    s_name,
    ROUND(AVG(IFNULL(s_score, 0)), 2) AS average_score
FROM
    student AS st
        LEFT JOIN
    score AS sc USING (s_id)
GROUP BY s_id
HAVING average_score < 60;

-- 给出的答案
SELECT
    st.s_id,
    st.s_name,(
    CASE

            WHEN ROUND( AVG( sc.s_score ), 2 ) IS NULL THEN
            0 ELSE ROUND( AVG( sc.s_score ), 2 ) 
        END 
        ) "平均成绩" 
    FROM
        student st
        LEFT JOIN score sc ON sc.s_id = st.s_id 
    GROUP BY
        st.s_id 
    HAVING
    AVG( sc.s_score )< 60 
    OR AVG( sc.s_score ) IS NULL