USE HowKteam
GO

--Inner Join kiểu cũ có thể không còn hỗ trợ sau này
--Mọi join cần điều kiện 

SELECT *FROM dbo.GIAOVIEN,dbo.BOMON 
WHERE BOMON.MABM= GIAOVIEN.MABM


--Inner Join kiểu mới đúng chuânr

SELECT *FROM dbo.GIAOVIEN INNER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

--Có thể viết tắt INNER JOIN -> JOIN

SELECT *FROM dbo.KHOA JOIN dbo.BOMON
ON BOMON.MAKHOA = KHOA.MAKHOA 




