-- 查询学过编号为"01"但是没有学过编号为"02"的课程的同学的信息
SELECT 
    *
FROM
    student
WHERE
    s_id NOT IN (SELECT DISTINCT
            st.s_id
        FROM
            student AS st
                JOIN
            score AS sc ON sc.s_id = st.s_id AND sc.c_id = '02')
	AND
    s_id IN (SELECT DISTINCT
            st.s_id
        FROM
            student AS st
                JOIN
            score AS sc ON sc.s_id = st.s_id AND sc.c_id = '01');

-- 给出的答案
SELECT
    st.* 
FROM
    student st
    INNER JOIN score sc ON sc.s_id = st.s_id
    INNER JOIN course c ON c.c_id = sc.c_id 
    AND c.c_id = "01" 
WHERE
    st.s_id NOT IN (
    SELECT
        st2.s_id 
    FROM
        student st2
        INNER JOIN score sc2 ON sc2.s_id = st2.s_id
        INNER JOIN course c2 ON c2.c_id = sc2.c_id 
    AND c2.c_id = "02" 
    )