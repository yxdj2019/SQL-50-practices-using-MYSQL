-- 查询本周过生日的学生
select *
from student
where 
WEEK (
    now())= 
    date_format( s_birth, '%V' )
    
-- select WEEK (now()), date_format( s_birth, '%M' ) from student