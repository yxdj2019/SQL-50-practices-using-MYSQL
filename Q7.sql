-- 查询学过"墨白"老师授课的同学的信息

SELECT DISTINCT
    st.*
FROM
    student AS st
        JOIN
    score AS sc USING (s_id)
        JOIN
    course AS co USING (c_id)
        JOIN
    teacher AS te USING (t_id)
WHERE
    te.t_name = '墨白';
