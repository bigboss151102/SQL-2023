USE HowKteam
GO

/*
-Cú pháp khai báo function :
 CREATE FUNCTION NameFunction(Paramater có hoặc không)
 RETURNS "Kiểu giá trị trả về"
 AS RETURN "Câu truy vấn trong này"
 
 -cách dùng: SELECT *FROM NameFunction()
*/

--Tạo Function

CREATE FUNCTION UF_SelectAllGiaoVien()
RETURNS TABLE
AS RETURN SELECT *FROM dbo.GIAOVIEN
GO
--Sử dụng
SELECT *FROM dbo.UF_SelectAllGiaoVien()

GO
-- Tạo Function có tham số
CREATE FUNCTION UF_SelectLuongGiaoVien(@MaGV CHAR(10))
RETURNS INT
AS
BEGIN
	DECLARE @Luong INT
	SELECT @Luong = LUONG FROM dbo.GIAOVIEN WHERE MAGV = @MaGV
	RETURN @Luong
END
GO
--Sử dụng nó
SELECT dbo.UF_SelectLuongGiaoVien('001') AS HT

--Sửa Function

GO

ALTER FUNCTION dbo.UF_SelectLuongGiaoVien(@MaGV CHAR(10))
RETURNS INT
AS 
BEGIN
	DECLARE @Luong INT
	SELECT @Luong = LUONG FROM dbo.GIAOVIEN WHERE MAGV = @MaGV
	RETURN @Luong
END

GO
--Xoá Function 
DROP FUNCTION UF_SelectLuongGiaoVien

GO

-- Lập Function kiểm tra số truyền vào chẵn hay lẻ
CREATE FUNCTION UF_Isodd(@Num int)
RETURNS NVARCHAR(50)
AS 
BEGIN
	IF(@Num % 2 = 0)
		RETURN N'Số đó là số chẵn'
	ELSE 
		RETURN N'Số đó là số lẻ'
	RETURN N'Không xác định'
END
GO
SELECT dbo.UF_Isodd(3)
GO
--Lập Function tính tuổi của môt người
CREATE FUNCTION UF_AgeOfYear(@Year DATE)
RETURNS INT  
AS 
BEGIN
	RETURN YEAR(GETDATE()) - YEAR(@Year)
END

GO
SELECT dbo.UF_AgeOfYear('20021115')  --(YY/MM/DD)

SELECT  dbo.UF_AgeOfYear( NGSINH), dbo.UF_Isodd(dbo.UF_AgeOfYear( NGSINH)) FROM dbo.GIAOVIEN





	
DROP FUNCTION dbo.UF_AgeOfYear