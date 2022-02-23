-- 查询同名同性学生名单，并统计同名人数

select *
from student
group by s_name
having count(s_id)>=2