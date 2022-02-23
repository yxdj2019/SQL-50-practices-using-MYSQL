-- 查询"语文"课程比"数学"课程成绩低的学生的信息及课程分数

SELECT 
    st.*,
    sc.s_score AS '语文',
    sc1.s_score '数学'
FROM
    student AS st
        JOIN
    score AS sc ON sc.s_id = st.s_id
        JOIN
    course AS co ON co.c_id = sc.c_id AND co.c_name = '语文'
        JOIN
    score AS sc1 ON sc1.s_id = st.s_id
        JOIN
    course AS co1 ON co1.c_id = sc1.c_id AND co1.c_name = '数学'
WHERE
	sc.s_score<sc1.s_score