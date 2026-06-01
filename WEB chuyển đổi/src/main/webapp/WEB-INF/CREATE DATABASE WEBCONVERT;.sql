CREATE DATABASE WEBCONVERT;
GO

USE WEBCONVERT;
GO

CREATE TABLE SanPham (
    MaSP INT IDENTITY(1,1) PRIMARY KEY,
    TenSP NVARCHAR(255) NOT NULL,
    Gia FLOAT NOT NULL,
    MoTa NVARCHAR(500),
    HinhAnh NVARCHAR(1000)
);
GO

INSERT INTO SanPham(TenSP,Gia,MoTa,HinhAnh)
VALUES
(
N'iPhone 15',
25000000,
N'Điện thoại Apple',
'https://images.unsplash.com/photo-1592750475338-74b7b21085ab'
),

(
N'Samsung S25',
22000000,
N'Điện thoại Samsung',
'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf'
),

(
N'Laptop Dell',
18000000,
N'Laptop văn phòng',
'https://images.unsplash.com/photo-1496181133206-80ce9b88a853'
),

(
N'Apple Watch',
18000000,
N'Đồng hồ thông minh Apple',
'https://images.unsplash.com/photo-1546868871-7041f2a55e12'
);

SELECT * FROM SanPham;
GO