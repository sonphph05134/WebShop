
CREATE DATABASE ShopOnline
GO

USE ShopOnline
GO

------------------------------------------- dung de xoa bang ----------
IF OBJECT_ID ('CHITIETDONHANG') IS NOT NULL
DROP TABLE CHITIETDONHANG
GO
IF OBJECT_ID ('SANPHAM') IS NOT NULL
DROP TABLE SANPHAM
GO
IF OBJECT_ID ('DANHMUC') IS NOT NULL
DROP TABLE DANHMUC
GO
IF OBJECT_ID ('DONHANG') IS NOT NULL
DROP TABLE DONHANG
GO
IF OBJECT_ID ('NGUOIDUNG') IS NOT NULL
DROP TABLE NGUOIDUNG
GO
------------------------------------------------------------------------
IF OBJECT_ID ('TRANGTHAINGUOIDUNG') IS NULL
DROP TABLE TRANGTHAINGUOIDUNG
GO
CREATE TABLE TRANGTHAINGUOIDUNG(
IDTINHTRANG bit NOT NULL,
TENTINHTRANG NVARCHAR(10),
CONSTRAINT IDTINHTRANG PRIMARY KEY (IDTINHTRANG)
)
IF OBJECT_ID ('KieuNguoiDung') IS NULL
DROP TABLE KieuNguoiDung
GO
create table KieuNguoiDung(
IDKieuNguoiDung int,
TenKieuNguoiDung nvarchar(20),
constraint PK_kieuNguoiDUng primary key (IDKieuNguoiDUng)
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
IDTINHTRANG bit,
CONSTRAINT PK_NGUOIDUNG PRIMARY KEY (IDNGUOIDUNG),
CONSTRAINT FK_TRANGTHAINGUOIDUNG_NGUOIDUNG FOREIGN KEY (IDTINHTRANG) REFERENCES TRANGTHAINGUOIDUNG (IDTINHTRANG),
COnstraint FK_KieuNGuoiDUng_NGuoiDUng Foreign key (IDKieuNguoiDUng) references KieuNguoiDUng (IDkieuNguoiDUng),
)

