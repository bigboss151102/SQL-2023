USE HowKteam
GO

--Trigger sẽ được gọi mỗi khi có thao tác thay đổi thông tin bảng
-- Insert:Chứa những trường đã Insert | Update vào bảng
-- Deleted :chứa những trường bị xoá khỏi bảng

CREATE TRIGGER UTG_InsertGiaoVien
ON dbo.GIAOVIEN
FOR INSERT, UPDATE
AS 
BEGIN
	--ROLLBACK TRANSACTION
	PRINT 'Trigger 2'
END

SELECT * FROM dbo.GIAOVIEN

INSERT dbo.GIAOVIEN
		(   MAGV,
			HOTEN,
			LUONG,
			PHAI,
			NGSINH,
			DIACHI,
			GVQLCM,
			MABM
		)
VALUES  (
			N'011',
			N'Giao vien moi',
			0.0,
			N'Nam',
			GETDATE(),
			N'Phong An',
			null,
			N'MMT'
)

GO

-----------------------------------------------------------------
-- Không cho phép xoá thông tin của giáo viên có tuổi nhỏ hơn 1
CREATE TRIGGER UTG_AbortOrderSmall1
ON dbo.GIAOVIEN
FOR DELETE
AS
BEGIN
	DECLARE @count INT = 0
	SELECT @count = COUNT(*) FROM deleted
	WHERE YEAR(GETDATE()) - YEAR(deleted.NGSINH) < 1

	IF (@count > 0)
	BEGIN
		PRINT N'Không được xoá người nhỏ hơn 1 tuổi'
		ROLLBACK TRANSACTION
	END
END

DELETE dbo.GIAOVIEN WHERE MAGV = '013'

SELECT * FROM dbo.GIAOVIEN

INSERT dbo.GIAOVIEN
		(   MAGV,
			HOTEN,
			LUONG,
			PHAI,
			NGSINH,
			DIACHI,
			GVQLCM,
			MABM
		)
VALUES  (
			N'013',
			N'Bruno',
			0.0,
			N'Nam',
			DATEFROMPARTS(2002,11,15),
			N'Manchester',
			null,
			N'MMT'
)