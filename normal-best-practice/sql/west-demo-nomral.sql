-- --------------------------------------------------------
-- 主机:                           192.168.0.200
-- 服务器版本:                        5.1.73 - Source distribution
-- 服务器操作系统:                      redhat-linux-gnu
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 west-normal-demo 的数据库结构
CREATE DATABASE IF NOT EXISTS `west-normal-demo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `west-normal-demo`;

-- 导出  表 west-normal-demo.activity 结构
CREATE TABLE IF NOT EXISTS `activity` (
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=gbk COMMENT='活动';

-- 正在导出表  west-normal-demo.activity 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` (`id`, `title`, `num_limit`, `start_time`, `create_time`, `place_name`, `place_id`, `address`, `contract_name`, `status`, `creater_id`, `creater`, `memo`, `uuid`) VALUES
	(178, '2018-6-26 21:39:11-半亩园', 0, NULL, '2018-06-26 21:39:11', '半亩园', 96, '', '', 0, 0, '', '', '90d97227d8654c25be2372c1ea08e00e'),
	(179, '2018-6-26 22:28:48-半亩园', 0, NULL, '2018-06-26 22:28:48', '半亩园', 14, '', '', 0, 0, '', '', '96a67fd223964ac4ad795e98ce4004d5');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
