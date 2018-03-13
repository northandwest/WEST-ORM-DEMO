
-- 导出 west-shard-demo-1 的数据库结构
CREATE DATABASE IF NOT EXISTS `west-shard-demo-1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `west-shard-demo-1`;

-- 导出  表 west-shard-demo-1.activity_0 结构
CREATE TABLE IF NOT EXISTS `activity_0` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `num_limit` int(11) DEFAULT '0' COMMENT '人数限制',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建',
  `place_name` varchar(100) DEFAULT '' COMMENT '活动场所',
  `place_id` int(11) DEFAULT '0' COMMENT '场所',
  `address` varchar(100) DEFAULT '' COMMENT '地址',
  `contract_name` varchar(20) DEFAULT '' COMMENT '联系人',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `creater_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `creater` varchar(20) DEFAULT '' COMMENT '创建人',
  `memo` varchar(200) DEFAULT '' COMMENT '备注',
  `uuid` varchar(50) DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='活动';

-- 数据导出被取消选择。
-- 导出  表 west-shard-demo-1.activity_1 结构
CREATE TABLE IF NOT EXISTS `activity_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `num_limit` int(11) DEFAULT '0' COMMENT '人数限制',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建',
  `place_name` varchar(100) DEFAULT '' COMMENT '活动场所',
  `place_id` int(11) DEFAULT '0' COMMENT '场所',
  `address` varchar(100) DEFAULT '' COMMENT '地址',
  `contract_name` varchar(20) DEFAULT '' COMMENT '联系人',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `creater_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `creater` varchar(20) DEFAULT '' COMMENT '创建人',
  `memo` varchar(200) DEFAULT '' COMMENT '备注',
  `uuid` varchar(50) DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='活动';