CREATE TABLE DONHANG (
IDDONHANG INT IDENTITY(1,1) NOT NULL,
IDNGUOIDUNG INT ,
MADONHANG CHAR (15),
CONSTRAINT PK_DONHANG PRIMARY KEY (IDDONHANG),
CONSTRAINT FK_DONHANG_NGUOIDUNG FOREIGN KEY (IDNGUOIDUNG) REFERENCES NGUOIDUNG (IDNGUOIDUNG)
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

CREATE TABLE CHITIETDONHANG (
IDCHITIETDONHANG INT IDENTITY(1,1) NOT NULL,
IDDONHANG INT NOT NULL,
IDSANPHAM INT NOT NULL,                                    
AMOUNT INT,
CONSTRAINT PK_CHITIETDONHANG PRIMARY KEY (IDCHITIETDONHANG),
CONSTRAINT FK_IDCHITIETDONHANG_DONHANG FOREIGN KEY (IDDONHANG) REFERENCES DONHANG (IDDONHANG),
CONSTRAINT FK_IDCHITIETDONHANG_SANPHAM FOREIGN KEY (IDSANPHAM) REFERENCES SANPHAM (IDSANPHAM)
)

------------------------------------------------------------------------------------------------------------
INSERT INTO TRANGTHAINGUOIDUNG (IDTINHTRANG,TENTINHTRANG) VALUES ('0','DISABLE')
INSERT INTO TRANGTHAINGUOIDUNG (IDTINHTRANG,TENTINHTRANG) VALUES ('1','ENABLE')
------------------------------------------------------------------------------------------------------------
--------------------------------------------- KIEU NGUOI DUNG ----------------------------------------------
INSERT INTO KIEUNGUOIDUNG (IDKIEUNGUOIDUNG,TENKIEUNGUOIDUNG) VALUES ('1',N'ADMIN')
INSERT INTO KIEUNGUOIDUNG (IDKIEUNGUOIDUNG,TENKIEUNGUOIDUNG) VALUES ('2',N'CLIENT')
--------------------------------------------- TAI KHOAN ----------------------------------------------------

INSERT INTO NGUOIDUNG(IDKIEUNGUOIDUNG,HOTEN,USERNAME,PASSWORD,DIACHI,SODIENTHOAI,EMAIL,IDTINHTRANG)VALUES(1,N'ADMINISTRATOR','ADMIN','ADMIN','UNKNOW','0123456789','ADMIN@SHOPONLINE.COM.VN','1')
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

INSERT INTO DONHANG (IDNGUOIDUNG,MADONHANG) VALUES (2,'SS')
INSERT INTO DONHANG (IDNGUOIDUNG,MADONHANG) VALUES (3,'IP')
INSERT INTO DONHANG (IDNGUOIDUNG,MADONHANG) VALUES (4,'OP')
INSERT INTO DONHANG (IDNGUOIDUNG,MADONHANG) VALUES (5,'SO')


-------------------------------------------------------------------------
---------------- CHI TIET HOA DON ---------------------------------------

INSERT INTO CHITIETDONHANG (IDDONHANG,IDSANPHAM,AMOUNT) VALUES (1,1,34790000)
INSERT INTO CHITIETDONHANG (IDDONHANG,IDSANPHAM,AMOUNT) VALUES (2,10,24990000)
INSERT INTO CHITIETDONHANG (IDDONHANG,IDSANPHAM,AMOUNT) VALUES (3,18,15990000)
INSERT INTO CHITIETDONHANG (IDDONHANG,IDSANPHAM,AMOUNT) VALUES (4,25,7490000)


---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------

SELECT * FROM NGUOIDUNG
SELECT * FROM DONHANG
SELECT * FROM DANHMUC
SELECT * FROM CHITIETDONHANG
SELECT * FROM SANPHAM


-- CREATE PROC
 




create PROCEDURE [dbo].[ChiTietDonHang_Insert]
@IDDonHang int,
@IDSanPham int,
@AMOUNT int
AS
INSERT INTO ChiTietDonHang (
IDDonHang,
IDSanPham,
AMOUNT)
VALUES (
@IDDonHang,
@IDSanPham,
@AMOUNT)
GO
/****** Object:  StoredProcedure [dbo].[ChiTietDonHang_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ChiTietDonHang_Select]
@IDDonHang int
AS
SELECT
AMOUNT,
TenSanPham,
GiaSanPham
FROM
ChiTietDonHang INNER JOIN
SanPham
ON
SanPham.IDSanPham = ChiTietDonHang.IDSanPham
WHERE
IDDonHang = @IDDonHang
GO
/****** Object:  StoredProcedure [dbo].[DangNhapAdmin_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DangNhapAdmin_Select]
@TenDangNhap nvarchar(50),
@MatKhau nvarchar(50)
AS
SELECT
IDNguoiDung,
IDKieuNguoiDung,
HoTen,
USERNAME,
PASSWORD,
DiaChi,
SoDienThoai,
Email,
IDTINHTRANG
FROM
NguoiDung
WHERE
USERNAME = @TenDangNhap AND
PASSWORD = @MatKhau AND
IDKieuNguoiDung = 2
GO
/****** Object:  StoredProcedure [dbo].[DangNhapNguoiDung_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DangNhapNguoiDung_Select]
@TenDangNhap nvarchar(50),
@MatKhau nvarchar(50)
AS
SELECT HoTen,Idnguoidung
FROM NguoiDung
WHERE
USERNAME = @TenDangNhap AND PASSWORD = @MatKhau AND IDKieuNguoiDung = 1
GO
/****** Object:  StoredProcedure [dbo].[DanhMucSanPham_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhMucSanPham_Select]
AS
SELECT IDDanhMucSanPham, TenDanhMucSanPham
FROM DanhMucSanPham
GO
/****** Object:  StoredProcedure [dbo].[DanhMucSanPhamMaster_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DanhMucSanPhamMaster_Select] 
	
AS
	select DanhMucSanPham.IdDanhMucSanPham,count(SanPham.IdDanhMucSanPham)  as SoSanPham,TenDanhMucSanPham 
	from SanPham join DanhMucSanPham on SanPham.IdDanhMucSanPham=DanhMucSanPham.IdDanhMucSanPham
	where SanPham.IdDanhMucSanPham=DanhMucSanPham.IdDanhMucSanPham
	group by DanhMucSanPham.IdDanhMucSanPham,TenDanhMucSanPham

GO
/****** Object:  StoredProcedure [dbo].[DonHang_Insert]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHang_Insert]
@IDNguoiDung int,
@IDGiaoDich nvarchar(50)
AS
INSERT INTO DonHang (
IDNguoiDung,
IDGiaoDich)
VALUES (
@IDNguoiDung,
@IDGiaoDich)
GO
/****** Object:  StoredProcedure [dbo].[DonHang_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHang_Select]
@IDNguoiDung int
AS
SELECT
IDDonHang,
IDGiaoDich,
NgayTaoDonHang,
TenTinhTrangDonHang,
NgayXuLyDonHang,
TrackingNumber
FROM
DonHang INNER JOIN
TinhTrangDonHang
ON
TinhTrangDonHang.IDTinhTrangDonHang = DonHang.IDTinhTrangDonHang
WHERE
IDNguoiDung = @IDNguoiDung
ORDER BY
NgayTaoDonHang DESC
GO
/****** Object:  StoredProcedure [dbo].[DonHang_Top1_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHang_Top1_Select]
AS
SELECT Top(1) IDDonHang from DonHang ORDER BY IDDonHang DESC
GO
/****** Object:  StoredProcedure [dbo].[DonHang_Update]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DonHang_Update]
@IDDonHang int,
@IDTinhTrangDonHang int,
@NgayXuLyDonHang datetime,
@TrackingNumber nvarchar(50)
AS
UPDATE
DonHang
SET
IDTinhTrangDonHang = @IDTinhTrangDonHang,
NgayXuLyDonHang = @NgayXuLyDonHang,
TrackingNumber = @TrackingNumber
WHERE
IDDonHang = @IDDonHang




GO
/****** Object:  StoredProcedure [dbo].[DonHangAll_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHangAll_Select]
AS
SELECT
IDDonHang,
IDGiaoDich,
NgayTaoDonHang,
TenTinhTrangDonHang,
HoTen,
TenDangNhap,
Diachi,
MaDienThoai,
SoDienThoai,
Email
FROM
DonHang INNER JOIN
TinhTrangDonHang
ON
TinhTrangDonHang.IDTinhTrangDonHang = DonHang.IDTinhTrangDonHang
INNER JOIN
NguoiDung
ON
NguoiDung.IDNguoiDung = DonHang.IDNguoiDung
ORDER BY
NgayTaoDonHang DESC
GO
/****** Object:  StoredProcedure [dbo].[DonHangByID_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DonHangByID_Select]
@IDDonHang int
AS
SELECT
NgayTaoDonHang,
NgayXuLyDonHang,
IDTinhTrangDonHang,
TrackingNumber
FROM
DonHang
WHERE
IDDonHang = @IDDonHang

GO
/****** Object:  StoredProcedure [dbo].[GioHang_Delete]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GioHang_Delete]
@IDGioHang int
AS
DELETE FROM
GioHang
WHERE
IDGioHang = @IDGioHang
GO
/****** Object:  StoredProcedure [dbo].[GioHang_Insert]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GioHang_Insert]
@CartGUID nvarchar(50),
@IDSanPham int,
@SoLuong int
AS
DECLARE @ItemCount int
SELECT @ItemCount = Count(IDSanPham) FROM GioHang
WHERE IDSanPham = @IDSanPham AND CartGUID = @CartGUID
IF @ItemCount > 0 /*cap nhat so luong*/
UPDATE GioHang SET SoLuong = (@SoLuong + GioHang.SoLuong)
WHERE IDSanPham = @IDSanPham AND CartGUID = @CartGUID
ELSE /*chen khi chua co san pham */
INSERT INTO GioHang ( CartGUID,IDSanPham,SoLuong)
VALUES (@CartGUID,@IDSanPham,@SoLuong)
GO
/****** Object:  StoredProcedure [dbo].[GioHang_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GioHang_Select]
@CartGUID nvarchar(50)
AS
SELECT
IDGioHang,
SanPham.IDSanPham,
SanPham.TenSanPham,
SoLuong,
SanPham.GiaSanPham as GiaSanPham,
(SanPham.GiaSanPham * SoLuong) AS ThanhTien
FROM
GioHang INNER JOIN
SanPham
ON
SanPham.IDSanPham = GioHang.IDSanPham
WHERE
CartGUID = @CartGUID
GO
/****** Object:  StoredProcedure [dbo].[GioHang_Update]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GioHang_Update]
@SoLuong int,
@IDGioHang int
AS
UPDATE
GioHang
SET
SoLuong = @SoLuong
WHERE
IDGioHang = @IDGioHang
GO
/****** Object:  StoredProcedure [dbo].[HinhSanPham_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HinhSanPham_Select]
@IDHinhSanPham int
AS
SELECT DuLieuHinhSanPham
FROM HinhSanPham
WHERE IDHinhSanPham = @IDHinhSanPham

GO
/****** Object:  StoredProcedure [dbo].[NguoiDung_Insert]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiDung_Insert]
@HoTen nvarchar(50),
@TenDangNhap nvarchar(50),
@DiaChi nvarchar(50),
@MaDienThoai nvarchar(50),
@SoDienThoai nvarchar(50),
@SoFax nvarchar(50),
@Email nvarchar(50),
@IDKieuNguoiDung int,
@MatKhau nvarchar(50)
AS
INSERT INTO NguoiDung (
HoTen,TenDangNhap,DiaChi,MaDienThoai,SoDienThoai,SoFax,Email,IDKieuNguoiDung,MatKhau)
VALUES (@HoTen,@TenDangNhap,@DiaChi,@MaDienThoai,@SoDienThoai,@SoFax,@Email,@IDKieuNguoiDung,@MatKhau)

GO
/****** Object:  StoredProcedure [dbo].[NguoiTruyCap_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiTruyCap_Select]
AS
SELECT * FROM ThongKeTruyCap
GO
/****** Object:  StoredProcedure [dbo].[NguoiTruyCap_Update]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NguoiTruyCap_Update]
AS
UPDATE ThongKeTruyCap SET TongSoTruyCap=TongSoTruyCap+1
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Insert]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SanPham_Insert]
@IDDanhMucSanPham int,
@TenSanPham nvarchar(50),
@DuLieuHinhSanPham image,
@MoTaSanPham nvarchar(max),
@GiaSanPham int
AS
DECLARE @IDHinhSanPham int
INSERT INTO HinhSanPham (DuLieuHinhSanPham) VALUES (@DuLieuHinhSanPham)
SET @IDHinhSanPham = @@IDENTITY
INSERT INTO SanPham (IDDanhMucSanPham,TenSanPham,IDHinhSanPham,MoTaSanPham,GiaSanPham)
VALUES (@IDDanhMucSanPham,@TenSanPham,@IDHinhSanPham,@MoTaSanPham,@GiaSanPham)


GO
/****** Object:  StoredProcedure [dbo].[SanPham_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Select]
AS
SELECT
IDSanPham,TenSanPham,TenDanhMucSanPham,IDHinhSanPham,
SUBSTRING(MoTaSanPham, 1, 150) + '...' AS MoTaSanPham,GiaSanPham
FROM
SanPham INNER JOIN DanhMucSanPham
ON
DanhMucSanPham.IDDanhMucSanPham = SanPham.IDDanhMucSanPham
GO
/****** Object:  StoredProcedure [dbo].[SanPham_SelectSearch]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_SelectSearch]
@tieuchuantim nvarchar(255)
AS
SELECT
IDSanPham,
TenSanPham,
TenDanhMucSanPham,
IDHinhSanPham,
SUBSTRING(MoTaSanPham, 1, 150) + '...' AS MoTaSanPham,
GiaSanPham
FROM
SanPham INNER JOIN
DanhMucSanPham
ON
DanhMucSanPham.IDDanhMucSanPham = SanPham.IDDanhMucSanPham
WHERE
TenDanhMucSanPham LIKE '%' + @tieuchuantim + '%' OR
TenSanPham LIKE '%' + @tieuchuantim + '%' OR
MoTaSanPham LIKE '%' + @tieuchuantim + '%'

GO
/****** Object:  StoredProcedure [dbo].[SanPham_Update]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SanPham_Update]
@IDDanhMucSanPham int,
@TenSanPham nvarchar(50),
@IDHinhSanPham int,
@DuLieuHinhSanPham image,
@MoTaSanPham ntext,
@GiaSanPham int,
@IDSanPham int
AS
UPDATE
HinhSanPham
SET
DuLieuHinhSanPham = @DuLieuHinhSanPham
WHERE
IDHinhSanPham = @IDHinhSanPham
UPDATE
SanPham
SET
IDDanhMucSanPham = @IDDanhMucSanPham,
TenSanPham = @TenSanPham,
IDHinhSanPham = @IDHinhSanPham,
MoTaSanPham = @MoTaSanPham,
GiaSanPham = @GiaSanPham
WHERE
IDSanPham = @IDSanPham
GO
/****** Object:  StoredProcedure [dbo].[SanPham10_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham10_Select]
AS
SELECT Top(10)
IDSanPham,
TenSanPham,
TenDanhMucSanPham,
IDHinhSanPham,
SUBSTRING(MoTaSanPham, 1, 150) + '...' AS MoTaSanPham,
GiaSanPham
FROM
SanPham INNER JOIN
DanhMucSanPham
ON
DanhMucSanPham.IDDanhMucSanPham = SanPham.IDDanhMucSanPham
ORDER BY IDSanPham DESC

GO
/****** Object:  StoredProcedure [dbo].[SanPhamByID_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamByID_Select]
@IDSanPham int
AS
SELECT
IDSanPham,TenSanPham,TenDanhMucSanPham,IDHinhSanPham,MoTaSanPham,GiaSanPham
FROM
SanPham INNER JOIN
DanhMucSanPham
ON
DanhMucSanPham.IDDanhMucSanPham = SanPham.IDDanhMucSanPham
WHERE
IDSanPham = @IDSanPham
GO
/****** Object:  StoredProcedure [dbo].[SanPhamByIDDanhMucSanPham]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SanPhamByIDDanhMucSanPham]
@IDDanhMucSanPham int
AS
SELECT 
	IDSanPham,
	SanPham.IDDanhMucSanPham,
	TenSanPham,
	TenDanhMucSanPham,
	IDHinhSanPham,
	MoTaSanPham,
	GiaSanPham
FROM 
	DanhMucSanPham INNER JOIN 
	SanPham 
ON 
	DanhMucSanPham.IDDanhMucSanPham = SanPham.IDDanhMucSanPham
WHERE 
	SanPham.IDDanhMucSanPham = @IDDanhMucSanPham

GO
/****** Object:  StoredProcedure [dbo].[SanPhamTheoDanhMuc_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPhamTheoDanhMuc_Select] 
	@IdDanhMucSanPham int
AS
	select IDSanPham,
			IdHinhSanPham,
			substring(MoTaSanPham,1,15)+'...' as MoTaSanPham,
			GiaSanPham,
			TenSanPham	
		from SanPham
		where IdDanhMucSanPham = @IdDanhMucSanPham

GO
/****** Object:  StoredProcedure [dbo].[TinhTrangDonHang_Select]    Script Date: 4/12/2018 1:52:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TinhTrangDonHang_Select] 
	
AS
	select *
	from TinhTrangDonHang

GO


