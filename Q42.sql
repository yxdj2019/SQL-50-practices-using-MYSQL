-- 查询每门功成绩最好的前两名

SELECT *
FROM 
(
SELECT sc.c_id, st.*, row_number() over (partition by sc.c_id order by sc.s_score) as rank_student
FROM
SCORE as sc
LEFT JOIN
STUDENT as st USING (s_id)
) as new_table
where rank_student in (1,2)