--DROP DATABASE IF EXISTS SchoolSuppliesShop; 

CREATE DATABASE SchoolSuppliesShop;

USE [SchoolSuppliesShop];
-- Tạo bảng [dbo].[Users]
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1),
	[UserName] [nvarchar](50) PRIMARY KEY NOT NULL ,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Email] [nvarchar](50)  NULL,
	[BirthDay] date NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[status] bit NOT NULL
)

INSERT INTO [dbo].[Users] ([UserName], [FullName], [Password], [Address],[Image], [Email], [BirthDay], [Phone], [RoleID], [status])
VALUES 
    ('john_doe', 'John Doe', 'password123', N'123 Main St, CityA', 'images/users/user.png', 'aaaa@gmail.com', '2003-08-09', '12345678901', 1, 1),
	('phuuthanh2003', N'Phùng Hữu Thành', '123', N'60 Nguyễn Văn Trỗi', 'images/users/thanh.png', 'phuuthanh20033@gmail.com', '2003-08-09', '0707064154', 1 , 1),
	('john_doeee', N'John Doe', 'password123', N'123 Main St, CityA', 'images/users/user.png', 'aaaa@gmail.com', '2003-08-09', '12345678901', 2, 1),
	('user1', N'Khoái ăn sang', 'password123', N'456 Oak St, CityB', 'images/users/user1.png', 'phunghthanh2203@gmail.com', '1995-02-15', '9876543210', 2, 1),
    ('user2', N'User Two', 'password456', N'789 Pine St, CityC', 'images/users/user2.png', 'user2@gmail.com', '1990-07-22', '1239874560', 2, 1),
    ('user3', N'User Three', 'password789', N'Chả sợ chi', 'images/users/user3.png', 'user3@gmail.com', '1988-11-30', '6543217890', 2, 1),
    ('user4', N'User Four', 'pass123word', N'202 Elm St, CityE', 'images/users/user4.png', 'user4@gmail.com', '1992-04-18', '7890123456', 2, 0),
    ('user5', N'Tối em có sang', 'pass456word', N'303 Birch St, CityF', 'images/users/user5.png', 'user5@gmail.com', '1998-09-03', '3456789012', 2, 1),
    ('user6', N'Nho từ điển', 'pass789word', N'404 Cedar St, CityG', 'images/users/user6.png', 'user6@gmail.com', '1993-12-25', '9012345678', 2, 1),
    ('user7', N'User Seven', 'pass789word', N'Ban lãnh đạo', 'images/users/user7.png', 'user7@gmail.com', '1991-06-10', '5678901234', 2, 1),
    ('user8', N'User Eight', 'pass123word', N'606 Elm St, CityI', 'images/users/user8.png', 'user8@gmail.com', '1994-03-27', '2345678901', 2, 1),
    ('user9', N'User Nine', 'pass456word', N'707 Oak St, CityJ', 'images/users/user9.png', 'user9@gmail.com', '1997-08-14', '8901234567', 2, 1),
    ('user10', N'Cai một hún', 'pass789word', N'Người đàn bà vu khống', 'images/users/user10.png', 'user10@gmail.com', '1996-01-05', '4567890123', 2, 1),
	('11ne', N'Tính anh thật tồi', 'pass123word', N'Có chỗ đứng', 'images/users/useR11.png', 'user4@gmail.com', '2003-04-18', '7890123456', 2, 0),
    ('12dau', N'Ngủ đi', 'pass456word', N'303 Birch St, CityF', 'images/users/user12.png', 'user5@gmail.com', '1998-09-03', '3456789012', 2, 1),
    ('13kia', N'Đàn ông đích thực', 'pass789word', N'404 Cedar St, CityG', 'images/users/user13.png', 'user6@gmail.com', '1993-12-25', '9012345678', 2, 1),
    ('14day', N'Thế em là mây', 'pass789word', N'505 Pine St, CityH', 'images/users/user14.png', 'user7@gmail.com', '1991-06-10', '5678901234', 2, 1),
    ('15do', N'Càng nặng ký', 'pass123word', N'Không dám bung cánh vì sợ em tung cánh', 'images/users/user15.png', 'user8@gmail.com', '1994-03-27', '2345678901', 2, 1),
    ('16roi', N'Tôi lấy vợ', 'pass456word', N'Một tay bắt cọp', 'images/users/user16.png', 'user9@gmail.com', '1997-08-14', '8901234567', 2, 1);

-- Tạo bảng [dbo].[Categories]
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	CONSTRAINT [PK_Categories] PRIMARY KEY([CategoryID])
)

INSERT INTO [dbo].[Categories] ([CategoryName], [Description])
VALUES 
    ('Books', N'Sách học tập và tài liệu giáo khoa là những công cụ quan trọng giúp học sinh tiếp cận kiến thức một cách hiệu quả, với đầy đủ các cấp học và môn học.'),
    ('Stationery', N'Văn phòng phẩm bao gồm bút viết, sổ tay, bìa đựng tài liệu và nhiều vật dụng cần thiết khác để phục vụ cho việc học tập và làm việc. Đảm bảo chất lượng và sự đa dạng cho mọi nhu cầu.'),
    ('Backpacks', N'Ba lô và túi xách dành cho học sinh, sinh viên với thiết kế tiện lợi, phong cách hiện đại, và chất liệu bền bỉ, giúp việc mang theo đồ dùng học tập dễ dàng hơn.'),
    ('Electronics', N'Các thiết bị điện tử như máy tính cầm tay, máy tính bảng, và phụ kiện hỗ trợ học tập, giúp học sinh tiếp cận công nghệ trong quá trình học tập và nghiên cứu.'),
    ('Gift Sets', N'Bộ quà tặng dụng cụ học tập bao gồm nhiều sản phẩm hữu ích như bút viết, sổ tay, bìa hồ sơ và các vật dụng hỗ trợ học tập, phù hợp cho những dịp tặng quà học sinh.');

