USE [DBCardProcess]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[TransactionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TransactionType] PRIMARY KEY CLUSTERED 
(
	[TransactionTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TransactionType] ON
INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (1, N'Sale ')
INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (2, N'Return')
INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (3, N'Retrival')
SET IDENTITY_INSERT [dbo].[TransactionType] OFF
/****** Object:  Table [dbo].[Region]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[RegionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Region] ON
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (1, N'Miền Nam')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (2, N'Miền Trung')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (3, N'Miền Bắc 1')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (4, N'Miền Bắc 2')
SET IDENTITY_INSERT [dbo].[Region] OFF
/****** Object:  Table [dbo].[Province]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Province] ON
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (1, N'TP Hồ Chí Minh')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (2, N'Hà Nội')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (3, N'Đà Nẵng')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (4, N'Cần Thơ')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (5, N'Tây Nguyên')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (6, N'Lâm Đồng')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (7, N'Bình Dương')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (8, N'Cà Mau')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (9, N'Hài Phòng')
INSERT [dbo].[Province] ([ProvinceId], [ProvinceName]) VALUES (10, N'Bắc Giang')
SET IDENTITY_INSERT [dbo].[Province] OFF
/****** Object:  Table [dbo].[PermissFunction]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissFunction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PermissFunction] ON
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (1, N'<a href="/Agent/ViewMerchantManaged"><i class="icon icon-signal"></i> <span>Xem danh sách Merchant</span></a>', 2)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (2, N'<a href="/Agent/Agent"><i class="icon icon-inbox"></i> <span>Xem thông tin Agent</span></a>', 2)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (3, N'<a href="/User/ChangePassword"><i class="icon icon-inbox"></i> <span>Thay đổi mật khẩu</span></a>', 1)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (4, N'<a href="/Agent/ViewMerchantToView"><i class="icon icon-th"></i> <span>Xem merchant theo view</span></a>', 2)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (6, N'<a href="/Report/Index"><i class="icon icon-signal"></i> <span>Báo cáo thống kê</span></a>', 1)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (7, N'<a href="/Report/Index"><i class="icon icon-signal"></i> <span>Báo cáo thống kê</span></a>', 2)
INSERT [dbo].[PermissFunction] ([ID], [Name], [RoleId]) VALUES (8, N'<a href="/Report/Index"><i class="icon icon-signal"></i> <span>Báo cáo thống kê</span></a>', 3)
SET IDENTITY_INSERT [dbo].[PermissFunction] OFF
/****** Object:  Table [dbo].[Notification]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTime] [datetime] NOT NULL,
	[FromMerchant] [int] NULL,
	[FromAgent] [int] NULL,
	[FromMaster] [int] NULL,
	[ToMerchant] [varchar](255) NULL,
	[ToAgent] [varchar](255) NULL,
	[ToMaster] [varchar](255) NULL,
	[Message] [nvarchar](max) NOT NULL,
	[IsSeen] [bit] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (1, CAST(0x0000A783002EC61A AS DateTime), NULL, 3, NULL, N'12', NULL, NULL, N'Thông báo ......', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (2, CAST(0x0000A78300A3F564 AS DateTime), NULL, 4, NULL, N'16', NULL, NULL, N'Chào ngọc bảo,

vLance xin gửi tới bạn 3 công việc mới nhất, được khách hàng đăng lên trong ngày hôm nay. Hãy gửi chào giá để có thể bắt đầu công việc sớm nhất.

Bạn có biết? Để có cơ hội nhận những công việc phù hợp nhất với bạn, hãy cập nhật đầy đủ các kỹ năng, lĩnh vực chuyên môn trong hồ sơ việc làm của bạn.

Chúc bạn một ngày làm việc hiệu quả.


CLONE ỨNG DỤNG TỪ IOS QUA ANDROID
Ứng dụng di động | 15.000.000 VNĐ | TP. Hồ Chí Minh

Mình hiện có 2 app iOS cần clone qua android, cả 2 app đều do mình viết. App lớn: Có xu hướng mạng xã hội, có các chức năng post, like, comment, follow,... App nhỏ: 1 app quản lí về 1 lĩnh vực kinh ... Xem thêm

GỬI CHÀO GIÁ

THIẾT KẾ APP CUNG CẤP DỊCH VỤ BẢO TRÌ SẢN PHẨM
Ứng dụng di động | 10.000.000 VNĐ | TP. Hồ Chí Minh

Cần các bạn có khả năng viết code cho App trên IOS và Androind các thuật toán giống như Grab or UBer và có khả năng thiết kế các giao diện của APP, các bạn đã từng có kinh nghiệm trong viết app, ngo... Xem thêm

GỬI CHÀO GIÁ

DỰ ÁN SHIPPER
Ứng dụng di động | 50.000.000 VNĐ | TP. Hồ Chí Minh

Chào các bạn, bên mình cần làm app và web cho dự án giao hàng cod. Hiện có làm web và app rồi, nhưng muốn làm tốt hơn. Ưu tiên cho Đơn vị, cá nhân nào có kinh nghiệm thực tế. Chi phí có thể thương lượ... Xem thêm

GỬI CHÀO GIÁ

Thành thật xin lỗi nếu mail này đã làm phiền bạn. Bạn có thể từ chối tiếp nhận mail tại đây.

Bạn cần trợ giúp? Liên hệ với chúng tôi
Email: hotro@vlance.vn
Tel: 04-6684-1818', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (3, CAST(0x0000A78300A40F2E AS DateTime), NULL, 4, NULL, N'16', NULL, NULL, N'Xin chào!

Chúng tôi muốn thông báo cho bạn biết rằng bạn đã được cấp quyền truy cập sau: Quản lý người dùng và Chỉnh sửa
vào thuộc tính "Web Hỗ Trợ Lập Trình (UA-100074706-1)" của tài khoản Google Analytics "ZetTeam (UA-100074706)" bởi otocbun@gmail.com.
Vui lòng đăng nhập vào Analytics tại http://analytics.google.com/analytics/web/ để truy cập vào tài khoản này.

Trân trọng,
Nhóm Google Analytics

Thư này được gửi từ địa chỉ email chỉ để thông báo và không chấp nhận email đến. Vui lòng không trả lời thư này.', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (4, CAST(0x0000A78300A48DFE AS DateTime), 12, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị,
 
Uyên mời anh/chị tham dự khoá học quản trị mạng Cisco khai giảng tại VnPro trong tháng 4/2017.
Nếu anh/chị quan tâm vui lòng nhắn Uyên để nhận được ưu đãi tốt nhất nhé!
Chương trình ưu đãi:
-         Lớp sáng, Lớp chiều

+       Tặng Giáo Trình.

+       Tặng Áo thun.

+       Tặng DVD kỷ niệm 14 năm thành lập.

-         Lớp tối:

+       Ưu Đãi 10% dành cho học viên mới.

+       Ưu đãi 30% HP giành cho Sinh Viên

+       Ưu đãi 20% HP giành cho Học viên cũ

+       Tặng Balo, giáo trình khi đăng ký học.

 

-         Lưu ý:

+       Tất cả các chương trình được cộng dồn không quá 20%.

+       Đóng nhóm vui lòng liên hệ để được ưu đãi nhiều hơn', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (5, CAST(0x0000A78300A4C7D8 AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (6, CAST(0x0000A78300A5167F AS DateTime), NULL, 3, NULL, N'16', NULL, NULL, N'Chào ngọc bảo,

vLance xin gửi tới bạn 4 công việc mới nhất, được khách hàng đăng lên trong ngày hôm nay. Hãy gửi chào giá để có thể bắt đầu công việc sớm nhất.

Bạn có biết? Để có cơ hội nhận những công việc phù hợp nhất với bạn, hãy cập nhật đầy đủ các kỹ năng, lĩnh vực chuyên môn trong hồ sơ việc làm của bạn.

Chúc bạn một ngày làm việc hiệu quả.


CẦN FREELANCER LÀM REACT NATIVE
Ứng dụng di động | 16.000.000 VNĐ | Toàn Quốc

Chào các bạn như tiêu đề công việc mình đang tìm một bạn Freelancer có kinh nghiệm làm React Native trong một dự án của bên mình: Yêu cầu: - Có ít nhất 1 năm kinh nghiệm. - Có thể làm fulltime th... Xem thêm', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (7, CAST(0x0000A78300A519AA AS DateTime), NULL, 3, NULL, N'16', NULL, NULL, N'		
Xin chào ngọc!

Dropbox bây giờ có quyền truy cập vào Tài khoản Google của bạn ngohoangngocbao@gmail.com.

Dropbox có thể:
Quản lý địa chỉ liên hệ của bạn

Bạn chỉ nên cung cấp truy cập này cho các ứng dụng bạn tin tưởng. Hãy xem lại hoặc xóa các ứng dụng được kết nối với tài khoản của bạn bất kỳ lúc nào tại Tài khoản của tôi.

Tìm hiểu thêm về ý nghĩa của việc kết nối ứng dụng với tài khoản của bạn.
Nhóm Tài khoản Google
Email này không nhận được thư trả lời. Để biết thêm thông tin, hãy truy cập Trung tâm trợ giúp Tài khoản Google.
', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (8, CAST(0x0000A78300A51ABA AS DateTime), NULL, 3, NULL, N'16', NULL, NULL, N'Kính chào ngô hoàng ngọc bảo !
Quý vị đã đăng ký thành viên tại Thư viện trực tuyến Violet, xin vui lòng:
nhấn vào đây để xác nhận thông tin đăng ký là chính xác

Từ các lần sau quý vị có thể đăng nhập với:
Tên truy nhập: ngocbao0
Mật khẩu: ngocbao

Xin trân trọng kính báo
=======================================

PS: Neu quy vi khong doc duoc Tieng Viet co dau, hay Relpy (Tra loi) email nay de nhan duoc su ho tro', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (9, CAST(0x0000A78300A58255 AS DateTime), NULL, NULL, 0, N'16', NULL, NULL, N'Thân gửi Ngô Hoàng Ngọc Bảo,

Một sự kiện quy tụ đầy đủ các anh hào đến từ 2 tập đoàn công nghệ “siêu sao” của thế giới là Google và Youtube?

Nơi bạn được “khai sáng” những giải pháp mang tính chiến lược đối với các vấn đề thực tiễn trong quá trình phát triển ứng dụng. Nơi bạn được gặp gỡ, giao lưu kết nối và hiểu rõ hơn sự vận động của thị trường Mobile Việt Nam trong mối tương quan với thế giới.

Bạn đã sẵn sàng bùng nổ với Ngày hội Di động Toàn quốc - Vietnam Mobile Day 2017 cùng 5 chuyên gia quốc tế sau đây chưa?

Chủ đề App Re-engagement Strategies của chị Gaby Hiền - Business Development Manager thuộc OPG, Google và chị Phương Nguyễn - Strategic Partner Manager thuộc OPG, Google Asia Pacific
Đặc biệt, diễn giả Phan Dũng - Youtube Ambassador, đồng thời là Co-Founder & COO tại BIG CAT kiêm CEO & Co-Founder của Compare.vn cũng có mặt tại Vietnam Mobile Day 2017 chia sẻ những bất ngờ thú vị về Viral Channel/ Viral Clip cho các startup.
Cơ hội có 1-0-2 để bạn sở hữu những chiếc vé tham dự sự kiện cuối cùng trước ngày khai màn tại Tp.HCM - 20.05.2017.

Thời gian & địa điểm: 
20/05/2017 tại Trung tâm Hội Nghị 272, Võ Thị Sáu, Q.3, Hồ Chí Minh.
27/05/2017 tại Trung tâm Hội Nghị Forevermark, 614 Lạc Long Quân, Quận Tây Hồ, Hà Nội.
03/06/2017 tại One Opera Đà Nẵng Hotel, 115 Nguyễn Văn Linh, Q. Hải Châu, Đà Nẵng.
Website thông tin chi tiết: http://mobileday.vn', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (10, CAST(0x0000A78300A5832D AS DateTime), NULL, NULL, 0, N'16', NULL, NULL, N'Một cú nhấp chuột. Đó là tất cả phải mất.
Phần mở rộng Office Online cho biết thêm một biểu tượng nhấp vào để trình duyệt Google Chrome ™ của bạn, cho phép bạn mở hoặc tạo ra các file Office và lưu chúng vào onedrive. Sau một lần đăng nhập, một cú nhấp chuột là tất cả các bạn sẽ cần phải mở khóa sức mạnh của Office.', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (11, CAST(0x0000A78300A583D9 AS DateTime), NULL, NULL, 0, N'16', NULL, NULL, N'Thân chào anh/chị,
 
Uyên mời anh/chị tham dự khoá học quản trị mạng Cisco khai giảng tại VnPro trong tháng 4/2017.
Nếu anh/chị quan tâm vui lòng nhắn Uyên để nhận được ưu đãi tốt nhất nhé!
Chương trình ưu đãi:
-         Lớp sáng, Lớp chiều

+       Tặng Giáo Trình.

+       Tặng Áo thun.

+       Tặng DVD kỷ niệm 14 năm thành lập.

-         Lớp tối:

+       Ưu Đãi 10% dành cho học viên mới.

+       Ưu đãi 30% HP giành cho Sinh Viên

+       Ưu đãi 20% HP giành cho Học viên cũ

+       Tặng Balo, giáo trình khi đăng ký học.', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (12, CAST(0x0000A78300A5849E AS DateTime), NULL, NULL, 0, N'16', NULL, NULL, N'Thân gửi Ngô Hoàng Ngọc Bảo,

IoT (Internet of Things) đang là 1 làn sóng lớn không thể bỏ qua thế giới công nghệ. Mỗi hãng lớn như IBM, Amazon, Google đều tung ra cho mình những bộ công cụ và nền tảng để phục vụ cho một giải pháp tổng thể về IoT. Đặc biệt, “gã khổng lồ” Microsoft đã và đang đạt được những thành công nhất định với Azure khi ứng dụng IoT vào Azure IoT Hub và Azure IoT Suite.

Cũng theo báo cáo mới từ VisionMobile, lĩnh vực Internet of Things sẽ cần 1 con số khổng lồ là 4,5 triệu lập trình viên vào năm 2020. Vậy, 2017 chính xác là thời điểm tuyệt vời để Ngô Hoàng Ngọc Bảo bắt tay tìm hiểu công nghệ IoT rồi!

Đừng lo, mọi thắc mắc về IoT và Microsoft Azure sẽ được các diễn giả kinh nghiệm chia sẻ tại TopDev Techtalk#57: Break into the IoT Generation ngày 31/03!

Chủ đề Machine Learning 101 & Azure ML show case - Diễn giả Huỳnh Bảo Toàn, Technical Evangelist tại Microsoft Vietnam
Chủ đề IoT Solutions on Microsoft Azure - Diễn giả Huỳnh Ngọc Phi, Technical R&D Manager tại NashTech
Chủ đề Tôi đã phát triển sản phẩm IoT như thế nào? - Diễn giả Phạm Minh Tuấn, Software Developer tại Espressif Systems
6 ngày cuối - Đăng kí ngay hôm nay để dành lấy những chỗ ngồi thật đẹp, bạn nhé!

Thông tin chi tiết:

Thời gian: 18h00 - 21h00 ngày 31/3/2017
Địa điểm: Saigon Innovation Hub, 273 Điện Biên Phủ, Quận 3, HCMC
Thông tin chi tiết: http://topdevvn.com/s/5I4J0fWM', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (13, CAST(0x0000A78300A5B854 AS DateTime), 16, NULL, NULL, NULL, NULL, N'0', N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (14, CAST(0x0000A78300A5B8A1 AS DateTime), 16, NULL, NULL, NULL, NULL, N'0', N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (15, CAST(0x0000A78300A5B933 AS DateTime), 16, NULL, NULL, NULL, NULL, N'0', N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (16, CAST(0x0000A78300A5B9D3 AS DateTime), 16, NULL, NULL, NULL, NULL, N'0', N'Thân chào anh/chị
	  Xác nhận ...
	  ', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (17, CAST(0x0000A78300A5F139 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (18, CAST(0x0000A78300A5F1F9 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (19, CAST(0x0000A78300A5F291 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (20, CAST(0x0000A78300A5FE14 AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (21, CAST(0x0000A78300A5FEBB AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (36, CAST(0x0000A78D014AE90C AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Phản hồi thành công', 0)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (37, CAST(0x0000A78E00E64450 AS DateTime), NULL, NULL, 0, NULL, N'3', NULL, N'Gui thong bao test test', 1)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (38, CAST(0x0000A78E00E6447F AS DateTime), NULL, NULL, 0, N'12', NULL, NULL, N'Gui thong bao test test', 0)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (39, CAST(0x0000A790012EEF72 AS DateTime), NULL, 3, NULL, N'12', NULL, NULL, N'asasdas', 0)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (40, CAST(0x0000A79001316666 AS DateTime), NULL, NULL, 0, N'16', NULL, NULL, N'sadasd', 0)
SET IDENTITY_INSERT [dbo].[Notification] OFF
/****** Object:  Table [dbo].[MerchantType]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchantType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MerchantType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MerchantType] ON
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (1, N'Cửa hàng quần áo')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (2, N'Quán ăn')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (3, N'Siêu thị')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (4, N'Dịch vụ nhà hàng')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (5, N'Dịch vu khách sạn')
SET IDENTITY_INSERT [dbo].[MerchantType] OFF
/****** Object:  Table [dbo].[LogRecord]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [varchar](100) NULL,
	[DateError] [datetime] NULL,
	[MsgError] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LogRecord] ON
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (5, NULL, NULL, N'2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (6, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (7, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (8, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (9, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (10, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (11, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (12, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (13, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (14, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (15, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (16, NULL, NULL, N'1 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (17, NULL, NULL, N'1 -- 1 -- 05/31/2017 -- 06/01/2017')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (18, NULL, NULL, N'0 -- 1 -- 06/01/2017 -- 06/01/2017')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (19, NULL, NULL, N'1 -- 1 -- 06/01/2017 -- 06/01/2017')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (20, NULL, NULL, N'0 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (21, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (22, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (23, NULL, NULL, N'0 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (24, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (25, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (26, NULL, NULL, N'0 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (27, NULL, NULL, N'0 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (28, NULL, NULL, N'0 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (29, NULL, NULL, N'0 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (30, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (31, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (32, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (33, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (34, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (35, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (36, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (37, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (38, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (39, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (40, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (41, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (42, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (43, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (44, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (45, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (46, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (47, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (48, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (49, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (50, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (51, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (52, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (53, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (54, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (55, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (56, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (57, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (58, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (59, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (60, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (61, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (62, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (63, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (64, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (65, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (66, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (67, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (68, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (69, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (70, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (71, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (72, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (73, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (74, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (75, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (76, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (77, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (78, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (79, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (80, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (81, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (82, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (83, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (84, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (85, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (86, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (87, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (88, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (89, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (90, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (91, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (92, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (93, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (94, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (95, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (96, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (97, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (98, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (99, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (100, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (101, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (102, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (103, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (104, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-13')
GO
print 'Processed 100 total records'
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (105, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (106, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (107, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (108, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (109, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (110, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (111, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (112, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (113, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (114, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (115, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (116, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-06-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (117, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (118, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (119, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (120, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (121, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (122, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (123, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (124, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (125, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (126, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (127, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (128, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (129, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (130, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (131, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (132, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (133, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (134, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (135, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (136, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (137, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (138, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (139, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (140, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (141, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (142, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (143, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (144, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (145, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (146, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (147, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (148, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (149, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (150, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (151, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (152, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (153, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (154, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (155, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (156, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (157, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (158, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (159, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (160, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (161, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (162, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (163, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (164, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (165, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (166, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (167, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (168, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (169, NULL, NULL, N'2 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (170, NULL, NULL, N'2 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (171, NULL, NULL, N'2 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (172, NULL, NULL, N'3 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (173, NULL, NULL, N'4 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (174, NULL, NULL, N'4 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (175, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (176, NULL, NULL, N'2 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (177, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (178, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (179, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (180, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (181, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (182, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (183, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (184, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (185, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (186, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (187, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (188, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (189, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (190, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (191, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (192, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (193, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (194, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (195, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (196, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (197, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (198, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (199, NULL, NULL, N'4 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (200, NULL, NULL, N'2 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (201, NULL, NULL, N'2 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (202, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (203, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (204, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (205, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
GO
print 'Processed 200 total records'
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (206, NULL, NULL, N'2 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (207, NULL, NULL, N'2 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (208, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (209, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (210, NULL, NULL, N'1 -- 1 -- 2017-07-08 -- 2017-07-08')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (211, NULL, NULL, N'1 -- 1 -- 2017-06-26 -- 2017-06-26')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (212, NULL, NULL, N'1 -- 1 -- 2017-06-14 -- 2017-06-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (213, NULL, NULL, N'1 -- 1 -- 2017-06-14 -- 2017-06-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (214, NULL, NULL, N'1 -- 1 -- 2017-06-14 -- 2017-06-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (215, NULL, NULL, N'1 -- 1 -- 2017-06-14 -- 2017-06-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (216, NULL, NULL, N'1 -- 1 -- 2017-05-16 -- 2017-05-16')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (217, NULL, NULL, N'1 -- 1 -- 2017-05-14 -- 2017-05-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (218, NULL, NULL, N'1 -- 1 -- 2017-05-08 -- 2017-05-08')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (219, NULL, NULL, N'1 -- 1 -- 2017-06-07 -- 2017-06-07')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (220, NULL, NULL, N'3 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (221, NULL, NULL, N'3 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (222, NULL, NULL, N'4 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (223, NULL, NULL, N'5 -- 1 -- 2017-05-01 -- 2017-06-21')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (224, NULL, NULL, N'5 -- 1 -- 2017-05-12 -- 2017-06-14')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (225, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (226, NULL, NULL, N'5 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (227, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (228, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (229, NULL, NULL, N'4 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (230, NULL, NULL, N'4 -- 1 --  -- ')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (231, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (232, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (233, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (234, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (235, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (236, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (237, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (238, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (239, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (240, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (241, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (242, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (243, NULL, NULL, N'5 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (244, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (245, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (246, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (247, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (248, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (249, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (250, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (251, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (252, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (253, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (254, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (255, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (256, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (257, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (258, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (259, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (260, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (261, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (262, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (263, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (264, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (265, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (266, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (267, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (268, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (269, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (270, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (271, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (272, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (273, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (274, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (275, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (276, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (277, N'[Trans_import]', CAST(0x0000A79000FCEBEC AS DateTime), N'String or binary data would be truncated.')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (278, N'[Trans_import]', CAST(0x0000A79000FD141A AS DateTime), N'String or binary data would be truncated.')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (279, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (280, NULL, NULL, N'2 -- 1 -- 2017-01-01 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (281, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (282, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (283, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (284, NULL, NULL, N'1 -- 1 -- 2017-05-12 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (285, NULL, NULL, N'2 -- 1 -- 2017-01-01 -- 2017-05-12')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (286, NULL, NULL, N'1 -- 1 -- 2017-06-13 -- 2017-06-13')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (287, NULL, NULL, N'1 -- 1 -- 2017-05-15 -- 2017-05-15')
INSERT [dbo].[LogRecord] ([ID], [StoreName], [DateError], [MsgError]) VALUES (288, NULL, NULL, N'2 -- 1 -- 2017-01-01 -- 2017-05-12')
SET IDENTITY_INSERT [dbo].[LogRecord] OFF
/****** Object:  Table [dbo].[Log_import]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_import](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[filename] [nvarchar](100) NULL,
	[status] [nvarchar](100) NULL,
 CONSTRAINT [PK_Log_import] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Log_import] ON
INSERT [dbo].[Log_import] ([STT], [date], [filename], [status]) VALUES (1, CAST(0x0000A79000FD37B5 AS DateTime), N'', N'Import thành công')
INSERT [dbo].[Log_import] ([STT], [date], [filename], [status]) VALUES (2, CAST(0x0000A79000FD4030 AS DateTime), N'', N'Import thành công')
INSERT [dbo].[Log_import] ([STT], [date], [filename], [status]) VALUES (3, CAST(0x0000A79000FE9264 AS DateTime), N'', N'Import thành công')
INSERT [dbo].[Log_import] ([STT], [date], [filename], [status]) VALUES (4, CAST(0x0000A79000FEC74D AS DateTime), N'', N'Import thành công')
SET IDENTITY_INSERT [dbo].[Log_import] OFF
/****** Object:  Table [dbo].[District]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[District] ON
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (1, N'Quận 1')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (2, N'Quận 2')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (3, N'Quận 3')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (4, N'Quận 4')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (5, N'Quận 5')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (6, N'Quận 6')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (7, N'Quận 7')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (8, N'Quận 8')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (9, N'Quận 9')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (10, N'Quận 10')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (11, N'Quận 11')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (12, N'Quận 12')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (13, N'Quận Tân Bình')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (14, N'Quận Tân Phú')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (15, N'Quận Gò Vấp')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (16, N'Huyện Củ Chi')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (17, N'Huyện Bình Chánh')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (18, N'Huyện Nhà Bè')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (19, N'Quận Thủ Đức')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (20, N'Huyện Từ Liêm')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (21, N'Quận Ba Đình')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (22, N'Quận Hoàn Kiếm')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (23, N'Quận Hai Bà Trưng')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (24, N'Quận Đống Đa')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (25, N'Quận Long Biên')
INSERT [dbo].[District] ([DistrictId], [DistrictName]) VALUES (26, N'Quận Cầu Giấy')
SET IDENTITY_INSERT [dbo].[District] OFF
/****** Object:  Table [dbo].[Configuration]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Configuration](
	[ConfigurationName] [varchar](50) NOT NULL,
	[ConfigurationValue] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Configuration] PRIMARY KEY CLUSTERED 
(
	[ConfigurationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CardType](
	[CardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CardTypeName] [varchar](50) NULL,
 CONSTRAINT [PK_CardType] PRIMARY KEY CLUSTERED 
(
	[CardTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CardType] ON
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (1, N'Visa Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (2, N'Master Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (3, N'Debit Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (4, N'Foreign key Card')
SET IDENTITY_INSERT [dbo].[CardType] OFF
/****** Object:  Table [dbo].[TransactioImport]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactioImport](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MerchantID] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[CreateTime] [time](7) NOT NULL,
	[CardType] [int] NOT NULL,
	[TransType] [int] NOT NULL,
	[MerchantType] [int] NOT NULL,
	[KeyEntry] [varchar](20) NOT NULL,
	[AccountNumber] [varchar](50) NOT NULL,
	[Country] [varchar](10) NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[Price] [numeric](19, 6) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Note] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TransactioImport] ON
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (1, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), 1, 1, 1, N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', CAST(4545.454545 AS Numeric(19, 6)), 1, 5000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (2, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5567113457891234', N'VN', N'NOKIA 370', CAST(10909.090909 AS Numeric(19, 6)), 1, 12000, N'test')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (3, 1, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), 1, 1, 1, N'201705121522', N'3342773477689812', N'VN', N'USB PNJ 16GB', CAST(4545.454545 AS Numeric(19, 6)), 2, 10000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (4, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', CAST(909.090909 AS Numeric(19, 6)), 4, 4000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (5, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), 1, 1, 1, N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', CAST(4545.454545 AS Numeric(19, 6)), 1, 5000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (6, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5567113457891234', N'VN', N'NOKIA 370', CAST(10909.090909 AS Numeric(19, 6)), 1, 12000, N'test')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (7, 1, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), 1, 1, 1, N'201705121522', N'3342773477689812', N'VN', N'USB PNJ 16GB', CAST(4545.454545 AS Numeric(19, 6)), 2, 10000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (8, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', CAST(909.090909 AS Numeric(19, 6)), 4, 4000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (9, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), 1, 1, 1, N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', CAST(4545.454545 AS Numeric(19, 6)), 1, 5000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (10, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5567113457891234', N'VN', N'NOKIA 370', CAST(10909.090909 AS Numeric(19, 6)), 1, 12000, N'test')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (11, 1, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), 1, 1, 1, N'201705121522', N'3342773477689812', N'VN', N'USB PNJ 16GB', CAST(4545.454545 AS Numeric(19, 6)), 2, 10000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (12, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', CAST(909.090909 AS Numeric(19, 6)), 4, 4000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (13, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), 1, 1, 1, N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', CAST(4545.454545 AS Numeric(19, 6)), 1, 5000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (14, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5567113457891234', N'VN', N'NOKIA 370', CAST(10909.090909 AS Numeric(19, 6)), 1, 12000, N'test')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (15, 1, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), 1, 1, 1, N'201705121522', N'3342773477689812', N'VN', N'USB PNJ 16GB', CAST(4545.454545 AS Numeric(19, 6)), 2, 10000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (16, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', CAST(909.090909 AS Numeric(19, 6)), 4, 4000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (17, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), 1, 1, 1, N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', CAST(4545.454545 AS Numeric(19, 6)), 1, 5000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (18, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5567113457891234', N'VN', N'NOKIA 370', CAST(10909.090909 AS Numeric(19, 6)), 1, 12000, N'test')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (19, 1, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), 1, 1, 1, N'201705121522', N'3342773477689812', N'VN', N'USB PNJ 16GB', CAST(4545.454545 AS Numeric(19, 6)), 2, 10000, N'')
INSERT [dbo].[TransactioImport] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (20, 1, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), 1, 1, 1, N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', CAST(909.090909 AS Numeric(19, 6)), 4, 4000, N'')
SET IDENTITY_INSERT [dbo].[TransactioImport] OFF
/****** Object:  Table [dbo].[UserRole]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (1, N'Merchant')
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (2, N'Agent')
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (3, N'Master')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[Sheet]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet](
	[STT] [float] NULL,
	[MerchantID] [nvarchar](255) NULL,
	[CreateDate] [nvarchar](255) NULL,
	[CreateTime] [nvarchar](255) NULL,
	[CardType] [nvarchar](255) NULL,
	[TransType] [nvarchar](255) NULL,
	[MerchantType] [nvarchar](255) NULL,
	[KeyEntry] [nvarchar](255) NULL,
	[AccountNumber] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[Quantity] [nvarchar](255) NULL,
	[Amount] [float] NULL,
	[Note] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (1, N'10', N'2017-05-12', N'14:30', N'1', N'1', N'3', N'201705121430', N'5342123477688912', N'VN', N'LAPTOP A10', 926673, N'2', 1853346, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (2, N'10', N'2017-05-12', N'14:45', N'1', N'1', N'3', N'201705121431', N'5567113457891234', N'VN', N'NOKIA 370', 443621, N'1', 443621, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (3, N'10', N'2017-05-12', N'15:22', N'1', N'1', N'3', N'201705121432', N'3342773477689812', N'VN', N'USB PNJ 16GB', 380894, N'2', 761788, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (4, N'10', N'2017-05-12', N'14:45', N'1', N'1', N'3', N'201705121433', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', 490504, N'6', 2943024, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (5, N'10', N'2017-05-12', N'14:46', N'2', N'2', N'3', N'201705121434', N'5567113457891234', N'VN', N'LAPTOP A11', 928519, N'2', 1857038, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (6, N'10', N'2017-05-12', N'14:47', N'2', N'2', N'3', N'201705121435', N'3342773477689812', N'VN', N'NOKIA 371', 843404, N'1', 843404, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (7, N'10', N'2017-05-12', N'14:48', N'3', N'1', N'3', N'201705121436', N'5711113457891442', N'VN', N'USB PNJ 16GB', 939531, N'2', 1879062, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (8, N'10', N'2017-05-12', N'14:49', N'3', N'3', N'3', N'201705121437', N'5567113457891234', N'VN', N'PIN LITHIUM NOKIA', 666111, N'6', 3996666, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (9, N'10', N'2017-05-13', N'14:50', N'2', N'2', N'3', N'201705121438', N'3342773477689812', N'VN', N'LAPTOP A12', 943439, N'2', 1886878, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (10, N'10', N'2017-05-13', N'14:51', N'2', N'2', N'3', N'201705121439', N'5711113457891442', N'VN', N'NOKIA 372', 393088, N'1', 393088, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (11, N'10', N'2017-05-13', N'14:52', N'2', N'2', N'3', N'201705121440', N'5567113457891234', N'VN', N'USB PNJ 16GB', 500954, N'2', 1001908, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (12, N'10', N'2017-05-13', N'14:53', N'2', N'1', N'3', N'201705121441', N'3342773477689812', N'VN', N'PIN LITHIUM NOKIA', 978456, N'6', 5870736, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (13, N'10', N'2017-05-13', N'14:54', N'3', N'2', N'3', N'201705121442', N'5711113457891442', N'VN', N'LAPTOP A13', 777216, N'2', 1554432, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (14, N'10', N'2017-05-14', N'14:55', N'1', N'2', N'3', N'201705121443', N'5567113457891234', N'VN', N'NOKIA 373', 790331, N'1', 790331, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (15, N'10', N'2017-05-14', N'14:56', N'1', N'1', N'3', N'201705121444', N'3342773477689812', N'VN', N'USB PNJ 16GB', 998183, N'2', 1996366, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (16, N'10', N'2017-05-14', N'14:57', N'1', N'1', N'3', N'201705121445', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', 254303, N'6', 1525818, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (17, N'10', N'2017-05-14', N'14:58', N'1', N'1', N'3', N'201705121446', N'5567113457891234', N'VN', N'LAPTOP A14', 238900, N'2', 477800, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (18, N'10', N'2017-05-14', N'14:59', N'2', N'1', N'3', N'201705121447', N'3342773477689812', N'VN', N'NOKIA 374', 525053, N'1', 525053, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (19, N'10', N'2017-05-15', N'14:30', N'2', N'1', N'3', N'201705121448', N'5711113457891442', N'VN', N'USB PNJ 16GB', 890573, N'2', 1781146, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (20, N'10', N'2017-05-15', N'14:30', N'2', N'1', N'3', N'201705121449', N'5567113457891234', N'VN', N'PIN LITHIUM NOKIA', 727019, N'6', 4362114, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (21, N'12', N'2017-05-12', N'14:31', N'3', N'1', N'3', N'201705121450', N'3342773477689812', N'VN', N'LAPTOP A15', 431058, N'2', 862116, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (22, N'12', N'2017-05-12', N'14:31', N'1', N'1', N'3', N'201705121451', N'5711113457891442', N'VN', N'NOKIA 375', 778685, N'1', 778685, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (23, N'12', N'2017-05-12', N'14:32', N'1', N'1', N'3', N'201705121452', N'5567113457891234', N'VN', N'USB PNJ 16GB', 463874, N'2', 927748, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (24, N'12', N'2017-05-12', N'14:32', N'1', N'1', N'3', N'201705121453', N'3342773477689812', N'VN', N'PIN LITHIUM NOKIA', 697672, N'6', 4186032, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (25, N'12', N'2017-05-12', N'14:33', N'2', N'1', N'3', N'201705121454', N'5711113457891442', N'VN', N'LAPTOP A16', 401319, N'2', 802638, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (26, N'12', N'2017-05-12', N'14:33', N'2', N'1', N'3', N'201705121455', N'5567113457891234', N'VN', N'NOKIA 376', 532712, N'1', 532712, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (27, N'12', N'2017-05-12', N'14:34', N'2', N'1', N'3', N'201705121456', N'3342773477689812', N'VN', N'USB PNJ 16GB', 779232, N'2', 1558464, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (28, N'12', N'2017-05-12', N'14:34', N'1', N'1', N'3', N'201705121457', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', 703309, N'6', 4219854, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (29, N'12', N'2017-05-13', N'14:35', N'1', N'1', N'3', N'201705121458', N'5567113457891234', N'VN', N'LAPTOP A17', 120423, N'2', 240846, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (30, N'12', N'2017-05-13', N'14:35', N'1', N'1', N'3', N'201705121459', N'3342773477689812', N'VN', N'NOKIA 377', 892203, N'1', 892203, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (31, N'12', N'2017-05-13', N'14:36', N'1', N'2', N'3', N'201705121460', N'5711113457891442', N'VN', N'USB PNJ 16GB', 412505, N'2', 825010, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (32, N'12', N'2017-05-13', N'14:36', N'1', N'2', N'3', N'201705121461', N'5567113457891234', N'VN', N'PIN LITHIUM NOKIA', 650310, N'6', 3901860, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (33, N'12', N'2017-05-13', N'14:37', N'1', N'2', N'3', N'201705121462', N'3342773477689812', N'VN', N'LAPTOP A18', 721320, N'2', 1442640, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (34, N'12', N'2017-05-13', N'14:37', N'2', N'1', N'3', N'201705121463', N'5711113457891442', N'VN', N'NOKIA 378', 256466, N'1', 256466, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (35, N'12', N'2017-05-13', N'14:38', N'1', N'2', N'3', N'201705121464', N'5567113457891234', N'VN', N'USB PNJ 16GB', 850778, N'2', 1701556, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (36, N'12', N'2017-05-14', N'14:38', N'1', N'2', N'3', N'201705121465', N'3342773477689812', N'VN', N'PIN LITHIUM NOKIA', 970118, N'6', 5820708, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (37, N'12', N'2017-05-14', N'14:39', N'1', N'2', N'3', N'201705121466', N'5711113457891442', N'VN', N'LAPTOP A19', 478694, N'2', 957388, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (38, N'12', N'2017-05-14', N'14:39', N'1', N'2', N'3', N'201705121467', N'5567113457891234', N'VN', N'NOKIA 379', 943903, N'1', 943903, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (39, N'12', N'2017-05-14', N'14:40', N'1', N'2', N'3', N'201705121468', N'3342773477689812', N'VN', N'USB PNJ 16GB', 809942, N'2', 1619884, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (40, N'12', N'2017-05-14', N'14:40', N'1', N'2', N'3', N'201705121469', N'5711113457891442', N'VN', N'PIN LITHIUM NOKIA', 135482, N'6', 812892, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (41, N'12', N'2017-05-15', N'14:41', N'1', N'2', N'3', N'201705121470', N'5567113457891234', N'VN', N'LAPTOP A20', 818677, N'2', 1637354, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (42, N'12', N'2017-05-15', N'14:41', N'1', N'2', N'3', N'201705121471', N'3342773477689812', N'VN', N'NOKIA 380', 887965, N'1', 887965, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (43, N'12', N'2017-05-15', N'14:42', N'1', N'1', N'3', N'201705121472', N'5711113457891442', N'VN', N'USB PNJ 16GB', 918400, N'2', 1836800, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (44, N'12', N'2017-05-15', N'14:42', N'1', N'1', N'3', N'201705121473', N'5567113457891234', N'VN', N'PIN LITHIUM NOKIA', 972455, N'6', 5834730, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (45, N'16', N'2017-05-12', N'14:43', N'1', N'1', N'3', N'201705121474', N'3342773477689812', N'VN', N'LAPTOP A21', 652410, N'2', 1304820, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (46, N'16', N'2017-05-12', N'14:43', N'1', N'2', N'3', N'201705121475', N'5711113457891442', N'VN', N'NOKIA 381', 323851, N'1', 323851, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (47, N'16', N'2017-05-12', N'14:44', N'1', N'1', N'3', N'201705121476', N'5567113457891234', N'VN', N'USB PNJ 16GB', 940207, N'2', 1880414, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (48, N'16', N'2017-05-12', N'14:44', N'1', N'1', N'3', N'201705121477', N'3342773477689812', N'VN', N'PIN LITHIUM NOKIA', 322361, N'6', 1934166, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (49, N'16', N'2017-05-12', N'14:45', N'1', N'1', N'3', N'201705121478', N'5711113457891442', N'VN', N'LAPTOP A22', 197529, N'2', 395058, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (50, N'16', N'2017-05-12', N'14:45', N'1', N'1', N'3', N'201705121479', N'5567113457891234', N'VN', N'NOKIA 382', 279309, N'1', 279309, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (51, N'16', N'2017-05-12', N'14:46', N'2', N'1', N'3', N'201705121480', N'5567113457891234', N'VN', N'LAPTOP A23', 625241, N'6', 3751446, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (52, N'16', N'2017-05-12', N'14:46', N'2', N'1', N'3', N'201705121481', N'5567113457891234', N'VN', N'NOKIA 383', 777045, N'2', 1554090, N'test')
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (53, N'16', N'2017-05-12', N'14:47', N'2', N'1', N'3', N'201705121482', N'5567113457891234', N'VN', N'LAPTOP A24', 455347, N'1', 455347, NULL)
INSERT [dbo].[Sheet] ([STT], [MerchantID], [CreateDate], [CreateTime], [CardType], [TransType], [MerchantType], [KeyEntry], [AccountNumber], [Country], [ProductName], [Price], [Quantity], [Amount], [Note]) VALUES (54, N'16', N'2017-05-12', N'14:47', N'2', N'2', N'3', N'201705121483', N'5567113457891234', N'VN', N'NOKIA 384', 314701, N'6', 1888206, N'test')
/****** Object:  Table [dbo].[RegionMapping]    Script Date: 06/12/2017 20:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionMapping](
	[RegionId] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_RegionMapping] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC,
	[ProvinceId] ASC,
	[DistrictId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 2, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 3, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 4, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 5, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 6, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 7, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 8, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 9, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 10, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 11, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 12, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 13, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 14, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 15, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 16, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 17, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 18, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (1, 1, 19, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 20, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 21, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 22, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 23, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 24, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 25, NULL)
INSERT [dbo].[RegionMapping] ([RegionId], [ProvinceId], [DistrictId], [Description]) VALUES (3, 2, 26, NULL)
/****** Object:  StoredProcedure [dbo].[sp_GetDataToView]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetDataToView]
@action int
as
begin
	if @action = 1
	begin
		select TypeId, TypeName from MerchantType
	end
	
	if @action = 2
	begin
		select RegionId TypeId, RegionName TypeName from Region
	end
end
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](20) NULL,
	[RoleId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TokenStr] [varchar](200) NULL,
	[CpnId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (2, N'demo01', N'e10adc3949ba59abbe56e057f20f883e', N'Lý Thanh Nam', N'0123452345', 1, 1, NULL, 12)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (4, N'demo02', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Vĩnh Nam', N'090345678', 1, 1, NULL, 12)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (5, N'demo03', N'e10adc3949ba59abbe56e057f20f883e', N'Huỳnh Chánh Kiệt', N'012244553', 1, 1, NULL, 10)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (6, N'demo04', N'7815696ecbf1c96e6894b779456d330e', N'Ngô Hoàng Ngọc Bảo', N'0122435567', 1, 1, N'4DE05CD4-07D5-4091-9BA4-9F9D5AE73DA6', 16)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (7, N'demo05', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Trung Tín', N'0909233445', 1, 1, NULL, 16)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (9, N'agent01', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Thị Hương', N'0163567990', 2, 1, NULL, 3)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (10, N'agent02', N'e10adc3949ba59abbe56e057f20f883e', N'Bảo Liên Đăng', N'0123446712', 2, 1, NULL, 4)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (11, N'master', N'e10adc3949ba59abbe56e057f20f883e', N'Tài khoàn Master', N'01212455767', 3, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  StoredProcedure [dbo].[sp_SeenNotification]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_SeenNotification] 7
CREATE proc [dbo].[sp_SeenNotification]
@NotiID int
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		update [Notification] set Isseen = 1 where NotificationId = @NotiID		
		
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'[sp_SeenNotification]', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AddNotification]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_AddNotification] 6,16,0,N'Test'
CREATE proc [dbo].[sp_AddNotification]
@Type int,
@from int,
@To int,
@Mess NVarchar(MAX)

as
begin
	SET NOCOUNT ON
	BEGIN TRY
		--//phan hoi tu merchant => Agent -- type = 1
		IF @Type = 1
		BEGIN
					insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,@From
						  ,Null
						  ,Null
						  ,Null
						  ,@To
						  ,Null
						  ,@Mess
						  ,0
						  )	
		END
		--// phan hoi tu master => Agent  -- type = 2
		IF @Type = 2
		BEGIN
			insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,null
						  ,Null
						  ,@From
						  ,Null
						  ,@To
						  ,Null
						  ,@Mess
						  ,0
						  )	
		END
		--//phan hoi tu Agent => Merchant -- type = 3
		IF @Type = 3
		BEGIN
			insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,null
						  ,@From
						  ,null
						  ,@To
						  ,null
						  ,Null
						  ,@Mess
						  ,0
						  )	
		END
		-- // phan hoi tu master => Merchant -- type = 4
		IF @Type = 4
		BEGIN
			insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,null
						  ,null
						  ,@From
						  ,@To
						  ,null
						  ,Null
						  ,@Mess
						  ,0
						  )	
		END
		--//phan hoi tu Agent => master -- type = 5
		IF @Type = 5
		BEGIN
			insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,null
						  ,@From
						  ,null
						  ,null
						  ,null
						  ,@To
						  ,@Mess
						  ,0
						  )	
		END
		--// phan hoi tu Merchant => master -- type = 6
		IF @Type = 6
		BEGIN
			insert into [Notification] (
						  [NotificationTime]
						  ,[FromMerchant]
						  ,[FromAgent]
						  ,[FromMaster]
						  ,[ToMerchant]
						  ,[ToAgent]
						  ,[ToMaster]
						  ,[Message]
						  ,[IsSeen])	
					values (
						  GETDATE()
						  ,@From
						  ,null
						  ,null
						  ,null
						  ,null
						  ,@To
						  ,@Mess
						  ,0
						  )	
		END
		select 1 RES
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'[[sp_AddNotification]]', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent](
	[AgentId] [int] IDENTITY(1,1) NOT NULL,
	[AgentName] [nvarchar](100) NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[OwnerId] [int] NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Zip] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[AgentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Agent] ON
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (3, N'CN ViettinBank TPHCM', 1, 1, N'221 Nguyễn Thị Minh Khai', 1, 9, N'3334325431', N'224553667', N'70000', N'vtb01@gmail.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (4, N'CN ViettinBank TPHCM Quận 12', 1, 12, N'132 Phan Văn Hớn', 1, 10, N'2454674377', N'145667990', N'70000', N'vtb02@email.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (5, N'CN ViettinBank TPHCM Quận Tân Bình', 1, 13, N'34/A Hoàng Hoa Thám', 0, NULL, N'01212424567', N'223445667', N'70000', N'cntb@email.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (7, N'CN ViettinBank TPHCM Quận Cầu Giấy', 2, 26, N'45/2B Hoàng Hoa Thám', 1, NULL, N'0835673221', N'832430408', N'63000', N'cncaugiay@vtb.mail.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (8, N'CN ViettinBank TPHCM Quận Ba Đình', 2, 21, N'23/22 Ba Đình', 1, NULL, N'0812312334', N'323434412', N'63000', N'cnbadinh@vtb.mail.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (9, N'CN ViettinBank TPHCM Huyện Từ Liêm', 2, 20, N'11/3 Quốc Lộ 1', 1, NULL, N'0342211122', N'982934792', N'63000', N'cntuliem@vtn.mail.com')
SET IDENTITY_INSERT [dbo].[Agent] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetFunctionByRole]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetFunctionByRole]
@token VARCHAR(100)
as
begin
	select * from PermissFunction where RoleId IN (
	select RoleId from [User] where TokenStr = @token
	)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckSessionLogin]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CheckSessionLogin]
@Token varchar(100)
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		IF EXISTS (select TOP 1 1 from [User] where TokenStr = @Token)
		BEGIN		
			select FullName, RoleId, 1 RES from [User] where TokenStr = @Token
		END	
		ELSE
			select 0 RES
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_CheckSessionLogin', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLogout]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckLogout]
@token varchar(200)
AS
BEGIN
	BEGIN TRY
	
		Update [User]
		set TokenStr = NULL
		where TokenStr = @token
		
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_CheckLogout', GETDATE(), ERROR_MESSAGE())
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLogin]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckLogin]
@username varchar(100),
@password varchar(100)
AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		IF EXISTS (select TOP 1 1 from [User] where UserName = @username AND Password = @password AND IsActive > 0)
		BEGIN
			DECLARE @token VARCHAR(200) = CONVERT(varchar(255), NEWID())
			
			Update [User]
			set TokenStr = @token
			where UserName = @username AND Password = @password
			
			select UserId, FullName, TokenStr, RoleId, 1 RES, CpnId from [User] where UserName = @username AND Password = @password
		END	
		ELSE
			select 0 UserId, '' FullName, '' TokenStr, 0 RoleId, 0 RES, 0 CpnId
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_CheckLogin', GETDATE(), ERROR_MESSAGE())
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckChangePassword]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_CheckChangePassword] '4AE771A0-791F-4AC9-957B-FA4C0676F016','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e'
CREATE proc [dbo].[sp_CheckChangePassword] 

@Token varchar(100),
@password_old varchar(255),
@password_new varchar(255)
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		IF EXISTS (select TOP 1 1 from [User] where TokenStr = @Token  and Password = @password_old)-- kiem tra 
		BEGIN		
			-- update mat khau
			update [User] set Password = @password_new  where TokenStr = @Token
			select 1 RES
		END	
		ELSE
			select 0 RES
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_CheckChangePassword', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  Table [dbo].[Merchant]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Merchant](
	[MerchantId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantType] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[DistrictId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[AgentId] [int] NULL,
	[OwnerId] [int] NULL,
	[FirstActiveDate] [datetime] NULL,
	[LastActiveDate] [datetime] NULL,
	[MerchantName] [nvarchar](100) NOT NULL,
	[Status] [nchar](10) NULL,
	[Owner] [varchar](50) NULL,
	[Address1] [nvarchar](255) NOT NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Zip] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[ApprovalDate] [datetime] NULL,
	[CloseDate] [datetime] NULL,
	[BankCardDBA] [varchar](50) NULL,
	[BackendProcessor] [varchar](100) NULL,
 CONSTRAINT [PK_Merchant] PRIMARY KEY CLUSTERED 
(
	[MerchantId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Merchant] ON
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (10, 3, 1, 2, 1, N'352675980', N'22345672', 4, 2, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Siêu thị sách Nguyễn Văn Cừ', N'A         ', NULL, N'205 Nguyễn Văn Cừ', NULL, NULL, N'700000', N'sieuthinvc@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (12, 3, 1, 10, 1, N'556749890', N'345245226', 8, 4, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Big C Miền Đông', N'A         ', NULL, N'332 Tô Hiến Thành', NULL, NULL, N'700000', N'bigctht@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (16, 3, 1, 5, 1, N'305408091', N'443567445', 3, 5, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Siêu thị Co.OpMart Cống Quỳnh', N'A         ', NULL, N'189C Cống Quỳnh', NULL, NULL, N'700000', N'coopcq@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (18, 1, 2, 20, 1, N'354223778', N'354223778', 4, NULL, CAST(0x0000A78700000000 AS DateTime), CAST(0x0000A78700000000 AS DateTime), N'Cửa hàng quần áo Second Hand Maniac', N'A         ', NULL, N'303 Lý Thái Tổ', NULL, NULL, N'100000', N'maniac@yahoo.com', CAST(0x0000A78700000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (21, 2, 2, 12, 1, N'445566772', N'123456789', 7, NULL, CAST(0x0000A78E00000000 AS DateTime), CAST(0x0000A78E00000000 AS DateTime), N'Quán Ăn Huyền THoại', N'A         ', NULL, N'305 Hoàng Văn Thụ', NULL, NULL, N'70000', N'abcxyz@mail.com', CAST(0x0000A78E00000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (25, 2, 2, 23, 1, N'034512212', N'312319807', 5, NULL, CAST(0x0000A78E00000000 AS DateTime), CAST(0x0000A78E00000000 AS DateTime), N'Quán Ăn Phở Katanari', N'A         ', NULL, N'23 Nguyễn Kiệm', NULL, NULL, N'63000', N'gth@gmail.com', CAST(0x0000A78E00000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (26, 1, 2, 24, 1, N'090231232', N'456342309', 9, NULL, CAST(0x0000A78E00000000 AS DateTime), CAST(0x0000A78E00000000 AS DateTime), N'Quần Áo Xì rin', N'A         ', NULL, N'54 Pastuer', NULL, NULL, N'63000', N'dgfs@gmail.com', CAST(0x0000A78E00000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Merchant] OFF
/****** Object:  StoredProcedure [dbo].[sp_XemChiTiet_Merchant]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_XemChiTiet_Merchant]
@id int
as
begin
	select a.*, b.TypeName, c.ProvinceName, d.DistrictName 
	from Merchant a inner join MerchantType b on a.MerchantType = b.TypeId
	inner join Province c on a.ProvinceId = c.ProvinceId
	inner join District d on a.DistrictId = d.DistrictId
	where MerchantId = @id

end
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetail](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantId] [int] NOT NULL,
	[TransactionAmount] [money] NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[TransationTime] [time](7) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CardTypeId] [int] NOT NULL,
	[KeyedEntry] [nchar](10) NULL,
	[AuthorizationNumber] [int] NULL,
	[AccountNumber] [nchar](10) NULL,
	[FirstTwelveAccountNumber] [nchar](12) NULL,
	[CountryCode] [nchar](10) NULL,
	[FileSource] [nvarchar](255) NULL,
	[ExpirationDate] [datetime] NULL,
	[TransactionTypeId] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductAmount] [int] NOT NULL,
 CONSTRAINT [PK_TransactionDetail] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TransactionDetail] ON
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (40, 10, 1853346.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), NULL, 1, N'2017051214', 1, N'5342123477', N'534212347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (41, 10, 443621.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 370', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (42, 10, 761788.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), NULL, 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (43, 10, 2943024.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (44, 10, 1857038.0000, CAST(0xCC3C0B00 AS Date), CAST(0x070044D4C57B0000 AS Time), NULL, 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A11', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (45, 10, 843404.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07008A97E97B0000 AS Time), N'test', 2, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 371', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (46, 10, 1879062.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700D05A0D7C0000 AS Time), NULL, 3, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (47, 10, 3996666.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700161E317C0000 AS Time), N'test', 3, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 3, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (48, 10, 1886878.0000, CAST(0xCD3C0B00 AS Date), CAST(0x07005CE1547C0000 AS Time), NULL, 2, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A12', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (49, 10, 393088.0000, CAST(0xCD3C0B00 AS Date), CAST(0x0700A2A4787C0000 AS Time), N'test', 2, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 372', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (50, 10, 1001908.0000, CAST(0xCD3C0B00 AS Date), CAST(0x0700E8679C7C0000 AS Time), NULL, 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (51, 10, 5870736.0000, CAST(0xCD3C0B00 AS Date), CAST(0x07002E2BC07C0000 AS Time), N'test', 2, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (52, 10, 1554432.0000, CAST(0xCD3C0B00 AS Date), CAST(0x070074EEE37C0000 AS Time), NULL, 3, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A13', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (53, 10, 790331.0000, CAST(0xCE3C0B00 AS Date), CAST(0x0700BAB1077D0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 373', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (54, 10, 1996366.0000, CAST(0xCE3C0B00 AS Date), CAST(0x070000752B7D0000 AS Time), NULL, 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (55, 10, 1525818.0000, CAST(0xCE3C0B00 AS Date), CAST(0x070046384F7D0000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (56, 10, 477800.0000, CAST(0xCE3C0B00 AS Date), CAST(0x07008CFB727D0000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A14', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (57, 10, 525053.0000, CAST(0xCE3C0B00 AS Date), CAST(0x0700D2BE967D0000 AS Time), N'test', 2, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 374', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (58, 10, 1781146.0000, CAST(0xCF3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), NULL, 2, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (59, 10, 4362114.0000, CAST(0xCF3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'test', 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (60, 12, 862116.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07002A63AD790000 AS Time), NULL, 3, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A15', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (61, 12, 778685.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07002A63AD790000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 375', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (62, 12, 927748.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07007026D1790000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (63, 12, 4186032.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07007026D1790000 AS Time), N'test', 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (64, 12, 802638.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700B6E9F4790000 AS Time), NULL, 2, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A16', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (65, 12, 532712.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700B6E9F4790000 AS Time), N'test', 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 376', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (66, 12, 1558464.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FCAC187A0000 AS Time), NULL, 2, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (67, 12, 4219854.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FCAC187A0000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (68, 12, 240846.0000, CAST(0xCD3C0B00 AS Date), CAST(0x070042703C7A0000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A17', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (69, 12, 892203.0000, CAST(0xCD3C0B00 AS Date), CAST(0x070042703C7A0000 AS Time), N'test', 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 377', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (70, 12, 825010.0000, CAST(0xCD3C0B00 AS Date), CAST(0x07008833607A0000 AS Time), NULL, 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (71, 12, 3901860.0000, CAST(0xCD3C0B00 AS Date), CAST(0x07008833607A0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (72, 12, 1442640.0000, CAST(0xCD3C0B00 AS Date), CAST(0x0700CEF6837A0000 AS Time), NULL, 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A18', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (73, 12, 256466.0000, CAST(0xCD3C0B00 AS Date), CAST(0x0700CEF6837A0000 AS Time), N'test', 2, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 378', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (74, 12, 1701556.0000, CAST(0xCD3C0B00 AS Date), CAST(0x070014BAA77A0000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (75, 12, 5820708.0000, CAST(0xCE3C0B00 AS Date), CAST(0x070014BAA77A0000 AS Time), N'test', 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (76, 12, 957388.0000, CAST(0xCE3C0B00 AS Date), CAST(0x07005A7DCB7A0000 AS Time), NULL, 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A19', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (77, 12, 943903.0000, CAST(0xCE3C0B00 AS Date), CAST(0x07005A7DCB7A0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 379', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (78, 12, 1619884.0000, CAST(0xCE3C0B00 AS Date), CAST(0x0700A040EF7A0000 AS Time), NULL, 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (79, 12, 812892.0000, CAST(0xCE3C0B00 AS Date), CAST(0x0700A040EF7A0000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (80, 12, 1637354.0000, CAST(0xCF3C0B00 AS Date), CAST(0x0700E603137B0000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'LAPTOP A20', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (81, 12, 887965.0000, CAST(0xCF3C0B00 AS Date), CAST(0x0700E603137B0000 AS Time), N'test', 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 380', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (82, 12, 1836800.0000, CAST(0xCF3C0B00 AS Date), CAST(0x07002CC7367B0000 AS Time), NULL, 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (83, 12, 5834730.0000, CAST(0xCF3C0B00 AS Date), CAST(0x07002CC7367B0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (84, 16, 1304820.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700728A5A7B0000 AS Time), NULL, 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A21', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (85, 16, 323851.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700728A5A7B0000 AS Time), N'test', 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 381', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (86, 16, 1880414.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700B84D7E7B0000 AS Time), NULL, 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (87, 16, 1934166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700B84D7E7B0000 AS Time), N'test', 1, N'2017051214', 1, N'3342773477', N'334277347768', N'VN        ', N'import_v2.xlsx', NULL, 1, N'PIN LITHIUM NOKIA', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (88, 16, 395058.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), NULL, 1, N'2017051214', 1, N'5711113457', N'571111345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A22', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (89, 16, 279309.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'test', 1, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 382', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (90, 16, 3751446.0000, CAST(0xCC3C0B00 AS Date), CAST(0x070044D4C57B0000 AS Time), NULL, 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A23', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (91, 16, 1554090.0000, CAST(0xCC3C0B00 AS Date), CAST(0x070044D4C57B0000 AS Time), N'test', 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'NOKIA 383', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (92, 16, 455347.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07008A97E97B0000 AS Time), NULL, 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 1, N'LAPTOP A24', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (93, 16, 1888206.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07008A97E97B0000 AS Time), N'test', 2, N'2017051214', 1, N'5567113457', N'556711345789', N'VN        ', N'import_v2.xlsx', NULL, 2, N'NOKIA 384', 6)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (94, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (95, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (96, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (97, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (98, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 3, N'Ao Nu thoi trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (99, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'AO T-SHIRT TAY NGAN VO TRON', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (100, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QUAN SORT NAM CAO CAP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (101, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nam Cao Cap', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (102, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QUAN SHORT NAM DEP', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (103, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'hau Vong Nguyet', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (104, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 3, N'Cha Cua Chien Ap Chao', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (105, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (106, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Canape cá Hoi hap trai bí', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (107, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (108, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (109, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (110, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (111, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien Thoai Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (112, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (113, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (114, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (115, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien thoai Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (116, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (117, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (118, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (119, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (120, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nu thoi trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (121, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'AO T-SHIRT TAY NGAN VO TRON', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (122, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'QUAN SORT NAM CAO CAP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (123, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nam Cao Cap', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (124, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 1, N'QUAN SHORT NAM DEP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (125, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 1, N'hau Vong Nguyet', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (126, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Cha Cua Chien Ap Chao', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (127, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (128, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 2, N'Canape cá Hoi hap trai bí', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (129, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (130, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (131, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (132, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (133, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien Thoai Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (134, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien thoai Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (135, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (136, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (137, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (138, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (139, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
GO
print 'Processed 100 total records'
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (140, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (141, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (142, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nu thoi trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (143, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'AO T-SHIRT TAY NGAN VO TRON', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (144, 25, 446030.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'QUAN SORT NAM CAO CAP', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (145, 18, 791089.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Ao Nam Cao Cap', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (146, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (147, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (148, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (149, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (150, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 3, N'Ao Nu thoi trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (151, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'AO T-SHIRT TAY NGAN VO TRON', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (152, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QUAN SORT NAM CAO CAP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (153, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nam Cao Cap', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (154, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QUAN SHORT NAM DEP', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (155, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'hau Vong Nguyet', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (156, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 3, N'Cha Cua Chien Ap Chao', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (157, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (158, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Canape cá Hoi hap trai bí', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (159, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (160, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (161, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (162, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (163, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien Thoai Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (164, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (165, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (166, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (167, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien thoai Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (168, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (169, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (170, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (171, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (172, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nu thoi trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (173, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'AO T-SHIRT TAY NGAN VO TRON', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (174, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'QUAN SORT NAM CAO CAP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (175, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nam Cao Cap', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (176, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 1, N'QUAN SHORT NAM DEP', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (177, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 1, N'hau Vong Nguyet', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (178, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Cha Cua Chien Ap Chao', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (179, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (180, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 2, N'Canape cá Hoi hap trai bí', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (181, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (182, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (183, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (184, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (185, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien Thoai Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (186, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Dien thoai Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (187, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (188, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (189, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Dien thoai Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (190, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (191, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5340000000', N'534000000000', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (192, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2020000000', 1, N'5570000000', N'557000000000', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (193, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (194, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 1, N'Ao Nu thoi trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (195, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'AO T-SHIRT TAY NGAN VO TRON', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (196, 25, 446030.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2020000000', 1, N'3340000000', N'334000000000', N'VN        ', NULL, NULL, 1, N'QUAN SORT NAM CAO CAP', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (197, 18, 791089.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2020000000', 1, N'5710000000', N'571000000000', N'VN        ', NULL, NULL, 2, N'Ao Nam Cao Cap', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (198, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (199, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (200, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (201, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (202, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 3, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (203, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (204, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (205, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (206, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (207, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'Hàu v?ng nguy?t', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (208, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 3, N'Ch? cua chiên áp ch?o', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (209, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (210, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (211, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (212, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (213, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (214, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (215, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (216, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (217, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (218, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (219, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (220, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (221, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (222, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (223, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (224, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (225, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (226, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (227, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (228, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (229, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'Hàu v?ng nguy?t', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (230, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Ch? cua chiên áp ch?o', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (231, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (232, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 2, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (233, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (234, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (235, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (236, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (237, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (238, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (239, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (240, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A522', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (241, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (242, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (243, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (244, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (245, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (246, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (247, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (248, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (249, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (250, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (251, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (252, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 3, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (253, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (254, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (255, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (256, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (257, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'Hàu v?ng nguy?t', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (258, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 3, N'Ch? cua chiên áp ch?o', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (259, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (260, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (261, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (262, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (263, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (264, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (265, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (266, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (267, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (268, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (269, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (270, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (271, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (272, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (273, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (274, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (275, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (276, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (277, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (278, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (279, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'Hàu v?ng nguy?t', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (280, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Ch? cua chiên áp ch?o', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (281, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (282, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 2, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (283, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (284, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (285, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (286, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (287, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (288, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (289, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (290, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (291, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (292, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (293, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (294, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (295, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (296, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (297, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (298, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (299, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (300, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (301, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (302, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 3, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (303, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (304, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (305, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (306, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (307, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'Hàu v?ng nguy?t', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (308, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 3, N'Ch? cua chiên áp ch?o', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (309, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (310, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (311, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (312, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (313, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (314, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (315, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (316, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (317, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (318, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (319, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (320, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (321, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (322, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (323, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (324, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (325, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (326, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (327, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (328, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (329, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'Hàu v?ng nguy?t', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (330, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Ch? cua chiên áp ch?o', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (331, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (332, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 2, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (333, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (334, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (335, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (336, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (337, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (338, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (339, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (340, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (341, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G958', 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (342, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (343, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (344, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (345, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (346, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (347, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (348, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (349, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (350, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (351, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (352, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 3, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (353, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (354, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (355, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (356, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (357, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'Hàu v?ng nguy?t', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (358, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 3, N'Ch? cua chiên áp ch?o', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (359, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (360, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (361, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (362, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (363, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (364, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (365, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (366, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (367, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (368, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (369, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (370, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (371, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (372, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (373, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (374, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (375, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (376, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (377, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (378, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (379, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'Hàu v?ng nguy?t', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (380, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Ch? cua chiên áp ch?o', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (381, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (382, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 2, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (383, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (384, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (385, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (386, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (387, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (388, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (389, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (390, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (391, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (392, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (393, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (394, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (395, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (396, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (397, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (398, 18, 930166.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (399, 21, 280634.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (400, 25, 303222.0000, CAST(0xCC3C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (401, 18, 710398.0000, CAST(0xCC3C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (402, 18, 320228.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 3, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (403, 21, 100588.0000, CAST(0xE13C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (404, 21, 767558.0000, CAST(0xE23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (405, 25, 160012.0000, CAST(0xE23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (406, 18, 250065.0000, CAST(0xE33C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (407, 18, 375411.0000, CAST(0xA43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'Hàu v?ng nguy?t', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (408, 21, 189636.0000, CAST(0xA43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 3, N'Ch? cua chiên áp ch?o', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (409, 21, 139563.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Cà ri tôm càng', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (410, 18, 957718.0000, CAST(0xA53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (411, 21, 276159.0000, CAST(0xA63C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (412, 25, 580742.0000, CAST(0x5F3B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (413, 18, 474370.0000, CAST(0x743B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'BlackBerry Visor Mount Speakerphone VM605', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (414, 18, 427670.0000, CAST(0x743B0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'QED XT40', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (415, 21, 341385.0000, CAST(0x753B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G955', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (416, 21, 708273.0000, CAST(0x753B0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A520', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (417, 25, 122621.0000, CAST(0x763B0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (418, 18, 765453.0000, CAST(0x3F3C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (419, 18, 519304.0000, CAST(0x403C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (420, 21, 997227.0000, CAST(0x413C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (421, 21, 397907.0000, CAST(0x423C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (422, 18, 305488.0000, CAST(0x433C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (423, 21, 362616.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (424, 25, 730137.0000, CAST(0xD03C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (425, 18, 460444.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (426, 18, 359431.0000, CAST(0xD03C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'QU?N SHORT N? CAO C?P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (427, 21, 409920.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'Áo nam cao c?p', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (428, 21, 533011.0000, CAST(0xD23C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 1, N'QU?N SHORT NAM ??P', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (429, 25, 656931.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 1, N'Hàu v?ng nguy?t', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (430, 18, 396864.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Ch? cua chiên áp ch?o', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (431, 18, 856440.0000, CAST(0xD23C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 2, N'Cà ri tôm càng', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (432, 21, 486745.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 2, N'Canape cá h?i trái b?', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (433, 21, 643944.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'Súp gà chua cay', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (434, 18, 572539.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED Profile Audio J2P 1m', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (435, 21, 430019.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'BlackBerry Visor Mount Speakerphone VM606', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (436, 25, 976782.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 2, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'QED XT41', 2)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (437, 18, 981660.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G956', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (438, 18, 191802.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 2, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A521', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (439, 21, 837850.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 3, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G957', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (440, 21, 837393.0000, CAST(0xD43C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy A5 (2017) SM-A522', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (441, 25, 745111.0000, CAST(0xD43C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'?i?n tho?i Samsung Galaxy S8 Plus SM-G958', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (442, 18, 770139.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.71E+16  ', N'5.71E+16    ', N'VN        ', NULL, NULL, 1, N'LAPTOP A10', 2)
GO
print 'Processed 400 total records'
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (443, 18, 769728.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.34E+15  ', N'5.34E+15    ', N'VN        ', NULL, NULL, 2, N'LAPTOP A10', 4)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (444, 21, 506530.0000, CAST(0xD53C0B00 AS Date), CAST(0x07001C4ACD800000 AS Time), N'', 4, N'2.02E+11  ', 1, N'5.57E+15  ', N'5.57E+15    ', N'VN        ', NULL, NULL, 2, N'USB PNJ 16GB', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (445, 21, 436341.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+15  ', N'3.34E+15    ', N'VN        ', NULL, NULL, 1, N'PIN LITHIUM NOKIA', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (446, 18, 634301.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700E49F89790000 AS Time), N'', 1, N'2.02E+11  ', 1, N'5.71E+15  ', N'5.71E+15    ', N'VN        ', NULL, NULL, 1, N'Áo N? Th?i Trang', 1)
INSERT [dbo].[TransactionDetail] ([TransactionId], [MerchantId], [TransactionAmount], [TransactionDate], [TransationTime], [Description], [CardTypeId], [KeyedEntry], [AuthorizationNumber], [AccountNumber], [FirstTwelveAccountNumber], [CountryCode], [FileSource], [ExpirationDate], [TransactionTypeId], [ProductName], [ProductAmount]) VALUES (447, 21, 660388.0000, CAST(0xD53C0B00 AS Date), CAST(0x0700FE10A27B0000 AS Time), N'', 1, N'2.02E+11  ', 1, N'3.34E+16  ', N'3.34E+16    ', N'VN        ', NULL, NULL, 1, N'ÁO T-SHIRT TAY NG?N C? TRÒN N?A V?T ', 1)
SET IDENTITY_INSERT [dbo].[TransactionDetail] OFF
/****** Object:  Table [dbo].[MerchantInvitation]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchantInvitation](
	[FromMerchantId] [int] NOT NULL,
	[NewMerchantName] [nvarchar](100) NOT NULL,
	[InvitationDescription] [nvarchar](max) NOT NULL,
	[InvitationDate] [datetime] NOT NULL,
	[IsResolved] [bit] NOT NULL,
 CONSTRAINT [PK_MerchantInvitation] PRIMARY KEY CLUSTERED 
(
	[FromMerchantId] ASC,
	[InvitationDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_List_Sent_Notification]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_AddNotification] 6,16,0,N'Test'
create proc [dbo].[sp_Get_List_Sent_Notification]
@Roleid int
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		--
		--//lay dnah sach Master + Agent
		IF @Roleid = 1 
		
		BEGIN
			select 1 Type,Agentid Id,AgentName Name -- Type 1 MerChant -> Agent
			into #temp
			from Agent		

			SET IDENTITY_INSERT #temp ON
			insert into #temp(Type,Id,name)
			select 6 Type,0 Id,'Master' Name -- Type 6 MerChant -> Master
			--select * from #temp
			select * From #temp
			SET IDENTITY_INSERT #temp OFF
			drop table #temp
		END

		--/lay dnah sach Master + Merchant
		 ELSE IF @Roleid = 2
		BEGIN
			select 3 Type,MerchantId Id,MerchantName Name -- Type 3 Agent -> MerChant
			into #temp1
			from Merchant		

			SET IDENTITY_INSERT #temp1 ON
			insert into #temp1(Type,Id,name)
			select 5 Type,0 Id,'Master' Name -- Type 5 Agent -> Master
			select * From #temp1
			SET IDENTITY_INSERT #temp1 OFF
			drop table #temp1

		END
		--/lay dnah sach Agent + Merchant
		ELSE IF @Roleid = 3
		BEGIN
			select 4 Type,MerchantId Id,MerchantName Name -- Type 4 Master -> MerChant
			into #temp2
			from Merchant		

			SET IDENTITY_INSERT #temp2 ON
			insert into #temp2(Type,Id,name)
			select 2 Type,Agentid Id,AgentName Name -- Type 2 Master -> Agent
			from Agent

			select * From #temp2
			SET IDENTITY_INSERT #temp2 OFF
			drop table #temp2
		END


	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'[sp_Get_List_Sent_Notification]', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNotification_inbox]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_GetNotification_inbox] '268C2160-7A3D-4DA1-A7CA-FA1C64B3F3C5'
CREATE proc [dbo].[sp_GetNotification_inbox]
@Token varchar(100)
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		
		select roleid,cpnid
		into #a
		from [user]
		--select * from #a
		--delete #a
		where TokenStr = @Token
		declare @Rol int 
		select @Rol = roleid from #a
		declare @Cpn int 
		select @Cpn = cpnid from #a

		IF (select roleid from #a) = 1
			BEGIN
				select  ntf.*,ag.AgentName as SentFrom
				into #b
				from [Notification] ntf, [Agent] ag
				where ntf.ToMerchant = @Cpn and ntf.FromAgent = ag.AgentId
				--
				insert into #b
				select  ntf.*,'master' SentFrom 				
				from [Notification] ntf
				where ntf.ToMerchant = @Cpn and ntf.FromMaster = 0
				--
				select * from #b order by NotificationTime desc
				drop table #b
			END
		ELSE IF (select roleid from #a) = 2
			BEGIN
				select  ntf.*,mc.MerchantName  as SentFrom
				into #b2
				from [Notification] ntf, Merchant mc
				where ntf.ToAgent = @Cpn and ntf.FromMerchant = mc.MerchantId
				--
				insert into #b2
				select  ntf.*,'Master' SentFrom 				
				from [Notification] ntf
				where ntf.ToAgent = @Cpn and ntf.FromMaster = 0
				--
				select * from #b2 order by NotificationTime desc
				drop table #b2
			END
		ELSE IF (select roleid from #a) = 3
			BEGIN
				select  ntf.*,mc.MerchantName as SentFrom
				into #b3
				from [Notification] ntf, Merchant mc
				where ntf.ToMaster = @Cpn and ntf.FromMerchant = mc.MerchantId
				--
				insert into #b3
				select  ntf.*,ag.AgentName as SentFrom 				
				from [Notification] ntf, Agent ag
				where ntf.ToAgent = @Cpn and ntf.FromAgent = ag.AgentId
				
				select * from #b3 order by NotificationTime desc
				drop table #b3
			END

		drop table #a
		
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_GetNotification_inbox', GETDATE(), ERROR_MESSAGE())
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetListMerchantByView]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetListMerchantByView]
@action int, @value int
as
begin
	if @action = 1 
	begin
		select MerchantId, MerchantName, Phone, Address1, Email,
				CASE [Status] when 'A' THEN N'Đang hoạt động' ELSE N'Ngừng hoạt động' END 'Status',
				0 err
		from Merchant
		where MerchantType = @value or @value = 0
	end
	
	if @action = 2 
	begin
		select MerchantId, MerchantName, Phone, Address1, Email,
				CASE [Status] when 'A' THEN N'Đang hoạt động' ELSE N'Ngừng hoạt động' END 'Status',
				0 err
		from Merchant a inner join RegionMapping b on a.DistrictId = b.DistrictId and a.ProvinceId = b.ProvinceId
		where b.RegionId = @value or @value = 0
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetListMerchant_AgentManager]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetListMerchant_AgentManager]
@token varchar(100)
as
begin
	if exists (select top 1 1 from [User] where TokenStr = @token)
	begin
		select AgentId
		into #agent
		from Agent where OwnerId IN (
		select UserId from [user] where TokenStr = @token
		)
		
		select MerchantId, MerchantName, Phone, Address1, Email,
				CASE [Status] when 'A' THEN N'Đang hoạt động' ELSE N'Ngừng hoạt động' END 'Status',
				0 err
		from Merchant 
		where AgentId IN (select * from #agent)
		
		drop table #agent
	end

end
GO
/****** Object:  StoredProcedure [dbo].[Trans_import]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Trans_import] 
as
begin
	SET NOCOUNT ON
	BEGIN TRY
		insert into TransactionDetail 
			(
			MerchantId, TransactionAmount, TransactionDate, TransationTime, Description, CardTypeId, KeyedEntry,
			AuthorizationNumber, AccountNumber, FirstTwelveAccountNumber, CountryCode, TransactionTypeId,
			ProductName, ProductAmount
			)
			select MerchantID, Price, CreateDate, CreateTime, Note, CardType, LEFT(KeyEntry, 10), 1, LEFT(AccountNumber, 10),
			LEFT(AccountNumber, 12), Country, TransType, ProductName, Quantity
			from TransactioImport	
		insert into  Log_import (date,filename,status) values (getdate(),'',N'Import thành công')
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'[Trans_import]', GETDATE(), ERROR_MESSAGE())
		insert into  Log_import (date,filename,status) values (getdate(),'',N'Import thất bại')
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BaoCaoThongKe]    Script Date: 06/12/2017 20:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_BaoCaoThongKe]
@follow int,
@typegd int,
@tungay nvarchar(20),
@denngay nvarchar(20),
@month int = 0,
@year int = 0,
@quy int = 0
as
begin
	set nocount on
	insert into LogRecord (MsgError)
	values (convert(varchar, @follow) + ' -- ' + convert(varchar, @typegd) + ' -- ' + @tungay + ' -- ' + @denngay)

	if @follow = 1 or @follow = 5 --xem theo ngay
	begin
		select * 
		into #tmp01
		from TransactionDetail
		where TransactionDate between @tungay and @denngay
		
		select a.*, b.MerchantName, c.CardTypeName CardType, d.TransactionTypeName into #tmp02 
		from #tmp01 a inner join Merchant b On a.MerchantId = b.MerchantId
		inner join CardType c on a.CardTypeId = c.CardTypeId
		inner join TransactionType d on a.TransactionTypeId = d.TransactionTypeId
		
		drop table #tmp01
		
		Update #tmp02 set TransactionAmount *= -1 where TransactionTypeId = 2
		
		select * from #tmp02
	end
	
	if @follow = 2 --theo thang
	begin
		select * 
		into #tmp04
		from TransactionDetail
		where MONTH(TransactionDate) = @month AND YEAR(TransactionDate) = YEAR(GETDATE())
		
		select a.*, b.MerchantName, c.CardTypeName CardType, d.TransactionTypeName into #tmp05 
		from #tmp04 a inner join Merchant b On a.MerchantId = b.MerchantId
		inner join CardType c on a.CardTypeId = c.CardTypeId
		inner join TransactionType d on a.TransactionTypeId = d.TransactionTypeId
		
		drop table #tmp04
		
		Update #tmp05 set TransactionAmount *= -1 where TransactionTypeId = 2
		
		select * from #tmp05
	end
	
	if @follow = 3 --theo nam
	begin
		select * 
		into #tmp06
		from TransactionDetail
		where YEAR(TransactionDate) = @year
		
		select a.*, b.MerchantName, c.CardTypeName CardType, d.TransactionTypeName into #tmp07
		from #tmp06 a inner join Merchant b On a.MerchantId = b.MerchantId
		inner join CardType c on a.CardTypeId = c.CardTypeId
		inner join TransactionType d on a.TransactionTypeId = d.TransactionTypeId
		
		drop table #tmp06
		
		Update #tmp07 set TransactionAmount *= -1 where TransactionTypeId = 2
		
		select * from #tmp07
	end
	
	if @follow = 4 --theo quy
	begin
		create table #quy (quy int)
		
		if @quy = 1
		begin 
			insert into #quy values (1)
			insert into #quy values (2)
			insert into #quy values (3)
		end
		else if @quy = 2
		begin
			insert into #quy values (4)
			insert into #quy values (5)
			insert into #quy values (6)
		end
		else if @quy = 3
		begin
			insert into #quy values (7)
			insert into #quy values (8)
			insert into #quy values (9)
		end
		else 
		begin
			insert into #quy values (10)
			insert into #quy values (11)
			insert into #quy values (12)
		end
		
		select * 
		into #tmp08
		from TransactionDetail
		where MONTH(TransactionDate) IN (select * from #quy)
		AND YEAR(TransactionDate) = YEAR(GETDATE())
		
		select a.*, b.MerchantName, c.CardTypeName CardType, d.TransactionTypeName into #tmp09
		from #tmp08 a inner join Merchant b On a.MerchantId = b.MerchantId
		inner join CardType c on a.CardTypeId = c.CardTypeId
		inner join TransactionType d on a.TransactionTypeId = d.TransactionTypeId
		
		drop table #tmp08
		
		Update #tmp09 set TransactionAmount *= -1 where TransactionTypeId = 2
		
		select * from #tmp09
	end
end
GO
/****** Object:  Default [DF_User_IsActive]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK_RegionMapping_District]    Script Date: 06/12/2017 20:46:35 ******/
ALTER TABLE [dbo].[RegionMapping]  WITH CHECK ADD  CONSTRAINT [FK_RegionMapping_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[RegionMapping] CHECK CONSTRAINT [FK_RegionMapping_District]
GO
/****** Object:  ForeignKey [FK_RegionMapping_Province]    Script Date: 06/12/2017 20:46:35 ******/
ALTER TABLE [dbo].[RegionMapping]  WITH CHECK ADD  CONSTRAINT [FK_RegionMapping_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[RegionMapping] CHECK CONSTRAINT [FK_RegionMapping_Province]
GO
/****** Object:  ForeignKey [FK_User_UserRole]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
/****** Object:  ForeignKey [FK_Agent_District]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_District]
GO
/****** Object:  ForeignKey [FK_Agent_Province]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Province]
GO
/****** Object:  ForeignKey [FK_Agent_User]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_User] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_User]
GO
/****** Object:  ForeignKey [FK_Merchant_Agent]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_Agent] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_Agent]
GO
/****** Object:  ForeignKey [FK_Merchant_District]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_District]
GO
/****** Object:  ForeignKey [FK_Merchant_MerchantType]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_MerchantType] FOREIGN KEY([MerchantType])
REFERENCES [dbo].[MerchantType] ([TypeId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_MerchantType]
GO
/****** Object:  ForeignKey [FK_Merchant_Province]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_Province]
GO
/****** Object:  ForeignKey [FK_Merchant_User]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_User] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_User]
GO
/****** Object:  ForeignKey [FK_TransactionDetail_CardType]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_CardType] FOREIGN KEY([CardTypeId])
REFERENCES [dbo].[CardType] ([CardTypeId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_CardType]
GO
/****** Object:  ForeignKey [FK_TransactionDetail_Merchant]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Merchant] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[Merchant] ([MerchantId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Merchant]
GO
/****** Object:  ForeignKey [FK_TransactionDetail_TransactionType]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_TransactionType] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionType] ([TransactionTypeId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_TransactionType]
GO
/****** Object:  ForeignKey [FK_MerchantInvitation_Merchant]    Script Date: 06/12/2017 20:46:49 ******/
ALTER TABLE [dbo].[MerchantInvitation]  WITH CHECK ADD  CONSTRAINT [FK_MerchantInvitation_Merchant] FOREIGN KEY([FromMerchantId])
REFERENCES [dbo].[Merchant] ([MerchantId])
GO
ALTER TABLE [dbo].[MerchantInvitation] CHECK CONSTRAINT [FK_MerchantInvitation_Merchant]
GO
