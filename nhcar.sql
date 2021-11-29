/*
MySQL Data Transfer
Source Host: localhost
Source Database: nhcar
Target Host: localhost
Target Database: nhcar
Date: 30/12/2020 18:47:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(10) NOT NULL,
  `apwd` varchar(20) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cpid` int(11) NOT NULL,
  `cnum` int(11) NOT NULL,
  `cuid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `clogo` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for items
-- ----------------------------
CREATE TABLE `items` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `ipid` int(11) NOT NULL,
  `iprice` decimal(12,2) NOT NULL,
  `inum` int(11) NOT NULL,
  `ioid` int(11) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for message
-- ----------------------------
CREATE TABLE `message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(50) NOT NULL,
  `mtitle` varchar(50) NOT NULL,
  `mcontent` varchar(500) NOT NULL,
  `msex` int(11) NOT NULL,
  `mcars1` int(11) NOT NULL,
  `mcars2` int(11) NOT NULL,
  `mcars3` int(11) NOT NULL,
  `mcars4` int(11) NOT NULL,
  `mpro` int(11) NOT NULL,
  `mdate` date NOT NULL,
  `mreplydate` date DEFAULT NULL,
  `mreplycontent` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(30) NOT NULL,
  `nfrom` varchar(50) NOT NULL,
  `ndesc` varchar(100) NOT NULL,
  `ncontent` varchar(1000) NOT NULL,
  `ndate` date NOT NULL,
  `naid` int(11) NOT NULL,
  `nhit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `oname` varchar(30) COLLATE utf8_bin NOT NULL,
  `oaddress` varchar(100) COLLATE utf8_bin NOT NULL,
  `otel` varchar(50) COLLATE utf8_bin NOT NULL,
  `oremark` varchar(300) COLLATE utf8_bin NOT NULL,
  `odate` datetime NOT NULL,
  `ostate` int(11) NOT NULL DEFAULT '0',
  `ototal` decimal(12,2) NOT NULL,
  `ouid` int(11) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for product
-- ----------------------------
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `pcid` int(11) NOT NULL,
  `pdate` date NOT NULL,
  `ppic1` varchar(50) NOT NULL,
  `ppic2` varchar(50) NOT NULL,
  `pcontent` varchar(500) NOT NULL,
  `phot` int(11) NOT NULL,
  `pnew` int(11) NOT NULL,
  `pgood` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` char(50) NOT NULL,
  `upwd` char(50) NOT NULL,
  `uemail` char(50) NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'lemon', '123456');
INSERT INTO `admin` VALUES ('2', 'Amon', '123456');
INSERT INTO `admin` VALUES ('3', 'AzikEggers', '114');
INSERT INTO `cart` VALUES ('1', '1', '1', '4');
INSERT INTO `cart` VALUES ('2', '3', '2', '4');
INSERT INTO `cart` VALUES ('7', '4', '1', '5');
INSERT INTO `cart` VALUES ('8', '3', '5', '5');
INSERT INTO `category` VALUES ('1', '宝马', '7ad0a1e3-cc41-4c8a-b857-c13e9568d70b.png');
INSERT INTO `category` VALUES ('2', '奥迪', 'c55796de-c530-4657-a9b2-6bbc0e8c96f6.png');
INSERT INTO `category` VALUES ('4', '丰田', 'adf89bcf-c385-47da-9a99-73de58a5a842.png');
INSERT INTO `category` VALUES ('5', '测试', 'd2453db6-fee9-4db1-9320-2b44605ab8b7.png');
INSERT INTO `category` VALUES ('6', '东风', '6819a9dd-d61a-4c3d-860e-8004d873b9df.png');
INSERT INTO `message` VALUES ('1', '哈哈剑', 'sb', '123', '1', '1', '0', '0', '0', '2', '2020-10-22', '2020-10-23', '哈哈哈哈哈');
INSERT INTO `message` VALUES ('2', '是非得失', '翻山倒海', '大萨达', '0', '1', '0', '1', '0', '3', '2020-10-22', null, null);
INSERT INTO `message` VALUES ('3', '吉他', '音乐play', '五音谱：', '1', '1', '0', '0', '0', '4', '2020-10-23', '2020-10-23', '离谱');
INSERT INTO `message` VALUES ('4', '多少度撒撒旦sad', '打算的撒打算打算的打算现在', '大事项做出多少个梵蒂冈范德萨', '1', '0', '1', '1', '0', '1', '2020-10-23', null, null);
INSERT INTO `message` VALUES ('5', '外星人', '愚蠢的地球人', '愚蠢的地球人', '1', '0', '1', '0', '0', '1', '2020-10-29', null, null);
INSERT INTO `message` VALUES ('6', 'ggg', 'ggg', '&lt;script&gt;alter(\"你好\");&lt;/script&gt;', '1', '1', '0', '0', '0', '2', '2020-11-26', null, null);
INSERT INTO `message` VALUES ('7', '&lt;script&gt;alter(\"你好\");&lt;/script&gt;', '&lt;script&gt;alter(\"你好\");&lt;/script&gt;', '&lt;script&gt;alter(\"你好\");&lt;/script&gt;', '1', '1', '0', '0', '0', '1', '2020-11-26', null, null);
INSERT INTO `news` VALUES ('1', '测试', '南华汽车网', '测试', '测试', '2020-10-30', '1', '4');
INSERT INTO `news` VALUES ('2', '123', '南华汽车网', '123', '123', '2020-11-05', '1', '1');
INSERT INTO `news` VALUES ('3', '日光浴', '阿兹克·艾格斯', '<不想晒黑>心情下降up', '<p>\r\n	我不喜欢，因为会晒黑，他沉默的看着你捏着他的手解释道，这个<span style=\"color:#00ffff;\">肤色</span>&hellip;&hellip;是遗传。会晒黑。（他从衣兜里拿出拜朗帝国的防晒油，递给你。）</p>\r\n', '2020-11-05', '3', '1');
INSERT INTO `news` VALUES ('4', '钓海豹', '阿兹克·艾格斯', '听说虎鲸喜欢狩猎海豹，他沉吟了一会儿，羽蛇也喜欢。', '<p>\r\n	听说虎鲸喜欢狩猎海豹，他沉吟了一会儿，羽蛇也喜欢。</p>\r\n', '2020-11-05', '3', '0');
INSERT INTO `news` VALUES ('5', '008', '阿兹克·艾格斯', '唯一性', '<p>\r\n	那件0级封印物会一直尝试写死自己的主人，这应该是它的本质，不会改变。</p>\r\n', '2020-11-12', '1', '0');
INSERT INTO `news` VALUES ('9', '测试1', '南华汽车网', '1', '<p>\r\n	1</p>\r\n', '2020-11-12', '1', '0');
INSERT INTO `news` VALUES ('10', '发货大V胜多负少的供货方吃', '煽风点火', '大是大非发送到', '<p>\r\n	阿达史蒂文艾弗森多个人大腿围她是短发2</p>\r\n', '2020-11-19', '1', '0');
INSERT INTO `news` VALUES ('11', '时代光华完成祭敖包', '发生的国际', '发VB和噶几', '<p>\r\n	地方和登记卡上</p>\r\n', '2020-11-19', '1', '0');
INSERT INTO `news` VALUES ('12', '山东分公司登记肺结核', '南华汽车网', '分公司独一份GV', '<p>\r\n	发送一个发手机空号</p>\r\n', '2020-11-19', '1', '1');
INSERT INTO `news` VALUES ('13', '森岛帆高贡嘎山', '发gas大管家', '沙发达三个月', '<p>\r\n	大地飞歌黄寺大街狂风怒号</p>\r\n', '2020-11-19', '1', '5');
INSERT INTO `news` VALUES ('14', 'asd', '南华汽车网', 'asdas', '<p>\r\n	dasasd</p>\r\n', '2020-11-19', '1', '1');
INSERT INTO `orders` VALUES ('1', 'zqt', '中国', '123', '', '2020-12-29 17:05:22', '0', '260222.21', '5');
INSERT INTO `product` VALUES ('1', '宝马mate', '3000.00', '1', '2020-12-08', '9b9abb74-55e8-4ecb-b9fc-8a4c820a3c72.jpg', '2a9782cd-adae-43fd-a543-02af59809f35.jpg', 'helloword宝马mate', '1', '1', '1');
INSERT INTO `product` VALUES ('2', '宝马2', '150000.00', '1', '2020-12-12', '9cde751b-5d03-4535-b72f-101e93a125ae.jpg', 'bf922e4f-b82b-4306-989d-874eee0cfd55.jpg', '粉红色的回忆', '1', '0', '0');
INSERT INTO `product` VALUES ('3', 'gfdj', '52002.00', '2', '2020-12-29', 'e1c97e7c-1e53-474c-95bb-0368b522b2ce.jpg', 'f82df35d-6aad-4661-b765-46d81ea333ba.jpg', '送到合肥公司', '0', '1', '1');
INSERT INTO `product` VALUES ('4', 'sdfgdsg', '212.21', '4', '2020-12-16', 'd21ced06-8dcc-498e-8385-06f107e2a6be.jpg', '3c2c02fc-77ba-4a48-8bfb-3342e467bd31.jpg', 'fsdfswedf', '1', '0', '0');
INSERT INTO `product` VALUES ('5', 'nihudhsu', '54623.00', '4', '2020-12-24', 'dda2840b-e28d-45fb-9087-6fda3db12029.jpg', '6fa1c2e0-fae3-4455-94d3-1e0c62762eb1.jpg', 'fsdfwerwefsdfw', '1', '0', '0');
INSERT INTO `user` VALUES ('1', 'qqq', '123', 'qqq@111.com', '2020-10-22 18:36:45');
INSERT INTO `user` VALUES ('2', 'dd', '456', 'dd@163.com', '2020-10-23 10:35:21');
INSERT INTO `user` VALUES ('3', 'qqr', '123456', 'qqr@163.com', '2020-10-29 18:35:27');
INSERT INTO `user` VALUES ('4', 'word', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'word@163.com', '2020-12-24 21:04:04');
INSERT INTO `user` VALUES ('5', '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123@163.cn', '2020-12-29 15:29:55');
