/*
Navicat MySQL Data Transfer

Source Server         : 76
Source Server Version : 50716
Source Host           : 192.168.200.76:13306
Source Database       : %s

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-05-26 10:53:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `%s_bc_ckpt_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_ckpt_forecast`;
CREATE TABLE `%s_bc_ckpt_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����д������Ԥ���';

-- ----------------------------
-- Records of %s_bc_ckpt_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_ckpt_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_ckpt_score`;
CREATE TABLE `%s_bc_ckpt_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����д�����ݷ�ֵ��';

-- ----------------------------
-- Records of %s_bc_ckpt_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_idxfp_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_idxfp_forecast`;
CREATE TABLE `%s_bc_idxfp_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='index failed probes ��ֵ��';

-- ----------------------------
-- Records of %s_bc_idxfp_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_idxfp_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_idxfp_score`;
CREATE TABLE `%s_bc_idxfp_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='index failed probes ��ֵ��';

-- ----------------------------
-- Records of %s_bc_idxfp_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_idxsplit_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_idxsplit_forecast`;
CREATE TABLE `%s_bc_idxsplit_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='��������Ԥ���';

-- ----------------------------
-- Records of %s_bc_idxsplit_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_idxsplit_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_idxsplit_score`;
CREATE TABLE `%s_bc_idxsplit_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�������ѷ�ֵ��';

-- ----------------------------
-- Records of %s_bc_idxsplit_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_lru_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_lru_forecast`;
CREATE TABLE `%s_bc_lru_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='LRU��Ԥ���';

-- ----------------------------
-- Records of %s_bc_lru_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_lru_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_lru_score`;
CREATE TABLE `%s_bc_lru_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='LRU����ֵ��';

-- ----------------------------
-- Records of %s_bc_lru_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_nowait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_nowait_forecast`;
CREATE TABLE `%s_bc_nowait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='buffer nowait��ֵ��';

-- ----------------------------
-- Records of %s_bc_nowait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_bc_nowait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_bc_nowait_score`;
CREATE TABLE `%s_bc_nowait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='buffer nowait��ֵ��';

-- ----------------------------
-- Records of %s_bc_nowait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_exec_time_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_exec_time_forecast`;
CREATE TABLE `%s_exec_time_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ��ʱ��Ԥ���';

-- ----------------------------
-- Records of %s_exec_time_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_exec_time_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_exec_time_score`;
CREATE TABLE `%s_exec_time_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ��ʱ���ֵ��';

-- ----------------------------
-- Records of %s_exec_time_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_exec_wait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_exec_wait_forecast`;
CREATE TABLE `%s_exec_wait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ�еȴ�Ԥ���';

-- ----------------------------
-- Records of %s_exec_wait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_exec_wait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_exec_wait_score`;
CREATE TABLE `%s_exec_wait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ�еȴ���ֵ��';

-- ----------------------------
-- Records of %s_exec_wait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_cr_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_cr_forecast`;
CREATE TABLE `%s_lio_cr_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼���crԤ���';

-- ----------------------------
-- Records of %s_lio_cr_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_cr_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_cr_score`;
CREATE TABLE `%s_lio_cr_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼���cr��ֵ��';

-- ----------------------------
-- Records of %s_lio_cr_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_ratio_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_ratio_forecast`;
CREATE TABLE `%s_lio_ratio_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼���������Ԥ���';

-- ----------------------------
-- Records of %s_lio_ratio_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_ratio_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_ratio_score`;
CREATE TABLE `%s_lio_ratio_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼��������ʷ�ֵ��';

-- ----------------------------
-- Records of %s_lio_ratio_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_wait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_wait_forecast`;
CREATE TABLE `%s_lio_wait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼�IO�ȴ�����Ԥ���';

-- ----------------------------
-- Records of %s_lio_wait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_lio_wait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_lio_wait_score`;
CREATE TABLE `%s_lio_wait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼�IO�ȴ�������ֵ��';

-- ----------------------------
-- Records of %s_lio_wait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_cpu_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_cpu_forecast`;
CREATE TABLE `%s_parse_cpu_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����cpuԤ���';

-- ----------------------------
-- Records of %s_parse_cpu_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_cpu_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_cpu_score`;
CREATE TABLE `%s_parse_cpu_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����cpu�÷ֱ�';

-- ----------------------------
-- Records of %s_parse_cpu_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_hard_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_hard_forecast`;
CREATE TABLE `%s_parse_hard_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ӳ�����ȴ�Ԥ���';

-- ----------------------------
-- Records of %s_parse_hard_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_hard_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_hard_score`;
CREATE TABLE `%s_parse_hard_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ӳ�����ȴ��÷ֱ�';

-- ----------------------------
-- Records of %s_parse_hard_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_wait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_wait_forecast`;
CREATE TABLE `%s_parse_wait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�����ȴ�Ԥ���';

-- ----------------------------
-- Records of %s_parse_wait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_parse_wait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_parse_wait_score`;
CREATE TABLE `%s_parse_wait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�����ȴ��÷ֱ�';

-- ----------------------------
-- Records of %s_parse_wait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_d_rtime_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_d_rtime_forecast`;
CREATE TABLE `%s_pio_d_rtime_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ֱ��·������Ӧʱ��Ԥ���';

-- ----------------------------
-- Records of %s_pio_d_rtime_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_d_rtime_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_d_rtime_score`;
CREATE TABLE `%s_pio_d_rtime_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ֱ��·������Ӧʱ���ֵ��';

-- ----------------------------
-- Records of %s_pio_d_rtime_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_d_wtime_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_d_wtime_forecast`;
CREATE TABLE `%s_pio_d_wtime_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ֱ��·��д��Ӧʱ��Ԥ���';

-- ----------------------------
-- Records of %s_pio_d_wtime_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_d_wtime_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_d_wtime_score`;
CREATE TABLE `%s_pio_d_wtime_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ֱ��·��д��Ӧʱ���ֵ��';

-- ----------------------------
-- Records of %s_pio_d_wtime_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_req_write_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_req_write_forecast`;
CREATE TABLE `%s_pio_req_write_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IO����д���Ԥ���';

-- ----------------------------
-- Records of %s_pio_req_write_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_req_write_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_req_write_score`;
CREATE TABLE `%s_pio_req_write_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IO����д��ȷ�ֵ��';

-- ----------------------------
-- Records of %s_pio_req_write_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_rtime_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_rtime_forecast`;
CREATE TABLE `%s_pio_rtime_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IO��ȡ��Ӧʱ��Ԥ���';

-- ----------------------------
-- Records of %s_pio_rtime_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_rtime_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_rtime_score`;
CREATE TABLE `%s_pio_rtime_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IO��ȡ��Ӧʱ���ֵ��';

-- ----------------------------
-- Records of %s_pio_rtime_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_wtime_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_wtime_forecast`;
CREATE TABLE `%s_pio_wtime_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IOд����Ӧʱ��Ԥ���';

-- ----------------------------
-- Records of %s_pio_wtime_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_pio_wtime_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_pio_wtime_score`;
CREATE TABLE `%s_pio_wtime_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����IOд����Ӧʱ���ֵ��';

-- ----------------------------
-- Records of %s_pio_wtime_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_rac_busy_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_rac_busy_forecast`;
CREATE TABLE `%s_rac_busy_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_rac_busy_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_rac_busy_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_rac_busy_score`;
CREATE TABLE `%s_rac_busy_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_rac_busy_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_rac_ksxp_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_rac_ksxp_forecast`;
CREATE TABLE `%s_rac_ksxp_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_rac_ksxp_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_rac_ksxp_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_rac_ksxp_score`;
CREATE TABLE `%s_rac_ksxp_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_rac_ksxp_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_lgsync_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_lgsync_forecast`;
CREATE TABLE `%s_redo_lgsync_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='log file sync Ԥ���';

-- ----------------------------
-- Records of %s_redo_lgsync_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_lgsync_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_lgsync_score`;
CREATE TABLE `%s_redo_lgsync_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='log file sync��ֵ��';

-- ----------------------------
-- Records of %s_redo_lgsync_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_lgwr_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_lgwr_forecast`;
CREATE TABLE `%s_redo_lgwr_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='log file parallel write Ԥ���';

-- ----------------------------
-- Records of %s_redo_lgwr_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_lgwr_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_lgwr_score`;
CREATE TABLE `%s_redo_lgwr_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='log file parallel write ��ֵ��';

-- ----------------------------
-- Records of %s_redo_lgwr_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_wait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_wait_forecast`;
CREATE TABLE `%s_redo_wait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redo �ȴ�����Ԥ���';

-- ----------------------------
-- Records of %s_redo_wait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_redo_wait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_redo_wait_score`;
CREATE TABLE `%s_redo_wait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redo �ȴ�������ֵ��';

-- ----------------------------
-- Records of %s_redo_wait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_bc`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_bc`;
CREATE TABLE `%s_score_bc` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Buffer Cache��ֵ��';

-- ----------------------------
-- Records of %s_score_bc
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_bc_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_bc_forecast`;
CREATE TABLE `%s_score_bc_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Buffer CacheԤ���';

-- ----------------------------
-- Records of %s_score_bc_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_db`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_db`;
CREATE TABLE `%s_score_db` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���ݿ��ֵ��';

-- ----------------------------
-- Records of %s_score_db
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_db_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_db_forecast`;
CREATE TABLE `%s_score_db_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���ݿ��ֵԤ���';

-- ----------------------------
-- Records of %s_score_db_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_dept`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_dept`;
CREATE TABLE `%s_score_dept` (
  `tab_name` varchar(100) NOT NULL,
  `tab_level` int(11) NOT NULL,
  `metric_name` varchar(100) DEFAULT NULL,
  `up_table` varchar(100) DEFAULT NULL,
  `stat_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tab_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ָ���ι�ϵ��';

-- ----------------------------
-- Records of %s_score_dept
-- ----------------------------
INSERT INTO `%s_score_dept` VALUES ('%s_score_db', '1', 'score_db', '', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_parse', '2', 'score_parse', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_parse_cpu_score', '3', 'parse_cpu', '%s_score_parse', null);
INSERT INTO `%s_score_dept` VALUES ('%s_parse_wait_score', '3', 'parse_wait', '%s_score_parse', null);
INSERT INTO `%s_score_dept` VALUES ('%s_parse_hard_score', '3', 'parse_hard', '%s_score_parse', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_exec', '2', 'score_exec', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_exec_wait_score', '3', 'exec_wait', '%s_score_exec', null);
INSERT INTO `%s_score_dept` VALUES ('%s_exec_time_score', '3', 'exec_time', '%s_score_exec', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_rac', '2', 'score_rac', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_rac_ksxp_score', '3', 'rac_ksxp', '%s_score_rac', null);
INSERT INTO `%s_score_dept` VALUES ('%s_rac_busy_score', '3', 'rac_busy', '%s_score_rac', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_pio', '2', 'score_pio', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_pio_rtime_score', '3', 'pio_rtime', '%s_score_pio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_pio_wtime_score', '3', 'pio_wtime', '%s_score_pio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_pio_d_rtime_score', '3', 'pio_d_rtime', '%s_score_pio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_pio_d_wtime_score', '3', 'pio_d_wtime', '%s_score_pio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_pio_req_write_score', '3', 'pio_req_write', '%s_score_pio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_lio', '2', 'score_lio', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_lio_wait_score', '3', 'lio_wait', '%s_score_lio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_lio_ratio_score', '3', 'lio_ratio', '%s_score_lio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_lio_cr_score', '3', 'lio_cr', '%s_score_lio', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_bc', '2', 'score_bc', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_bc_idxsplit_score', '3', 'bc_idxsplit', '%s_score_bc', null);
INSERT INTO `%s_score_dept` VALUES ('%s_bc_ckpt_score', '3', 'bc_ckpt', '%s_score_bc', null);
INSERT INTO `%s_score_dept` VALUES ('%s_bc_lru_score', '3', 'bc_lru', '%s_score_bc', null);
INSERT INTO `%s_score_dept` VALUES ('%s_bc_idxfp_score', '3', 'bc_idxfp', '%s_score_bc', null);
INSERT INTO `%s_score_dept` VALUES ('%s_bc_nowait_score', '3', 'bc_nowait', '%s_score_bc', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_sp', '2', 'score_sp', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sp_cursor_score', '3', 'sp_cursor', '%s_score_sp', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sp_dict_score', '3', 'sp_dict', '%s_score_sp', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sp_lca_score', '3', 'sp_lca', '%s_score_sp', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sp_lcratio_score', '3', 'sp_lcratio', '%s_score_sp', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sp_ssparse_score', '3', 'sp_ssparse', '%s_score_sp', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_redo', '2', 'score_redo', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_redo_wait_score', '3', 'redo_wait', '%s_score_redo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_redo_lgsync_score', '3', 'redo_lgsync', '%s_score_redo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_redo_lgwr_score', '3', 'redo_lgwr', '%s_score_redo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_undo', '2', 'score_undo', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_undo_expired_score', '3', 'undo_expired', '%s_score_undo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_undo_wait_score', '3', 'undo_wait', '%s_score_undo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_undo_rollback_score', '3', 'undo_rollback', '%s_score_undo', null);
INSERT INTO `%s_score_dept` VALUES ('%s_score_sql', '2', 'score_sql', '%s_score_db', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sql_long_score', '3', 'sql_long', '%s_score_sql', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sql_cpu_score', '3', 'sql_cpu', '%s_score_sql', null);
INSERT INTO `%s_score_dept` VALUES ('%s_sql_io_score', '3', 'sql_io', '%s_score_sql', null);

-- ----------------------------
-- Table structure for `%s_score_exec`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_exec`;
CREATE TABLE `%s_score_exec` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ�з�ֵ��';

-- ----------------------------
-- Records of %s_score_exec
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_exec_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_exec_forecast`;
CREATE TABLE `%s_score_exec_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ִ�з�ֵԤ���';

-- ----------------------------
-- Records of %s_score_exec_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_gen_rule`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_gen_rule`;
CREATE TABLE `%s_score_gen_rule` (
  `inst_id` int(11) NOT NULL,
  `parent_name` varchar(30) NOT NULL,
  `stat_name` varchar(30) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `score_rule` varchar(30) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`stat_name`,`start_time`,`inst_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�ϲ�ָ����ܼǷֹ����';

-- ----------------------------
-- Records of %s_score_gen_rule
-- ----------------------------
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_cpu', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'parse', 'parse_hard', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_time', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'exec', 'exec_wait', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '00:00:00', '00:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '00:00:00', '00:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '01:00:00', '01:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '01:00:00', '01:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '02:00:00', '02:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '02:00:00', '02:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '03:00:00', '03:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '03:00:00', '03:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '04:00:00', '04:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '04:00:00', '04:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '05:00:00', '05:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '05:00:00', '05:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '06:00:00', '06:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '06:00:00', '06:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '07:00:00', '07:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '07:00:00', '07:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '08:00:00', '08:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '08:00:00', '08:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '09:00:00', '09:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '09:00:00', '09:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '10:00:00', '10:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '10:00:00', '10:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '11:00:00', '11:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '11:00:00', '11:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '12:00:00', '12:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '12:00:00', '12:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '13:00:00', '13:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '13:00:00', '13:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '14:00:00', '14:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '14:00:00', '14:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '15:00:00', '15:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '15:00:00', '15:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '16:00:00', '16:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '16:00:00', '16:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '17:00:00', '17:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '17:00:00', '17:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '18:00:00', '18:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '18:00:00', '18:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '19:00:00', '19:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '19:00:00', '19:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '20:00:00', '20:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '20:00:00', '20:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '21:00:00', '21:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '21:00:00', '21:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '22:00:00', '22:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '22:00:00', '22:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_rtime', '23:00:00', '23:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_wtime', '23:00:00', '23:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_rtime', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_d_wtime', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'pio', 'pio_req_write', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_ratio', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'lio', 'lio_cr', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxsplit', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_ckpt', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_lru', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_idxfp', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'bc', 'bc_nowait', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_cursor', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_dict', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lca', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_lcratio', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sp', 'sp_ssparse', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgsync', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'redo', 'redo_lgwr', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_expired', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'undo', 'undo_rollback', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_long', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_cpu', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'sql', 'sql_io', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_ksxp', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'rac', 'rac_busy', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_parse', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_exec', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_pio', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_lio', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_bc', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sp', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_redo', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_undo', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_sql', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('1', 'score_db', 'score_rac', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_time', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'exec', 'exec_wait', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '00:00:00', '00:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '00:00:00', '00:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '01:00:00', '01:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '01:00:00', '01:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '02:00:00', '02:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '02:00:00', '02:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '03:00:00', '03:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '03:00:00', '03:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '04:00:00', '04:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '04:00:00', '04:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '05:00:00', '05:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '05:00:00', '05:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '06:00:00', '06:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '06:00:00', '06:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '07:00:00', '07:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '07:00:00', '07:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '08:00:00', '08:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '08:00:00', '08:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '09:00:00', '09:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '09:00:00', '09:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '10:00:00', '10:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '10:00:00', '10:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '11:00:00', '11:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '11:00:00', '11:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '12:00:00', '12:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '12:00:00', '12:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '13:00:00', '13:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '13:00:00', '13:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '14:00:00', '14:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '14:00:00', '14:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '15:00:00', '15:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '15:00:00', '15:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '16:00:00', '16:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '16:00:00', '16:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '17:00:00', '17:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '17:00:00', '17:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '18:00:00', '18:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '18:00:00', '18:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '19:00:00', '19:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '19:00:00', '19:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '20:00:00', '20:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '20:00:00', '20:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '21:00:00', '21:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '21:00:00', '21:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '22:00:00', '22:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '22:00:00', '22:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_rtime', '23:00:00', '23:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_wtime', '23:00:00', '23:59:59', 'avg', '25');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_rtime', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_d_wtime', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'pio', 'pio_req_write', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_ratio', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'lio', 'lio_cr', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxsplit', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_ckpt', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_lru', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_idxfp', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'bc', 'bc_nowait', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '00:00:00', '00:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '01:00:00', '01:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '02:00:00', '02:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '03:00:00', '03:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '04:00:00', '04:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '05:00:00', '05:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '06:00:00', '06:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '07:00:00', '07:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '08:00:00', '08:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '09:00:00', '09:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '10:00:00', '10:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '11:00:00', '11:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '12:00:00', '12:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '13:00:00', '13:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '14:00:00', '14:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '15:00:00', '15:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '16:00:00', '16:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '17:00:00', '17:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '18:00:00', '18:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '19:00:00', '19:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '20:00:00', '20:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '21:00:00', '21:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '22:00:00', '22:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_cursor', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_dict', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lca', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_lcratio', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sp', 'sp_ssparse', '23:00:00', '23:59:59', 'avg', '20');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgsync', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'redo', 'redo_lgwr', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_wait', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_expired', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'undo', 'undo_rollback', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '17:00:00', '17:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '17:00:00', '17:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '18:00:00', '18:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '18:00:00', '18:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '19:00:00', '19:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '19:00:00', '19:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '20:00:00', '20:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '20:00:00', '20:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '21:00:00', '21:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '21:00:00', '21:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '22:00:00', '22:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '22:00:00', '22:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_long', '23:00:00', '23:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_cpu', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'sql', 'sql_io', '23:00:00', '23:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '00:00:00', '00:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '01:00:00', '01:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '02:00:00', '02:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '03:00:00', '03:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '04:00:00', '04:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '05:00:00', '05:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '06:00:00', '06:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '07:00:00', '07:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '08:00:00', '08:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '09:00:00', '09:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '10:00:00', '10:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '11:00:00', '11:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '12:00:00', '12:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '13:00:00', '13:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '14:00:00', '14:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '15:00:00', '15:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '16:00:00', '16:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '17:00:00', '17:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '18:00:00', '18:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '19:00:00', '19:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '20:00:00', '20:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '21:00:00', '21:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '22:00:00', '22:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_parse', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_exec', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_pio', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_lio', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_bc', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sp', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_redo', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_undo', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_sql', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'score_db', 'score_rac', '23:00:00', '23:59:59', 'avg', '10');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '00:00:00', '00:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '01:00:00', '01:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '02:00:00', '02:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '03:00:00', '03:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '04:00:00', '04:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '05:00:00', '05:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '06:00:00', '06:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '07:00:00', '07:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '08:00:00', '08:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '09:00:00', '09:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '10:00:00', '10:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '11:00:00', '11:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '12:00:00', '12:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '13:00:00', '13:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '14:00:00', '14:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '15:00:00', '15:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '16:00:00', '16:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '17:00:00', '17:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '18:00:00', '18:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '19:00:00', '19:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '20:00:00', '20:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '21:00:00', '21:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '22:00:00', '22:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_ksxp', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'rac', 'rac_busy', '23:00:00', '23:59:59', 'avg', '50');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '00:00:00', '00:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '00:00:00', '00:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '01:00:00', '01:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '01:00:00', '01:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '02:00:00', '02:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '02:00:00', '02:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '03:00:00', '03:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '03:00:00', '03:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '04:00:00', '04:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '04:00:00', '04:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '05:00:00', '05:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '05:00:00', '05:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '06:00:00', '06:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '06:00:00', '06:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '07:00:00', '07:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '07:00:00', '07:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '08:00:00', '08:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '08:00:00', '08:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '09:00:00', '09:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '09:00:00', '09:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '10:00:00', '10:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '10:00:00', '10:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '11:00:00', '11:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '11:00:00', '11:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '12:00:00', '12:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '12:00:00', '12:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '13:00:00', '13:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '13:00:00', '13:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '14:00:00', '14:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '14:00:00', '14:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '15:00:00', '15:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '15:00:00', '15:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_cpu', '16:00:00', '16:59:59', 'avg', '30');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_wait', '16:00:00', '16:59:59', 'avg', '40');
INSERT INTO `%s_score_gen_rule` VALUES ('2', 'parse', 'parse_hard', '16:00:00', '16:59:59', 'avg', '30');

-- ----------------------------
-- Table structure for `%s_score_lio`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_lio`;
CREATE TABLE `%s_score_lio` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼�io��ֵ��';

-- ----------------------------
-- Records of %s_score_lio
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_lio_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_lio_forecast`;
CREATE TABLE `%s_score_lio_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�߼�ioԤ���';

-- ----------------------------
-- Records of %s_score_lio_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_parse`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_parse`;
CREATE TABLE `%s_score_parse` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='������ֵ��';

-- ----------------------------
-- Records of %s_score_parse
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_parse_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_parse_forecast`;
CREATE TABLE `%s_score_parse_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='������ֵԤ���';

-- ----------------------------
-- Records of %s_score_parse_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_pio`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_pio`;
CREATE TABLE `%s_score_pio` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����io��ֵ��';

-- ----------------------------
-- Records of %s_score_pio
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_pio_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_pio_forecast`;
CREATE TABLE `%s_score_pio_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����ioԤ���';

-- ----------------------------
-- Records of %s_score_pio_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_rac`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_rac`;
CREATE TABLE `%s_score_rac` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_score_rac
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_rac_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_rac_forecast`;
CREATE TABLE `%s_score_rac_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of %s_score_rac_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_redo`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_redo`;
CREATE TABLE `%s_score_redo` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Redo ��ֵ��';

-- ----------------------------
-- Records of %s_score_redo
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_redo_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_redo_forecast`;
CREATE TABLE `%s_score_redo_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Redo Ԥ���';

-- ----------------------------
-- Records of %s_score_redo_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_sp`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_sp`;
CREATE TABLE `%s_score_sp` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shared Pool��ֵ��';

-- ----------------------------
-- Records of %s_score_sp
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_sp_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_sp_forecast`;
CREATE TABLE `%s_score_sp_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shared PoolԤ���';

-- ----------------------------
-- Records of %s_score_sp_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_sql`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_sql`;
CREATE TABLE `%s_score_sql` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SQL ��ֵ��';

-- ----------------------------
-- Records of %s_score_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_sql_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_sql_forecast`;
CREATE TABLE `%s_score_sql_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SQL Ԥ���';

-- ----------------------------
-- Records of %s_score_sql_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_undo`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_undo`;
CREATE TABLE `%s_score_undo` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='undo ��ֵ��';

-- ----------------------------
-- Records of %s_score_undo
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_score_undo_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_score_undo_forecast`;
CREATE TABLE `%s_score_undo_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='undo Ԥ���';

-- ----------------------------
-- Records of %s_score_undo_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_cursor_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_cursor_forecast`;
CREATE TABLE `%s_sp_cursor_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='open cursor��ֵ��';

-- ----------------------------
-- Records of %s_sp_cursor_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_cursor_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_cursor_score`;
CREATE TABLE `%s_sp_cursor_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='open cursor��ֵ��';

-- ----------------------------
-- Records of %s_sp_cursor_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_dict_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_dict_forecast`;
CREATE TABLE `%s_sp_dict_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Dictionary Cache Stats��ֵ��';

-- ----------------------------
-- Records of %s_sp_dict_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_dict_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_dict_score`;
CREATE TABLE `%s_sp_dict_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Dictionary Cache Stats��ֵ��';

-- ----------------------------
-- Records of %s_sp_dict_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_lca_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_lca_forecast`;
CREATE TABLE `%s_sp_lca_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Library Cache Activity��ֵ��';

-- ----------------------------
-- Records of %s_sp_lca_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_lca_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_lca_score`;
CREATE TABLE `%s_sp_lca_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Library Cache Activity��ֵ��';

-- ----------------------------
-- Records of %s_sp_lca_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_lcratio_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_lcratio_forecast`;
CREATE TABLE `%s_sp_lcratio_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Library Cache Hit��ֵ��';

-- ----------------------------
-- Records of %s_sp_lcratio_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_lcratio_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_lcratio_score`;
CREATE TABLE `%s_sp_lcratio_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Library Cache Hit��ֵ��';

-- ----------------------------
-- Records of %s_sp_lcratio_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_ssparse_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_ssparse_forecast`;
CREATE TABLE `%s_sp_ssparse_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���������ֵ��';

-- ----------------------------
-- Records of %s_sp_ssparse_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sp_ssparse_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sp_ssparse_score`;
CREATE TABLE `%s_sp_ssparse_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���������ֵ��';

-- ----------------------------
-- Records of %s_sp_ssparse_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_cpu_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_cpu_forecast`;
CREATE TABLE `%s_sql_cpu_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high cpu SQL Ԥ���';

-- ----------------------------
-- Records of %s_sql_cpu_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_cpu_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_cpu_score`;
CREATE TABLE `%s_sql_cpu_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high cpu SQL ��ֵ��';

-- ----------------------------
-- Records of %s_sql_cpu_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_io_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_io_forecast`;
CREATE TABLE `%s_sql_io_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high io SQL Ԥ���';

-- ----------------------------
-- Records of %s_sql_io_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_io_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_io_score`;
CREATE TABLE `%s_sql_io_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='high io SQL ��ֵ��';

-- ----------------------------
-- Records of %s_sql_io_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_long_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_long_forecast`;
CREATE TABLE `%s_sql_long_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='��ʱ��SQL Ԥ���';

-- ----------------------------
-- Records of %s_sql_long_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_sql_long_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_sql_long_score`;
CREATE TABLE `%s_sql_long_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='��ʱ��SQL ��ֵ��';

-- ----------------------------
-- Records of %s_sql_long_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_expired_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_expired_forecast`;
CREATE TABLE `%s_undo_expired_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='expired undo blocks stolen from other undo segments Ԥ���';

-- ----------------------------
-- Records of %s_undo_expired_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_expired_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_expired_score`;
CREATE TABLE `%s_undo_expired_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='expired undo blocks stolen from other undo segments ��ֵ��';

-- ----------------------------
-- Records of %s_undo_expired_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_rollback_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_rollback_forecast`;
CREATE TABLE `%s_undo_rollback_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='rollback Ԥ���';

-- ----------------------------
-- Records of %s_undo_rollback_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_rollback_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_rollback_score`;
CREATE TABLE `%s_undo_rollback_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='rollback ��ֵ��';

-- ----------------------------
-- Records of %s_undo_rollback_score
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_wait_forecast`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_wait_forecast`;
CREATE TABLE `%s_undo_wait_forecast` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='undo �ȴ�����Ԥ���';

-- ----------------------------
-- Records of %s_undo_wait_forecast
-- ----------------------------

-- ----------------------------
-- Table structure for `%s_undo_wait_score`
-- ----------------------------
DROP TABLE IF EXISTS `%s_undo_wait_score`;
CREATE TABLE `%s_undo_wait_score` (
  `inst_id` int(11) NOT NULL,
  `snap_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`snap_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='undo �ȴ�������ֵ��';

-- ----------------------------
-- Records of %s_undo_wait_score
-- ----------------------------

-- ----------------------------
-- Table structure for `metric_threshold`
-- ----------------------------
DROP TABLE IF EXISTS `metric_threshold`;
CREATE TABLE `metric_threshold` (
  `inst_id` int(11) NOT NULL,
  `stat_name` varchar(64) NOT NULL,
  `stat_type` varchar(30) NOT NULL,
  `score_1` bigint(20) DEFAULT NULL,
  `score_2` bigint(20) DEFAULT NULL,
  `score_3` bigint(20) DEFAULT NULL,
  `score_4` bigint(20) DEFAULT NULL,
  `alert_level_1` bigint(20) DEFAULT NULL,
  `alert_level_2` bigint(20) DEFAULT NULL,
  `alert_level_3` bigint(20) DEFAULT NULL,
  `times` bigint(20) DEFAULT NULL,
  `commont` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`inst_id`,`stat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8 COMMENT='ָ����ֵ��';

-- ----------------------------
-- Records of metric_threshold
-- ----------------------------
INSERT INTO `metric_threshold` VALUES ('1', 'parse_cpu', 'parse', '0', '94962', '99960', '109956', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'parse_wait', 'parse', '0', '100', '300', '600', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'parse_hard', 'parse', '0', '5', '40', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'exec_wait', 'exec', '0', '50', '200', '1000', null, null, null, '1000', null);
INSERT INTO `metric_threshold` VALUES ('1', 'exec_time', 'exec', '0', '950', '1000', '1100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'pio_rtime', 'pio', '0', '10', '30', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'pio_wtime', 'pio', '0', '10', '30', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'pio_d_rtime', 'pio', '0', '15', '45', '150', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'pio_d_wtime', 'pio', '0', '15', '45', '150', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'pio_req_write', 'pio', '50', '30', '15', '10', null, null, null, '10', null);
INSERT INTO `metric_threshold` VALUES ('1', 'lio_wait', 'lio', '0', '50', '125', '100000', null, null, null, '100000', null);
INSERT INTO `metric_threshold` VALUES ('1', 'lio_ratio', 'lio', '100', '95', '90', '70', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'lio_cr', 'lio', '0', '2', '50', '1000', null, null, null, '10000', null);
INSERT INTO `metric_threshold` VALUES ('1', 'bc_idxsplit', 'bc', '0', '5', '20', '100', null, null, null, '10000', null);
INSERT INTO `metric_threshold` VALUES ('1', 'bc_ckpt', 'bc', '0', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'bc_lru', 'bc', '5', '10', '15', '50', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'bc_idxfp', 'bc', '0', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'bc_nowait', 'bc', '100', '95', '90', '70', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sp_cursor', 'sp', '0', '50', '80', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sp_dict', 'sp', '0', '10', '40', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sp_lca', 'sp', '0', '10', '40', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sp_lcratio', 'sp', '100', '95', '90', '70', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sp_ssparse', 'sp', '100', '95', '60', '0', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'redo_wait', 'redo', '0', '50', '1000', '10000', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'redo_lgsync', 'redo', '0', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'redo_lgwr', 'redo', '0', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'undo_expired', 'undo', '0', '1', '10', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'undo_wait', 'undo', '0', '50', '500', '3600', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'undo_rollback', 'undo', '0', '1', '50', '200', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sql_long', 'sql', '0', '10', '40', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sql_cpu', 'sql', '2', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'sql_io', 'sql', '2', '5', '20', '100', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'rac_busy', 'rac', '0', '50', '300', '800', null, null, null, '1', null);
INSERT INTO `metric_threshold` VALUES ('1', 'rac_ksxp', 'rac', '100', '1000', '2000', '5000', null, null, null, '1', null);

-- ----------------------------
-- Table structure for `table_map`
-- ----------------------------
DROP TABLE IF EXISTS `table_map`;
CREATE TABLE `table_map` (
  `tab_name` varchar(100) NOT NULL,
  `tab_type` varchar(20) DEFAULT NULL,
  `metric_name` varchar(100) DEFAULT NULL,
  `metric_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`tab_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='��ֵ���ϵӳ��';

-- ----------------------------
-- Records of table_map
-- ----------------------------
INSERT INTO `table_map` VALUES ('%s_score_dept', 'score_dept', '', null);
INSERT INTO `table_map` VALUES ('%s_score_gen_rule', 'score_gen_rule', '', null);
INSERT INTO `table_map` VALUES ('%s_score_db', 'score', 'score_db', '1');
INSERT INTO `table_map` VALUES ('%s_score_parse', 'score', 'score_parse', '2');
INSERT INTO `table_map` VALUES ('%s_parse_cpu_score', 'score', 'parse_cpu', '3');
INSERT INTO `table_map` VALUES ('%s_parse_wait_score', 'score', 'parse_wait', '3');
INSERT INTO `table_map` VALUES ('%s_parse_hard_score', 'score', 'parse_hard', '3');
INSERT INTO `table_map` VALUES ('%s_score_exec', 'score', 'score_exec', '2');
INSERT INTO `table_map` VALUES ('%s_exec_wait_score', 'score', 'exec_wait', '3');
INSERT INTO `table_map` VALUES ('%s_exec_time_score', 'score', 'exec_time', '3');
INSERT INTO `table_map` VALUES ('%s_score_pio', 'score', 'score_pio', '2');
INSERT INTO `table_map` VALUES ('%s_pio_rtime_score', 'score', 'pio_rtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_wtime_score', 'score', 'pio_wtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_d_rtime_score', 'score', 'pio_d_rtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_d_wtime_score', 'score', 'pio_d_wtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_req_write_score', 'score', 'pio_req_write', '3');
INSERT INTO `table_map` VALUES ('%s_score_lio', 'score', 'score_lio', '2');
INSERT INTO `table_map` VALUES ('%s_lio_wait_score', 'score', 'lio_wait', '3');
INSERT INTO `table_map` VALUES ('%s_lio_ratio_score', 'score', 'lio_ratio', '3');
INSERT INTO `table_map` VALUES ('%s_lio_cr_score', 'score', 'lio_cr', '3');
INSERT INTO `table_map` VALUES ('%s_score_bc', 'score', 'score_bc', '2');
INSERT INTO `table_map` VALUES ('%s_bc_idxsplit_score', 'score', 'bc_idxsplit', '3');
INSERT INTO `table_map` VALUES ('%s_bc_ckpt_score', 'score', 'bc_ckpt', '3');
INSERT INTO `table_map` VALUES ('%s_bc_lru_score', 'score', 'bc_lru', '3');
INSERT INTO `table_map` VALUES ('%s_bc_idxfp_score', 'score', 'bc_idxfp', '3');
INSERT INTO `table_map` VALUES ('%s_bc_nowait_score', 'score', 'bc_nowait', '3');
INSERT INTO `table_map` VALUES ('%s_score_sp', 'score', 'score_sp', '2');
INSERT INTO `table_map` VALUES ('%s_sp_cursor_score', 'score', 'sp_cursor', '3');
INSERT INTO `table_map` VALUES ('%s_sp_dict_score', 'score', 'sp_dict', '3');
INSERT INTO `table_map` VALUES ('%s_sp_lca_score', 'score', 'sp_lca', '3');
INSERT INTO `table_map` VALUES ('%s_sp_lcratio_score', 'score', 'sp_lcratio', '3');
INSERT INTO `table_map` VALUES ('%s_sp_ssparse_score', 'score', 'sp_ssparse', '3');
INSERT INTO `table_map` VALUES ('%s_score_redo', 'score', 'score_redo', '2');
INSERT INTO `table_map` VALUES ('%s_redo_wait_score', 'score', 'redo_wait', '3');
INSERT INTO `table_map` VALUES ('%s_redo_lgsync_score', 'score', 'redo_lgsync', '3');
INSERT INTO `table_map` VALUES ('%s_redo_lgwr_score', 'score', 'redo_lgwr', '3');
INSERT INTO `table_map` VALUES ('%s_score_undo', 'score', 'score_undo', '2');
INSERT INTO `table_map` VALUES ('%s_undo_expired_score', 'score', 'undo_expired', '3');
INSERT INTO `table_map` VALUES ('%s_undo_wait_score', 'score', 'undo_wait', '3');
INSERT INTO `table_map` VALUES ('%s_undo_rollback_score', 'score', 'undo_rollback', '3');
INSERT INTO `table_map` VALUES ('%s_score_sql', 'score', 'score_sql', '2');
INSERT INTO `table_map` VALUES ('%s_sql_long_score', 'score', 'sql_long', '3');
INSERT INTO `table_map` VALUES ('%s_sql_cpu_score', 'score', 'sql_cpu', '3');
INSERT INTO `table_map` VALUES ('%s_sql_io_score', 'score', 'sql_io', '3');
INSERT INTO `table_map` VALUES ('%s_score_rac', 'score', 'score_rac', '2');
INSERT INTO `table_map` VALUES ('%s_rac_ksxp_score', 'score', 'rac_ksxp', '3');
INSERT INTO `table_map` VALUES ('%s_rac_busy_score', 'score', 'rac_busy', '3');
INSERT INTO `table_map` VALUES ('%s_score_db_forecast', 'forecast', 'score_db', '1');
INSERT INTO `table_map` VALUES ('%s_score_parse_forecast', 'forecast', 'score_parse', '2');
INSERT INTO `table_map` VALUES ('%s_parse_cpu_forecast', 'forecast', 'parse_cpu', '3');
INSERT INTO `table_map` VALUES ('%s_parse_wait_forecast', 'forecast', 'parse_wait', '3');
INSERT INTO `table_map` VALUES ('%s_parse_hard_forecast', 'forecast', 'parse_hard', '3');
INSERT INTO `table_map` VALUES ('%s_score_exec_forecast', 'forecast', 'score_exec', '2');
INSERT INTO `table_map` VALUES ('%s_exec_wait_forecast', 'forecast', 'exec_wait', '3');
INSERT INTO `table_map` VALUES ('%s_exec_time_forecast', 'forecast', 'exec_time', '3');
INSERT INTO `table_map` VALUES ('%s_score_pio_forecast', 'forecast', 'score_pio', '2');
INSERT INTO `table_map` VALUES ('%s_pio_rtime_forecast', 'forecast', 'pio_rtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_wtime_forecast', 'forecast', 'pio_wtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_d_rtime_forecast', 'forecast', 'pio_d_rtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_d_wtime_forecast', 'forecast', 'pio_d_wtime', '3');
INSERT INTO `table_map` VALUES ('%s_pio_req_write_forecast', 'forecast', 'pio_req_write', '3');
INSERT INTO `table_map` VALUES ('%s_score_lio_forecast', 'forecast', 'score_lio', '2');
INSERT INTO `table_map` VALUES ('%s_lio_wait_forecast', 'forecast', 'lio_wait', '3');
INSERT INTO `table_map` VALUES ('%s_lio_ratio_forecast', 'forecast', 'lio_ratio', '3');
INSERT INTO `table_map` VALUES ('%s_lio_cr_forecast', 'forecast', 'lio_cr', '3');
INSERT INTO `table_map` VALUES ('%s_score_bc_forecast', 'forecast', 'score_bc', '2');
INSERT INTO `table_map` VALUES ('%s_bc_idxsplit_forecast', 'forecast', 'bc_idxsplit', '3');
INSERT INTO `table_map` VALUES ('%s_bc_ckpt_forecast', 'forecast', 'bc_ckpt', '3');
INSERT INTO `table_map` VALUES ('%s_bc_lru_forecast', 'forecast', 'bc_lru', '3');
INSERT INTO `table_map` VALUES ('%s_bc_idxfp_forecast', 'forecast', 'bc_idxfp', '3');
INSERT INTO `table_map` VALUES ('%s_bc_nowait_forecast', 'forecast', 'bc_nowait', '3');
INSERT INTO `table_map` VALUES ('%s_score_sp_forecast', 'forecast', 'score_sp', '2');
INSERT INTO `table_map` VALUES ('%s_sp_cursor_forecast', 'forecast', 'sp_cursor', '3');
INSERT INTO `table_map` VALUES ('%s_sp_dict_forecast', 'forecast', 'sp_dict', '3');
INSERT INTO `table_map` VALUES ('%s_sp_lca_forecast', 'forecast', 'sp_lca', '3');
INSERT INTO `table_map` VALUES ('%s_sp_lcratio_forecast', 'forecast', 'sp_lcratio', '3');
INSERT INTO `table_map` VALUES ('%s_sp_ssparse_forecast', 'forecast', 'sp_ssparse', '3');
INSERT INTO `table_map` VALUES ('%s_score_redo_forecast', 'forecast', 'score_redo', '2');
INSERT INTO `table_map` VALUES ('%s_redo_wait_forecast', 'forecast', 'redo_wait', '3');
INSERT INTO `table_map` VALUES ('%s_redo_lgsync_forecast', 'forecast', 'redo_lgsync', '3');
INSERT INTO `table_map` VALUES ('%s_redo_lgwr_forecast', 'forecast', 'redo_lgwr', '3');
INSERT INTO `table_map` VALUES ('%s_score_undo_forecast', 'forecast', 'score_undo', '2');
INSERT INTO `table_map` VALUES ('%s_undo_expired_forecast', 'forecast', 'undo_expired', '3');
INSERT INTO `table_map` VALUES ('%s_undo_wait_forecast', 'forecast', 'undo_wait', '3');
INSERT INTO `table_map` VALUES ('%s_undo_rollback_forecast', 'forecast', 'undo_rollback', '3');
INSERT INTO `table_map` VALUES ('%s_score_sql_forecast', 'forecast', 'score_sql', '2');
INSERT INTO `table_map` VALUES ('%s_sql_long_forecast', 'forecast', 'sql_long', '3');
INSERT INTO `table_map` VALUES ('%s_sql_cpu_forecast', 'forecast', 'sql_cpu', '3');
INSERT INTO `table_map` VALUES ('%s_sql_io_forecast', 'forecast', 'sql_io', '3');
INSERT INTO `table_map` VALUES ('%s_score_rac_forecast', 'forecast', 'score_rac', '2');
INSERT INTO `table_map` VALUES ('%s_rac_ksxp_forecast', 'forecast', 'rac_ksxp', '3');
INSERT INTO `table_map` VALUES ('%s_rac_busy_forecast', 'forecast', 'rac_busy', '3');
