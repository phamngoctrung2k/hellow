//=====================================================================

BÀI TOÁN QUẢN LÝ BÁN VÉ MÁY BAY

NHÓM 16  

     1. PHẠM NGỌC TRUNG     1821050415
	 2. NGUYỄN VIẾT CƯƠNG   1821050290

Mô tả bài tập:
  --CHUYENBAY (MaChuyenBay*,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay)
  --SANBAY (MaSanBay*, TenSanBay,MaChuyenBay, ThanhPho, QuocGia)
  --MAYBAY (MaMayBay*, Loai, HangMayBay, SoGhe)
  --NHANVIEN (MaNhanVien*, Ten, NgaySinh , SDT)
  --VE ( MaVe*, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe )
  --KHACHHANG( MaKH*,Ten,NgaySinh,DiaChi,MaVe )
 
  *////////////////////////////////////////////////////////////////////////
  /////*TẠO DATABASE QUANLYBANVEMAYBAY*////
  create DATABASE QuanLyBanVeMayBay
  USE QuanLyBanVeMayBay
  /*****DROP DATABASE QuanLyBanVeMayBay*/
  
  /****Tạo bảng chuyến bay*////
  CREATE TABLE CHUYENBAY(
  MaChuyenBay char(10)primary key not null,
  MaMayBay nvarchar (10) not null,
  MaSanBayDi nvarchar (10)not null,
  MaSanBayDen nvarchar (10)not null,
  NgayBay date not null)
  ///*drop table CHUYENBAY*///

  ////* Nhập dữ liệu cho bảng chuyến bay*////
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB001','MH370','VVN/BHAN', 'VVST/SGN','2020-1-15')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB002','MH371','VVNB/HAN', 'VVCR/CXR','2020-3-1')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB003','MH372','VVST/SGN', 'VVST/SGN','2020-5-12')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB004','MH373','VVRG/VKR', 'VVST/SGN','2020-2-19')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB005','MH374','VVST/SGN', 'VVRG/VKR','2020-1-3')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB006','MH375','VVPQ/PQC', 'VVST/SGN','2020-5-12')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB007','MH376','VVPQ/PQC', 'VVN/BHAN','2020-9-29')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB008','MH377','VVDL/DLI', 'VVDH/VDH','2020-11-23')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB009','MH378','VVVH/VII', 'VVCA/VCL','2020-12-20')
  INSERT INTO CHUYENBAY(MaChuyenBay,MaMayBay, MaSanBayDi, MaSanBayDen, NgayBay) VALUES ('MB010','MH379','VVTH/TBB', 'VVPB/HUI','2020-9-2')
  
  SELECT * FROM CHUYENBAY
 
