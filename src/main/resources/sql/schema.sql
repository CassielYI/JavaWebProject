# 数据库表结构：
# 用户表
create table user(
  id int auto_increment primary key comment '主键',
  userName varchar(100) comment '用户名',
  password varchar(100) comment '密码md5加密',
  nickName varchar(50) comment '用户昵称',
  userType tinyint(3) comment '类型，买家0，卖家1')
  ENGINE=InnoDB  DEFAULT CHARSET=utf8;

# 内容表
create table content(
  id int auto_increment primary key comment '主键',
  price bigint  comment '当前价格',
  title varchar(100) comment '标题',
  icon blob comment '图片',
  abstract varchar(200) comment '摘要',
  text blob comment '正文'  )
  ENGINE=InnoDB  DEFAULT CHARSET=utf8;

# 交易记录表
create table trx(
  id int auto_increment primary key comment '主键',
  contentId int  comment '内容ID',
  personId int comment '用户ID',
  price int comment '购买价格',
  time bigint comment '购买时间')
  ENGINE=InnoDB  DEFAULT CHARSET=utf8;

# 用户数据：
insert into `user` (`id`, `userName`, `password`, `nickName`, `userType`) values('0','buyer','37254660e226ea65ce6f1efd54233424','buyer','0');
insert into `user` (`id`, `userName`, `password`, `nickName`, `userType`) values('1','seller','981c57a5cfb0f868e064904b8745766f','seller','1');