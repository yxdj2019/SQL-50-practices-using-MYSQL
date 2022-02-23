-- 查询不同老师所教不同课程平均分从高到低显示
select te.*, avg(sc.s_score) as average_score
from teacher as te
left join course as co using (t_id)
left join score as sc using (c_id)
group by t_id, c_id
order by average_score desc