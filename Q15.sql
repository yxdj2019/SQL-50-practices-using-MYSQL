-- 查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩
SELECT 
    st1.s_id, st1.s_name, AVG(s_score) AS average_score
FROM
    student AS st1
        JOIN
    score AS sc1 ON st1.s_id = sc1.s_id
WHERE
    st1.s_id IN (SELECT 
            st.s_id
        FROM
            student AS st
                JOIN
            score AS sc ON st.s_id = sc.s_id AND s_score < 60
        GROUP BY s_id
        HAVING COUNT(s_score) >= 2)
GROUP BY st1.s_id