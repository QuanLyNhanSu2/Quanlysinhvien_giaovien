CREATE PROC Sinhvien_Details
@studentID INT
AS
BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL((SELECT SinhvienID FROM Sinhvien WHERE SinhvienID = @studentID),-1);
	IF(@stdid<0)
	BEGIN
		SELECT NULL;
		RETURN;
	END
	SELECT sv.SinhvienID AS [Mã sinh viên],sv.Tensinhvien AS [Tên sinh viên],sv.Ngaysinh AS [Ngày sinh],l.Tenlop AS [Tên lớp] FROM Sinhvien sv
	INNER JOIN Lop l
	ON sv.LopID = l.LopID
	WHERE SinhvienID = @studentID;
END
GO

CREATE PROC Sinhvien_Them
@sinhvienid INT,
@tensinhvien NVARCHAR(50),
@ngaysinh DATETIME,
@tenlop NVARCHAR(50)
AS BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL((SELECT SinhvienID FROM Sinhvien WHERE SinhvienID = @studentID ),-1);
	IF(@stdid>0)
	BEGIN
		RETURN -1;
	END
	DECLARE @lopid INT;
	SELECT @lopid = ISNULL((SELECT LopID FROM Lop WHERE Tenlop = @tenlop),-1)
	IF(@lopid<0)
	BEGIN
		RETURN -1;
	END

	INSERT INTO Sinhvien VALUES(@sinhvienid,@tensinhvien,@ngaysinh,@lopid);
	SELECT @sinhvienid;
END
GO

CREATE PROC Sinhvien_Sua
@sinhvienid INT,
@tensinhvien NVARCHAR(50),
@ngaysinh DATETIME,
@tenlop NVARCHAR(50)
AS BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL((SELECT SinhvienID FROM Sinhvien WHERE SinhvienID = @studentID ),-1);
	IF(@stdid<0)
	BEGIN
		RETURN -1;
	END
	DECLARE @lopid INT;
	SELECT @lopid = ISNULL((SELECT LopID FROM Lop WHERE Tenlop = @tenlop),-1);
	IF(@lopid<0)
	BEGIN
		RETURN -1;
	END

	UPDATE Sinhvien SET Tensinhvien = @tensinhvien,Ngaysinh = @ngaysinh,LopID = @lopid WHERE  SinhvienID = @sinhvienid;
	SELECT @sinhvienid;
END
GO

CREATE PROC Sinhvien_Xoa
@sinhvienid INT
AS
BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL((SELECT SinhvienID FROM Sinhvien WHERE SinhvienID = @sinhvienid),-1);
	IF(@stdid<0)
		RETURN -1
	DELETE FROM Sinhvien WHERE SinhvienID = @sinhvienid;
	SELECT @sinhvienid;
END
GO

CREATE PROC Sinhvien_Timkiem
@tensinhvien NVARCHAR(50)
AS 
BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL(
	(SELECT SinhvienID FROM Sinhvien
	WHERE Tensinhvien LIKE N'%'+@tensinhvien+'%'),
	-1);

	IF(@stdid<0)
		BEGIN
			SELECT NULL;
			RETURN;
		END

	SELECT sv.SinhvienID AS [Mã sinh viên],sv.Tensinhvien AS [Tên sinh viên],sv.Ngaysinh AS [Ngày sinh],l.Tenlop AS [Tên lớp] FROM Sinhvien sv
	INNER JOIN Lop l
	ON sv.LopID = l.LopID
	WHERE Tensinhvien LIKE N'%'+@tensinhvien+'%';
END
GO

CREATE PROC Giaovien_Details
@giaovienid INT
AS
BEGIN
	DECLARE @gvid INT;
	SELECT @gvid = ISNULL((SELECT GiaovienID FROM Giaovien WHERE GiaovienID = @gvid),-1);
	IF(@gvid<0)
	BEGIN
		SELECT NULL;
		RETURN;
	END
	SELECT GiaovienID AS [Mã giáo viên], Tengiaovien AS [Tên giáo viên],Ngaysinh AS [Ngày sinh],Email,Sodienthoai AS [Số điện thoại] FROM Giaovien
	WHERE GiaovienID = @giaovienid
END
GO

CREATE PROC Giaovien_Them
@giaovienid INT,
@tengiaovien NVARCHAR(50),
@ngaysinh DATETIME,
@email NVARCHAR(50),
@sodienthoai NVARCHAR(50)
AS BEGIN
	DECLARE @gvid INT;
	SELECT @giaovienid = ISNULL((SELECT GiaovienID FROM Giaovien WHERE GiaovienID = @giaovienid),-1);
	IF(@gvid>0)
		BEGIN
			SELECT -1;
			RETURN;
		END

	INSERT INTO Giaovien VALUES(@giaovienid,@tengiaovien,@ngaysinh,@email,@sodienthoai)
	SELECT @giaovienid;
END
GO

CREATE PROC Giaovien_Sua
@giaovienid INT,
@tengiaovien NVARCHAR(50),
@ngaysinh DATETIME,
@email NVARCHAR(50),
@sodienthoai NVARCHAR(50)
AS BEGIN
	DECLARE @gvid INT;
	SELECT @giaovienid = ISNULL((SELECT GiaovienID FROM Giaovien WHERE GiaovienID = @giaovienid),-1);
	IF(@gvid<0)
		BEGIN
			SELECT -1;
			RETURN;
		END

	UPDATE Giaovien SET Tengiaovien = @tengiaovien,Ngaysinh = @ngaysinh, Email = @email,Sodienthoai = @sodienthoai WHERE GiaovienID =  @giaovienid;
	SELECT 1;
END
GO

CREATE PROC Giaovien_Xoa
@giaovienid INT
AS
BEGIN
	DECLARE @gvid INT;
	SELECT @giaovienid = ISNULL((SELECT GiaovienID FROM Giaovien WHERE GiaovienID = @giaovienid),-1);
	IF(@gvid<0)
		BEGIN
			SELECT -1;
			RETURN;
		END
	DELETE FROM Giaovien WHERE GiaovienID = @giaovienid;
	SELECT @giaovienid;
END
GO


CREATE PROC Giaovien_Timkiem
@tengiaovien NVARCHAR(50)
AS 
BEGIN
	DECLARE @stdid INT;
	SELECT @stdid = ISNULL(
	(SELECT GiaovienID FROM Giaovien
	WHERE Tengiaovien LIKE N'%'+@tengiaovien+'%'),
	-1);

	IF(@stdid<0)
		BEGIN
			SELECT NULL;
			RETURN;
		END

	SELECT GiaovienID AS [Mã giáo viên],Tengiaovien AS [Tên giáo viên], FROM Giaovien
	WHERE Tengiaovien LIKE N'%'+@tengiaovien+'%';
END
GO

CREATE PROC Thongtingiangday
AS
BEGIN
	SELECT A.Tengiaovien AS [Tên giáo viên],A.GiaovienID AS [Mã giáo viên],A.Tenlop AS [Tên lớp], COUNT(sv.SinhvienID) AS [Sĩ số] FROM 
	(
		SELECT gv.Tengiaovien,gv.GiaovienID,gvl.Tenlop FROM dbo.Giaovien gv
		LEFT JOIN dbo.Giaovien_Lop gvl
		ON gv.GiaovienID = gvl.GiaovienID
	)A 
	LEFT JOIN dbo.Sinhvien sv
	ON a.LopID = sv.LopID
	GROUP BY A.Tengiaovien,A.GiaovienID ,A.Tenlop
	ORDER BY A.Tengiaovien
END