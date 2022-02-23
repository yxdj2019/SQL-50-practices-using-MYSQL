-- 查询各科成绩最高分、最低分和平均分：以如下形式显示：课程ID，课程name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
-- (及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90)

select co.c_id, co.c_name, max(sc.s_score), min(sc.s_score), avg(sc.s_score), 
(select count(*) from score where s_score>=60 and c_id=sc.c_id)/(select count(*) from score where c_id=sc.c_id) as 'jigelv',
(select count(*) from score where s_score between 70 and 80 and c_id=sc.c_id)/(select count(*) from score where c_id=sc.c_id) as 'zhongdenglv',
(select count(*) from score where s_score between 80 and 90 and c_id=sc.c_id)/(select count(*) from score where c_id=sc.c_id) as 'youlianglv',
(select count(*) from score where s_score>=90 and c_id=sc.c_id)/(select count(*) from score where c_id=sc.c_id) as 'youxiulv'
from course as co
left join score as sc using (c_id)
group by c_id