-- Tạo bảng [dbo].[Suppliers]
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
	CONSTRAINT [PK_Suppliers] PRIMARY KEY([SupplierID])
)


INSERT INTO [dbo].[Suppliers] ([CompanyName], [ContactName], [Country], [Phone], [HomePage])
VALUES 
    ('Văn Phòng Phẩm Hồng Hà', 'Nguyễn Văn A', 'Vietnam', '+84 24 1234 5678', 'http://www.hongha.vn'),
    ('Công Ty Thiên Long', 'Trần Thị B', 'Vietnam', '+84 28 9876 5432', 'http://www.thienlonggroup.com'),
    ('An Phát', 'Lê Minh C', 'Vietnam', '+84 24 3456 7890', 'http://www.anphat.com'),
    ('Thiết Bị Giáo Dục Thành Phát', 'Nguyễn Văn D', 'Vietnam', '+84 28 2345 6789', 'http://www.thanhphat.edu.vn'),
    ('Xuân Mai', 'Phạm Thị E', 'Vietnam', '+84 24 3456 7890', 'http://www.xuanmai.vn'),
    ('Dụng Cụ Học Sinh Tân Hương', 'Hoàng Văn F', 'Vietnam', '+84 28 555 1234', 'http://www.tanhuong.vn'),
    ('Văn Phòng Phẩm An Lộc', 'Đào Thị G', 'Vietnam', '+84 24 1234 5678', 'http://www.anloc.vn'),
    ('Bút Bi Hoàng Gia', 'Nguyễn Hoàng H', 'Vietnam', '+84 28 555 6789', 'http://www.butbivietnam.vn'),
    ('Công Ty VPP Đại Đồng', 'Đinh Văn I', 'Vietnam', '+84 24 8765 4321', 'http://www.vppdaidong.com'),
    ('Công Ty Hồng Minh', 'Phạm Văn J', 'Vietnam', '+84 24 3456 7890', 'http://www.hongminh.com.vn'),
    ('Văn Phòng Phẩm Thành Đạt', 'Nguyễn Thị K', 'Vietnam', '+84 24 2345 6789', 'http://www.thanhdat.vn'),
    ('Dụng Cụ Học Sinh Mai Anh', 'Lê Văn L', 'Vietnam', '+84 24 1234 5678', 'http://www.maianh.vn'),
    ('Nhà Sách Phương Nam', 'Trần Văn M', 'Vietnam', '+84 28 555 7890', 'http://www.phuongnam.com.vn'),
    ('Nhà Sách Tiền Phong', 'Nguyễn Thị N', 'Vietnam', '+84 24 9876 5432', 'http://www.tienphong.vn'),
    ('Thiết Bị Giáo Dục Văn Lang', 'Phạm Văn O', 'Vietnam', '+84 24 2345 6789', 'http://www.vanlang.vn');


-- Tạo bảng [dbo].[Products]
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](100) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[QuantitySold] [int] NULL,
	[StarRating] [smallint] NULL,
	[Discontinued] [bit] NULL,
	[image] [nvarchar](max) NULL,
	[describe] [nvarchar](max) NULL,
	[releaseDate] [date] NULL,
	[Discount] [float] NULL,
	[status] bit Not null,
	CONSTRAINT [PK_Products] PRIMARY KEY([ProductID]),
	CONSTRAINT [FK_Products_Supplier]
    FOREIGN KEY ([SupplierID])
    REFERENCES [dbo].[Suppliers] ([SupplierID]) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT [FK_Products_Category] 
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories] ([CategoryID]) 
)

INSERT INTO [dbo].[Products] (
    [ProductName], 
    [SupplierID], 
    [CategoryID], 
    [QuantityPerUnit], 
    [UnitPrice], 
    [UnitsInStock], 
    [QuantitySold], 
    [StarRating], 
    [Discontinued],
	[image],
	[describe],
	[releaseDate],
	[Discount],
	[status]
	)
