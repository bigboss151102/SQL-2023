USE HowKteam

GO
-- Có 3 cách khai báo check, giống như khai báo khoá chính hay khoá phụ vậy
-- Cách 1:

CREATE TABLE TestCheck
(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT CHECK( Luong > 3000 AND Luong < 9000)
)

-- Cách 2:
CREATE TABLE TestCheck2
(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT,
	CHECK ( Luong > 3000 AND Luong < 9000)
)

-- Cách 3:

CREATE TABLE TestCheck3
(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT,
)
ALTER TABLE dbo.TestCheck3 ADD CONSTRAINT CK_TEST CHECK(Luong > 3000 AND Luong < 9000)