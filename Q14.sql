-- 查询没学过"默狐"老师讲授的任一门课程的学生姓名
SELECT 
    s_id
FROM
    student
WHERE
    s_id NOT IN (SELECT DISTINCT
            s_id
        FROM
            student AS st
                JOIN
            score AS sc USING (s_id)
                JOIN
            course AS co ON sc.c_id = co.c_id 
                JOIN
			teacher as te on te.t_id = co.t_id
            AND t_name = '默狐')
