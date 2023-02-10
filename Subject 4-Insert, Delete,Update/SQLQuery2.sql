

CREATE TABLE Test
(
	MaSo INT,
	Ten NVARCHAR(100),
	NgaySinh DATE,
	Nam BIT,
	DiaChi CHAR(20),
	TienLuong FLOAT
)
GO
-- Thêm dữ liệu
-- Kiểu số ->số bình thường
-- Kiểu kí tự hoặc ngày cần để trong cặp nháy đơn 
-- Kiểu uniocde thì cần có N phía trước cặp nháy đơn N''
INSERT dbo.Test

VALUES
(   13,
    N'Trọng',
    DATEFROMPARTS(2002,11,15),
    1,
    'Thua Thien Hue',
    20000
 )

--Xoá dữ liệu
--Nếu chỉ delete <Tên Bảng> =>Xoá toàn bộ dữ liệu trong Bảng
--Xoá trường mong muốn dùng thêm "WHERE"
--Các toán tử: >,<,>=,=<, AND,OR, =
DELETE dbo.Test WHERE MaSo >12 AND TienLuong > 15000
--Update dữ liệu
--Update dữ liệu với toàn bộ bảng với một trường Update

UPDATE dbo.Test SET TienLuong=17000 

--Update dữ liệu với toàn bộ bảng với nhiều trường update

UPDATE dbo.Test SET TienLuong=17000, DiaChi='Hue'

----Update dữ liệu với toàn bộ bảng với nhiều trường mong muốn

UPDATE dbo.Test SET TienLuong=17000 WHERE Nam=0