////* DROP TABLE CHUYENBAY*////
 ////* Tạo bảng sân bay*////
  CREATE TABLE SANBAY(
  MaSanBay NVARCHAR(10)PRIMARY KEY NOT NULL,
  TenSanBay NVARCHAR(30) NOT NULL ,
  MaChuyenBay char(10)foreign key references CHUYENBAY(MaChuyenBay),
  ThanhPho NVARCHAR(30) NOT NULL,
  QuocGia NVARCHAR(30)NOT NULL)
  
  ////* Nhập dữ liệu cho bảng sân bay*////
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVNB/HAN', 'NỘI BÀI','MB001','HÀ NỘI','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVTS/SGN', 'TÂN SƠN NHẤT','MB002','TP HỒ CHI MINH','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVCR/CXR', 'CAM RANH','MB003','KHÁNH HÒA','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVRG/VKG', 'RACH GIÁ','MB004','KIÊN GIANG','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVPQ/PQC', 'PHÚ QUÓC','MB005','KIÊN GIANG','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVDL/DLI', 'LIÊN KHƯƠNG','MB006','LÂM ĐỒNG','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVVH/VII', 'VINH','MB007','NGHỆ AN','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVTH/TBB', 'TUY HÒA','MB008','PHÚ YÊN','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVDH/VDH', 'ĐỒNG HỚI','MB009','QUẢNG BÌNH','VIỆT NAM')
  INSERT INTO SANBAY(MaSanBay, TenSanBay,MaChuyenBay, ThanhPho, QuocGia) VALUES ('VVCA/VCL', 'CHU LAI','MB010','QUẢNG NAM','VIỆT NAM')
  
  SELECT * FROM SANBAY
  
  ///**DROP TABLE SANBAY***/

  ///***Tạo bảng vé*****/
  CREATE TABLE VE(
  MaVe CHAR(10)PRIMARY KEY NOT NULL,
  MaChuyenBay CHAR(10)foreign key references CHUYENBAY(MaChuyenBay) NOT NULL,
  TenHanhKhach NVARCHAR (50)NOT NULL,
  HoChieu CHAR (10) NOT NULL,
  GiaVe INT)
  ////* Nhập dữ liệu cho bảng vé***/

  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A01','MB001','PHẠM NGỌC TRUNG','YASUA0201','630000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A02','MB002','VŨ NGỌC ANH THƯ','JSDHF6562','120000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A03','MB003','NGUYÊN LƯƠNG NGA','KFHVF3765','738000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A04','MB004','CHU PHƯƠNG THẢO','SQORI1216','932000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A05','MB004','ĐỖ THU HƯƠNG','BXVNZ9606','1000000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A06','MB005','ĐỖ HỮU DŨNG','YTYLS1012','437000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A07','MB006','LƯƠNG QUANG HUY','NASUS3170','247000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A08','MB007','LƯƠNG HUYỀN TRANG','WAYEE1244','583000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A09','MB008','LẠI TUYẾT NHUNG','UEWYT9503','723000')
  INSERT INTO VE(MaVe, MaChuyenBay, TenHanhKhach, HoChieu, GiaVe) VALUES ('A10','MB009','VŨ TIỂU HẠNH','KRORW5065','631000')
  
  SELECT *FROM VE
  /***DROP TABLE VE*///

  /****Tạo bảng nhân viên***/

  create table NHANVIEN(
  MaNhanVien char(10)PRIMARY KEY NOT NULL,
  Ten NVARCHAR(50) NOT NULL,
  NgaySinh date not null,
  Sodt char (10)not null,
  MaChuyenBay CHAR(10)foreign key references CHUYENBAY(MaChuyenBay) NOT NULL)

 
////* Nhập dữ liệu cho bảng nhân viên*////
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27362299','Nguyễn Tuấn Anh','2000-6-3','0912484611','MB001')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27365444','Nguyễn Viết Cương','2001-4-5','0912484347','MB002')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27343558','Nguyễn Binh Nhật','2000-8-1','0978637944','MB003')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27385841','Lê Xuân Thành','2002-2-2','0912484333','MB004')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27312384','Nguyễn Đăng Hải','1999-3-4','0912484458','MB005')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27364816','Phạm Thị Linh','2000-3-9','0912484547','MB006')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27339784','Phan Manh Tùng','2000-6-3','0912484481','MB007')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27314736','Nguyễn Việt Hoàng','1998-5-5','0937950144','MB008')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27358431','Nguyễn Hoàn Xuân','1997-8-7','0912484241','MB009')
Insert into NHANVIEN(MaNhanVien,Ten,Ngaysinh,Sodt, MaChuyenBay) values ('27388974','Nguyễn Thị Hằng','1995-9-8','0912484487','MB010')

SELECT *FROM NHANVIEN 

///*DROP TABLE NHANVIEN*///

///* Tạo bảng máy bay*///

CREATE TABLE MAYBAY(
MaMayBay nvarchar(10)not null,
MaChuyenBay CHAR(10)foreign key references CHUYENBAY(MaChuyenBay) NOT NULL,
LoaiMayBay nvarchar(20)not null,
HangMayBay nvarchar(20)not null,
SoGhe int not null)
////* Nhập dữ liệu cho bảng máy bay*////
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH370','MB001','Boeing 787','Vietnam Airlines','274')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH371','MB002','Airbus A350','Vietnam Airlines','305')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH372','MB003', 'Airbus A330','Vietnam Airlines','269')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH373','MB004', 'Airbus A321','Vietnam Airlines','184')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH374','MB005','Boeing 787','Vietnam Airline','274')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH375','MB006','ATR 72-500','Vietnam Airlines','680')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH376','MB007', 'Airbus A350','Vietnam Airlines','305')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH377','MB008', 'Airbus A330','Vietnam Airlines','269')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH378','MB009', 'Airbus A350','Vietnam Airlines','305')
Insert into MayBay(MaMayBay,MaChuyenBay,LoaiMayBay,HangMayBay,SoGhe  ) values ('MH379','MB010','Boeing 787','Vietnam Airlines','274')

