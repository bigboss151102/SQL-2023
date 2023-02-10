	CREATE DATABASE Primary_Foreign

GO

USE Primary_Foreign

GO

CREATE TABLE BoMon
(
	MaBoMon CHAR(10) PRIMARY KEY,
	Name NVARCHAR(50) DEFAULT N'Tên bộ môn'
)
GO
-- Điều kiện để tạo khoá ngoại
-- Tham chiếu tới khoá chính
-- Unique, not null
-- Cùng kiểu dữ liệu
-- Cùng số lượng trường có sắp xếp

-- lợi ích:
-- Đảm bảo toàn vẹn dữ liệu.Không có trường tham chiếu tới dữ liệu không tồn tại 
 
CREATE TABLE Class
(
	MaLop CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên lớp',
	PRIMARY KEY(MaLop)
)
GO

CREATE TABLE Teacher
(
	MaGV CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'Tên giáo viên',
	DiaChi NVARCHAR(100) DEFAULT N'Địa chỉ giáo viên',
	NgaySinh DATE,
	sex BIT,
	MaBoMon CHAR(10),
	FOREIGN KEY(MaBoMon) REFERENCES dbo.BoMon(MaBoMon)
	
)
ALTER TABLE dbo.Teacher ADD PRIMARY KEY(MaGV)

GO

CREATE TABLE Student
(
	MaHs CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100),
	MaLop CHAR(10)
)
GO

-- Tạo khoá ngoại sau khi tạo bảng
ALTER TABLE dbo.Student ADD CONSTRAINT FK_HS FOREIGN KEY(MaLop) REFERENCES dbo.Class(MaLop) 
GO


-- Huỷ khoá

ALTER TABLE dbo.Student DROP CONSTRAINT FK_HS

INSERT INTO dbo.BoMon
(
    MaBoMon,
    Name
)
VALUES
(   'BM01', -- MaBoMon - char(10)
    N'Bộ môn 1' -- Name - nvarchar(50)
    )
INSERT INTO dbo.BoMon
(
    MaBoMon,
    Name
)
VALUES
(   'BM02', -- MaBoMon - char(10)
    N'Bộ môn 2' -- Name - nvarchar(50)
    )
INSERT INTO dbo.BoMon
(
    MaBoMon,
    Name
)
VALUES
(   'BM03', -- MaBoMon - char(10)
    N'Bộ môn 3' -- Name - nvarchar(50)
    )
