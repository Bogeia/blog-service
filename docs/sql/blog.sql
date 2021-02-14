/*
 Navicat Premium Data Transfer

 Source Server         : docker
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 127.0.0.1:3306
 Source Schema         : blog_service

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 14/02/2021 01:39:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
                                `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                `title` varchar(100) DEFAULT '' COMMENT '文章标题',
                                `desc` varchar(255) DEFAULT '' COMMENT '文章简述',
                                `cover_image_url` varchar(255) DEFAULT '' COMMENT '封面图片地址',
                                `content` longtext COMMENT '文章内容',
                                `ctime` time DEFAULT '00:00:00' COMMENT '新建时间',
                                `created` varchar(100) DEFAULT '' COMMENT '创建人',
                                `utime` time DEFAULT '00:00:00' COMMENT '修改时间',
                                `modified` varchar(100) DEFAULT '' COMMENT '修改人',
                                `dtime` time DEFAULT '00:00:00' COMMENT '删除时间',
                                `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否删除 0为未删除、1为已删除',
                                `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章管理';

-- ----------------------------
-- Table structure for blog_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tag`;
CREATE TABLE `blog_article_tag` (
                                    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                    `article_id` int(11) NOT NULL COMMENT '文章ID',
                                    `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标签ID',
                                    `ctime` time DEFAULT '00:00:00' COMMENT '创建时间',
                                    `created` varchar(100) DEFAULT '' COMMENT '创建人',
                                    `utime` time DEFAULT '00:00:00' COMMENT '修改时间',
                                    `modified` varchar(100) DEFAULT '' COMMENT '修改人',
                                    `dtime` time DEFAULT '00:00:00' COMMENT '删除时间',
                                    `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否删除 0为未删除、1为已删除',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章标签关联';

-- ----------------------------
-- Table structure for blog_auth
-- ----------------------------
DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE `blog_auth` (
                             `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                             `app_key` varchar(20) DEFAULT '' COMMENT 'Key',
                             `app_secret` varchar(50) DEFAULT '' COMMENT 'Secret',
                             `ctime` time DEFAULT '00:00:00' COMMENT '新建时间',
                             `created` varchar(100) DEFAULT '' COMMENT '创建人',
                             `utime` time DEFAULT '00:00:00' COMMENT '修改时间',
                             `modified` varchar(100) DEFAULT '' COMMENT '修改人',
                             `dtime` time DEFAULT '00:00:00' COMMENT '删除时间',
                             `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否删除 0为未删除、1为已删除',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='认证管理';

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
                            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                            `name` varchar(100) DEFAULT '' COMMENT '标签名称',
                            `ctime` time DEFAULT '00:00:00' COMMENT '创建时间',
                            `created` varchar(100) DEFAULT '' COMMENT '创建人',
                            `modified` time DEFAULT '00:00:00' COMMENT '修改时间',
                            `utime` varchar(100) DEFAULT '' COMMENT '修改人',
                            `dtime` time DEFAULT '00:00:00' COMMENT '删除时间',
                            `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否删除 0为未删除、1为已删除',
                            `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签管理';

SET FOREIGN_KEY_CHECKS = 1;
