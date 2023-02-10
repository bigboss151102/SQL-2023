USE HowKteam
GO

--Tìm ra mã giáo viên có lương thấp nhất
SELECT  MAGV FROM dbo.GIAOVIEN 
WHERE LUONG = (SELECT  MIN(LUONG) FROM dbo.GIAOVIEN)

--Lấy ra tuổi của giáo viên có lương thấp nhất
SELECT (YEAR(GETDATE()) - YEAR( NGSINH)) FROM dbo.GIAOVIEN
WHERE MAGV = (SELECT MAGV FROM dbo.GIAOVIEN WHERE LUONG = (SELECT MIN(LUONG)FROM dbo.GIAOVIEN))

--Tạo ra một biến kiểu char lưu mã giáo viên có lương thấp nhất

DECLARE @MinSalaryMgv CHAR(10)
SELECT @MinSalaryMgv =  MAGV FROM dbo.GIAOVIEN WHERE LUONG = (SELECT MIN(LUONG)FROM dbo.GIAOVIEN)

SELECT  MAGV FROM dbo.GIAOVIEN 
WHERE MAGV = @MinSalaryMgv


-------------------------------------------------------------------------
-- Khởi tạo với kiểu dữ liệu
DECLARE @i INT

-- Khởi tạo với giá trị mặc định
DECLARE @j INT = 0

-- Set kiểu dữ liệu cho biến

SET @i = @i + 1
SET @i += 1
SET @j += @i

-- Set thông qua câu lệnh Select

DECLARE @MaxLuong INT
SELECT @MaxLuong = MAX(LUONG) FROM dbo.GIAOVIEN 

--1.Xuất ra số lượng người thân có mã giáo viên '001'
-- Lưu mã GV 001 lại
-- Tìm ra số lượng người thân của MGV đó

	DECLARE @MAGV CHAR(10) = '001'
	SELECT COUNT(*) FROM dbo.NGUOITHAN
	WHERE MAGV = @MAGV

-- 2.Xuất ra tên giáo viên có lương thấp nhất

DECLARE @MinLuong INT
DECLARE @TenGiaoVien NVARCHAR(100)

SELECT @MinLuong = MIN( LUONG ) FROM dbo.GIAOVIEN
SELECT @TenGiaoVien = HoTen  FROM	dbo.GIAOVIEN WHERE LUONG = @MinLuong

--Xuất giá trị ra màn hình
PRINT @TenGiaoVien 