VALUES 
    ('Bút bi Thiên Long TL-079', 1, 1, '100 cái', 19.99, 100, 20, 5, 0, 'images/products/Viết/1-1.png, images/products/Sách/1-2.png', 
	N'Bút bi Thiên Long TL-079 có nét mực êm, trơn mượt, giúp chữ viết sắc nét và không bị lem. Thiết kế đơn giản nhưng chắc chắn, rất phù hợp cho học sinh và nhân viên văn phòng.', '2023-10-02',0.7, 1),

    ('Sách giáo khoa Toán 12', 2, 1, '1 quyển', 29.99, 50, 10, 3, 0, 'images/products/Sách/2-1.png, images/products/Viết/1-2.png', 
	N'Sách giáo khoa Toán lớp 12 cung cấp kiến thức nền tảng cho học sinh chuẩn bị cho kỳ thi đại học. Nội dung phong phú, bám sát chương trình học.', '2023-11-02',0.5, 1),

    ('Tập 100 trang Hồng Hà', 3, 1, '100 trang', 39.99, 75, 15, 3, 0, 'images/products/Tập/3-1.png, images/products/Viết/1-2.png', 
	N'Tập vở Hồng Hà 100 trang với giấy dày, không nhòe mực, rất phù hợp cho học sinh và sinh viên ghi chép.', '2016-10-02',0.3, 1),

    ('Bìa hồ sơ A4', 4, 1, '1 cái', 49.99, 120, 30, 4, 0, 'images/products/Bìa/4-1.png, images/products/Sách/1-2.png', 
	N'Bìa hồ sơ A4 với chất liệu nhựa cao cấp, độ bền cao, bảo quản hồ sơ giấy tờ an toàn và tiện lợi.', '2023-10-02',0.45, 1),

    ('Thước kẻ 30cm Thiên Long', 5, 1, '1 cái', 59.99, 80, 25, 5, 0, 'images/products/DụngCụ/5-1.png, images/products/Viết/1-2.png', 
	N'Thước kẻ Thiên Long 30cm, vạch chia rõ ràng, giúp đo chính xác, tiện lợi cho học sinh và nhân viên văn phòng.', '2023-05-02',0.7, 1),
    
    ('Bút lông bảng', 6, 1, '1 cái', 69.99, 60, 12, 5, 0, 'images/products/Viết/6-1.png, images/products/Sách/1-2.png', 
	N'Bút lông bảng viết mực êm, không phai, phù hợp cho giảng dạy trên bảng trắng.', '2009-07-02',0.3, 1),

    ('Sổ tay ghi chú', 7, 1, '1 quyển', 79.99, 90, 18, 4, 0, 'images/products/Sổ/7-1.png, images/products/Viết/1-2.png', 
	N'Sổ tay ghi chú nhỏ gọn, tiện lợi cho nhân viên văn phòng và sinh viên ghi lại thông tin cần thiết.', '2023-02-02',0.45, 1),

    ('Bút chì gỗ', 8, 1, '1 cái', 89.99, 110, 22, 4, 0, 'images/products/Viết/8-1.png, images/products/Sách/1-2.png',
	N'Bút chì gỗ bền chắc, viết êm, thích hợp cho học sinh vẽ và viết.', '2022-02-02',0.5, 1),

    ('Giấy A4 500 tờ', 9, 1, '500 tờ', 99.99, 150, 35, 3, 0, 'images/products/Giấy/9-1.png, images/products/Viết/1-2.png',
	N'Giấy A4 chất lượng cao, phù hợp cho in ấn văn phòng và học tập.', '2023-09-01',0.7, 1),

    ('Túi đựng bút', 10, 1, '1 cái', 109.99, 70, 14, 5, 0, 'images/products/PhụKiện/10-1.png, images/products/Viết/1-2.png', 
	N'Túi đựng bút đa năng, nhỏ gọn, phù hợp cho học sinh và sinh viên.', '2021-07-02',0.3, 1),

	--
	('Bút Jean Paul Gaultier', 2, 1, '100ml', 29.99, 100, 20, 4, 0, 'images/products/Viết/11-1.png, images/products/Viết/11-2.png', 
    N'Bút bi với thiết kế ấn tượng, mực êm, tạo cảm giác dễ chịu khi viết.', '2023-11-12', 0.3, 1),

    ('Sách Louis Vuitton', 1, 1, '100ml', 29.99, 100, 10, 3, 0, 'images/products/Sách/12-1.png, images/products/Sách/12-2.png', 
    N'Sách Louis Vuitton City of Stars mang đến những câu chuyện thú vị, đầy cảm hứng về cuộc sống.', '2023-11-04', 0.3, 1),

    ('Tập GIORGIO ARMANI', 4, 1, '125ml 75ml', 39.99, 75, 15, 4, 0, 'images/products/Tập/13-1.png, images/products/Tập/13-2.png', 
    N'Tập GIORGIO ARMANI có chất lượng giấy cao, dễ viết, phù hợp cho học sinh và sinh viên.', '2016-10-02', 0.3, 1),

    ('Bút PACO RABANNE', 3, 1, '125ml 75ml', 49.99, 120, 30, 2, 0, 'images/products/Viết/14-1.png, images/products/Viết/14-2.png', 
    N'Bút PACO RABANNE với thiết kế đẹp mắt, mang lại cảm giác chắc tay khi viết.', '2023-10-02', 0.45, 1),

    ('Sách DOLCE GABBANA', 6, 1, '100ml 125ml', 59.99, 80, 25, 4, 0, 'images/products/Sách/15-1.png, images/products/Sách/15-2.png', 
    N'Sách DOLCE GABBANA LIGHT BLUE SUMMER VIBES được thiết kế bởi giám đốc sáng tạo Jeremy Scott.', '2023-05-02', 0.7, 1),
   
    ('Bút HUGO BOSS', 5, 1, '100ml 125ml', 59.99, 60, 12, 3, 0, 'images/products/Viết/16-1.png, images/products/Viết/16-2.png', 
    N'Bút HUGO BOSS có màu sắc thanh lịch và dễ sử dụng, thích hợp cho học sinh và văn phòng.', '2009-06-02', 0.7, 1),

    ('Sổ tay YSL MYSLF', 10, 1, '75ml 100ml', 29.99, 90, 18, 5, 0, 'images/products/Sổ/17-1.png, images/products/Sổ/17-2.png', 
    N'Sổ tay YSL MYSLF thiết kế tinh tế, dễ dàng mang theo bên mình, giúp ghi chép tiện lợi.', '2023-02-02', 0.7, 1),

    ('Tập CHANEL', 9, 1, '100ml', 59.99, 110, 22, 3, 0, 'images/products/Tập/18-1.png, images/products/Tập/18-2.png', 
    N'Tập CHANEL ALLURE HOMME với giấy dày, phù hợp cho việc ghi chép hoặc vẽ.', '2022-02-03', 0.5, 1),

    ('Bút LOUIS VUITTON', 8, 1, '100ml 125ml', 79.99, 150, 35, 3, 0, 'images/products/Viết/19-1.png, images/products/Viết/19-2.png', 
    N'Bút LOUIS VUITTON PACIFIC CHILL mang đến cảm giác thư giãn, dễ dàng sử dụng cho công việc văn phòng.', '2023-11-01', 0.7, 1),

    ('Giấy JULIETTE HAS A GUN', 7, 1, '75ml 125ml', 49.99, 70, 14, 2, 0, 'images/products/Giấy/20-1.png, images/products/Giấy/20-2.png', 
    N'Giấy JULIETTE HAS A GUN với chất liệu cao cấp, dày dặn, không bị nhòe mực.', '2021-07-12', 0.3, 1),

	-- 10 products for school supplies (Converted from the perfume data)
    ('BỘ VỎ BÚT KILIAN GOOD GIRL GONE BAD', 1, 2, '50ml', 19.99, 100, 20, 4, 0, 'images/products/Women/1-1.png, images/products/Women/1-2.png', 
    N'Bộ vỏ bút Kilian Good Girl Gone Bad mở đầu với thiết kế tinh tế và hiện đại, mang lại một cảm giác thanh thoát, nhẹ nhàng cho người sử dụng. Chất liệu cao cấp và kiểu dáng sang trọng là lựa chọn hoàn hảo cho học sinh, sinh viên.', '2023-05-01',0.7, 1),

    ('BỘ GÌ MÀ QUÁ ĐẸP KILIAN LOVE DON’T BE SHY EDP', 2, 2, '50ml', 29.99, 50, 10, 5, 0,'images/products/Women/2-1.png, images/products/Women/2-2.png', 
    N'Bộ dụng cụ học tập này không chỉ bền mà còn dễ sử dụng, mang lại sự thoải mái cho người dùng. Những chiếc vỏ bút, thước kẻ này được thiết kế với công năng tối ưu cho mọi học sinh.', '2023-05-11',0.5, 1),

    ('BỘ DỤNG CỤ LANCOME IDOLE L’INTENSE EDP', 3, 2, '75ml', 39.99, 75, 15, 4, 0,'images/products/Women/3-1.png, images/products/Women/3-2.png', 
    N'Lancome mang đến bộ dụng cụ học tập độc đáo này với thiết kế chắc chắn, bền bỉ, tạo cảm giác dễ chịu cho người sử dụng trong suốt cả ngày dài học tập.', '2019-09-08', 0.45, 1),

    ('BỘ THƯC GIẢM MỆT GUCCI FLORA GORGEOUS MAGNOLIA', 4, 2, '70ml', 49.99, 120, 30, 4, 0,'images/products/Women/4-1.png, images/products/Women/4-2.png', 
    N'Gucci Flora Gorgeous Magnolia là bộ dụng cụ học tập giúp giảm mệt mỏi, mang đến cảm giác tươi mới mỗi lần sử dụng. Chất liệu vải mềm mại, không gian học tập luôn dễ chịu và thoải mái.', '2023-08-09',0.7, 1),

    ('GIOIA GIORGIO ARMANI PRIVE ROSE DARABIE', 5, 2, '100ml', 59.99, 80, 25, 4, 0,'images/products/Women/5-1.png, images/products/Women/5-2.png', 
    N'Bộ sản phẩm mang đến sự sang trọng trong thiết kế, vừa thời trang vừa tiện dụng, giúp học sinh và sinh viên sắp xếp sách vở và đồ dùng học tập một cách gọn gàng và khoa học.', '2020-08-11',0.3, 1),

    ('BỘ BÚT GUCCI A SONG FOR THE ROSE', 6, 2, '100ml', 69.99, 60, 12, 5, 0,'images/products/Women/6-1.png, images/products/Women/6-2.png', 
    N'Gucci A Song For The Rose mang đến bộ bút vẽ và dụng cụ học tập cao cấp, thiết kế tinh xảo và dễ sử dụng, thích hợp cho các học sinh yêu thích nghệ thuật và sáng tạo.', '2023-01-11',0.45, 1),

    ('DỤNG CỤ DIOR JOY EAU DE PARFUM INTENSE', 7, 2, '90ml', 79.99, 90, 18, 3, 0, 'images/products/Women/7-1.png, images/products/Women/7-2.png', 
    N'JOY by Dior là bộ dụng cụ học tập mang lại niềm vui và sự tập trung khi học. Sản phẩm được thiết kế để giúp người sử dụng thư giãn và sáng tạo trong quá trình học tập.', '2019-02-11',0.5, 1),

    ('BỘ ĐIỀU CHỈNH HỌC TẬP CAROLINA HERRERA VERY GOOD GIRL GLAM', 8, 2, '80ml', 89.99, 110, 22, 4, 0, 'images/products/Women/8-1.png, images/products/Women/8-2.png', 
    N'Bộ dụng cụ học tập Carolina Herrera được thiết kế để cải thiện không gian học tập của bạn, mang lại sự thoải mái tối đa và giúp bạn tập trung vào việc học.', '2023-02-12',0.7, 1),

    ('BỘ CÔNG CỤ JO MALONE ORANGE BLOSSOM', 9, 2, '30ml', 99.99, 150, 35, 4, 0, 'images/products/Women/9-1.png, images/products/Women/9-2.png', 
    N'Bộ công cụ học tập Jo Malone này bao gồm các dụng cụ học tập chất lượng cao, giúp bạn học tập hiệu quả và tạo cảm giác thư giãn mỗi khi sử dụng.', '2010-12-08', 0.45, 1),

    ('BỘ DỤNG CỤ CALVIN KLEIN CK EVERYONE', 10, 2, '100ml', 109.99, 70, 14, 5, 0, 'images/products/Women/10-1.png, images/products/Women/10-2.png', 
    N'Bộ dụng cụ học tập Calvin Klein CK dành cho học sinh, sinh viên với thiết kế gọn nhẹ, dễ sử dụng và mang lại hiệu quả cao trong việc tổ chức không gian học tập.', '2020-07-12', 0.3, 1),

	--
	('Bút Bi LANCOME LA VIE EST BELLE', 10, 2, '50ml 75ml', 39.99, 100, 20, 4, 0, 'images/products/Viết/11-1.png, images/products/Viết/11-2.png', 
N'Bút Bi LANCOME LA VIE EST BELLE có thiết kế tinh tế, với sự kết hợp hoàn hảo giữa sự mềm mại của Hoa Mộc tê và sự quyến rũ của Hoa Nhài.', '2023-07-01', 0.7, 1),

