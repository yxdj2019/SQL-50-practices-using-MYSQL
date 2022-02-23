-- 查询各科成绩前三名的记录

select *
from
(select c_id, st.*, s_score, row_number() over (partition by c_id order by s_score desc) as 'ranks'
from course as co 
left join score as sc using (c_id)
left join student as st using (s_id)) as new_t
where ranks in (1, 2, 3)
