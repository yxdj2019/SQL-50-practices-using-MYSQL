-- 查询没有学全所有课程的同学的信息
SELECT 
    st.*
FROM
    student AS st
        LEFT JOIN
    score AS sc USING (s_id)
GROUP BY s_id
HAVING COUNT(c_id) < 3;

-- 给出的答案
SELECT
    * 
FROM
    student 
WHERE
    s_id NOT IN (
    SELECT
        st.s_id 
    FROM
        student st
        INNER JOIN score sc ON sc.s_id = st.s_id 
        AND sc.c_id = "01" 
    WHERE
    st.s_id IN ( SELECT st1.s_id FROM student st1 INNER JOIN score sc2 ON sc2.s_id = st1.s_id AND sc2.c_id = "02" ) 
    AND st.s_id IN ( SELECT st2.s_id FROM student st2 INNER JOIN score sc2 ON sc2.s_id = st2.s_id AND sc2.c_id = "03" ))