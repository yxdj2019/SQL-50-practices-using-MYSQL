-- 查询"语文"课程比"数学"课程成绩高的学生的信息及课程分数

-- 给出的答案 这个答案只能用join 因为三表相连
SELECT st.*,sc.s_score as score_yuwen, sc1.s_score as score_shuxue
From student as st
LEFT JOIN score as sc on st.s_id=sc.s_id -- AND sc.c_id=01;
JOIN course as co on co.c_id=sc.c_id AND co.c_name='语文'
LEFT JOIN score as sc1 on st.s_id=sc1.s_id -- AND sc.c_id=01;
JOIN course as co1 on co1.c_id=sc1.c_id AND co1.c_name='数学'
WHERE sc.s_score>sc1.s_score;

-- 这个答案left join 和 join 等价
SELECT  
	st.*,
    sc.s_score AS '语文',
    sc2.s_score '数学'
FROM
    student st
	JOIN score sc ON sc.s_id = st.s_id 
    AND sc.c_id = '01'
	JOIN score sc2 ON sc2.s_id = st.s_id 
    AND sc2.c_id = '02' 
WHERE
   sc.s_score > sc2.s_score;

-- 自己做的答案
create table if not exists all_info as
select *
from score
join student using (s_id)
join course using (c_id) 
order by s_id;
-- group by s_id
-- having s_id=1 

select *
from all_info
where s_id in
(select s_s_id
from (
select s_id as s_s_id, ((select s_score from all_info where s_id=s_s_id and c_name='语文') > (select s_score from all_info where s_id=s_s_id and c_name='数学')) as bn
from all_info) as temp_table
where bn=1
)



--  