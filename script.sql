USE [VisaKuwait]
GO
/****** Object:  Table [dbo].[AdminTB]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTB](
	[id] [bigint] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientInfo]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientInfo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[FatherName] [nvarchar](50) NULL,
	[VisaPdf] [nvarchar](max) NULL,
	[AdharNo] [nvarchar](50) NULL,
	[DoB] [nvarchar](50) NULL,
	[PassportNo] [nvarchar](50) NULL,
	[VisaNo] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[VisaDuration] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AdminTB] ([id], [Username], [Password], [LastLogin]) VALUES (1, N'Admin', N'123', NULL)
GO
SET IDENTITY_INSERT [dbo].[ClientInfo] ON 

INSERT [dbo].[ClientInfo] ([id], [Name], [FatherName], [VisaPdf], [AdharNo], [DoB], [PassportNo], [VisaNo], [Address], [VisaDuration]) VALUES (1, N'Sheeba', N'Mr.Nafees', N'Upload/Screenshot (35).png', N'76878798866554', N'11 feb 1997', N'235678', N't7hiuo', N'435whenyr4', N'edhiue9q')
SET IDENTITY_INSERT [dbo].[ClientInfo] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_Admin]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Admin]
(
@username nvarchar(50)
)
As BEGIN
SELECT * FROM AdminTB where Username= @username;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Client_Data]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Client_Data]
(
@Name nvarchar(250),
@PassportNo nvarchar(50),
@VisaNo nvarchar(50)
)
As
Begin
Select *from [dbo].[ClientInfo] where Name = @Name and PassportNo = @PassportNo and VisaNo = @VisaNo;

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ClientInfo_Insert]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ClientInfo_Insert]
(
@Name nvarchar(250),
@FatherName nvarchar(250),
@VisaPdf nvarchar(MAX),
@AdharNo nvarchar(50),
@DoB nvarchar(50),
@PassportNo nvarchar(50),
@VisaNo nvarchar(50),
@Address nvarchar(250),
@VisaDuration nvarchar(50)
)

AS BEGIN 

INSERT INTO ClientInfo (Name, FatherName, VisaPdf, AdharNo, DoB , PassportNo, VisaNo, Address, VisaDuration)
Values ( @Name , @FatherName ,
						@VisaPdf , @AdharNo, @DoB ,@PassportNo ,
						@VisaNo ,@Address ,@VisaDuration )

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Login_User]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_Login_User]
(
@username nvarchar(50),
@password nvarchar(50)
)
As BEGIN
SELECT * FROM AdminTB WHERE Username=@username AND [Password]=@password;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Member_PassChange]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_Member_PassChange]
(
@UserId nchar(10),
@oldpass nvarchar(50),
@newpass nvarchar(50)
)
As
Begin
Update AdminTB set [Password]=@newpass where Username=@UserId and [Password]=@oldpass;

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ShowAllPackages]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ShowAllPackages]

As
Begin
Select *from [dbo].[ClientInfo] order by Id desc;

End
GO
/****** Object:  StoredProcedure [dbo].[usp_ShowPackages]    Script Date: 18-08-2021 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_ShowPackages]
(
@VisaNo nvarchar(50)
)
As
Begin
Select *from [dbo].[ClientInfo] where  VisaNo = @VisaNo;

End
GO
