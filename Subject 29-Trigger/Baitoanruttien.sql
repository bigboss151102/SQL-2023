USE HowKteam
GO 

CREATE TABLE TaiKhoan
(
	Sotk CHAR(3),
	Sotien INT 
	CHECK(Sotien >= 0),
	PRIMARY KEY(Sotk)
)

GO

CREATE TABLE Ruttien
(
	Stt INT,
	Sotk CHAR(3),
	Sotienrut INT,
	PRIMARY KEY(Stt)
)

ALTER TABLE dbo.Ruttien ADD CONSTRAINT FK1 FOREIGN KEY(Sotk) REFERENCES dbo.TaiKhoan(Sotk)

INSERT INTO dbo.TaiKhoan
(
    Sotk,
    Sotien
)
VALUES
(   '111',  -- Sotk - char(3)
    100 -- Sotien - int
    )

INSERT INTO dbo.TaiKhoan
(
    Sotk,
    Sotien
)
VALUES
(   '112',  -- Sotk - char(3)
    160 -- Sotien - int
    )

INSERT INTO dbo.Ruttien
(
    Stt,
    Sotk,
    Sotienrut
)
VALUES
(   1,    -- Stt - int
    111, -- Sotk - char(3)
    40  -- Sotienrut - int
    )

INSERT INTO dbo.Ruttien
(
    Stt,
    Sotk,
    Sotienrut
)
VALUES
(   2,    -- Stt - int
    112, -- Sotk - char(3)
    60  -- Sotienrut - int
    )

SELECT *FROM dbo.TaiKhoan
SELECT *FROM dbo.Ruttien

GO

ALTER TRIGGER TruongRutTien
ON dbo.Ruttien
FOR INSERT
AS 
BEGIN
	DECLARE @sotk CHAR(3)
	DECLARE @sotienco INT
	DECLARE @sotienrut INT
	SELECT @sotk= Sotk, @sotienrut = Sotienrut FROM Inserted
	SELECT  @sotienco = Sotien FROM dbo.TaiKhoan WHERE Sotk = @sotk
	IF (@sotienco < @sotienrut)
		ROLLBACK TRANSACTION
	ELSE
		UPDATE dbo.TaiKhoan
		SET Sotien = Sotien - @sotienrut
		WHERE Sotk = @sotk
END

INSERT INTO dbo.Ruttien
(
    Stt,
    Sotk,
    Sotienrut
)
VALUES
(   3,    -- Stt - int
    112, -- Sotk - char(3)
    60  -- Sotienrut - int
    )

INSERT INTO dbo.Ruttien
(
    Stt,
    Sotk,
    Sotienrut
)
VALUES
(   4,    -- Stt - int
    111, -- Sotk - char(3)
    100  -- Sotienrut - int
    )
SELECT *FROM dbo.TaiKhoan
SELECT *FROM dbo.Ruttien