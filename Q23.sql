-- 统计各科成绩各分数段人数：课程编号,课程名称,[100-85],[85-70],[70-60],[0-60]及所占百分比
select co.c_id, co.c_name,

(select count(a.c_id) from score as a where a.c_id=co.c_id and a.s_score<=60) as '[0-60]',
(select count(a.c_id) from score as a where a.c_id=co.c_id and a.s_score between 60 and 70) as '[60-70]',
(select count(a.c_id) from score as a where a.c_id=co.c_id and a.s_score between 70 and 85) as '[70-85]',
(select count(a.c_id) from score as a where a.c_id=co.c_id and a.s_score between 85 and 100) as '[85-100]',
(select count(a.c_id) from score as a where a.c_id=co.c_id and a.s_score<=60)/(select count(c_id) from score where c_id=co.c_id) as 'Pecentage of 0-60'
from course as co
-- join score as sc using (c_id)