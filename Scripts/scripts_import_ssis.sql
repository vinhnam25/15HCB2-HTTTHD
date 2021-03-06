USE [DBCardProcess]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddNotification]    Script Date: 6/9/2017 1:56:09 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CheckChangePassword]    Script Date: 6/9/2017 1:56:10 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CheckLogin]    Script Date: 6/9/2017 1:56:10 PM ******/
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
			
			select UserId, FullName, TokenStr, RoleId, 1 RES from [User] where UserName = @username AND Password = @password
		END	
		ELSE
			select 0 UserId, '' FullName, '' TokenStr, 0 RoleId, 0 RES
	END TRY
	BEGIN CATCH
		insert into LogRecord (StoreName, DateError, MsgError) values (N'sp_CheckLogin', GETDATE(), ERROR_MESSAGE())
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLogout]    Script Date: 6/9/2017 1:56:10 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CheckSessionLogin]    Script Date: 6/9/2017 1:56:10 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetNotification_inbox]    Script Date: 6/9/2017 1:56:10 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeenNotification]    Script Date: 6/9/2017 1:56:10 PM ******/
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
/****** Object:  Table [dbo].[Agent]    Script Date: 6/9/2017 1:56:10 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Configuration]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogRecord]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Merchant]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MerchantInvitation]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MerchantType]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Province]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Region]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegionMapping]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactioImport]    Script Date: 6/9/2017 1:56:12 PM ******/
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
 CONSTRAINT [PK_data_import] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/9/2017 1:56:12 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (3, N'CN ViettinBank TPHCM', 1, 1, N'221 Nguyễn Thị Minh Khai', 1, 9, N'3334325431', N'224553667', N'70000', N'vtb01@gmail.com')
INSERT [dbo].[Agent] ([AgentId], [AgentName], [ProvinceId], [DistrictId], [Address], [IsActive], [OwnerId], [Phone], [Fax], [Zip], [Email]) VALUES (4, N'CN ViettinBank TPHCM Quận 12', 1, 12, N'132 Phan Văn Hớn', 1, 10, N'2454674377', N'145667990', N'70000', N'vtb02@email.com')
SET IDENTITY_INSERT [dbo].[Agent] OFF
SET IDENTITY_INSERT [dbo].[CardType] ON 

INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (1, N'Visa Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (2, N'Master Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (3, N'Debit Card')
INSERT [dbo].[CardType] ([CardTypeId], [CardTypeName]) VALUES (4, N'Foreign key Card')
SET IDENTITY_INSERT [dbo].[CardType] OFF
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
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Merchant] ON 

INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (10, 1, 1, 2, 1, N'352675980', N'22345672', 3, 2, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Siêu thị sách Nguyễn Văn Cừ', N'A         ', NULL, N'205 Nguyễn Văn Cừ', NULL, NULL, N'70000', N'sieuthinvc@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (12, 1, 1, 10, 1, N'556749890', N'345245226', 3, 4, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Big C Miền Đông', N'A         ', NULL, N'332 Tô Hiến Thành', NULL, NULL, N'70000', N'bigctht@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Merchant] ([MerchantId], [MerchantType], [ProvinceId], [DistrictId], [IsActive], [Phone], [Fax], [AgentId], [OwnerId], [FirstActiveDate], [LastActiveDate], [MerchantName], [Status], [Owner], [Address1], [Address2], [Address3], [Zip], [Email], [ApprovalDate], [CloseDate], [BankCardDBA], [BackendProcessor]) VALUES (16, 1, 1, 5, 1, N'305408091', N'443567445', 4, 5, CAST(0x0000A77100000000 AS DateTime), CAST(0x0000A77100000000 AS DateTime), N'Siêu thị Co.OpMart Cống Quỳnh', N'A         ', NULL, N'189C Cống Quỳnh', NULL, NULL, N'70000', N'coopcq@gmail.com', CAST(0x0000A77100000000 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Merchant] OFF
SET IDENTITY_INSERT [dbo].[MerchantType] ON 

INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (1, N'Cửa hàng quần áo')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (2, N'Quán ăn')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (3, N'Siêu thị')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (4, N'Dịch vụ nhà hàng')
INSERT [dbo].[MerchantType] ([TypeId], [TypeName]) VALUES (5, N'Dịch vu khách sạn')
SET IDENTITY_INSERT [dbo].[MerchantType] OFF
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

+       Đóng nhóm vui lòng liên hệ để được ưu đãi nhiều hơn', NULL)
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
', 1)
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
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (17, CAST(0x0000A78300A5F139 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (18, CAST(0x0000A78300A5F1F9 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (19, CAST(0x0000A78300A5F291 AS DateTime), 16, NULL, NULL, NULL, N'3', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (20, CAST(0x0000A78300A5FE14 AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (21, CAST(0x0000A78300A5FEBB AS DateTime), 16, NULL, NULL, NULL, N'4', NULL, N'Thân chào anh/chị
	  Xác nhận ...
	  ', NULL)
INSERT [dbo].[Notification] ([NotificationId], [NotificationTime], [FromMerchant], [FromAgent], [FromMaster], [ToMerchant], [ToAgent], [ToMaster], [Message], [IsSeen]) VALUES (22, CAST(0x0000A78C018A197C AS DateTime), 16, NULL, NULL, NULL, NULL, N'0', N'Test', 0)
SET IDENTITY_INSERT [dbo].[Notification] OFF
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
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (1, N'Miền Nam')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (2, N'Miền Trung')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (3, N'Miền Bắc 1')
INSERT [dbo].[Region] ([RegionId], [RegionName]) VALUES (4, N'Miền Bắc 2')
SET IDENTITY_INSERT [dbo].[Region] OFF
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
SET IDENTITY_INSERT [dbo].[TransactionType] ON 

INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (1, N'Sale ')
INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (2, N'Return')
INSERT [dbo].[TransactionType] ([TransactionTypeId], [TransactionTypeName]) VALUES (3, N'Retrival')
SET IDENTITY_INSERT [dbo].[TransactionType] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (2, N'demo01', N'7815696ecbf1c96e6894b779456d330e', N'Lý Thanh Nam', N'0123452345', 1, 1, N'446D7B6A-CA9F-478D-B111-91D1CD563E4F', 12)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (4, N'demo02', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Vĩnh Nam', N'090345678', 1, 1, NULL, 12)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (5, N'demo03', N'e10adc3949ba59abbe56e057f20f883e', N'Huỳnh Chánh Kiệt', N'012244553', 1, 1, NULL, 10)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (6, N'demo04', N'fcea920f7412b5da7be0cf42b8c93759', N'Ngô Hoàng Ngọc Bảo', N'0122435567', 1, 1, NULL, 16)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (7, N'demo05', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Trung Tín', N'0909233445', 1, 1, NULL, 16)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (9, N'agent01', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Thị Hương', N'0163567990', 2, 1, NULL, 3)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (10, N'agent02', N'e10adc3949ba59abbe56e057f20f883e', N'Bảo Liên Đăng', N'0123446712', 2, 1, N'268C2160-7A3D-4DA1-A7CA-FA1C64B3F3C5', 4)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Phone], [RoleId], [IsActive], [TokenStr], [CpnId]) VALUES (11, N'master', N'e10adc3949ba59abbe56e057f20f883e', N'Tài khoàn Master', N'01212455767', 3, 1, N'630211EF-71FD-400E-A12A-B93013F51A8F', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (1, N'Merchant')
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (2, N'Agent')
INSERT [dbo].[UserRole] ([RoleId], [RoleName]) VALUES (3, N'Master')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_District]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Province]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_User] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_User]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_Agent] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_Agent]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_District]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_MerchantType] FOREIGN KEY([MerchantType])
REFERENCES [dbo].[MerchantType] ([TypeId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_MerchantType]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_Province]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_User] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_User]
GO
ALTER TABLE [dbo].[MerchantInvitation]  WITH CHECK ADD  CONSTRAINT [FK_MerchantInvitation_Merchant] FOREIGN KEY([FromMerchantId])
REFERENCES [dbo].[Merchant] ([MerchantId])
GO
ALTER TABLE [dbo].[MerchantInvitation] CHECK CONSTRAINT [FK_MerchantInvitation_Merchant]
GO
ALTER TABLE [dbo].[RegionMapping]  WITH CHECK ADD  CONSTRAINT [FK_RegionMapping_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[RegionMapping] CHECK CONSTRAINT [FK_RegionMapping_District]
GO
ALTER TABLE [dbo].[RegionMapping]  WITH CHECK ADD  CONSTRAINT [FK_RegionMapping_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([ProvinceId])
GO
ALTER TABLE [dbo].[RegionMapping] CHECK CONSTRAINT [FK_RegionMapping_Province]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_CardType] FOREIGN KEY([CardTypeId])
REFERENCES [dbo].[CardType] ([CardTypeId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_CardType]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Merchant] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[Merchant] ([MerchantId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Merchant]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_TransactionType] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionType] ([TransactionTypeId])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_TransactionType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
