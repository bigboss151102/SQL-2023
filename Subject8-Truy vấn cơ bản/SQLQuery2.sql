--Lưu ý.Chạy script Query trước khi chạy thử script này

USE HowKteam

GO

--Cấu trúc truy vấn

SELECT * FROM dbo.BOMON --Lấy hết các dữ liệu trong bảng bộ môn ra 

--Lấy mã bộ môn  + tên bộ môn trong bảng bộ môn

SELECT MABM,TENBM FROM dbo.BOMON

--Đổi tên cột hiển thị

SELECT  TENBM AS 'Howkteam.com',TENBM AS N'Giáo Dục' FROM dbo.BOMON

--Xuất ra  mã giáo viên+tên+tên bộ môn giáo viên đó dạy

SELECT *FROM dbo.GIAOVIEN,dbo.BOMON

--1,2,3
--A,B,C
--1-A
--1-B
--2-C
--2-A
--2-B
--2-C
--3-A
--3-B
--3-C

SELECT  MAGV, HOTEN, TENBM FROM dbo.GIAOVIEN,dbo.BOMON
--Bài tập
--1.Truy xuất thông tin cua rbangr tham gia đề tài

SELECT *FROM dbo.THAMGIADT

--2.Lấy ra mã khoa và tên khoa tương ứng

SELECT  MAKHOA, TENKHOA FROM dbo.KHOA
--3.Lâý ra mã Gv, TÊN GIÁO VIÊN VÀ HỌ TÊN NGƯỜI THÂN TƯƠNG ỨNG

SELECT GV. MAGV, GV. HOTEN ,NT. TEN FROM dbo.GIAOVIEN AS GV ,dbo.NGUOITHAN AS NT

