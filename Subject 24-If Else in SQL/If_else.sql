USE HowKteam 
GO

DECLARE @LuongTrungBinh INT 
DECLARE @SoLuongGiaoVien INT
SELECT @SoLuongGiaoVien = COUNT(*) FROM dbo.GIAOVIEN
SELECT @LuongTrungBinh = SUM(LUONG)/@SoLuongGiaoVien FROM dbo.GIAOVIEN
PRINT @LuongTrungBinh
--Kiểm tra lương của một giáo viên có lớn hơn lương trung bình hay khong ?
DECLARE @MaGV CHAR(10) = '001'
DECLARE @LuongMaGV INT = 0
SELECT  @LuongMaGV = LUONG FROM dbo.GIAOVIEN WHERE MAGV = @MaGV
--Nếu lương của @MAGV > @LuongTrungBinh
--Xuất ra lớn hơn
--Ngược lại xuất ra nhỏ hơn

IF @LuongMaGV > @LuongTrungBinh 
	BEGIN
		PRINT @LuongTrungBinh
		PRINT @LuongMaGV
		PRINT N'Lon hon'
	END
ELSE
	BEGIN
		PRINT @LuongTrungBinh
		PRINT @LuongMaGV
		PRINT N'Nho hon'
	END

-- Ví dụ 2: Update lương của toàn bộ giáo viên nếu lương nhập vào cao hơn lương trung bình 
-- Ngược lại chỉ update toàn bộ lương giáo viên nữ
DECLARE @LuongTrungBinh INT 
DECLARE @SoLuongGiaoVien INT

SELECT @SoLuongGiaoVien = COUNT(*) FROM dbo.GIAOVIEN
SELECT	@LuongTrungBinh = SUM(LUONG)/@SoLuongGiaoVien FROM dbo.GIAOVIEN
DECLARE @Luong INT = 1500

IF @Luong > @LuongTrungBinh
	BEGIN
		UPDATE dbo.GIAOVIEN SET LUONG = @Luong
	END
ELSE 
	BEGIN
		UPDATE dbo.GIAOVIEN SET LUONG = @Luong 
		WHERE PHAI = 'Nu'
	END
SELECT *FROM dbo.GIAOVIEN