SELECT* FROM MAYBAY

//*DROP TABLE MAYBAY*///

////* tạo bảng khách hàng*///

CREATE TABLE KHACHHANG(
 MaKH CHAR(10)PRIMARY KEY NOT NULL,
 TenHanhKhach NVARCHAR (50) NOT NULL, 
 NgaySinh DATE NOT NULL,
 DiaChi NVARCHAR(50) NOT NULL,
 MaVe CHAR(10) foreign key references VE(MaVe)not null) 
  
////* Nhập dữ liệu cho bảng khách hàng*///

Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('548445','PHẠM NGỌC TRUNG','2002-7-1','Hà Nội','A01') 
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('543278','VŨ NGỌC ANH THƯ','1985-9-2','Lạng Sơn','A02')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('536417','NGUYỄN LƯƠNG NGA','1996-8-8','Nam Định','A03')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('589478','CHU PHƯƠNG THẢO','2001-3-3','Hà Nội','A04')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('521421','ĐỖ THU HƯƠNG','1986-4-8','Hải Phòng','A05')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('532142','ĐỖ HỮU DŨNG','1995-4-3','Hà Nam','A06')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('564365','LƯƠNG QUANG HUY','2000-7-7','Thái Bình','A07')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('599998','LƯƠNG HUYỀN TRANG','1997-4-1','Vĩnh Phúc','A08')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('588246','LẠI TUYẾT NHUNG','1999-8-5','Thanh Hóa','A09')
Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('574748','VŨ TIỂU HẠNH','1988-6-3','Nghệ An','A10')

SELECT* FROM KHACHHANG

///* drop table khachhang*///

///* Tạo view*///
/*** TẠO VIEW XEM DANH SÁCH HÀNH KHÁCH***/
create view ThongTinKH AS
select makh, tenhanhkhach,NgaySinh,diachi from KHACHHANG
select * from ThongTinKH
/*** TẠO VIEW XEM DANH SÁCH NHÂN VIÊN***/
create view ThongTinNV AS
select MaNhanVien,Ten,Ngaysinh,Sodt from NHANVIEN
select * from ThongTinNV
/*** TẠO VIEW XEM DANH SÁCH SAN BAY***/
create view ThongTiNSanBay AS
select MaSanBay, TenSanBay,ThanhPho, QuocGia from SANBAY
select * from ThongTinSanBay


/***TẠO VIEW LIÊN LẠC KHÁCH HÀNG*///

create view LienLac_KH AS
select KHACHHANG.TENHANHKHACH, KHACHHANG.DIACHI,VE.HOCHIEU
FROM KHACHHANG,VE
WHERE KHACHHANG.MAVE=VE.MAVE
select * from LienLac_KH

/*** TẠO VIEW XEM THÔNG TIN KHACH HANG VÀ THÔNG TIN CHUYẾN BAY CỦA KHÁCH HÀNG*//

create view ThongTinKH_ThongTinCB AS
SELECT KHACHHANG.MAKH, KHACHHANG.TENHANHKHACH,VE.MaChuyenBay,MAYBAY.LoaiMayBay
FROM KHACHHANG,VE,MAYBAY
WHERE KHACHHANG.MAVE=VE.MAVE AND VE.MaChuyenBay=MAYBAY.MaChuyenBay
select * from ThongTinKH_ThongTinCB


create view CHUYENBAYTUDAUDENDAU AS
SELECT CHUYENBAY.MaSanBayDi,SANBAY.TenSanBay,CHUYENBAY.MaSanBayDen
FROM CHUYENBAY,SANBAY
WHERE CHUYENBAY.MaChuyenBay=SANBAY.MaChuyenBay
SELECT *FROM  CHUYENBAYTUDAUDENDAU

