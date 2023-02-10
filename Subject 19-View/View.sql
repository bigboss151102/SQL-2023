USE HowKteam

GO

--Tạo ra một bảng lưu thông tin giáo viên, tên bộ môn, và lương của giáo viên đó
SELECT  HOTEN, TENBM, LUONG INTO LuongGiaoVien FROM dbo.GIAOVIEN, dbo.BOMON
WHERE BOMON.MABM = GIAOVIEN.MABM

SELECT *FROM dbo.LuongGiaoVien

--Nhưng bây giờ mình cập nhật những giáo viên nào có mã giáo viên '006' thành lương 90000 thì trong
--bảng 'LuongGiaoVien' nó sẽ không cập nhật theo, nó chỉ cập nhật ở bảng gốc 'GIAOVIEN' mà thôi-->cùng thử nè

UPDATE dbo.GIAOVIEN SET LUONG = '90000'
WHERE MAGV = '006'

SELECT *FROM dbo.GIAOVIEN
--Đó các bạn thấy chưa, nó chỉ thay đổi ở bảng gốc mà tg --> vì thế chúng ta sẽ phải sử dụng bảng áo là 'view'
--Syntax : 
-- CREATE VIEW view_name AS
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
--Tạo ra testview từ câu truy vấn
	
CREATE VIEW TestView AS
SELECT * FROM dbo.GIAOVIEN

SELECT *FROM TestView

UPDATE dbo.GIAOVIEN SET LUONG = '10000'
WHERE MAGV = '006'

--Xoá view
DROP VIEW TestView

--Update view
ALTER VIEW TestView AS  
SELECT HOTEN FROM dbo.GIAOVIEN

-- Tạo view có tên tiếng việt và có dấu cách
CREATE VIEW [Giáo dục miễn phí] AS 
SELECT * FROM dbo.KHOA

SELECT * FROM [Giáo dục miễn phí]