USE HowKteam
GO

CREATE TABLE TestAuto
(
	ID INT PRIMARY KEY IDENTITY,
	-- TỰ TĂNG TRƯỜNG NÀY PHẢI LÀ SỐ 
	-- MẶC ĐỊNH BẮT ĐẦU TỪ 1 VÀ TĂNG LÊN 1 ĐƠN VỊ
	Name NVARCHAR(100)
)

INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
INSERT INTO dbo.TestAuto
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

SELECT *FROM dbo.TestAuto


CREATE TABLE TestAuto2
(
	ID INT PRIMARY KEY IDENTITY(5,10),
	--Mặc định bắt đầu là 5, mỗi lần tăng lên 10 đơn vị
	Name NVARCHAR(100)
)


INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )

INSERT INTO dbo.TestAuto2
(
    Name
)
VALUES
(N'' -- Name - nvarchar(100)
    )
SELECT *FROM dbo.TestAuto2 