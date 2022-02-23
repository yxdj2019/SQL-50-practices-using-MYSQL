--  Create Tables
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `c_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程编号',
  `c_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程名称',
  `t_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师编号',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
-- 课程表数据
INSERT INTO `course` VALUES ('01', '语文', '02');
INSERT INTO `course` VALUES ('02', '数学', '01');
INSERT INTO `course` VALUES ('03', '英语', '03');
-- 分数表
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `s_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学生编号',
  `c_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程编号',
  `s_score` int(3) NULL DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`s_id`, `c_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
-- 分数数据
INSERT INTO `score` VALUES ('01', '01', 80);
INSERT INTO `score` VALUES ('01', '02', 90);
INSERT INTO `score` VALUES ('01', '03', 99);
INSERT INTO `score` VALUES ('02', '01', 70);
INSERT INTO `score` VALUES ('02', '02', 60);
INSERT INTO `score` VALUES ('02', '03', 80);
INSERT INTO `score` VALUES ('03', '01', 80);
INSERT INTO `score` VALUES ('03', '02', 80);
INSERT INTO `score` VALUES ('03', '03', 80);
INSERT INTO `score` VALUES ('04', '01', 50);
INSERT INTO `score` VALUES ('04', '02', 30);
INSERT INTO `score` VALUES ('04', '03', 20);
INSERT INTO `score` VALUES ('05', '01', 76);
INSERT INTO `score` VALUES ('05', '02', 87);
INSERT INTO `score` VALUES ('05', '03', 95);
INSERT INTO `score` VALUES ('06', '01', 31);
INSERT INTO `score` VALUES ('06', '02', 88);
INSERT INTO `score` VALUES ('06', '03', 34);
INSERT INTO `score` VALUES ('07', '01', 66);
INSERT INTO `score` VALUES ('07', '02', 89);
INSERT INTO `score` VALUES ('07', '03', 98);
INSERT INTO `score` VALUES ('08', '01', 59);
INSERT INTO `score` VALUES ('08', '02', 88);
INSERT INTO `score` VALUES ('09', '02', 67);
INSERT INTO `score` VALUES ('09', '03', 88);
INSERT INTO `score` VALUES ('10', '01', 65);
INSERT INTO `score` VALUES ('10', '02', 78);
-- 建立学生表
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `s_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学生编号',
  `s_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学生姓名',
  `s_birth` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '出生年月',
  `s_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学生性别',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
-- 学生数据
INSERT INTO `student` VALUES ('01', '斯内克', '1990-01-01', '男');
INSERT INTO `student` VALUES ('02', '张益达', '1990-12-21', '男');
INSERT INTO `student` VALUES ('03', '张大炮', '1990-05-20', '男');
INSERT INTO `student` VALUES ('04', '李云龙', '1990-08-06', '男');
INSERT INTO `student` VALUES ('05', '楚云飞', '1991-12-01', '女');
INSERT INTO `student` VALUES ('06', '赵日天', '1992-03-01', '女');
INSERT INTO `student` VALUES ('07', '小甜甜', '1989-07-01', '女');
INSERT INTO `student` VALUES ('08', '王菊花', '1990-01-20', '女');
INSERT INTO `student` VALUES ('09', '李慕白', '1994-01-20', '男');
INSERT INTO `student` VALUES ('10', '东京热', '1980-01-20', '女');
-- 建立老师表
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `t_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '教师编号',
  `t_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '教师姓名',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
-- 老师表数据
INSERT INTO `teacher` VALUES ('01', '墨白');
INSERT INTO `teacher` VALUES ('02', '默狐');
INSERT INTO `teacher` VALUES ('03', '柠檬');
SET FOREIGN_KEY_CHECKS = 1;