('Bút Dạ QUỐC TẾ JEAN PAUL CLASSIQUE', 9, 2, '100ml', 29.99, 50, 10, 4, 0, 'images/products/Viết/12-1.png, images/products/Viết/12-2.png', 
N'Bút Dạ QUỐC TẾ JEAN PAUL CLASSIQUE mang đến sự tinh tế, với mùi hương thơm ngọt ngào, tỏa sáng trong những bài viết của bạn.', '2023-05-10', 0.5, 1),

('Bút Bi JEAN PAUL GAULTIER LA BELLE', 8, 2, '75ml 100ml', 39.99, 75, 15, 5, 0, 'images/products/Viết/13-1.png, images/products/Viết/13-2.png',
N'Bút Bi JEAN PAUL GAULTIER LA BELLE mang lại sự mềm mại, quyến rũ trong từng nét chữ của bạn.', '2019-09-08', 0.3, 1),

('Bút Lông GUCCI BLOOM PROFUMO DI FIORI', 7, 2, '5ml 70ml 100ml', 49.99, 120, 30, 4, 0, 'images/products/Viết/14-1.png, images/products/Viết/14-2.png', 
N'Bút Lông GUCCI BLOOM PROFUMO DI FIORI mang lại cảm giác tươi mới với sự kết hợp hoàn hảo của các loài hoa.', '2023-08-09', 0.3, 1),

