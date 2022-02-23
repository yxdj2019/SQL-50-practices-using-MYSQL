-- 查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩
USE dj_course_student;
SELECT 
    s_id,
    s_name,
    COUNT(c_id) AS number_of_cources,
    SUM(IFNULL(s_score, 0)) AS sum_of_scores
FROM
    student AS st
        LEFT JOIN
    score AS sc USING (s_id)
GROUP BY s_id
