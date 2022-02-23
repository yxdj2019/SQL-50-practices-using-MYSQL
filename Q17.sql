-- 按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩

select ave_score.s_id, ave_score.s_name, ave_score.average_score, s_score
from 
(select st.*, avg(s_score) as average_score
from student as st
join score using (s_id)
group by s_id
order by average_score desc) as ave_score
left join score using (s_id)