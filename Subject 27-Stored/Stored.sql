USE  HowKteam 
GO

/*
-- Store procudure
 -- Là chương trình hay thủ tục
 -- Ta có thể dùng Transact-SQL EXCUTE (EXEC) để thực thi các stored procedure
 -- Storeed procedure khác với các hàm xử lý là giá trị trả về của chúng
 -- Không chứa trong tên và chúng không được sử dụng trực tiếp trong biểu thức
*/

/*
- Động : Có thể ử dụng khối lệnh, tái sử dụng nhiều lần
- Nhanh hơn :Tự phân tích cú pháp cho tối ưu . Và tạo bản sao để lần chạy sau khồn cần thực thi lại từ đầu
- Bảo mật :Giới hạn quyền cho User nào sử dụng user nào không 
- Giảm bandwidth : Với các gói transaction lớn. Vài ngàn dòng lệnh một lúc thì store sẽ đảm bảo
CREAT PROC <Tên store>
[Paramter nếu có]
AS
BEGIN	
	<cODE xử lý>
END
Nếu chỉ là câu truy vấn thì không cần Begin và End
*/

CREATE PROC USP_Test
@MaGV NVARCHAR(10), @Luong INT
AS 
BEGIN
	SELECT * FROM GIAOVIEN WHERE MAGV = @MaGV AND LUONG = @Luong
END

GO

EXEC USP_Test @MAGV = N'', @Luong = 0
EXEC USP_Test N'', 0

EXECUTE USP_Test @MAGV = N'', @Luong = 0
EXECUTE USP_Test N'', 0

GO


