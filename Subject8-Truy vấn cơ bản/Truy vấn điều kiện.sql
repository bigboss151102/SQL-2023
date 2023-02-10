USE HowKteam

GO

SELECT GV. MAGV, GV. HOTEN, NT. TEN FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT WHERE GV.MAGV=NT.MAGV

--Lấy ra giáo viên có tiền lương >2000

SELECT *FROM dbo.GIAOVIEN WHERE LUONG>2000

--Lấy ra giáo viên nữ và lương >2000

SELECT *FROM dbo.GIAOVIEN WHERE LUONG>2000 AND PHAI=N'Nữ'

--Lấy ra giáo viên lơnms hơn 40 tuổi
--Lấy ra giáo viên lớn  hơn 40 tuổi
--YEAR -> lấy ra năm của ngày sinh
--GETDATE lấy ngày của hiện tại 

SELECT *FROM dbo.GIAOVIEN WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 40

--Lấy ra họ tên giáo viên, năm sinh và tuổi của giáo viên nhỏ hơn 40 tuổi'

SELECT  HOTEN, NGSINH,YEAR(GETDATE())-YEAR(NGSINH) AS N'Tuổi'  FROM dbo.GIAOVIEN WHERE YEAR(GETDATE())-YEAR(NGSINH)  > 40

-- Lấy ra Mã GV, tên GV, và tên khoa của giáo viên đó làm việc
SELECT GV. MAGV, GV. HOTEN, K. TENKHOA FROM dbo.GIAOVIEN AS GV,dbo.BOMON AS BM , dbo.KHOA AS K WHERE GV.MABM = BM.MABM AND BM.MAKHOA=K.MAKHOA

SELECT *FROM dbo.BOMON
SELECT *FROM dbo.GIAOVIEN

--Lấy ra giáo viên là trưởng bộ môn

SELECT gv.* FROM dbo.GIAOVIEN AS gv,dbo.BOMON AS bm WHERE gv.MAGV=bm.TRUONGBM

--Đếm số lượng giáo viên
--COUNT(*) -> đếm số lượng của tất cả record
--COUNT(tên trường nào đó)->đếm số lượng của tên trường đó

SELECT COUNT(*) AS N'Số lượng nhân viên' FROM dbo.GIAOVIEN

--Đếm só lượng ngươi thân của giáo viên có mã GV là 007
SELECT *FROM dbo.GIAOVIEN, dbo.NGUOITHAN WHERE GIAOVIEN.MAGV='007' AND GIAOVIEN.MAGV=NGUOITHAN.MAGV 

--Lấy ra tên giáo viên và tên đề tài người đó tham gia 

SELECT HOTEN, TENDT FROM dbo.GIAOVIEN, dbo.THAMGIADT, dbo.DETAI
WHERE GIAOVIEN.MAGV = THAMGIADT.MAGV AND DETAI.MADT = THAMGIADT.MADT

--Bài tập
--1 Xuất ra số lượng giáo viên của khoa CNTT

SELECT COUNT(*)FROM dbo.GIAOVIEN AS GV,dbo.BOMON AS BM,dbo.KHOA AS K
WHERE GV.MABM=BM.MABM AND BM.MAKHOA=K.MAKHOA AND K.MAKHOA='CNTT'

--3.Xuất ra thông tin giáo viên và đề tài người đó tham gia kho màkeets  quả là đạt

SELECT GV.*FROM dbo.GIAOVIEN AS GV, dbo.THAMGIADT AS TG
WHERE GV.MAGV=TG.MAGV AND TG.KETQUA = N'Đạt'