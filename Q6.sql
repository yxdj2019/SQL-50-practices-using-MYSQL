-- 查询"墨"姓老师的数量

use dj_course_student;

SELECT 
    COUNT(*) as number
FROM
    teacher
WHERE
    t_name LIKE '墨%';