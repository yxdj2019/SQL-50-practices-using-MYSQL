-- 按各科成绩进行排序，并显示排名(实现不完全)
use dj_course_student;

-- 名次有重复
select sc.c_id, st.s_name, sc.s_score, count(sc1.s_score)+1 as 'rank'
from score as sc
join student as st using (s_id)
left join score as sc1 on sc1.c_id=sc.c_id and sc.s_score<sc1.s_score
group by sc.c_id, sc.s_id
order by sc.c_id, sc.s_score desc;

-- 名次有重复
select sc.c_id, st.s_name, sc.s_score, rank() OVER (PARTITION BY sc.c_id ORDER BY sc.s_score DESC) as 'rank'
from score as sc
join student as st using (s_id);


-- 名次不重复 使用row_number function
select sc.c_id, st.s_name, sc.s_score, row_number() OVER (PARTITION BY sc.c_id ORDER BY sc.s_score DESC) as 'rank'
from score as sc
join student as st using (s_id)
-- order by sc.c_id -- , sc.s_score desc


