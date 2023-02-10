USE HowKteam

GO

--Lấy hết dữ liệu của bảng GV đưa vào bảng mới có têb là TableA
--Bảng này có các record tương ứng như bảng GV

SELECT *INTO TableA
FROM dbo.GIAOVIEN

--Tạo ra một bảng TableB mới.Có một cột dữ liệu là HọTen tương ứng như bảng GV
--Dữu liệu của bảng Table B lấy từ giáo viên ra

SELECT  HOTEN INTO TableB 
FROM dbo.GIAOVIEN


--Tạo ra một bảng TableB mới.Có cột dữ liệu là HoTen tương ứng  như bảng GV
--Với điều kiện lương >2000
--Dữ liệu của bảng Table lấy từ GV ra

SELECT  HOTEN INTO TableC
FROM dbo.GIAOVIEN
WHERE LUONG > 2000

--Tạo ra một bảng mới từ nhiều bảng

SELECT  MAGV, HOTEN, TENBM INTO GVBackup
FROM dbo.GIAOVIEN,dbo.BOMON
WHERE BOMON.MABM=GIAOVIEN.MABM


--Tạo ra bảng GVBK y chang nhưng k có dữ liệu 
SELECT * INTO GVBK
FROM dbo.GIAOVIEN
WHERE 6>9
