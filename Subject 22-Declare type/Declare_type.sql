USE HowKteam
GO

-- kiểu dữ liệu tự định nghĩa
-- Syntax:EXEC	sp_addtype 'Tên Kiểu dữ liệu' , 'Kiểu dữ liệu thực tế', 'NOT NULL'(Có hay không cũng đc)

EXEC sp_addtype 'NNAME','NVARCHAR(100)','NOT NULL'

CREATE TABLE TestType1
(
	Name NNAME,
	Address NVARCHAR(500)
)
GO 

EXEC sp_addtype 'NADDRESS','NVARCHAR(100)','NOT NULL'

-- Xoá type
EXEC sp_droptype 'NADDRESS'