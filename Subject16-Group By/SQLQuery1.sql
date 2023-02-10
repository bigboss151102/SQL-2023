USE HowKteam

GO

--Xuất ra danh sách tên bộ môn và số lượng giáo viên bộ môn

SELECT TENBM, COUNT(*) FROM dbo.BOMON, dbo.GIAOVIEN
WHERE BOMON.MABM=GIAOVIEN.MABM
GROUP BY TENBM

SELECT  TENBM, MAKHOA, COUNT(*) FROM dbo.BOMON, dbo.GIAOVIEN
WHERE BOMON.MABM=GIAOVIEN.MABM
GROUP BY TENBM, MAKHOA

--Cột hiển thị phải là thuộc tính nằm trong Group by hoặc Agreement Function\
--Lấy ra danh sách giáo viên có lương > lương trung bình của giáo viên

SELECT *FROM dbo.GIAOVIEN 
WHERE LUONG > (SELECT  SUM(LUONG) FROM dbo.GIAOVIEN)/(SELECT COUNT(*) FROM dbo.GIAOVIEN)
	
--Xuất ra danh sách giáo viên và số lượng đề tài giáo viên đó đã làm 

SELECT  gv. HOTEN, COUNT(*) FROM dbo.GIAOVIEN AS gv, dbo.THAMGIADT AS tgdt 
WHERE gv.MAGV = tgdt.MAGV
GROUP BY gv.MAGV, gv.HOTEN

/*
Agreeate Function

AVG()	Returns the average value
COUNT()	Returns the number of rows
FIRST()	Returns the first value
LAST()	Returns the last value
MAX()	Returns the largest value
MIN()	Returns the smallest value
ROUND()	Rounds a numeric field to the number of decimals specified
SUM()	Returns the sum
*/


/*
string function

CHARINDEX	Searches an expression in a string expression and returns its starting position if found
CONCAT()	 
LEFT()	 
LEN() / LENGTH()	Returns the length of the value in a text field
LOWER() / LCASE()	Converts character data to lower case
LTRIM()	 
SUBSTRING() / MID()	Extract characters from a text field
PATINDEX()	 
REPLACE()	 
RIGHT()	 
RTRIM()	 
UPPER() / UCASE()	Converts character data to upper case

*/