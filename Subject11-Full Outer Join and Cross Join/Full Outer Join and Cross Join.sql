﻿USE HowKteam

GO

--GOM HAI BẢNG LẠI THEO ĐIỀU KIỆN.BÊN NÀO KHÔNG CÓ DỮ LIỆU THÌ ĐỂ NULL

SELECT *FROM dbo.BOMON FULL OUTER JOIN dbo.GIAOVIEN
ON GIAOVIEN.MABM = BOMON.MABM

--CROSS JOIN LÀ TỔ HỢP MỖI RECORD CỦA BẢNG A VỚI TẤT CẢ CÁC RECORD ỦA BẢNG B

SELECT *FROM dbo.GIAOVIEN CROSS JOIN dbo.BOMON