('Bút Dạ YSL LIBRE L ABSOLU PLATINE', 6, 2, '90ml', 39.99, 80, 25, 3, 0, 'images/products/Viết/15-1.png, images/products/Viết/15-2.png', 
N'Bút Dạ YSL LIBRE L ABSOLU PLATINE giúp bạn viết lên những ý tưởng tuyệt vời với cảm giác thư giãn và tinh tế.', '2020-08-11', 0.3, 1),

('Bút Màu VERSACE POUR FEMME DYLAN PURPLE', 4, 2, '5ml 100ml', 49.99, 60, 12, 2, 0, 'images/products/Viết/16-1.png, images/products/Viết/16-2.png', 
N'Bút Màu VERSACE POUR FEMME DYLAN PURPLE mang lại cho bạn sự tự tin và nét đẹp độc đáo trong từng nét vẽ.', '2023-01-11', 0.45, 1),

('Bút Lông VICTORIA’S SECRET TEASE FLOWER', 5, 2, '100ml', 79.99, 90, 18, 3, 0, 'images/products/Viết/17-1.png, images/products/Viết/17-2.png', 
N'Bút Lông VICTORIA’S SECRET TEASE FLOWER giúp bạn tạo nên những tác phẩm nghệ thuật với sự kết hợp hoàn hảo của các màu sắc tươi sáng.', '2019-02-11', 0.5, 1),

('Bút Dạ JO MALONE LONDON BLACKBERRY & BAY', 3, 2, '80ml', 89.99, 110, 22, 4, 0, 'images/products/Viết/18-1.png, images/products/Viết/18-2.png', 
N'Bút Dạ JO MALONE LONDON BLACKBERRY & BAY mang đến sự sang trọng và tinh tế, giúp bạn viết ra những ý tưởng sáng tạo.', '2023-02-12', 0.7, 1),

('Bút Bi BVLGARI OMNIA GOLDEN CITRINE', 2, 2, '30ml 75ml, 100ml', 99.99, 150, 35, 5, 0, 'images/products/Viết/19-1.png, images/products/Viết/19-2.png', 
N'Bút Bi BVLGARI OMNIA GOLDEN CITRINE có kiểu dáng sang trọng, giúp bạn cảm thấy tự tin khi sử dụng trong công việc học tập.', '2010-12-10', 0.45, 1),

('Bút Màu BVLGARI SPLENDIDA PATCHOULI TENTATION', 1, 2, '100ml', 109.99, 70, 14, 4, 0, 'images/products/Viết/20-1.png, images/products/Viết/20-2.png', 
N'Bút Màu BVLGARI SPLENDIDA PATCHOULI TENTATION mang lại cảm giác nhẹ nhàng và quyến rũ trong từng nét vẽ.', '2005-07-12', 0.3, 1),

	('Bút Bi KILIAN CAN’T STOP LOVING YOU', 1, 4, '50ml', 19.99, 100, 20, 4, 0, 'images/products/Unisex/1-1.png, images/products/Unisex/1-2.png', 
N'Bút Bi KILIAN CAN’T STOP LOVING YOU mang đến sự ấm áp và nồng nàn trong từng nét vẽ.', '2023-02-11', 0.7, 1),

('Bút Dạ NAUTICA VOYAGE N-83', 2, 4, '100ml', 29.99, 50, 10, 3, 0, 'images/products/Unisex/2-1.png, images/products/Unisex/2-2.png', 
N'Bút Dạ NAUTICA VOYAGE N-83 thể hiện sự quyết đoán với phong cách mạnh mẽ trong mỗi nét vẽ.', '2022-01-12', 0.45, 1),

('Bút Lông JEAN PAUL GAULTIER LE MALE ELIXIR', 3, 4, '75ml', 39.99, 75, 15, 5, 0, 'images/products/Unisex/3-1.png, images/products/Unisex/3-2.png', 
N'Bút Lông JEAN PAUL GAULTIER LE MALE ELIXIR mang đến hương thơm ngọt ngào, cuốn hút với sự sáng tạo trong mỗi nét viết.', '2023-01-14', 0, 1),

