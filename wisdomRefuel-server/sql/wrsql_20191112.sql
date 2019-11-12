-- ----------------------------
-- 1、部门表
-- ----------------------------
drop table if exists sys_dept;
CREATE TABLE `sys_dept` (
    `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
    `PARENT_ID` bigint(20) DEFAULT '0' COMMENT '父部门id',
    `ANCESTORS` varchar(50) DEFAULT '' COMMENT '祖级列表',
    `DEPT_NAME` varchar(30) DEFAULT '' COMMENT '部门名称',
    `ORDER_NUM` int(4) DEFAULT '0' COMMENT '显示顺序',
    `LEADER` varchar(20) DEFAULT NULL COMMENT '负责人',
    `PHONE` varchar(11) DEFAULT NULL COMMENT '联系电话',
    `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
    `STATUS` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
    `DEL_FLAG` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- 初始化-部门表数据
-- ----------------------------
insert into sys_dept values(100,  0,   '0',          '若依科技',   0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(101,  100, '0,100',      '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(102,  100, '0,100',      '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(103,  101, '0,100,101',  '研发部门',   1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(104,  101, '0,100,101',  '市场部门',   2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(105,  101, '0,100,101',  '测试部门',   3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(106,  101, '0,100,101',  '财务部门',   4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(107,  101, '0,100,101',  '运维部门',   5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(108,  102, '0,100,102',  '市场部门',   1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(109,  102, '0,100,102',  '财务部门',   2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');


-- ----------------------------
-- 2、用户信息表
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
    `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
    `USER_NAME` varchar(30) NOT NULL COMMENT '用户账号',
    `NICK_NAME` varchar(30) NOT NULL COMMENT '用户昵称',
    `USER_TYPE` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
    `EMAIL` varchar(50) DEFAULT '' COMMENT '用户邮箱',
    `PHONENUMBER` varchar(11) DEFAULT '' COMMENT '手机号码',
    `SEX` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
    `AVATAR` varchar(100) DEFAULT '' COMMENT '头像地址',
    `PASSWORD` varchar(100) DEFAULT '' COMMENT '密码',
    `STATUS` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
    `DEL_FLAG` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `LOGIN_IP` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
    `LOGIN_DATE` datetime DEFAULT NULL COMMENT '最后登陆时间',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- 初始化-用户信息表数据
-- ----------------------------
insert into sys_user values(1,  103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_user values(2,  105, 'ry',    '若依', '00', 'ry@qq.com',  '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '测试员');


-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
    `POST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
    `POST_CODE` varchar(64) NOT NULL COMMENT '岗位编码',
    `POST_NAME` varchar(50) NOT NULL COMMENT '岗位名称',
    `POST_SORT` int(4) NOT NULL COMMENT '显示顺序',
    `STATUS` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- 初始化-岗位信息表数据
-- ----------------------------
insert into sys_post values(1, 'ceo',  '董事长',    1, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_post values(2, 'se',   '项目经理',  2, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_post values(3, 'hr',   '人力资源',  3, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_post values(4, 'user', '普通员工',  4, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');


-- ----------------------------
-- 4、角色信息表
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
    `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `ROLE_NAME` varchar(30) NOT NULL COMMENT '角色名称',
    `ROLE_KEY` varchar(100) NOT NULL COMMENT '角色权限字符串',
    `ROLE_SORT` int(4) NOT NULL COMMENT '显示顺序',
    `DATA_SCOPE` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
    `STATUS` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
    `DEL_FLAG` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- 初始化-角色信息表数据
-- ----------------------------
insert into sys_role values('1', '管理员',   'admin',  1, 1, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_role values('2', '普通角色', 'common', 2, 2, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '普通角色');


-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
    `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
    `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单名称',
    `PARENT_ID` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
    `ORDER_NUM` int(4) DEFAULT '0' COMMENT '显示顺序',
    `PATH` varchar(200) DEFAULT '' COMMENT '路由地址',
    `COMPONENT` varchar(255) DEFAULT NULL COMMENT '组件路径',
    `IS_FRAME` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
    `MENU_TYPE` char(1) DEFAULT '' COMMENT '菜单类型（0目录 1菜单 2按钮）',
    `VISIBLE` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
    `PERMS` varchar(100) DEFAULT NULL COMMENT '权限标识',
    `ICON` varchar(100) DEFAULT '#' COMMENT '菜单图标',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    `REMARK` varchar(500) DEFAULT '' COMMENT '备注',
    PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- 初始化-菜单信息表数据
-- ----------------------------
insert  into `sys_menu`(`MENU_ID`,`MENU_NAME`,`PARENT_ID`,`ORDER_NUM`,`PATH`,`COMPONENT`,`IS_FRAME`,`MENU_TYPE`,`VISIBLE`,`PERMS`,`ICON`,`CREATE_BY`,`CREATE_TIME`,`UPDATE_BY`,`UPDATE_TIME`,`REMARK`) values
    -- 一级菜单
        (1,'系统管理',0,2,'system',NULL,1,'M','0','','system','admin','2018-03-16 11:33:00','admin','2019-11-12 15:34:22','系统管理目录'),
        (2,'系统监控',0,3,'monitor',NULL,1,'M','0','','monitor','admin','2018-03-16 11:33:00','admin','2019-11-12 15:34:17','系统监控目录'),
        (3,'系统工具',0,4,'tool',NULL,1,'M','0','','tool','admin','2018-03-16 11:33:00','admin','2019-11-12 15:34:13','系统工具目录'),
        (4,'缺省菜单',0,5,'略',NULL,0,'M','1','','guide','admin','2018-03-16 11:33:00','admin','2019-11-12 15:34:07','缺省菜单'),
    -- 二级菜单
        (100,'用户管理',1,1,'user','system/user/index',1,'C','0','system:user:list','user','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','用户管理菜单'),
        (101,'角色管理',1,2,'role','system/role/index',1,'C','0','system:role:list','peoples','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','角色管理菜单'),
        (102,'菜单管理',1,5,'menu','system/menu/index',1,'C','0','system:menu:list','tree-table','admin','2018-03-16 11:33:00','admin','2019-11-11 16:59:53','菜单管理菜单'),
        (103,'部门管理',1,3,'dept','system/dept/index',1,'C','0','system:dept:list','tree','admin','2018-03-16 11:33:00','admin','2019-11-11 16:59:35','部门管理菜单'),
        (104,'岗位管理',1,4,'post','system/post/index',1,'C','0','system:post:list','post','admin','2018-03-16 11:33:00','admin','2019-11-11 16:59:45','岗位管理菜单'),
        (105,'字典管理',1,6,'dict','system/dict/index',1,'C','0','system:dict:list','dict','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','字典管理菜单'),
        (106,'参数设置',1,7,'config','system/config/index',1,'C','1','system:config:list','edit','admin','2018-03-16 11:33:00','admin','2019-11-11 16:56:57','参数设置菜单'),
        (107,'通知公告',1,8,'notice','system/notice/index',1,'C','1','system:notice:list','message','admin','2018-03-16 11:33:00','admin','2019-11-11 16:57:06','通知公告菜单'),
        (108,'日志管理',1,9,'log','system/log/index',1,'M','0','','log','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','日志管理菜单'),
        (109,'在线用户',2,1,'online','monitor/online/index',1,'C','0','monitor:online:list','online','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','在线用户菜单'),
        (110,'定时任务',2,2,'job','monitor/job/index',1,'C','0','monitor:job:list','job','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','定时任务菜单'),
        (111,'数据监控',2,3,'druid','monitor/druid/index',1,'C','0','monitor:druid:list','druid','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','数据监控菜单'),
        (112,'服务监控',2,4,'server','monitor/server/index',1,'C','0','monitor:server:list','server','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','服务监控菜单'),
        (113,'表单构建',3,1,'build','tool/build/index',1,'C','0','tool:build:list','build','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','表单构建菜单'),
        (114,'代码生成',3,2,'server','tool/gen/index',1,'C','0','tool:gen:list','code','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','代码生成菜单'),
        (115,'系统接口',3,3,'swagger','tool/swagger/index',1,'C','0','tool:swagger:list','swagger','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','系统接口菜单'),
        (1060,'油站管理',0,1,'station',NULL,1,'M','0','','component','admin','2019-11-12 15:33:44','admin','2019-11-12 15:44:13',''),
        (1061,'油站信息',1060,1,'station','refuel/station/index',1,'C','0','refuel:station:list','documentation','admin','2019-11-12 15:45:38','admin','2019-11-12 15:45:58',''),
    -- 三级菜单
        (500,'操作日志',108,1,'operlog','monitor/operlog/index',1,'C','0','monitor:operlog:list','form','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','操作日志菜单'),
        (501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,'C','0','monitor:logininfor:list','logininfor','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','登录日志菜单'),
    -- 权限操作按钮
        (1001,'用户查询',100,1,'','',1,'F','0','system:user:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1002,'用户新增',100,2,'','',1,'F','0','system:user:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1003,'用户修改',100,3,'','',1,'F','0','system:user:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1004,'用户删除',100,4,'','',1,'F','0','system:user:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1005,'用户导出',100,5,'','',1,'F','0','system:user:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1006,'用户导入',100,6,'','',1,'F','0','system:user:import','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1007,'重置密码',100,7,'','',1,'F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1008,'角色查询',101,1,'','',1,'F','0','system:role:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1009,'角色新增',101,2,'','',1,'F','0','system:role:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1010,'角色修改',101,3,'','',1,'F','0','system:role:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1011,'角色删除',101,4,'','',1,'F','0','system:role:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1012,'角色导出',101,5,'','',1,'F','0','system:role:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1013,'菜单查询',102,1,'','',1,'F','0','system:menu:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1014,'菜单新增',102,2,'','',1,'F','0','system:menu:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1015,'菜单修改',102,3,'','',1,'F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1016,'菜单删除',102,4,'','',1,'F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1017,'部门查询',103,1,'','',1,'F','0','system:dept:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1018,'部门新增',103,2,'','',1,'F','0','system:dept:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1019,'部门修改',103,3,'','',1,'F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1020,'部门删除',103,4,'','',1,'F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1021,'岗位查询',104,1,'','',1,'F','0','system:post:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1022,'岗位新增',104,2,'','',1,'F','0','system:post:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1023,'岗位修改',104,3,'','',1,'F','0','system:post:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1024,'岗位删除',104,4,'','',1,'F','0','system:post:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1025,'岗位导出',104,5,'','',1,'F','0','system:post:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1026,'字典查询',105,1,'#','',1,'F','0','system:dict:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1027,'字典新增',105,2,'#','',1,'F','0','system:dict:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1028,'字典修改',105,3,'#','',1,'F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1029,'字典删除',105,4,'#','',1,'F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1030,'字典导出',105,5,'#','',1,'F','0','system:dict:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1031,'参数查询',106,1,'#','',1,'F','0','system:config:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1032,'参数新增',106,2,'#','',1,'F','0','system:config:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1033,'参数修改',106,3,'#','',1,'F','0','system:config:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1034,'参数删除',106,4,'#','',1,'F','0','system:config:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1035,'参数导出',106,5,'#','',1,'F','0','system:config:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1036,'公告查询',107,1,'#','',1,'F','0','system:notice:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1037,'公告新增',107,2,'#','',1,'F','0','system:notice:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1038,'公告修改',107,3,'#','',1,'F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1039,'公告删除',107,4,'#','',1,'F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1040,'操作查询',500,1,'#','',1,'F','0','monitor:operlog:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1041,'操作删除',500,2,'#','',1,'F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1042,'日志导出',500,4,'#','',1,'F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1043,'登录查询',501,1,'#','',1,'F','0','monitor:logininfor:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1044,'登录删除',501,2,'#','',1,'F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1045,'日志导出',501,3,'#','',1,'F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1046,'在线查询',109,1,'#','',1,'F','0','monitor:online:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1047,'批量强退',109,2,'#','',1,'F','0','monitor:online:batchLogout','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1048,'单条强退',109,3,'#','',1,'F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1049,'任务查询',110,1,'#','',1,'F','0','monitor:job:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1050,'任务新增',110,2,'#','',1,'F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1051,'任务修改',110,3,'#','',1,'F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1052,'任务删除',110,4,'#','',1,'F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1053,'状态修改',110,5,'#','',1,'F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1054,'任务导出',110,7,'#','',1,'F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1055,'生成查询',114,1,'#','',1,'F','0','tool:gen:query','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1056,'生成修改',114,2,'#','',1,'F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1057,'生成删除',114,3,'#','',1,'F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1058,'预览代码',114,4,'#','',1,'F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        (1059,'生成代码',114,5,'#','',1,'F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),
        ;

-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
     `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
     `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
     PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert  into `sys_user_role`(`USER_ID`,`ROLE_ID`) values (1,1),(2,2),(3,2),(4,2),(5,2);


-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
     `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
     `MENU_ID` bigint(20) NOT NULL COMMENT '菜单ID',
     PRIMARY KEY (`ROLE_ID`,`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- 初始化-角色和菜单关联表数据
-- ----------------------------
insert  into `sys_role_menu`(`ROLE_ID`,`MENU_ID`) values
(2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),
(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),
(2,111),(2,112),(2,113),(2,114),(2,115),(2,500),(2,501),
(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),
(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),
(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),
(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),
(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),
(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),
(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),
(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),
(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),
(2,1055),(2,1056),(2,1057),(2,1058),(2,1059);

-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
     `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
     `DEPT_ID` bigint(20) NOT NULL COMMENT '部门ID',
     PRIMARY KEY (`ROLE_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- 初始化-角色和部门关联表数据
-- ----------------------------
insert into sys_role_dept values ('2', '100');
insert into sys_role_dept values ('2', '101');
insert into sys_role_dept values ('2', '105');


-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
     `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
     `POST_ID` bigint(20) NOT NULL COMMENT '岗位ID',
     PRIMARY KEY (`USER_ID`,`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- 初始化-用户与岗位关联表数据
-- ----------------------------
insert  into `sys_user_post`(`USER_ID`,`POST_ID`) values (1,1),(2,4),(3,4),(4,4),(5,4);

-- ----------------------------
-- 10、操作日志记录
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
    `OPER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
    `TITLE` varchar(50) DEFAULT '' COMMENT '模块标题',
    `BUSINESS_TYPE` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
    `METHOD` varchar(100) DEFAULT '' COMMENT '方法名称',
    `REQUEST_METHOD` varchar(10) DEFAULT '' COMMENT '请求方式',
    `OPERATOR_TYPE` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
    `OPER_NAME` varchar(50) DEFAULT '' COMMENT '操作人员',
    `DEPT_NAME` varchar(50) DEFAULT '' COMMENT '部门名称',
    `OPER_URL` varchar(255) DEFAULT '' COMMENT '请求URL',
    `OPER_IP` varchar(50) DEFAULT '' COMMENT '主机地址',
    `OPER_LOCATION` varchar(255) DEFAULT '' COMMENT '操作地点',
    `OPER_PARAM` varchar(2000) DEFAULT '' COMMENT '请求参数',
    `JSON_RESULT` varchar(2000) DEFAULT '' COMMENT '返回参数',
    `STATUS` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
    `ERROR_MSG` varchar(2000) DEFAULT '' COMMENT '错误消息',
    `OPER_TIME` datetime DEFAULT NULL COMMENT '操作时间',
    PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';


-- ----------------------------
-- 11、字典类型表
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
     `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
     `DICT_NAME` varchar(100) DEFAULT '' COMMENT '字典名称',
     `DICT_TYPE` varchar(100) DEFAULT '' COMMENT '字典类型',
     `STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
     `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
     `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
     `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
     `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
     `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
     PRIMARY KEY (`DICT_ID`),
     UNIQUE KEY `DICT_TYPE` (`DICT_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

insert into sys_dict_type values(1,  '用户性别', 'sys_user_sex',        '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户性别列表');
insert into sys_dict_type values(2,  '菜单状态', 'sys_show_hide',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单状态列表');
insert into sys_dict_type values(3,  '系统开关', 'sys_normal_disable',  '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统开关列表');
insert into sys_dict_type values(4,  '任务状态', 'sys_job_status',      '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务状态列表');
insert into sys_dict_type values(5,  '任务分组', 'sys_job_group',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务分组列表');
insert into sys_dict_type values(6,  '系统是否', 'sys_yes_no',          '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统是否列表');
insert into sys_dict_type values(7,  '通知类型', 'sys_notice_type',     '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知类型列表');
insert into sys_dict_type values(8,  '通知状态', 'sys_notice_status',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知状态列表');
insert into sys_dict_type values(9,  '操作类型', 'sys_oper_type',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '操作类型列表');
insert into sys_dict_type values(10, '系统状态', 'sys_common_status',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录状态列表');


-- ----------------------------
-- 12、字典数据表
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
     `DICT_CODE` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
     `DICT_SORT` int(4) DEFAULT '0' COMMENT '字典排序',
     `DICT_LABEL` varchar(100) DEFAULT '' COMMENT '字典标签',
     `DICT_VALUE` varchar(100) DEFAULT '' COMMENT '字典键值',
     `DICT_TYPE` varchar(100) DEFAULT '' COMMENT '字典类型',
     `CSS_CLASS` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
     `LIST_CLASS` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
     `IS_DEFAULT` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
     `STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
     `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
     `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
     `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
     `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
     `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
     PRIMARY KEY (`DICT_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

insert into sys_dict_data values(1,  1,  '男',       '0',       'sys_user_sex',        '',   '',        'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别男');
insert into sys_dict_data values(2,  2,  '女',       '1',       'sys_user_sex',        '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别女');
insert into sys_dict_data values(3,  3,  '未知',     '2',       'sys_user_sex',        '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别未知');
insert into sys_dict_data values(4,  1,  '显示',     '0',       'sys_show_hide',       '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '显示菜单');
insert into sys_dict_data values(5,  2,  '隐藏',     '1',       'sys_show_hide',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '隐藏菜单');
insert into sys_dict_data values(6,  1,  '正常',     '0',       'sys_normal_disable',  '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(7,  2,  '停用',     '1',       'sys_normal_disable',  '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
insert into sys_dict_data values(8,  1,  '正常',     '0',       'sys_job_status',      '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(9,  2,  '暂停',     '1',       'sys_job_status',      '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
insert into sys_dict_data values(10, 1,  '默认',     'DEFAULT', 'sys_job_group',       '',   '',        'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '默认分组');
insert into sys_dict_data values(11, 2,  '系统',     'SYSTEM',  'sys_job_group',       '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统分组');
insert into sys_dict_data values(12, 1,  '是',       'Y',       'sys_yes_no',          '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认是');
insert into sys_dict_data values(13, 2,  '否',       'N',       'sys_yes_no',          '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认否');
insert into sys_dict_data values(14, 1,  '通知',     '1',       'sys_notice_type',     '',   'warning', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知');
insert into sys_dict_data values(15, 2,  '公告',     '2',       'sys_notice_type',     '',   'success', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '公告');
insert into sys_dict_data values(16, 1,  '正常',     '0',       'sys_notice_status',   '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(17, 2,  '关闭',     '1',       'sys_notice_status',   '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '关闭状态');
insert into sys_dict_data values(18, 1,  '新增',     '1',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '新增操作');
insert into sys_dict_data values(19, 2,  '修改',     '2',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '修改操作');
insert into sys_dict_data values(20, 3,  '删除',     '3',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '删除操作');
insert into sys_dict_data values(21, 4,  '授权',     '4',       'sys_oper_type',       '',   'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '授权操作');
insert into sys_dict_data values(22, 5,  '导出',     '5',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '导出操作');
insert into sys_dict_data values(23, 6,  '导入',     '6',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '导入操作');
insert into sys_dict_data values(24, 7,  '强退',     '7',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '强退操作');
insert into sys_dict_data values(25, 8,  '生成代码', '8',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生成操作');
insert into sys_dict_data values(26, 9,  '清空数据', '9',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '清空操作');
insert into sys_dict_data values(27, 1,  '成功',     '0',       'sys_common_status',   '',   'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(28, 2,  '失败',     '1',       'sys_common_status',   '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');


-- ----------------------------
-- 13、参数配置表
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `CONFIG_ID` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `CONFIG_NAME` varchar(100) DEFAULT '' COMMENT '参数名称',
  `CONFIG_KEY` varchar(100) DEFAULT '' COMMENT '参数键名',
  `CONFIG_VALUE` varchar(500) DEFAULT '' COMMENT '参数键值',
  `CONFIG_TYPE` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CONFIG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

insert into sys_config values(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName',     'skin-blue',     'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow' );
insert into sys_config values(2, '用户管理-账号初始密码',     'sys.user.initPassword',  '123456',        'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '初始化密码 123456' );
insert into sys_config values(3, '主框架页-侧边栏主题',       'sys.index.sideTheme',    'theme-dark',    'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '深色主题theme-dark，浅色主题theme-light' );


-- ----------------------------
-- 14、系统访问记录
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `INFO_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `USER_NAME` varchar(50) DEFAULT '' COMMENT '用户账号',
  `IPADDR` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `LOGIN_LOCATION` varchar(255) DEFAULT '' COMMENT '登录地点',
  `BROWSER` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `OS` varchar(50) DEFAULT '' COMMENT '操作系统',
  `STATUS` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `MSG` varchar(255) DEFAULT '' COMMENT '提示消息',
  `LOGIN_TIME` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`INFO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';


-- ----------------------------
-- 15、在线用户记录
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
   `SESSIONID` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
   `USER_NAME` varchar(50) DEFAULT '' COMMENT '用户账号',
   `DEPT_NAME` varchar(50) DEFAULT '' COMMENT '部门名称',
   `IPADDR` varchar(50) DEFAULT '' COMMENT '登录IP地址',
   `LOGIN_LOCATION` varchar(255) DEFAULT '' COMMENT '登录地点',
   `BROWSER` varchar(50) DEFAULT '' COMMENT '浏览器类型',
   `OS` varchar(50) DEFAULT '' COMMENT '操作系统',
   `STATUS` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
   `START_TIMESTAMP` datetime DEFAULT NULL COMMENT 'session创建时间',
   `LAST_ACCESS_TIME` datetime DEFAULT NULL COMMENT 'session最后访问时间',
   `EXPIRE_TIME` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
   PRIMARY KEY (`SESSIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';


-- ----------------------------
-- 16、定时任务调度表
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
   `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
   `JOB_NAME` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
   `JOB_GROUP` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
   `INVOKE_TARGET` varchar(500) NOT NULL COMMENT '调用目标字符串',
   `CRON_EXPRESSION` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
   `MISFIRE_POLICY` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
   `CONCURRENT` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
   `STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
   `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
   `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
   `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
   `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
   `REMARK` varchar(500) DEFAULT '' COMMENT '备注信息',
   PRIMARY KEY (`JOB_ID`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

insert into sys_job values(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams',        '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_job values(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')',  '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_job values(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)',  '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');


-- ----------------------------
-- 17、定时任务调度日志表
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
   `JOB_LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
   `JOB_NAME` varchar(64) NOT NULL COMMENT '任务名称',
   `JOB_GROUP` varchar(64) NOT NULL COMMENT '任务组名',
   `INVOKE_TARGET` varchar(500) NOT NULL COMMENT '调用目标字符串',
   `JOB_MESSAGE` varchar(500) DEFAULT NULL COMMENT '日志信息',
   `STATUS` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
   `EXCEPTION_INFO` varchar(2000) DEFAULT '' COMMENT '异常信息',
   `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
   PRIMARY KEY (`JOB_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';


-- ----------------------------
-- 18、通知公告表
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `NOTICE_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `NOTICE_TITLE` varchar(50) NOT NULL COMMENT '公告标题',
  `NOTICE_TYPE` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `NOTICE_CONTENT` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `STATUS` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- 初始化-公告信息表数据
-- ----------------------------
insert into sys_notice values('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_notice values('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');


-- ----------------------------
-- 19、代码生成业务表
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
     `TABLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
     `TABLE_NAME` varchar(200) DEFAULT '' COMMENT '表名称',
     `TABLE_COMMENT` varchar(500) DEFAULT '' COMMENT '表描述',
     `CLASS_NAME` varchar(100) DEFAULT '' COMMENT '实体类名称',
     `TPL_CATEGORY` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
     `PACKAGE_NAME` varchar(100) DEFAULT NULL COMMENT '生成包路径',
     `MODULE_NAME` varchar(30) DEFAULT NULL COMMENT '生成模块名',
     `BUSINESS_NAME` varchar(30) DEFAULT NULL COMMENT '生成业务名',
     `FUNCTION_NAME` varchar(50) DEFAULT NULL COMMENT '生成功能名',
     `FUNCTION_AUTHOR` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
     `OPTIONS` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
     `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
     `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
     `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
     `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
     `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
     PRIMARY KEY (`TABLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';


-- ----------------------------
-- 20、代码生成业务表字段
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
    `COLUMN_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
    `TABLE_ID` varchar(64) DEFAULT NULL COMMENT '归属表编号',
    `COLUMN_NAME` varchar(200) DEFAULT NULL COMMENT '列名称',
    `COLUMN_COMMENT` varchar(500) DEFAULT NULL COMMENT '列描述',
    `COLUMN_TYPE` varchar(100) DEFAULT NULL COMMENT '列类型',
    `JAVA_TYPE` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
    `JAVA_FIELD` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
    `IS_PK` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
    `IS_INCREMENT` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
    `IS_REQUIRED` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
    `IS_INSERT` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
    `IS_EDIT` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
    `IS_LIST` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
    `IS_QUERY` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
    `QUERY_TYPE` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
    `HTML_TYPE` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
    `DICT_TYPE` varchar(200) DEFAULT '' COMMENT '字典类型',
    `SORT` int(11) DEFAULT NULL COMMENT '排序',
    `CREATE_BY` varchar(64) DEFAULT '' COMMENT '创建者',
    `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
    `UPDATE_BY` varchar(64) DEFAULT '' COMMENT '更新者',
    `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`COLUMN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';