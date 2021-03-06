USE [DataRawayltyDB]
GO
/****** Object:  Table [dbo].[users]    Script Date: 22.2.2022 г. 23:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [password]) VALUES (1, N'jfjsdns', N'asjdasd')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (2, N'asdfghjk', N'asdfghjkl')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (3, N'dfghjh', N'gfgh')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (4, N'sdasda', N'sdsdddsadad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (5, N'fsd', N'sasdsfdd')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (6, N'dfdsasfd', N'afasdfdsad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (7, N'dfghjkl;', N'sdfghjkl')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (8, N'fghjk', N'dfghjo')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (9, N'fghjkl;', N'sdfghjk')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (10, N'mehmed', N'mehmed123')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (11, N'qwe', N'qewwqewe')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (12, N'dsfsdf', N'sfsfsfdsfdsf')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (13, N'asdfghjkl', N'asdasdasdaad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (14, N'fsdfds', N'fsfsfsf')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (15, N'xcvhjklas', N'asaaaaaa')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (16, N'shebnem', N'asdsadsadasdas')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1002, N'asdsaddsadsa', N'asdsadsadsadsad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1003, N'sdasdas', N'adsad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1004, N'asdsad', N'sdasdsadsad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1005, N'asdasdsadsadasd', N'dsadsadsadsadsadasdasdsa')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1006, N'sdasdsds', N'dsadsadsad')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1007, N'asdasd', N'asdasd')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1008, N'sadadsadsd', N'sdasd')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1009, N'sadasdsadsa', N'dadadsadsdsadd')
INSERT [dbo].[users] ([id], [username], [password]) VALUES (1010, N'asdsadsadsadsa', N'dsadsadsadasd')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
