USE HowKteam
GO

--insert into select ->Coppy dữ liệu vào bảng đã tồn tại

SELECT *INTO CloneGV
FROM dbo.GIAOVIEN
WHERE 1>2

INSERT INTO CloneGV 
SELECT *FROM dbo.GIAOVIEN

SELECT *FROM dbo.CloneGV