create view ThongTinKH_ThongTinCBAB AS
SELECT KHACHHANG.MAKH, KHACHHANG.TENHANHKHACH,VE.MaChuyenBay,MAYBAY.LoaiMayBay,CHUYENBAY.MaSanBayDi,SANBAY.TenSanBay,
CHUYENBAY.MaSanBayDen,SANBAY.TenSanBay
FROM KHACHHANG,VE,MAYBAY,SANBAY
WHERE KHACHHANG.MAVE=VE.MAVE AND VE.MaChuyenBay=MAYBAY.MaChuyenBay AND MAYBAY.MaChuyenBay=SANBAY.MaChuyenBay 
select * from ThongTinKH_ThongTinCB

////*THÊM RÀNG BUỘC VỚI GIÁ TRỊ KHÁCH NHAU*///
ALTER TABLE NHANVIEN
ADD UNIQUE(SoDT)

////*THÊM RÀNG BUỘC VỚI GIÁ TRỊ NGẦM ĐỊNH LÀ 10*///

ALTER TABLE NHANVIEN
ADD DEFAULT (10) FOR SoDT

ALTER TABLE VE
ADD DEFAULT (10) FOR SoDT
/* XÓA*////

DELETE FROM NHANVIEN
WHERE  MANHANHVIEN='27312384'
SELECT * FROM NHANVIEN
/***THÊM*///

ALTER TABLE VE
ADD GIODI DATETIME

UPDATE NHANVIEN 
SET TEN = 'VŨ TRONG HƯNG'
WHERE MANHANVIEN ='27364816'

/****TÌM TÊN KHÁCH HÀNG CÓ TUỔI NHẤT*///// 

SELECT TenHanhKhach, NgaySinh,DiaChi
FROM KHACHHANG
WHERE YEAR(GETDATE())-YEAR(NGAYSINH) = (SELECT MAX (YEAR
(GETDATE()) - YEAR (NGAYSINH)) FROM KHACHHANG)


/** TẠO THỦ TỤC*///
////* thủ tục xem thông tin nhân viên với mã nhân viên được nhập*////

CREATE PROC TT_NHANVIEN_THEO_MANV(@MNV char(10))
as
select * from NHANVIEN
where MaNhanVien = @MNV
TT_NHANVIEN_THEO_MANV '27388974'

///* thurtucj xem thông tin khách hàng,chuyến bay với mã số kh dc nhập từ bàn phím*////

create proc thutuc__thongtin_hanhkhach_chuyenbay(@makh CHAR(10))
as
  select khachhang.makh, khachhang.TenHanhKhach, khachhang.DiaChi,ve.HoChieu,chuyenbay.MaSanBayDi,CHUYENBAY.MaSanBayDen
  from KHACHHANG,ve,chuyenbay
  where KHACHHANG.MaVe=ve.MaVe and ve.MaChuyenBay=CHUYENBAY.MaChuyenBay and KHACHHANG.MAKH=@makh

  thutuc__thongtin_hanhkhach_chuyenbay '521421'


  -- xem thông tin mã sân bay nhập từ bàn phím
create proc thutuc_xem_tensanbay(@masanbay nvarchar(10))
as 
  select *from SANBAY
  where sanbay.masanbay=@masanbay

  thutuc_xem_tensanbay 'VVNB/HAN'

--HÀM LOẠI 1
--XEM thông tin sân bay

create function dbo.tensanbay
(@masanbay nvarchar(10),
@tensanbay nvarchar(30))
return nvarchar (100)
as       
  begin
      return (@masanbay +' '+ @tensanbay) 
	 end
select dbo.tensanbay(masanbay,tensanbay) from SANBAY

