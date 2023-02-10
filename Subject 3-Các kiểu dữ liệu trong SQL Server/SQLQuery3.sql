-- Các kiểu dữ liệu hay dùng trong SQL

-- int : Kiểu số nguyên,tập hợp N, ví dụ:-9,-8,-7,7,8,6
-- float: Kiểu số thực, tập hợp R, ví dụ:-0.5, -0.9, 10, 9.6
-- char : Kiểu kí tự, không viết bằng Tiếng Việt được, bộ nhớ cấp phát cứng. Ví dụ A, B, c,d,e,f, char(10)->10 ô nhớ này không ai được đụng vào, luôn giữ 10 ô nhớ 
-- nchar: Kiểu kí tự, có thể lưu Tiếng Việt được,...còn lại tương tự như kiểu char, và bộ nhớ bằng một nữa char thôi vì còn trừa cho Tiếng Việt nữa
-- varchar : Kiểu kí tự.Không viết Tiếng Việt được , bộ nhớ cấp phát động,varchar(10)->10 ô nhớ này chỉ được lấy khi có dữ liệu bên trong.Ví dụ:"Steam"->chỉ dùng 5 ô nhớ 
-- nvarchar : Kiểu kí tự cấp phát động có thể lưu Tiếng Việt
-- Date: Lưu trữ ngày, tháng, năm, giờ ...
-- time : lưu trữ, giờ, phút, giây...
-- bit: Lưu trữ giá trị 0 và 1...	
-- text: Lưu văn bản lớn
-- ntext: Lưu văn bản lớn có tiếng việt

CREATE TABLE Test
(
	Doc NVARCHAR (50), --Khai báo trường Doc kiểu nvarchar cấp phát động 50 ô nhớ
	MaSV CHAR(10), --Khai báo trường MaSV kiểu char cấp phát cứng 10 ô nhớ 
	Birthday Date,
	sex BIT --Lưu giá trị 0 hoặc 1
)
GO