('Bút Bi KILIAN LOVE DON’T BE SHY', 4, 4, '50ml', 49.99, 120, 30, 5, 0, 'images/products/Unisex/4-1.png, images/products/Unisex/4-2.png', 
N'Bút Bi KILIAN LOVE DON’T BE SHY với hương thơm dễ chịu, là lựa chọn hoàn hảo để viết ra những ý tưởng đầy sáng tạo.', '2020-11-12', 0.3, 1),

('Bút Lông LANCOME IDOLE L’INTENSE', 5, 4, '75ml', 59.99, 80, 25, 5, 0, 'images/products/Unisex/5-1.png, images/products/Unisex/5-2.png', 
N'Bút Lông LANCOME IDOLE L’INTENSE mang lại sự nồng nàn và quyến rũ, là công cụ hoàn hảo cho những người đam mê nghệ thuật viết.', '2023-12-09', 0.7, 1),

('Bút Dạ LANCOME HYPNOSE', 5, 4, '75ml', 59.99, 80, 25, 5, 0, 'images/products/Unisex/6-1.png, images/products/Unisex/6-2.png', 
N'Bút Dạ LANCOME HYPNOSE mang đến sự ấm áp, gợi cảm, là lựa chọn hoàn hảo cho những buổi viết thư tình lãng mạn.', '2023-03-09', 0.5, 1),

('Bút Màu CAROLINA HERRERA BAD BOY LE PARFUM', 7, 4, '100ml', 79.99, 90, 18, 4, 0, 'images/products/Unisex/7-1.png, images/products/Unisex/7-2.png', 
N'Bút Màu CAROLINA HERRERA BAD BOY LE PARFUM mang đến sự mạnh mẽ, quyết đoán trong từng nét chữ.', '2023-02-02', 0.45, 1),

('Bút Bi PACO RABANNE 1 MILLION', 8, 4, '100ml', 20.15, 110, 22, 4, 0, 'images/products/Unisex/8-1.png, images/products/Unisex/8-2.png', 
N'Bút Bi PACO RABANNE 1 MILLION có độ bền cao, giúp bạn thể hiện bản lĩnh trong từng dòng chữ.', '2022-02-02', 0.5, 1),

('Bút Lông KLEIN CK EVERYONE', 9, 4, '80ml', 99.99, 150, 35, 2, 0, 'images/products/Unisex/9-1.png, images/products/Unisex/9-2.png', 
N'Bút Lông KLEIN CK EVERYONE là công cụ lý tưởng để viết lên những cảm hứng mới mỗi ngày.', '2023-09-01', 0.7, 1),

('Bút Dạ PACO RABANNE FAME', 7, 4, '90ml', 79.99, 90, 18, 3, 0, 'images/products/Unisex/10-1.png, images/products/Unisex/10-2.png', 
N'Bút Dạ PACO RABANNE FAME mang đến sự ngọt ngào, quyến rũ trong từng nét viết với sự kết hợp của Xoài và Đàn hương.', '2019-02-11', 0.5, 1),

	-- 10 school supplies products
    ('SỔ TAY LOUIS VUITTON ROSE DES VENTS', 1, 3, '50ml', 19.99, 100, 20, 5, 0, 'images/products/Kids/1-1.png, images/products/Kids/1-2.png',
    N'Sổ tay Louis Vuitton, tinh tế và sang trọng với chất liệu da cao cấp. Cảm nhận sự tự do và sáng tạo khi ghi chép, học tập với chiếc sổ này.', '2009-03-11', 0.7, 1),

    ('BÚT BI LE LABO BERGAMOTE 22 EDP', 2, 3, '50ml', 29.99, 50, 10, 2, 0, 'images/products/Kids/2-1.png, images/products/Kids/2-2.png',
    N'Bút bi Le Labo, mang đến sự thoải mái và mượt mà khi viết. Sự kết hợp hoàn hảo giữa sự mạnh mẽ và thanh thoát.', '2023-04-12', 0.3, 1),

    ('CẶP SÁCH CREED SILVER MOUNTAIN WATER', 3, 3, '20ml', 39.99, 75, 15, 4, 0, 'images/products/Kids/3-1.png, images/products/Kids/3-2.png',
    N'Cặp sách Silver Mountain Water, một thiết kế vượt thời gian, phong cách và phù hợp với mọi học sinh, sinh viên.', '2023-12-05', 0.45, 1),

    ('BA LÔ CALVIN KLEIN CK ONE TRAVEL SIZE', 4, 3, '15ml', 49.99, 120, 30, 4, 0, 'images/products/Kids/4-1.png, images/products/Kids/4-2.png',
    N'Ba lô CK One, thiết kế thời trang, năng động cho các bạn học sinh đi học hay đi du lịch. Đem lại sự tự tin cho ngày mới của bạn.', '2023-11-12', 0.3, 1),

    ('SÁCH MARC JACOBS DAISY DREAM MINI SIZE', 5, 3, '15ml', 59.99, 80, 25, 4, 0, 'images/products/Kids/5-1.png, images/products/Kids/5-2.png',
    N'Sách Marc Jacobs, gọn nhẹ, dễ dàng mang theo trong mọi chuyến đi. Mỗi cuốn sách mang đậm sự trẻ trung và sáng tạo của tác giả.', '2023-09-12', 0, 1),

    ('SỔ LACOSTE EAU DE LACOSTE L.12.12 BLANC PURE', 1, 3, '50ml', 19.99, 100, 20, 4, 0, 'images/products/Kids/6-1.png, images/products/Kids/6-2.png',
    N'Sổ Lacoste, với chất liệu da sang trọng và dễ sử dụng. Thiết kế thể thao cho những học sinh yêu thích sự năng động.', '2023-05-01', 0.0, 1),

    ('BÚT KILIAN LOVE DON’T BE SHY EDP', 2, 3, '50ml', 29.99, 50, 10, 5, 0, 'images/products/Kids/7-1.png, images/products/Kids/7-2.png',
    N'Bút KILIAN Love, với nét đẹp tinh tế, dễ sử dụng, đem đến sự tự tin trong mọi công việc học tập.', '2023-05-12', 0.5, 1),

    ('CẶP SÁCH CALVIN KLEIN CK ONE GOLD', 3, 3, '75ml', 39.99, 75, 15, 4, 0, 'images/products/Kids/8-1.png, images/products/Kids/8-2.png',
    N'Cặp sách CK One Gold, thiết kế hiện đại, cá tính, phù hợp cho học sinh, sinh viên yêu thích sự năng động và sang trọng.', '2019-09-08', 0.45, 1),

    ('BA LÔ CALVIN KLEIN CK FREE', 9, 3, '100ml', 59.99, 110, 22, 3, 0, 'images/products/Kids/9-1.png, images/products/Kids/9-2.png',
    N'Ba lô CK Free, sự kết hợp độc đáo giữa thiết kế gọn nhẹ và tính năng vượt trội, giúp bạn thoải mái trong suốt ngày học.', '2022-02-03', 0.5, 1),

    ('SÁCH LOUIS VUITTON PACIFIC CHILL EDP', 8, 3, '100ml 125ml', 79.99, 150, 35, 3, 0, 'images/products/Kids/10-1.png, images/products/Kids/10-2.png',
    N'Sách Louis Vuitton Pacific, với những trang sách đầy cảm hứng và thông tin bổ ích cho các học sinh trong học tập.', '2023-07-01', 0.7, 1),

	-- 7 gift set school supplies products
