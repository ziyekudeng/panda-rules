/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : report

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 08/12/2021 17:39:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_ca_business_line
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_business_line`;
CREATE TABLE `t_ca_business_line`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `business_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务线代码',
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务线名称',
  `business_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务线备注',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_decision_variable
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_decision_variable`;
CREATE TABLE `t_ca_decision_variable`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `variable_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `decision_variable_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '决策变量名称',
  `variable_type` smallint(255) NULL DEFAULT NULL COMMENT '变量类型（1-字符串；2-整数；3-布尔；4-浮点数；5-日期；6-时间；7-数组；8-枚举值）',
  `enum_data_range` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '枚举值的数据范围',
  `variable_length` int(11) NULL DEFAULT NULL COMMENT '变量的长度',
  `decision_variable_default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变量类别(1-系统内置；2-自定义)',
  `param_source` smallint(255) NULL DEFAULT NULL COMMENT '决策变量默认值',
  `variable_category` smallint(255) NOT NULL COMMENT '数据来源',
  `decision_variable_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '决策变量备注',
  `business_id` bigint(11) NULL DEFAULT NULL,
  `business_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务线代码',
  `decision_variable_flag` smallint(255) NULL DEFAULT NULL COMMENT '是否是决策变量（0-否；1-是）',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_rule_list
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_rule_list`;
CREATE TABLE `t_ca_rule_list`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `rule_list_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则集代码',
  `rule_list_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则集名称',
  `business_id` bigint(11) NULL DEFAULT NULL,
  `rule_list_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则集备注',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_rule_list_mapping
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_rule_list_mapping`;
CREATE TABLE `t_ca_rule_list_mapping`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `rule_list_id` bigint(20) NULL DEFAULT NULL,
  `rule_id` bigint(20) NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT NULL COMMENT '同一个规则集下的规则ID的排序',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_rule_tree
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_rule_tree`;
CREATE TABLE `t_ca_rule_tree`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `rule_tree_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '决策树代码',
  `rule_tree_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则集名称',
  `business_id` int(11) NULL DEFAULT NULL,
  `rule_tree_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '决策树备注',
  `root_rule_node_id` int(11) NULL DEFAULT NULL COMMENT '根节点的节点ID',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_rule_tree_mapping
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_rule_tree_mapping`;
CREATE TABLE `t_ca_rule_tree_mapping`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `source_node_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '源节点的nodeID，前端页面自动生成的',
  `target_node_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标节点的nodeID，前端页面自动生成的',
  `tree_id` bigint(11) NULL DEFAULT NULL,
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_rule_tree_node
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_rule_tree_node`;
CREATE TABLE `t_ca_rule_tree_node`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '该节点的名字',
  `node_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '该节点的类型（规则，规则集，判断条件）',
  `node_rule_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `node_id` bigint(20) NULL DEFAULT NULL COMMENT '该节点的nodeID，前端页面自动生成的',
  `node_x_coordinate` int(255) NULL DEFAULT NULL COMMENT '该节点的x坐标',
  `node_y_coordinate` int(255) NULL DEFAULT NULL COMMENT '该节点的y坐标',
  `node_icon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '该节点的icon名称',
  `node_is_left_connect_show` smallint(255) NULL DEFAULT NULL COMMENT '该节点是否上方有连线（0：否，1：是）',
  `node_is_right_connect_show` smallint(255) NULL DEFAULT NULL COMMENT '该节点是否下方有连线（0：否，1：是）',
  `judgement_condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '判断条件（同规则的表达式）',
  `tree_id` bigint(20) NULL DEFAULT NULL,
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_sequence
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_sequence`;
CREATE TABLE `t_ca_sequence`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编号',
  `seq` int(255) NULL DEFAULT NULL COMMENT '序号',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ca_single_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_ca_single_rule`;
CREATE TABLE `t_ca_single_rule`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `business_id` bigint(20) NULL DEFAULT NULL,
  `rule_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则代码',
  `rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则备注',
  `rule_category` smallint(255) NULL DEFAULT NULL COMMENT '规则类别(1-系统内置；2-自定义)',
  `out_put_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '输出项代码',
  `out_put_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '输出项名称',
  `out_put_type` smallint(255) NULL DEFAULT NULL COMMENT '输出类型（1-字符串；2-整数；3-布尔；4-浮点数；5-日期；6-时间；7-数组；8-枚举值）',
  `out_put_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '输出结果的格式（输出类型是4浮点数的时候，显示的是小数位数；输出类型是5日期或者6时间的时候，显示的是日期的format）',
  `conditional_expression` smallint(255) NULL DEFAULT NULL COMMENT '是否是条件表达式（1：是条件表达式，0：不是条件表达式）',
  `single_value_operation` smallint(255) NULL DEFAULT NULL,
  `show_rule_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_rule_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(255) NULL DEFAULT NULL COMMENT '状态位（1：启用，0：停用）',
  `modified_time` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `delete_flag` smallint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识（1:正常状态，0:删除状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
