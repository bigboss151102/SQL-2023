--Tạo cơ sở dữ liệu có tên SQLDBQUERY
CREATE DATABASE SQLDBQUERY

GO
--Dùng cơ sở dữ liệu SQLDBQUERY
USE SQLDBQUERY

GO
--Tạo bảng Giáo Viên
CREATE TABLE GiaoVien
(
	MaGV nvarchar(10),
	Name nvarchar(100)
)
GO
--Tạo bảng Học Sinh
CREATE TABLE HocSinh
(
	MaGV nvarchar(10),
	Name nvarchar(100)
)
GO
--Sửa bảng thêm cột ngày sinh
ALTER TABLE HocSinh ADD NgaySinh Date
--Xoá toàn bộ dữ liệu của bảng
TRUNCATE TABLE HOCSinh
--Gỡ bảng khỏi DB
DROP TABLE HocSinh
GO
--Chú ý:Kết thúc một phần lệnh phải có từ "GO" thì lệnh mới thực thi 