('GIFTSET BỘ DỤNG CỤ VẼ', 1, 5, '100ml', 9.99, 50, 20, 5, 0, 'images/products/Gift/1-1.png, images/products/Gift/1-2.png',
N'Bộ dụng cụ vẽ Missi Love Shot gồm 3 bộ dụng cụ vẽ cao cấp hiện nay: Bút chì màu Delina, Bút mực Le Labo, Cọ vẽ Narciso Pure Musc, kèm theo 3 bộ cọ vẽ 2ml.', '2023-04-12', 0, 1),

('SET BÚT YSL Y', 2, 5, '100ml', 19.99, 100, 20, 5, 0, 'images/products/Gift/2-1.png, images/products/Gift/2-2.png',
N'Set bao gồm: 1 bút fullsize 100ml, 1 bút mini 10ml dạng xịt bỏ túi cực xịn sò', '2023-05-11', 0, 1),

('GIFTSET BỘ DỤNG CỤ HỌC TẬP', 3, 5, '100ml', 14.99, 90, 15, 5, 0, 'images/products/Gift/3-1.png, images/products/Gift/3-2.png',
N'Bộ dụng cụ học tập Missi One More gồm 3 bộ dụng cụ hot nhất hiện nay: Bút chì Tomford, Bút mực Dior, Cọ vẽ Chanel Bleu, có 3 bộ bút 2ml.', '2022-12-11', 0, 1),

('SET BÚT DIOR NỮ', 4, 5, '3 chai 5ml', 9.99, 50, 22, 5, 0, 'images/products/Gift/4-1.png, images/products/Gift/4-2.png',
N'Set bút Dior 3 chai sẽ là sự lựa chọn tuyệt vời để làm quà tặng cho bạn bè hay người ấy, với thiết kế sang trọng và nhiều loại bút để chọn lựa cho việc học tập, làm bài hoặc vẽ.', '2023-06-12', 0, 1),

('SET BÚT BVLGARI', 5, 5, '5ml', 19.99, 80, 25, 5, 0, 'images/products/Gift/5-1.png, images/products/Gift/5-2.png',
N'Bộ quà tặng Bvlgari Omnia gồm 3 bộ bút: Bút Bvlgari Omnia Coral 15ml, Bút Bvlgari Omnia Crystalline 15ml, Bút Bvlgari Omnia Amethyste 15ml', '2023-09-12', 0, 1),

('SET BÚT SCANDAL POUR HOMME', 6, 5, '100ml 150ml', 17.99, 70, 30, 5, 0, 'images/products/Gift/6-1.png, images/products/Gift/6-2.png',
N'Bộ bút Scandal Pour Homme thuộc tông màu ngọt ngào đặc trưng của bút của dòng Jean Paul Gaultier. Ngay trong lần sử dụng đầu tiên, bạn sẽ cảm nhận được sự thanh thoát và mát mẻ của bút chì xanh.', '2022-07-12', 0, 1),

('SET BÚT LANCOME PARIS', 6, 5, '5ml 7.5ml 4ml 5ml 5ml', 17.99, 70, 30, 5, 0, 'images/products/Gift/7-1.png, images/products/Gift/7-2.png',
N'Bộ Set bút Lancome bao gồm: Bút Lancome Hypnose 5ml, Bút Lancome Tresor 7.5ml, Bút Lancome La Vie Est Belle 4ml, Bút Lancome Miracle 5ml, Bút Lancome Tresor in Love 5ml', '2023-08-12', 0, 1);

--drop table [Oder]
--drop table [OderDetail]

