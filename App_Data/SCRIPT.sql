
CREATE DATABASE WebShopOnline
GO

USE WebShopOnline
GO

------------------------------------------- dung de xoa bang ----------
IF OBJECT_ID ('CHITIETHOADON') IS NOT NULL
DROP TABLE CHITIETHOADON
GO
IF OBJECT_ID ('SANPHAM') IS NOT NULL
DROP TABLE SANPHAM
GO
IF OBJECT_ID ('DANHMUC') IS NOT NULL
DROP TABLE DANHMUC
GO
IF OBJECT_ID ('HOADON') IS NOT NULL
DROP TABLE HOADON
GO
IF OBJECT_ID ('NGUOIDUNG') IS NOT NULL
DROP TABLE NGUOIDUNG
GO
------------------------------------------------------------------------
CREATE TABLE TRANGTHAINGUOIDUNG(
IDTINHTRANG INT NOT NULL,
TENTINHTRANG NVARCHAR(10),
CONSTRAINT IDTINHTRANG PRIMARY KEY (IDTINHTRANG)
)

CREATE TABLE NGUOIDUNG (
IDNGUOIDUNG INT IDENTITY(1,1) NOT NULL,
IDKIEUNGUOIDUNG INT,  
HOTEN NVARCHAR (100),
USERNAME NVARCHAR(50),
PASSWORD NVARCHAR(50),
DIACHI NVARCHAR(50),
SODIENTHOAI VARCHAR(20),
EMAIL VARCHAR (254),
IDTINHTRANG int,
CONSTRAINT PK_NGUOIDUNG PRIMARY KEY (IDNGUOIDUNG),
CONSTRAINT FK_TRANGTHAINGUOIDUNG_NGUOIDUNG FOREIGN KEY (IDTINHTRANG) REFERENCES TRANGTHAINGUOIDUNG (IDTINHTRANG)
)

CREATE TABLE HOADON (
IDHOADON INT IDENTITY(1,1) NOT NULL,
IDNGUOIDUNG INT ,
MAHOADON CHAR (15),
CONSTRAINT PK_HOADON PRIMARY KEY (IDHOADON),
CONSTRAINT FK_HOADON_NGUOIDUNG FOREIGN KEY (IDNGUOIDUNG) REFERENCES NGUOIDUNG (IDNGUOIDUNG)
)

CREATE TABLE DANHMUC (
IDDANHMUC INT IDENTITY(1,1) NOT NULL,
TENDM NVARCHAR (254) ,
CONSTRAINT PK_DANHMUC PRIMARY KEY (IDDANHMUC)
)

CREATE TABLE SANPHAM (
IDSANPHAM INT IDENTITY(1,1) NOT NULL,
IDDANHMUC INT ,
MASANPHAM CHAR (15) ,
TENSANPHAM NVARCHAR (254) ,
GIASANPHAM INT,
MOTASANPHAM NVARCHAR (MAX),
URL VARCHAR (MAX),
CONSTRAINT PK_SANPHAM PRIMARY KEY (IDSANPHAM),
CONSTRAINT FK_SANPHAM_DANHMUC FOREIGN KEY (IDDANHMUC) REFERENCES DANHMUC (IDDANHMUC)
)

CREATE TABLE CHITIETHOADON (
IDCHITIETHOADON INT IDENTITY(1,1) NOT NULL,
IDHOADON INT NOT NULL,
IDSANPHAM INT NOT NULL,                                    
AMOUNT INT,
CONSTRAINT PK_CHITIETHOADON PRIMARY KEY (IDCHITIETHOADON),
CONSTRAINT FK_IDCHITIETHOADON_HOADON FOREIGN KEY (IDHOADON) REFERENCES HOADON (IDHOADON),
CONSTRAINT FK_IDCHITIETHOADON_SANPHAM FOREIGN KEY (IDSANPHAM) REFERENCES SANPHAM (IDSANPHAM)
)

------------------------------------------------------------------------------------------------------------
INSERT INTO TRANGTHAINGUOIDUNG (IDTINHTRANG,TENTINHTRANG) VALUES ('0','DISABLE')
INSERT INTO TRANGTHAINGUOIDUNG (IDTINHTRANG,TENTINHTRANG) VALUES ('1','ENABLE')
------------------------------------------------------------------------------------------------------------
--------------------------------------------- TAI KHOAN ----------------------------------------------------

INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(1,'ADMINISTRATOR','ADMIN','ADMIN','UNKNOW','0123456789','ADMIN@SHOPONLINE.COM.VN','1')
INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(2,N'PHAN HOÀI SƠN','SONPH','SONPH',N'HÀ NỘI','0123456789','SONPH@GMAIL.COM','1')
INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(2,N'NGUYỄN QUANG HUY','HUYNQ','HUYNQ',N'HÀ NAM','0123456789','HUYNQ@GMAIL.COM','1')
INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(2,N'VŨ HOÀNG DƯƠNG','DUONGVH','DUONGVH',N'HẢI PHÒNG','0123456789','DUONGVH@GMAIL.COM','1')
INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(2,N'ĐÀO VĂN TUẤN','TUANDV','TUANDV',N'BẮC NINH','0123456789','TUANDV@GMAIL.COM','1')




-------------------------------------------------------------------------
---------------- DANH MUC -----------------------------------------------


INSERT INTO DANHMUC (TENDM) VALUES (N'Apple')
INSERT INTO DANHMUC (TENDM) VALUES (N'Samsung')
INSERT INTO DANHMUC (TENDM) VALUES (N'Sony')
INSERT INTO DANHMUC (TENDM) VALUES (N'Oppo')

-------------------------------------------------------------------------
---------------- IPHONE -------------------------------------------------

INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IPX256GB'
           ,N'iPhone X 256GB'
           ,N'iPhone X được Apple ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời'
           ,'34790000'
           ,'apple1.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IPX64GB'
           ,N'IPhone X 64GB'
           ,N'IPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.'
           ,'29990000'
           ,'apple2.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP8P256GB'
           ,N'IPhone 8 Plus 256GB'
           ,N'IPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến.'
           ,'28790000'
           ,'apple3.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP8256GB'
           ,N'IPhone 8 256GB'
           ,N'Theo truyền thống thì tiếp sau chiếc IPhone 7 Apple sẽ cho ra mắt chiếc iPhone 7s nhưng năm nay "táo khuyết" đã tạo ra ngoại lệ khi giới thiệu đến người dùng chiếc iPhone 8 với không nhiều thay đổi về ngoại hình.'
           ,'25790000'
           ,'apple4.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP864GB'
           ,N'IPhone 8 64GB'
           ,N'IPhone 8 64GB nổi bật với điểm nhấn mặt lưng kính kết hợp cạnh viền và mặt trước giữ nguyên thiết kế như iPhone 7, cùng với đó là hàng loạt công nghệ đáng mong đợi như sạc nhanh, không dây hay hỗ trợ thực tế ảo AR.'
           ,'20790000'
           ,'apple5.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP7P128GB'
           ,N'IPhone 7 Plus 128GB'
           ,N'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.'
           ,'22990000'
           ,'apple6.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP732GB'
           ,N'IPhone 7 32GB'
           ,N'IPhone 7 32 GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng như trang bị khả năng chống nước, dàn loa stereo và cấu hình cực mạnh.'
           ,'15990000'
           ,'apple7.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP6S128GB'
           ,N'IPhone 6s 128GB'
           ,N'IPhone 6s xứng đáng là phiên bản nâng cấp hoàn hảo từ iPhone 6 với nhiều tính năng mới hấp dẫn.'
           ,'16990000'
           ,'apple8.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP6SP32GB'
           ,N'IPhone 6s Plus 32GB'
           ,N'IPhone 6s Plus 32 GB là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.'
           ,'13990000'
           ,'apple9.png')
INSERT INTO SanPham
           ([IdDanhMuc]
		   ,[MaSanPham]
           ,[TenSanPham]
           ,[MoTaSanPham]
           ,[GiaSanPham]
           ,[Url])
     VALUES
           ('1'
		   ,'IP632GB'
           ,N'IPhone 6 32GB'
           ,N'IPhone 6 là một trong những smartphone được yêu thích nhất của Apple. Lắng nghe nhu cầu về thiết kế, khả năng lưu trữ và giá cả, iPhone 6 32GB được chính thức phân phối chính hãng tại Việt Nam hứa hẹn sẽ là một sản phẩm rất "Hot".'
           ,'7990000'
           ,'apple10.png')

-------------------------------------------------------------------------
---------------------------- SAMSUNG ------------------------------------

INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'sss9p128gb',N'Samsung Galaxy S9+ 128GB',N'Dòng Samsung 2018',24990000,'sss9plus128gb.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES 
(2,'sss9p64gb',N'Samsung Galaxy S9+ 64GB',N'Dòng Samsung 2018',23490000,'sss9plus64gb.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'ssnot8',N'Samsung Galaxy Note 8',N'Dòng Samsung 2018',22490000,'ssnote8.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'sss9',N'Samsung Galaxy S9',N'Dòng Samsung 2018',19990000,'sss9.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'sss8p',N'Samsung Galaxy S8 Plus',N'Dòng Samsung 2017',17990000,'sss8plus.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'sss8',N'Samsung Galaxy S8',N'Dòng Samsung 2017',15990000,'sss8.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'ssj7plus',N'Samsung Galaxy J7+',N'Dòng Samsung 2017',7290000,'ssj7plus.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(2,'ssj7pro',N'Samsung Galaxy J7 Pro',N'Dòng Samsung 2017',6090000,'ssj7pro.png')

-------------------------------------------------------------------------
---------------------------------------- SONY ---------------------------

INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxxzp',N'Sony Xperia XZ Premium',N'Dòng Sony 2017',15990000,'soxxzpremium.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxxz1',N'Sony Xperia XZ1',N'Dòng Sony 2017',13990000,'soxxz1.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL)  VALUES
(3,'soxxzs',N'Sony Xperia XZs',N'Dòng Sony 2017',9990000,'soxxzs.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxxzd',N'Sony Xperia XZ Dual',N'Dòng Sony 2016',9990000,'soxxzd.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxxa1u',N'Sony  Xperia XA1 Ultra',N'Dòng Sony 2016',7990000,'soxxa1u.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxx',N'Sony Xperia X',N'Dòng Sony 2016',7990000,'soxx.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(3,'soxxau',N'Sony Xperia XA Ultra',N'Dòng Sony 2016',6990000,'soxxau.png')

-------------------------------------------------------------------------
------------------------------- OPPO ------------------------------------

INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'of3p',N'Oppo F3 Plus',N'Dòng Oppo 2017',7490000,'of3plus.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'of56gb',N'Oppo F5 6GB',N'Dòng Oppo 2017',8990000,'of564gb.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'of5',N'Oppo F5',N'Dòng Oppo 2017',6990000,'of5.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES 
(4,'of5y',N'Oppo F5 Youth',N'Dòng Oppo 2017',6190000,'of5y.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'oa83',N'Oppo A83',N'Dòng Oppo 2018',4990000,'oa83.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'of3l',N'Oppo F3 Lite',N'Dòng Oppo 2017',4990000,'of3lite.png')
INSERT INTO SANPHAM (IDDANHMUC,MASANPHAM,TENSANPHAM,MOTASANPHAM,GIASANPHAM,URL) VALUES
(4,'of3',N'Oppo F3',N'Dòng Oppo 2017',5990000,'of3.png')

-------------------------------------------------------------------------
---------------- HOA DON ------------------------------------------------

INSERT INTO HOADON (IDNGUOIDUNG,MAHOADON) VALUES (2,'SS')
INSERT INTO HOADON (IDNGUOIDUNG,MAHOADON) VALUES (3,'IP')
INSERT INTO HOADON (IDNGUOIDUNG,MAHOADON) VALUES (4,'OP')
INSERT INTO HOADON (IDNGUOIDUNG,MAHOADON) VALUES (5,'SO')


-------------------------------------------------------------------------
---------------- CHI TIET HOA DON ---------------------------------------

INSERT INTO CHITIETHOADON (IDHOADON,IDSANPHAM,AMOUNT) VALUES (1,1,34790000)
INSERT INTO CHITIETHOADON (IDHOADON,IDSANPHAM,AMOUNT) VALUES (2,10,24990000)
INSERT INTO CHITIETHOADON (IDHOADON,IDSANPHAM,AMOUNT) VALUES (3,18,15990000)
INSERT INTO CHITIETHOADON (IDHOADON,IDSANPHAM,AMOUNT) VALUES (4,25,7490000)


---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------

SELECT * FROM NGUOIDUNG
SELECT * FROM HOADON
SELECT * FROM DANHMUC
SELECT * FROM CHITIETHOADON
SELECT * FROM SANPHAM




