-- 查询本月过生日的学生

select *
from student
where
month(now())=date_format(s_birth, '%m')

-- select date_format(s_birth, '%m') from student