USE HowKteam

GO

--Xuất ra số lượng giáo viên trong từng bộ môn mà số giáo viên >2
--having -> như Where của select nhưng giành cho Group by
--having là where của group by

SELECT  BM.MABM , COUNT(*) AS SLGV FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM
WHERE BM.MABM=GV.MABM
GROUP BY BM.MABM
HAVING COUNT(*)>1

--Xuất ra mức lương và tổng tuổi của giáo viên nhận mức lương đó
--và có người thân
--và tuổi phải lớn hơn tuổi trung binh

SELECT  GV.LUONG, SUM(YEAR(GETDATE())-YEAR(GV.NGSINH))FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT
WHERE GV.MAGV= NT.MAGV
AND GV.MAGV IN (SELECT  MAGV FROM dbo.NGUOITHAN)
GROUP BY GV.LUONG, GV.NGSINH
HAVING YEAR(GETDATE())-YEAR(GV.NGSINH) > 
(
	(SELECT SUM(YEAR(GETDATE())-YEAR(GV.NGSINH)) FROM dbo.GIAOVIEN)
	/ (SELECT  COUNT(*) FROM dbo.GIAOVIEN)
)

SELECT LUONG, SUM(YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH)) FROM dbo.GIAOVIEN, dbo.NGUOITHAN
WHERE GIAOVIEN.MAGV = NGUOITHAN.MAGV
AND GIAOVIEN.MAGV IN (SELECT MaGV FROM dbo.NGUOITHAN)
GROUP BY LUONG, GIAOVIEN.NGSINH
HAVING YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH) > 
(
	(SELECT SUM(YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH)) FROM dbo.GIAOVIEN)
	/ (SELECT COUNT(*) FROM dbo.GIAOVIEN)
)