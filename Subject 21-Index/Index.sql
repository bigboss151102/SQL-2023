USE HowKteam
GO

--Tạo INDEX trên bảng giáo viên
--Tăng tốc độ truy vấn, tìm kiếm nhưng chậm tốc độ thêm, xoá sửa
--Cho phép các trường trùng nhau

CREATE INDEX IndexName ON dbo.GIAOVIEN(MAGV)

--Không cho phép các trường trùng nhau
CREATE UNIQUE  INDEX IndexNameUnique ON dbo.GIAOVIEN(MAGV)

SELECT *FROM dbo.GIAOVIEN
WHERE MAGV = '001' AND Ten = 'Trong
'