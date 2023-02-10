-- Unique:Duy nhất -> trong toàn bộ bảng trường nào có từ khoá Unique thì không thể có 2 giá trị trùng nhau
-- Not Null: Trường không đc phép Null
-- Default: Giá trị mặc định của trường đó nếu không gán giá trị Insert

CREATE TABLE TestPrimaryKey1
(
	ID INT PRIMARY KEY,
	Name NVARCHAR(50) DEFAULT N'Hoàng Công Trọng'
)

--Khi đã tạo bảng muốn sửa cột thành primary Key 
GO

ALTER TABLE dbo.TestPrimaryKey ADD PRIMARY KEY (ID)

GO
-- Tạo primary trong bảng không phải ngay khi khai báo
CREATE TABLE tesprimarykey2
(
	ID INT NOT NULL,
	Name NVARCHAR(50) DEFAULT N'Hoàng Công Trọng'
	PRIMARY KEY (ID)
)
GO
--Tạo primarykey mà đặt tên key đó
CREATE TABLE tesprimarykey3
(
	ID INT NOT NULL,
	Name NVARCHAR(50) DEFAULT N'Hoàng Công Trọng'
	CONSTRAINT PK_TES3 -- sau này kháo Key cho dễ
	PRIMARY KEY (ID)
)

GO

--Tạo primarykey sau khi đã tạo bảng và đã đặt tên cho Key đó

CREATE TABLE tesprimarykey4
(
	ID INT NOT NULL,
	Name NVARCHAR(50) DEFAULT N'Hoàng Công Trọng'
)

GO

ALTER TABLE dbo.tesprimarykey4 ADD CONSTRAINT PK_Tes4 PRIMARY KEY(ID)

GO

--Khoá chính có hai trường

CREATE TABLE testprimarykey5
(
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	Name NVARCHAR(50) DEFAULT N'Hoàng Công Trọng'
	PRIMARY KEY(ID1,ID2)
)

GO




INSERT dbo.TestPrimaryKey
(
    ID
)
VALUES
(   0  -- ID - int
  
)
INSERT dbo.TestPrimaryKey
(
    ID
)
VALUES
(   1 -- ID - int
  
)
INSERT dbo.TestPrimaryKey
(
    ID
)
VALUES
(   2  -- ID - int
)
GO