--HÀM LOẠI 2
--XEM thông tin theo mã hành khách 
create function dbo.xemTT_theoMaKH(@makhachhang char(10))
return table
as
return (
       select KHACHHANG.MaKH, KHACHHANG.TenHanhKhach,VE.MaChuyenBay
	from KHACHHANG inner join VE on KHACHHANG.MaVe= VE.MaVe
	WHERE KHACHHANG.MaKH=@makhachhang

SELECT * from dbo.xemTT_theoMaKH '532142'

--HÀM LOẠI3
--XUẤT THÔNG TIN NHÂN VIÊN TRÊN CHUYẾN BAY

CREATE FUNCTION DBO.xuatTT_TheoMaNV(@manhanvien char(10))

return @TABLENAME table
      (tennhanvien nvarchar(50),
	  ngaysinh date,
	  sodienthoai char(10),
	  machuyenbay char(10),
	  hamhmaybay navarchar(20))
as
  begin
      insert into @TABLENAME
	  select NHANVIEN.Ten,NHANVIEN.NgaySinh,NHANVIEN.Sodt,
	  MAYBAY.MaChuyenBay,MAYBAY.HangMayBay
	  FROM NHANVIEN INNER JOIN MAYBAY 
	  ON NHANVIEN.MaChuyenBay=MAYBAY.MaChuyenBay
	  WHERE NHANVIEN.MaNhanVien=@manhanvien
	  RETURN
	  END
	SELECT * FROM DBO.xuatTT_TheoMaNV
	  
--Tạo function cho biết mã nhân viên, tên nhân viên,ngày sinh,sdt,ngày bay,mã chuyến bay mình phục vụ

CREATE FUNCTION CF_LayThongTin()
returns table 
return 
      select NHANVIEN.MaNhanVien,NHANVIEN.Ten,NHANVIEN.NgaySinh,NHANVIEN.Sodt,
	  NHANVIEN.MaChuyenBay,CHUYENBAY.NgayBay
	  from NHANVIEN inner join CHUYENBAY on NHANVIEN.MaChuyenBay=CHUYENBAY.MaChuyenBay
GO
select * from CF_LayThongTin()

--TẠO FUNCTION CHO BIẾT MÃ MÁY MAY BAY,TÊN MÁY BAY,HÃNG MÁY BAY,SỐ GHẾ VÀ TÊN NHÂN VIÊN CỦA TỪNG MÁY BAY

CREATE FUNCTION CF_THONGTINMAYBAY()
returns table 
return 
      select MAYBAY.MaMayBay,MAYBAY.LoaiMayBay,MAYBAY.HangMayBay,MAYBAY.SoGhe,NHANVIEN.Ten
	   from NHANVIEN inner join MAYBAY on NHANVIEN.MaChuyenBay=MAYBAY.MaChuyenBay
GO
select * from CF_THONGTINMAYBAY()

--TẠO FUNCTION HIỂN THỊ MÃ KHÁCH HÀNG TÊN HÀNH KHÁCH MÃ VÉ MÃ CHUYẾN BAY. NHÂN THAM SỐ LÀ MÃ KHÁCH HÀNG
  CREATE FUNCTION FN_LAYTT (@MAKHACHHANG CHAR(10))
  RETURNS TABLE RETURN
  SELECT KHACHHANG.MaKH,KHACHHANG.TenHanhKhach,VE.MaVe,CHUYENBAY.MaChuyenBay
  FROM KHACHHANG INNER JOIN VE ON KHACHHANG.MaVe= VE.MaVe INNER JOIN CHUYENBAY 
  ON VE.MaChuyenBay=CHUYENBAY.MaChuyenBay
WHERE KHACHHANG.MaKH=@MAKHACHHANG

SELECT * FROM FN_LAYTT('532142')
----DROP FUNCTION FN_LAYTT

---ktra xem ten nhập vào có hợp lệ không

CREATE TRIGGER KT_TEN_HANHKHACH
ON KHACHHANG
FOR INSERT
AS
DECLARE @lengthofname   int
select @lengthofname = len(inserted.tenhanhkhach) 
from inserted
IF @lengthofname<=1
   print 'tên không thỏa mãn'
   rollback tran

Insert into KhachHang( MaKH,TenHanhKhach,NgaySinh,DiaChi,MaVe) values ('599322','a','1997-4-1','Vĩnh Phúc','A08')
  
--
create trigger trg_check
on dbo.KHACHHANG
For UPDATE
AS
PRINT'KẾT QUẢ SAU KHI CẬP'
SELECT* FROM KHACHHANG

--KTRA TUỔI CỦA NHÂN VIÊN 
CREATE TRIGGER KT_TUOI_HANHKHACH
ON KHACHHANG
FOR INSERT, UPDATE
AS
DECLARE @TUOINHANVIEN   int
select YEAR(INSERTED.CURDATE())-YEAR(INSERTED.NGAYSINH)

from inserted
IF @TUOINHANVIEN>=100
   print 'SỐNG HƠI LÂU'
   rollback tran



  












