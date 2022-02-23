-- 查询男生、女生人数

select s_sex, count(s_id) as number_by_sex
from student
group by s_sex