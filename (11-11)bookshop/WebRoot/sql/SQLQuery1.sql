CREATE DATABASE DB_BOOKSHOP

USE DB_BOOKSHOP

CREATE TABLE TB_BOOK(
	BOOK_ID INT IDENTITY(1,1) PRIMARY KEY,
	BOOK_IMG_URL VARCHAR(1000) NOT NULL,--LIST图片地址
	BOOK_TITLE VARCHAR(1000) NOT NULL,--书名
	BOOK_AUTHOR VARCHAR(1000) NOT NULL,--作者
	BOOK_PUBLISHTIEM VARCHAR(100),--出版时间
	BOOK_PUBLISER VARCHAR(100) NOT NULL,--出版社
	BOOK_SELLPRICE VARCHAR(100) NOT NULL,--现价
	BOOK_DISCOUNT VARCHAR(100),--折扣
	BOOK_ORIGINALPRICE VARCHAR(100),--原价
	BOOK_RECOLAGU VARCHAR(MAX),--介绍
	BOOK_DETAILED_URL VARCHAR(300),--页面详细地址
	BOOK_BOOKOPENBOOK VARCHAR(100),--开本
	BOOK_PAGENUMBER VARCHAR(100),--页数
	BOOK_ISBN VARCHAR(100),--isbn
	BOOK_BARCODE VARCHAR(100),--条形码
	BOOK_BINDING VARCHAR(100),--装帧
	BOOK_KIND VARCHAR(MAX),--分类代码
	BOOK_KINDTEXT VARCHAR(MAX),--分类内容
	BOOK_SPECIALIST VARCHAR(MAX),--本书特色
	BOOK_BRIEF VARCHAR(MAX),--内容简介
	BOOK_CATALOG VARCHAR(MAX),--目录
	BOOK_EXCERPT VARCHAR(MAX),--节选
	BOOK_XIANGGUAN VARCHAR(MAX),--相关
	BOOK_ZUOZHEJIANJIE VARCHAR(MAX),--作者相关
)

drop table TB_BOOK

CREATE TABLE TB_BOOK_CATEGORY( --图书类别表
	CATEGORY_ID INT IDENTITY(1,1) PRIMARY KEY,--图书类别编号
	CATEGORY_NAME VARCHAR(100) NOT NULL,--图书类别名称
)


ALTER TABLE TB_BOOK ADD BOOK_CATEGORY_ID INT FOREIGN KEY(BOOK_CATEGORY_ID) REFERENCES TB_BOOK_CATEGORY(CATEGORY_ID)

select * from TB_BOOK where BOOK_CATEGORY_ID=7


CREATE TABLE TB_USERS(
	USERS_ID INT IDENTITY(1,1) PRIMARY KEY,
	USERS_ACCOUNT VARCHAR(1000) NOT NULL,--用户账户
	USERS_PASSWORD VARCHAR(1000) NOT NULL,--用户密码
	USERS_STATUS VARCHAR(1000) NOT NULL, --用户状态
)


insert into TB_USERS values('admin','admin','正常')
insert into TB_USERS values('admin1','admin1','正常')
insert into TB_USERS values('admin2','admin2','正常')
insert into TB_USERS values('admin3','admin3','正常')
-- id="SelectUsers" parameterType="map" resultType="map"
SELECT * FROM TB_USERS                  where USERS_ACCOUNT='admin' and      USERS_PASSWORD='admin'
SELECT * FROM TB_USERS                  where USERS_ACCOUNT='1'


SELECT * FROM TB_BOOK