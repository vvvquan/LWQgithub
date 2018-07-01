create table User
(
  userId int auto_increment primary key,
  account varchar(20),
  password varchar(20),
  userName varchar(20),
  age int,
  email varchar(20),
  level int,
  experience int,
  property int
);

insert into User values(NULL,'root','123456','admin',28,'xxx@yy.zz',0,0,1);
insert into User values(NULL,'stu1','123456','study',18,'aaa@yy.zz',0,0,3);
insert into User values(NULL,'stu2','123456','life',20,'xyz@qq.com',0,0,4);
insert into User values(NULL,'stu3','123456','sport',34,'yes@163.com',0,0,5);

create table Article
(
   articleId int auto_increment primary key,
   title varchar(20),
   content varchar(100),
   userId int,
   remarkNum int,
   hitNum int,
   createTime Timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   lastRemarkTime Timestamp DEFAULT  CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   visit int,
   type int,
   top int
);

create table remark
(
  remarkId int auto_increment primary key,
  arctileId int,
  userId int,
  remark varchar(100),
  remarkTime timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table blacklist
(
  id int auto_increment primary key,
  account varchar(20),
  createTime Timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table notification
(
  id int auto_increment primary key,
  notice varchar(50)
);

