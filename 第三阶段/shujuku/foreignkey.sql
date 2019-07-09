-- 单行注释使用--空格

/*多行注释*/
-- 创建course表：id,cname,cduration;
create table course(
    id int primary key auto_increment,
    cname varchar(30) not null,
    cduration int not null);

-- 向表格内插入数据
insert into course(cname,cduration)
values("python基础",20),("python高级",15),
("web基础",9),("python web",15),
("爬虫",10),("数据分析&人工智能",20);

-- 创建teacher表：course_id
-- 字段course外键,引用自course表的主键id
create table teacher(
id int primary key auto_increment,
name varchar(32) not null,
age int not null,
gender varchar(2) not null,
hobby varchar(50) not null,
course_id int,
constraint fk_course_teacher foreign key(course_id)
references course(id)
);

-- 向teacher表中插入测试数据
insert into teacher
values
(null,"孙悟空",28,"m","大保健",1),
(null,"吕泽",30,"m","拍片",2),
(null,"赵萌萌",18,"F","看帅哥",3);



