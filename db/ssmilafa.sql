-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmilafa
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmilafa/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmilafa/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmilafa/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanzhuangtaishenqing`
--

DROP TABLE IF EXISTS `dingdanzhuangtaishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanzhuangtaishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `fuwudidian` varchar(200) DEFAULT NULL COMMENT '服务地点',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559581121 DEFAULT CHARSET=utf8 COMMENT='订单状态申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanzhuangtaishenqing`
--

LOCK TABLES `dingdanzhuangtaishenqing` WRITE;
/*!40000 ALTER TABLE `dingdanzhuangtaishenqing` DISABLE KEYS */;
INSERT INTO `dingdanzhuangtaishenqing` VALUES (151,'2021-01-25 07:02:50','订单号1','服务名称1','服务时间1','服务地点1','价格1','申请内容1','2021-01-25','是','',1),(152,'2021-01-25 07:02:50','订单号2','服务名称2','服务时间2','服务地点2','价格2','申请内容2','2021-01-25','是','',2),(153,'2021-01-25 07:02:50','订单号3','服务名称3','服务时间3','服务地点3','价格3','申请内容3','2021-01-25','是','',3),(154,'2021-01-25 07:02:50','订单号4','服务名称4','服务时间4','服务地点4','价格4','申请内容4','2021-01-25','是','',4),(155,'2021-01-25 07:02:50','订单号5','服务名称5','服务时间5','服务地点5','价格5','申请内容5','2021-01-25','是','',5),(156,'2021-01-25 07:02:50','订单号6','服务名称6','服务时间6','服务地点6','价格6','申请内容6','2021-01-25','是','',6),(1611559581120,'2021-01-25 07:26:20','1611559405761','地方官好地方','2021-01-25 15:23:38','发电工很反感','150','已完成','2021-01-25','是','已处理',11);
/*!40000 ALTER TABLE `dingdanzhuangtaishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiazhengfuwu`
--

DROP TABLE IF EXISTS `discussjiazhengfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='家政服务评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiazhengfuwu`
--

LOCK TABLES `discussjiazhengfuwu` WRITE;
/*!40000 ALTER TABLE `discussjiazhengfuwu` DISABLE KEYS */;
INSERT INTO `discussjiazhengfuwu` VALUES (201,'2021-01-25 07:02:50',1,1,'评论内容1','回复内容1'),(202,'2021-01-25 07:02:50',2,2,'评论内容2','回复内容2'),(203,'2021-01-25 07:02:50',3,3,'评论内容3','回复内容3'),(204,'2021-01-25 07:02:50',4,4,'评论内容4','回复内容4'),(205,'2021-01-25 07:02:50',5,5,'评论内容5','回复内容5'),(206,'2021-01-25 07:02:50',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiazhengfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiazhenggongsi`
--

DROP TABLE IF EXISTS `discussjiazhenggongsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiazhenggongsi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='家政公司评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiazhenggongsi`
--

LOCK TABLES `discussjiazhenggongsi` WRITE;
/*!40000 ALTER TABLE `discussjiazhenggongsi` DISABLE KEYS */;
INSERT INTO `discussjiazhenggongsi` VALUES (191,'2021-01-25 07:02:50',1,1,'评论内容1','回复内容1'),(192,'2021-01-25 07:02:50',2,2,'评论内容2','回复内容2'),(193,'2021-01-25 07:02:50',3,3,'评论内容3','回复内容3'),(194,'2021-01-25 07:02:50',4,4,'评论内容4','回复内容4'),(195,'2021-01-25 07:02:50',5,5,'评论内容5','回复内容5'),(196,'2021-01-25 07:02:50',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiazhenggongsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwudingdan`
--

DROP TABLE IF EXISTS `fuwudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `fuwudidian` varchar(200) DEFAULT NULL COMMENT '服务地点',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559513373 DEFAULT CHARSET=utf8 COMMENT='服务订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwudingdan`
--

LOCK TABLES `fuwudingdan` WRITE;
/*!40000 ALTER TABLE `fuwudingdan` DISABLE KEYS */;
INSERT INTO `fuwudingdan` VALUES (131,'2021-01-25 07:02:50','订单号1','服务名称1','服务时间1','服务地点1','价格1','用户名1','手机1','公司编号1','公司名称1','备注1','是',''),(132,'2021-01-25 07:02:50','订单号2','服务名称2','服务时间2','服务地点2','价格2','用户名2','手机2','公司编号2','公司名称2','备注2','是',''),(133,'2021-01-25 07:02:50','订单号3','服务名称3','服务时间3','服务地点3','价格3','用户名3','手机3','公司编号3','公司名称3','备注3','是',''),(134,'2021-01-25 07:02:50','订单号4','服务名称4','服务时间4','服务地点4','价格4','用户名4','手机4','公司编号4','公司名称4','备注4','是',''),(135,'2021-01-25 07:02:50','订单号5','服务名称5','服务时间5','服务地点5','价格5','用户名5','手机5','公司编号5','公司名称5','备注5','是',''),(136,'2021-01-25 07:02:50','订单号6','服务名称6','服务时间6','服务地点6','价格6','用户名6','手机6','公司编号6','公司名称6','备注6','是',''),(1611559513372,'2021-01-25 07:25:13','1611559405761','地方官好地方','2021-01-25 15:23:38','发电工很反感','150','123','13566998877','345','公司名称1','发的很过分很过分','是','好发过的回复大概h');
/*!40000 ALTER TABLE `fuwudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwufenlei`
--

DROP TABLE IF EXISTS `fuwufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='服务分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwufenlei`
--

LOCK TABLES `fuwufenlei` WRITE;
/*!40000 ALTER TABLE `fuwufenlei` DISABLE KEYS */;
INSERT INTO `fuwufenlei` VALUES (111,'2021-01-25 07:02:50','服务类型1'),(112,'2021-01-25 07:02:50','服务类型2'),(113,'2021-01-25 07:02:50','服务类型3'),(114,'2021-01-25 07:02:50','服务类型4'),(115,'2021-01-25 07:02:50','服务类型5'),(116,'2021-01-25 07:02:50','服务类型6');
/*!40000 ALTER TABLE `fuwufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hudongjiaoliu`
--

DROP TABLE IF EXISTS `hudongjiaoliu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hudongjiaoliu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `neirong` longtext COMMENT '内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559542788 DEFAULT CHARSET=utf8 COMMENT='互动交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hudongjiaoliu`
--

LOCK TABLES `hudongjiaoliu` WRITE;
/*!40000 ALTER TABLE `hudongjiaoliu` DISABLE KEYS */;
INSERT INTO `hudongjiaoliu` VALUES (141,'2021-01-25 07:02:50','公司编号1','公司名称1','内容1','用户名1','姓名1'),(142,'2021-01-25 07:02:50','公司编号2','公司名称2','内容2','用户名2','姓名2'),(143,'2021-01-25 07:02:50','公司编号3','公司名称3','内容3','用户名3','姓名3'),(144,'2021-01-25 07:02:50','公司编号4','公司名称4','内容4','用户名4','姓名4'),(145,'2021-01-25 07:02:50','公司编号5','公司名称5','内容5','用户名5','姓名5'),(146,'2021-01-25 07:02:50','公司编号6','公司名称6','内容6','用户名6','姓名6'),(1611559542787,'2021-01-25 07:25:42','345','公司名称1','地方官和发过的很反感的','123','姓名1');
/*!40000 ALTER TABLE `hudongjiaoliu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhengfuwu`
--

DROP TABLE IF EXISTS `jiazhengfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwushijian` datetime DEFAULT NULL COMMENT '服务时间',
  `fuwudidian` varchar(200) DEFAULT NULL COMMENT '服务地点',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fuwuneirong` longtext COMMENT '服务内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559321300 DEFAULT CHARSET=utf8 COMMENT='家政服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhengfuwu`
--

LOCK TABLES `jiazhengfuwu` WRITE;
/*!40000 ALTER TABLE `jiazhengfuwu` DISABLE KEYS */;
INSERT INTO `jiazhengfuwu` VALUES (121,'2021-01-25 07:02:50','订单号1','服务名称1','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian1.jpg','服务类型1','2021-01-25 15:02:50','服务地点1','价格1','用户名1','手机1','服务内容1','是',''),(122,'2021-01-25 07:02:50','订单号2','服务名称2','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian2.jpg','服务类型2','2021-01-25 15:02:50','服务地点2','价格2','用户名2','手机2','服务内容2','是',''),(123,'2021-01-25 07:02:50','订单号3','服务名称3','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian3.jpg','服务类型3','2021-01-25 15:02:50','服务地点3','价格3','用户名3','手机3','服务内容3','是',''),(124,'2021-01-25 07:02:50','订单号4','服务名称4','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian4.jpg','服务类型4','2021-01-25 15:02:50','服务地点4','价格4','用户名4','手机4','服务内容4','是',''),(125,'2021-01-25 07:02:50','订单号5','服务名称5','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian5.jpg','服务类型5','2021-01-25 15:02:50','服务地点5','价格5','用户名5','手机5','服务内容5','是',''),(126,'2021-01-25 07:02:50','订单号6','服务名称6','http://localhost:8080/ssmilafa/upload/jiazhengfuwu_tupian6.jpg','服务类型6','2021-01-25 15:02:50','服务地点6','价格6','用户名6','手机6','服务内容6','是',''),(1611559321299,'2021-01-25 07:22:00','1611559405761','地方官好地方','http://localhost:8080/ssmilafa/upload/1611559300986.jpg','服务类型1','2021-01-25 15:23:38','发电工很反感','150','123','13566998877','<p>发电工花费更多花费更多回复大概</p><p> 花费更多很反感回复大概</p><p>发电工回复大概花费更多</p><p>地方官花费更多回复</p><p><br></p>','是','要管理员或审核通过才会在前台展示');
/*!40000 ALTER TABLE `jiazhengfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhenggongsi`
--

DROP TABLE IF EXISTS `jiazhenggongsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhenggongsi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fuwuzongzhi` longtext COMMENT '服务宗旨',
  `fuwuneirong` longtext COMMENT '服务内容',
  `gongsiwenhua` longtext COMMENT '公司文化',
  `gongsijianjie` longtext COMMENT '公司简介',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongsibianhao` (`gongsibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='家政公司';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhenggongsi`
--

LOCK TABLES `jiazhenggongsi` WRITE;
/*!40000 ALTER TABLE `jiazhenggongsi` DISABLE KEYS */;
INSERT INTO `jiazhenggongsi` VALUES (21,'2021-01-25 07:02:49','345','345','公司名称1','13823888881','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian1.jpg','服务宗旨1发给尽管发货j','服务内容1发过火金刚护法jgfh','公司文化1 挂号费尽管发货金刚护法','<p>公司简介1发过火金刚护法积分工会</p><p><br></p>','是',''),(22,'2021-01-25 07:02:49','家政公司2','123456','公司名称2','13823888882','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian2.jpg','服务宗旨2','服务内容2','公司文化2','公司简介2','是',''),(23,'2021-01-25 07:02:49','家政公司3','123456','公司名称3','13823888883','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian3.jpg','服务宗旨3','服务内容3','公司文化3','公司简介3','是',''),(24,'2021-01-25 07:02:49','家政公司4','123456','公司名称4','13823888884','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian4.jpg','服务宗旨4','服务内容4','公司文化4','公司简介4','是',''),(25,'2021-01-25 07:02:49','家政公司5','123456','公司名称5','13823888885','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian5.jpg','服务宗旨5','服务内容5','公司文化5','公司简介5','是',''),(26,'2021-01-25 07:02:49','家政公司6','123456','公司名称6','13823888886','http://localhost:8080/ssmilafa/upload/jiazhenggongsi_tupian6.jpg','服务宗旨6','服务内容6','公司文化6','公司简介6','是','');
/*!40000 ALTER TABLE `jiazhenggongsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhenggongsichongzhi`
--

DROP TABLE IF EXISTS `jiazhenggongsichongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhenggongsichongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `chongzhijine` varchar(200) DEFAULT NULL COMMENT '充值金额',
  `chongzhiriqi` date DEFAULT NULL COMMENT '充值日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559359265 DEFAULT CHARSET=utf8 COMMENT='家政公司充值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhenggongsichongzhi`
--

LOCK TABLES `jiazhenggongsichongzhi` WRITE;
/*!40000 ALTER TABLE `jiazhenggongsichongzhi` DISABLE KEYS */;
INSERT INTO `jiazhenggongsichongzhi` VALUES (61,'2021-01-25 07:02:50','公司编号1','公司名称1','充值金额1','2021-01-25','是','','未支付'),(62,'2021-01-25 07:02:50','公司编号2','公司名称2','充值金额2','2021-01-25','是','','未支付'),(63,'2021-01-25 07:02:50','公司编号3','公司名称3','充值金额3','2021-01-25','是','','未支付'),(64,'2021-01-25 07:02:50','公司编号4','公司名称4','充值金额4','2021-01-25','是','','未支付'),(65,'2021-01-25 07:02:50','公司编号5','公司名称5','充值金额5','2021-01-25','是','','未支付'),(66,'2021-01-25 07:02:50','公司编号6','公司名称6','充值金额6','2021-01-25','是','','未支付'),(1611559359264,'2021-01-25 07:22:38','345','公司名称1','1000','2021-01-25','否','','已支付');
/*!40000 ALTER TABLE `jiazhenggongsichongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhenggongsizhanghu`
--

DROP TABLE IF EXISTS `jiazhenggongsizhanghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhenggongsizhanghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559621619 DEFAULT CHARSET=utf8 COMMENT='家政公司账户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhenggongsizhanghu`
--

LOCK TABLES `jiazhenggongsizhanghu` WRITE;
/*!40000 ALTER TABLE `jiazhenggongsizhanghu` DISABLE KEYS */;
INSERT INTO `jiazhenggongsizhanghu` VALUES (71,'2021-01-25 07:02:50','公司编号1','公司名称1','金额1','备注1'),(72,'2021-01-25 07:02:50','公司编号2','公司名称2','金额2','备注2'),(73,'2021-01-25 07:02:50','公司编号3','公司名称3','金额3','备注3'),(74,'2021-01-25 07:02:50','公司编号4','公司名称4','金额4','备注4'),(75,'2021-01-25 07:02:50','公司编号5','公司名称5','金额5','备注5'),(76,'2021-01-25 07:02:50','公司编号6','公司名称6','金额6','备注6'),(1611559621618,'2021-01-25 07:27:01','345','公司名称1','1150','');
/*!40000 ALTER TABLE `jiazhenggongsizhanghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhenggongsizijinkoujian`
--

DROP TABLE IF EXISTS `jiazhenggongsizijinkoujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhenggongsizijinkoujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `koujianyuanyin` longtext COMMENT '扣减原因',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='家政公司资金扣减';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhenggongsizijinkoujian`
--

LOCK TABLES `jiazhenggongsizijinkoujian` WRITE;
/*!40000 ALTER TABLE `jiazhenggongsizijinkoujian` DISABLE KEYS */;
INSERT INTO `jiazhenggongsizijinkoujian` VALUES (81,'2021-01-25 07:02:50','公司编号1','公司名称1','金额1','扣减原因1','2021-01-25'),(82,'2021-01-25 07:02:50','公司编号2','公司名称2','金额2','扣减原因2','2021-01-25'),(83,'2021-01-25 07:02:50','公司编号3','公司名称3','金额3','扣减原因3','2021-01-25'),(84,'2021-01-25 07:02:50','公司编号4','公司名称4','金额4','扣减原因4','2021-01-25'),(85,'2021-01-25 07:02:50','公司编号5','公司名称5','金额5','扣减原因5','2021-01-25'),(86,'2021-01-25 07:02:50','公司编号6','公司名称6','金额6','扣减原因6','2021-01-25');
/*!40000 ALTER TABLE `jiazhenggongsizijinkoujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhenggongsizijinruzhang`
--

DROP TABLE IF EXISTS `jiazhenggongsizijinruzhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhenggongsizijinruzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsibianhao` varchar(200) DEFAULT NULL COMMENT '公司编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `ruzhangyuanyin` varchar(200) DEFAULT NULL COMMENT '入账原因',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559657006 DEFAULT CHARSET=utf8 COMMENT='家政公司资金入账';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhenggongsizijinruzhang`
--

LOCK TABLES `jiazhenggongsizijinruzhang` WRITE;
/*!40000 ALTER TABLE `jiazhenggongsizijinruzhang` DISABLE KEYS */;
INSERT INTO `jiazhenggongsizijinruzhang` VALUES (91,'2021-01-25 07:02:50','公司编号1','公司名称1','金额1','入账原因1','2021-01-25'),(92,'2021-01-25 07:02:50','公司编号2','公司名称2','金额2','入账原因2','2021-01-25'),(93,'2021-01-25 07:02:50','公司编号3','公司名称3','金额3','入账原因3','2021-01-25'),(94,'2021-01-25 07:02:50','公司编号4','公司名称4','金额4','入账原因4','2021-01-25'),(95,'2021-01-25 07:02:50','公司编号5','公司名称5','金额5','入账原因5','2021-01-25'),(96,'2021-01-25 07:02:50','公司编号6','公司名称6','金额6','入账原因6','2021-01-25'),(1611559642669,'2021-01-25 07:27:21','345','公司名称1','1000','充值','2021-01-25'),(1611559657005,'2021-01-25 07:27:36','345','公司名称1','150','订单结算','2021-01-25');
/*!40000 ALTER TABLE `jiazhenggongsizijinruzhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (181,'2021-01-25 07:02:50',1,'用户名1','留言内容1','回复内容1'),(182,'2021-01-25 07:02:50',2,'用户名2','留言内容2','回复内容2'),(183,'2021-01-25 07:02:50',3,'用户名3','留言内容3','回复内容3'),(184,'2021-01-25 07:02:50',4,'用户名4','留言内容4','回复内容4'),(185,'2021-01-25 07:02:50',5,'用户名5','留言内容5','回复内容5'),(186,'2021-01-25 07:02:50',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='网站公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (171,'2021-01-25 07:02:50','标题1','简介1','http://localhost:8080/ssmilafa/upload/news_picture1.jpg','内容1'),(172,'2021-01-25 07:02:50','标题2','简介2','http://localhost:8080/ssmilafa/upload/news_picture2.jpg','内容2'),(173,'2021-01-25 07:02:50','标题3','简介3','http://localhost:8080/ssmilafa/upload/news_picture3.jpg','内容3'),(174,'2021-01-25 07:02:50','标题4','简介4','http://localhost:8080/ssmilafa/upload/news_picture4.jpg','内容4'),(175,'2021-01-25 07:02:50','标题5','简介5','http://localhost:8080/ssmilafa/upload/news_picture5.jpg','内容5'),(176,'2021-01-25 07:02:50','标题6','简介6','http://localhost:8080/ssmilafa/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jzqi2qh89e2nnouyke80yu2mvhkgsq7j','2021-01-25 07:20:07','2021-01-25 08:26:38'),(2,11,'123','yonghu','用户','q9zggiduv85mggryjtmtje2h6mk22pq3','2021-01-25 07:21:21','2021-01-25 08:28:32'),(3,21,'345','jiazhenggongsi','家政公司','vbanj7xw04ww61xzfiwujsyg3ci54mig','2021-01-25 07:22:18','2021-01-25 08:28:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-25 07:02:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-25 07:02:49','123','123','姓名1','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-01-25 07:02:49','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-01-25 07:02:49','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-01-25 07:02:49','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-01-25 07:02:49','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-01-25 07:02:49','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuchongzhi`
--

DROP TABLE IF EXISTS `yonghuchongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuchongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongzhijine` varchar(200) DEFAULT NULL COMMENT '充值金额',
  `chongzhiriqi` date DEFAULT NULL COMMENT '充值日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='用户充值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuchongzhi`
--

LOCK TABLES `yonghuchongzhi` WRITE;
/*!40000 ALTER TABLE `yonghuchongzhi` DISABLE KEYS */;
INSERT INTO `yonghuchongzhi` VALUES (101,'2021-01-25 07:02:50','用户名1','姓名1','充值金额1','2021-01-25','是','','未支付'),(102,'2021-01-25 07:02:50','用户名2','姓名2','充值金额2','2021-01-25','是','','未支付'),(103,'2021-01-25 07:02:50','用户名3','姓名3','充值金额3','2021-01-25','是','','未支付'),(104,'2021-01-25 07:02:50','用户名4','姓名4','充值金额4','2021-01-25','是','','未支付'),(105,'2021-01-25 07:02:50','用户名5','姓名5','充值金额5','2021-01-25','是','','未支付'),(106,'2021-01-25 07:02:50','用户名6','姓名6','充值金额6','2021-01-25','是','','未支付');
/*!40000 ALTER TABLE `yonghuchongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuzijinkoujian`
--

DROP TABLE IF EXISTS `yonghuzijinkoujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuzijinkoujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `koujianyuanyin` longtext COMMENT '扣减原因',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611559461411 DEFAULT CHARSET=utf8 COMMENT='用户资金扣减';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuzijinkoujian`
--

LOCK TABLES `yonghuzijinkoujian` WRITE;
/*!40000 ALTER TABLE `yonghuzijinkoujian` DISABLE KEYS */;
INSERT INTO `yonghuzijinkoujian` VALUES (41,'2021-01-25 07:02:49','用户名1','姓名1','金额1','扣减原因1','2021-01-25'),(42,'2021-01-25 07:02:49','用户名2','姓名2','金额2','扣减原因2','2021-01-25'),(43,'2021-01-25 07:02:49','用户名3','姓名3','金额3','扣减原因3','2021-01-25'),(44,'2021-01-25 07:02:49','用户名4','姓名4','金额4','扣减原因4','2021-01-25'),(45,'2021-01-25 07:02:49','用户名5','姓名5','金额5','扣减原因5','2021-01-25'),(46,'2021-01-25 07:02:49','用户名6','姓名6','金额6','扣减原因6','2021-01-25'),(1611559461410,'2021-01-25 07:24:20','123','123','150','发布家政服务','2021-01-25');
/*!40000 ALTER TABLE `yonghuzijinkoujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuzijinruzhang`
--

DROP TABLE IF EXISTS `yonghuzijinruzhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuzijinruzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `ruzhangyuanyin` varchar(200) DEFAULT NULL COMMENT '入账原因',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户资金入账';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuzijinruzhang`
--

LOCK TABLES `yonghuzijinruzhang` WRITE;
/*!40000 ALTER TABLE `yonghuzijinruzhang` DISABLE KEYS */;
INSERT INTO `yonghuzijinruzhang` VALUES (51,'2021-01-25 07:02:50','123','姓名1','2000','充值','2021-01-25'),(52,'2021-01-25 07:02:50','用户名2','姓名2','金额2','入账原因2','2021-01-25'),(53,'2021-01-25 07:02:50','用户名3','姓名3','金额3','入账原因3','2021-01-25'),(54,'2021-01-25 07:02:50','用户名4','姓名4','金额4','入账原因4','2021-01-25'),(55,'2021-01-25 07:02:50','用户名5','姓名5','金额5','入账原因5','2021-01-25'),(56,'2021-01-25 07:02:50','用户名6','姓名6','金额6','入账原因6','2021-01-25');
/*!40000 ALTER TABLE `yonghuzijinruzhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuzijinzhanghu`
--

DROP TABLE IF EXISTS `yonghuzijinzhanghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuzijinzhanghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户资金账户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuzijinzhanghu`
--

LOCK TABLES `yonghuzijinzhanghu` WRITE;
/*!40000 ALTER TABLE `yonghuzijinzhanghu` DISABLE KEYS */;
INSERT INTO `yonghuzijinzhanghu` VALUES (31,'2021-01-25 07:02:49','123','123','1850','备注1'),(32,'2021-01-25 07:02:49','用户名2','姓名2','金额2','备注2'),(33,'2021-01-25 07:02:49','用户名3','姓名3','金额3','备注3'),(34,'2021-01-25 07:02:49','用户名4','姓名4','金额4','备注4'),(35,'2021-01-25 07:02:49','用户名5','姓名5','金额5','备注5'),(36,'2021-01-25 07:02:49','用户名6','姓名6','金额6','备注6');
/*!40000 ALTER TABLE `yonghuzijinzhanghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 20:41:13
