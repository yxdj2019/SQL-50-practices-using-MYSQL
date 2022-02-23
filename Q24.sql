-- 查询学生平均成绩及其名次
SELECT 
    *,
    (SELECT 
            COUNT(a.s_id) + 1
        FROM
            (SELECT 
                st.*, AVG(sc.s_score) AS average_score
            FROM
                student AS st
            LEFT JOIN score AS sc USING (s_id)
            GROUP BY s_id
            ORDER BY average_score DESC) AS a
        WHERE
            a.average_score > new_table.average_score) AS RNK
FROM
    (SELECT 
        st.*, AVG(sc.s_score) AS average_score
    FROM
        student AS st
    LEFT JOIN score AS sc USING (s_id)
    GROUP BY s_id
    ORDER BY average_score DESC) AS new_table;

-- 给出的答案
SET @i = 0;  -- 设置一个全局变量 累加
SELECT
    a.*,
    @i := @i + 1 
FROM
    (
    SELECT
        st.s_id,
        st.s_name,
        round(( CASE WHEN avg( sc.s_score ) IS NULL THEN 0 ELSE avg( sc.s_score ) END ), 2 ) "平均分" 
    FROM
        student st
        LEFT JOIN score sc ON sc.s_id = st.s_id 
    GROUP BY
        st.s_id 
    ORDER BY
    sc.s_score DESC 
    ) a