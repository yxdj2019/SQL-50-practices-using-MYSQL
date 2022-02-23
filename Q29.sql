-- 查询名字中含有"白"字的学生信息

SELECT 
    st.*
FROM
    student AS st
WHERE
    s_name LIKE '%白%'