--tạo bảng order
 CREATE TABLE [dbo].[Order](
	[Order] [int]   IDENTITY (1,1) PRIMARY KEY,
	[UserName] [nvarchar](50),
	[OrderDetailId] [int] null,
	[CostDetail] [money] null,
	[Total] [money] null,
	[Date] [Date],
	[status] bit Not null, -- 0 là có thể thay đổi còn 1 là chuyển thành Payment --
	 FOREIGN KEY ([UserName])
    REFERENCES [dbo].[Users] ([UserName]) ,
	FOREIGN KEY([OrderDetailId]) REFERENCES [dbo].[OrderDetail]([OrderDetailId])
 );
 --tạo bảng order detail
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY (1,1) PRIMARY KEY,
	[ProductId] [int] not null,
	[ProductName] [nvarchar](50) null,
	[Quantity] [int] not null,
	[UnitPrice] [money] not null,
	[Cost] [money] null,
	Foreign key ([ProductId])
		REFERENCES [dbo].[Products] ([ProductId])
);

INSERT INTO [dbo].[OrderDetail] ([ProductId], [Quantity], [UnitPrice])
VALUES
(1, 2, 100.00),  -- Sản phẩm 1, số lượng 2, chi phí 100
(2, 1, 50.00),   -- Sản phẩm 2, số lượng 1, chi phí 50
(3, 5, 20.00);   -- Sản phẩm 3, số lượng 5, chi phí 20

-- Cập nhật tổng giá trị cho mỗi Cart
UPDATE mc
SET mc.Cost = mc.Quantity * mc.UnitPrice
FROM [dbo].[OrderDetail] mc;


-- Thêm dữ liệu vào bảng Cart
INSERT INTO [dbo].[Order] ([UserName], [OrderDetailId],[Total], [Status])
VALUES
('user1', 1,NULL, 0),  -- Giỏ hàng của người dùng 'user1', tổng chi phí ban đầu là NULL
('user1', 3,NULL, 0), 
('user2', 2,NULL, 0);  -- Giỏ hàng của người dùng 'user2', tổng chi phí ban đầu là NULL

-- Thêm dữ liệu vào bảng CartItems
-- Giỏ hàng 'user1' với các sản phẩm có MiniCartId = 1, 2
select * from users
UPDATE c 
SET c.CostDetail=( 
SELECT  SUM( mc.Cost)
	FROM [dbo].[OrderDetail] mc
    WHERE mc.[OrderDetailId] = c.[OrderDetailId]
	
) FROM [dbo].[Order] c;

UPDATE C
SET C.TOTAL=(
SELECT SUM(CC.CostDetail)
		   FROM [dbo].[Order] cc
		   WHERE cc.UserName='user2'
			
)FROM [dbo].[Order] C
 WHERE C.UserName='user2';
-- Kiểm tra bảng CartItems
SELECT * FROM [dbo].[Order];
SELECT * FROM [dbo].[OrderDetail];

--tạo bảng Admin
create table dbAdmin(
id int  IDENTITY (1,1) PRIMARY KEY,
[AminName] [nvarchar](50),
[AminPass] [nvarchar](50) not null,
[RoleId] [int] not null,
);
--create table ManagerCategory
create table ManagerCategories(
idAdmin int not null,
[CategoryID][int] not null

);

-- add foreign key
alter table ManagerCategories
add constraint fk_1 foreign key (idAdmin) references dbAdmin(id);
alter table ManagerCategories
add constraint fk_2 foreign key (CategoryID) references Categories(CategoryID);


--values admin
INSERT INTO dbAdmin ( AminName, AminPass, RoleId)
VALUES
( N'admin2', N'secure456', 1);

select * from dbAdmin
--values ManagerCategories
insert into ManagerCategories values(1,2),
									(1,3),
									(1,4),
									(1,5);
select * from dbAdmin
select * from ManagerCategories
select * from Categories
-- Tạo bảng Account
CREATE TABLE Account (
    AccountID INT IDENTITY(1,1) PRIMARY KEY, -- Khóa chính
    Name NVARCHAR(100) NOT NULL,            -- Tên người dùng
    Password NVARCHAR(255) NOT NULL,        -- Mật khẩu
    Email NVARCHAR(255) NOT NULL UNIQUE     -- Email duy nhất
);

-- Tạo bảng ManagerUser
CREATE TABLE ManagerUser (
    ManagerID INT IDENTITY(1,1) PRIMARY KEY, -- Khóa chính
    AccountID INT NOT NULL,                  -- Liên kết tới Account
    Role NVARCHAR(50) NOT NULL,             -- Vai trò của quản lý
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Tạo bảng History
CREATE TABLE History (
    HistoryID INT IDENTITY(1,1) PRIMARY KEY, -- Khóa chính
    OrderID INT NOT NULL,                    -- ID đơn hàng
    AccountID INT NOT NULL,                  -- Liên kết tới Account
    Timestamp DATETIME DEFAULT GETDATE(),    -- Thời gian ghi nhận lịch sử
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);
-- Thêm dữ liệu mẫu vào bảng Account
INSERT INTO Account (Name, Password, Email) 
VALUES 
    ('Alice', 'password123', 'alice@example.com'),
    ('Bob', 'securepass', 'bob@example.com'),
    ('Charlie', 'charliepwd', 'charlie@example.com'),
    ('David', 'davidpass', 'david@example.com');

-- Thêm dữ liệu mẫu vào bảng ManagerUser
INSERT INTO ManagerUser (AccountID, Role) 
VALUES 
    (1, 'Admin'),
    (2, 'Moderator');

-- Thêm dữ liệu mẫu vào bảng History
INSERT INTO History (OrderID, AccountID, Timestamp) 
VALUES 
    (101, 1, '2024-12-01 10:00:00'),
    (102, 2, '2024-12-02 14:30:00'),
    (103, 1, '2024-12-03 18:45:00'),
    (104, 3, '2024-12-04 08:15:00');
