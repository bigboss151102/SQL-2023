USE HowKteam
GO

--Kiểm tra xem giáo viên có mã 001 có phải là giáo viên quản lý chuyên môn hay không 
--Kiểm tra danh sách các mã giáo viên QLCM
--Kiểm tra mã giáo viên tồn tại trong danh sách đó 

SELECT * FROM dbo.GIAOVIEN
WHERE MAGV = '001'
AND MAGV IN
(
	SELECT  GVQLCM FROM dbo.GIAOVIEN
)

--Truy vấn lồng trong From

SELECT * FROM
dbo.GIAOVIEN , (SELECT *FROM dbo.DETAI) AS DT

--Xuất danh sách giáo viên tham gia nhiều hơn một đề tài

 --B1:Lấy ra tất cả thông tin của Giáo Viên

SELECT *FROM dbo.GIAOVIEN AS GV
--Khi mà số lượng đề tài giáo viên đó tham gia >1
WHERE 1<
(
	SELECT COUNT(*) FROM dbo.THAMGIADT
	WHERE MAGV=GV.MAGV
)

--Lấy ra thông tin của Khoa mà có nhiều hơn 2 giáo viên 
--Lấy ra được danh sách bộ môn nằm trong khoa hiện tịa 

SELECT *FROM dbo.KHOA AS K
WHERE 2<
(
	SELECT COUNT(*) FROM dbo.BOMON AS BM, dbo.GIAOVIEN AS GV
	WHERE BM.MAKHOA = K.MAKHOA AND GV.MABM=BM.MABM
)

--Sắp xếp giảm dần
SELECT  MAGV FROM dbo.GIAOVIEN 
ORDER BY MAGV DESC

--Sắp xếp tăng dần

SELECT *FROM dbo.GIAOVIEN
ORDER BY MAGV ASC 

--Lấy ra top 5 phần từ

SELECT TOP(5) *FROM dbo.GIAOVIEN 
