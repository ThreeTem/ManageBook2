USE [master]
GO
/****** Object:  Database [ManageBook]    Script Date: 06/21/2016 16:22:04 ******/
CREATE DATABASE [ManageBook] ON  PRIMARY 
( NAME = N'ManageBook', FILENAME = N'C:\DATA\ManageBook.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ManageBook_log', FILENAME = N'C:\DATA\ManageBook_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ManageBook] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManageBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManageBook] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ManageBook] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ManageBook] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ManageBook] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ManageBook] SET ARITHABORT OFF
GO
ALTER DATABASE [ManageBook] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ManageBook] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ManageBook] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ManageBook] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ManageBook] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ManageBook] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ManageBook] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ManageBook] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ManageBook] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ManageBook] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ManageBook] SET  DISABLE_BROKER
GO
ALTER DATABASE [ManageBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ManageBook] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ManageBook] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ManageBook] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ManageBook] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ManageBook] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ManageBook] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ManageBook] SET  READ_WRITE
GO
ALTER DATABASE [ManageBook] SET RECOVERY FULL
GO
ALTER DATABASE [ManageBook] SET  MULTI_USER
GO
ALTER DATABASE [ManageBook] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ManageBook] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ManageBook', N'ON'
GO
USE [ManageBook]
GO
/****** Object:  Table [dbo].[TemporaryStudentInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemporaryStudentInfo](
	[TemporaryID] [int] IDENTITY(1,1) NOT NULL,
	[CollegeName] [varchar](50) NULL,
	[MajorName] [varchar](50) NULL,
	[GradeName] [varchar](50) NULL,
	[StudentClassName] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[StudentNumber] [varchar](20) NULL,
	[StudentSex] [nchar](1) NULL,
	[StudentMarket] [text] NULL,
 CONSTRAINT [PK_TemporaryStudentInfo] PRIMARY KEY CLUSTERED 
(
	[TemporaryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherInfo](
	[TeacherInfoID] [int] IDENTITY(1,1) NOT NULL,
	[MajorInfoID] [int] NULL,
	[CollegeID] [int] NULL,
	[TeacherID] [varchar](30) NOT NULL,
	[TeacherName] [varchar](15) NOT NULL,
	[TeacherPhone] [varchar](15) NULL,
 CONSTRAINT [PK_TEACHERINFO] PRIMARY KEY NONCLUSTERED 
(
	[TeacherInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_4_FK] ON [dbo].[TeacherInfo] 
(
	[CollegeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_5_FK] ON [dbo].[TeacherInfo] 
(
	[MajorInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TeacherInfo] ON
INSERT [dbo].[TeacherInfo] ([TeacherInfoID], [MajorInfoID], [CollegeID], [TeacherID], [TeacherName], [TeacherPhone]) VALUES (1, 1, 1, N'4564564', N'王小熊', N'12349846541')
INSERT [dbo].[TeacherInfo] ([TeacherInfoID], [MajorInfoID], [CollegeID], [TeacherID], [TeacherName], [TeacherPhone]) VALUES (2, 1, 1, N'4618646', N'王大雄', N'876413214654')
INSERT [dbo].[TeacherInfo] ([TeacherInfoID], [MajorInfoID], [CollegeID], [TeacherID], [TeacherName], [TeacherPhone]) VALUES (3, 2, 1, N'6874134', N'李小雄', N'48754135451')
INSERT [dbo].[TeacherInfo] ([TeacherInfoID], [MajorInfoID], [CollegeID], [TeacherID], [TeacherName], [TeacherPhone]) VALUES (4, 3, 1, N'4654561', N'狗熊', N'46137646313')
SET IDENTITY_INSERT [dbo].[TeacherInfo] OFF
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[StudentInfoID] [int] IDENTITY(1,1) NOT NULL,
	[StudentClassID] [int] NOT NULL,
	[StudentName] [varchar](15) NOT NULL,
	[StudentNumber] [varchar](15) NOT NULL,
	[StudentSex] [nchar](1) NOT NULL,
	[StudentMarket] [text] NULL,
 CONSTRAINT [PK_STUDENTINFO] PRIMARY KEY NONCLUSTERED 
(
	[StudentInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_10_FK] ON [dbo].[StudentInfo] 
(
	[StudentClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentInfo] ON
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (1, 1, N'小熊', N'154214242', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (2, 1, N'小小', N'13546542314', N'男', N'sfd')
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (3, 2, N'方式', N'456456456', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (4, 19, N'46456', N'13546542314', N'女', N'')
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (5, 45, N'fjlkhaslkdf', N'4556456', N'女', N'')
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (6, 2, N'许', N'456456423', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (7, 2, N'第三个', N'456123147', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (8, 3, N'回来', N'123456464', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (9, 3, N'许下次', N'445645611', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (10, 3, N'问他', N'123123456', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (11, 3, N'阿斯蒂芬', N'112345651', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (12, 3, N'五个', N'456842374', N'男', NULL)
INSERT [dbo].[StudentInfo] ([StudentInfoID], [StudentClassID], [StudentName], [StudentNumber], [StudentSex], [StudentMarket]) VALUES (13, 27, N'fasdf', N'6+56+4', N'男', N'')
SET IDENTITY_INSERT [dbo].[StudentInfo] OFF
/****** Object:  Table [dbo].[StudentClass]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentClass](
	[StudentClassID] [int] IDENTITY(1,1) NOT NULL,
	[MajorInfoID] [int] NULL,
	[CollegeID] [int] NULL,
	[GradeInfoID] [int] NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_STUDENTCLASS] PRIMARY KEY NONCLUSTERED 
(
	[StudentClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_7_FK] ON [dbo].[StudentClass] 
(
	[CollegeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_8_FK] ON [dbo].[StudentClass] 
(
	[MajorInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_9_FK] ON [dbo].[StudentClass] 
(
	[GradeInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentClass] ON
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (1, 1, 1, 3, N'15软件1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (2, 1, 1, 3, N'15软件2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (3, 1, 1, 3, N'15软件3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (4, 1, 1, 3, N'15软件4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (5, 2, 1, 3, N'15计应1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (10, 2, 1, 3, N'15计应2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (11, 2, 1, 3, N'15计应3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (12, 2, 1, 3, N'15计应4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (18, 4, 1, 3, N'15影视2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (19, 4, 1, 3, N'15影视3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (20, 5, 2, 3, N'15建筑1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (23, 5, 2, 3, N'15建筑2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (24, 5, 2, 3, N'15建筑3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (25, 5, 2, 3, N'15建筑4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (26, 7, 2, 3, N'15工程1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (27, 7, 2, 3, N'15工程2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (28, 7, 2, 3, N'15工程3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (29, 7, 2, 3, N'15工程4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (30, 8, 2, 3, N'15物业1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (31, 8, 2, 3, N'15物业2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (32, 8, 2, 3, N'15物业3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (33, 8, 2, 3, N'15物业4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (34, 9, 2, 3, N'15艺设1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (35, 9, 3, 3, N'15艺设2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (36, 9, 3, 3, N'15艺设3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (37, 9, 3, 3, N'15艺设4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (38, 10, 3, 3, N'15人物1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (39, 10, 3, 3, N'15人物2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (40, 10, 3, 3, N'15人物3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (41, 10, 3, 3, N'15人物4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (42, 11, 3, 3, N'15广告1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (43, 11, 3, 3, N'15广告2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (44, 11, 3, 3, N'15广告3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (45, 11, 3, 3, N'15广告4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (46, 12, 3, 3, N'15服装1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (47, 12, 3, 3, N'15服装2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (48, 12, 3, 3, N'15服装3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (49, 12, 3, 3, N'15服装4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (50, 13, 4, 3, N'15传策1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (51, 13, 4, 3, N'15传策2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (52, 13, 4, 3, N'15传策3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (53, 13, 4, 3, N'15传策4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (54, 14, 4, 3, N'15新闻1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (55, 14, 4, 3, N'15新闻2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (56, 14, 4, 3, N'15新闻3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (57, 14, 4, 3, N'15新闻4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (58, 15, 4, 3, N'15文秘1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (59, 15, 4, 3, N'15文秘2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (60, 15, 4, 3, N'15文秘3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (61, 15, 4, 3, N'15文秘4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (62, 16, 5, 3, N'15旅游1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (63, 16, 5, 3, N'15旅游2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (64, 16, 5, 3, N'15旅游3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (65, 16, 5, 3, N'15旅游4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (66, 17, 5, 3, N'15国乘1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (67, 17, 5, 3, N'15国乘2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (68, 17, 5, 3, N'15国乘3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (69, 17, 5, 3, N'15国乘4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (70, 18, 5, 3, N'15亨饪1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (71, 18, 5, 3, N'15亨饪2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (72, 18, 5, 3, N'15亨饪3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (73, 18, 5, 3, N'15亨饪4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (74, 19, 5, 3, N'15酒管1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (75, 19, 5, 3, N'15酒管2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (76, 19, 5, 3, N'15酒管3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (77, 19, 5, 3, N'15酒管4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (78, 20, 6, 3, N'15国务1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (79, 20, 6, 3, N'15国务2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (80, 20, 6, 3, N'15国务3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (81, 20, 6, 3, N'15国务4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (82, 21, 6, 3, N'15学前1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (83, 21, 6, 3, N'15学前2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (84, 21, 6, 3, N'15学前3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (85, 21, 6, 3, N'15学前4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (86, 22, 6, 3, N'15商英1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (87, 22, 6, 3, N'15商英2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (88, 22, 6, 3, N'15商英3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (89, 22, 6, 3, N'15商英4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (90, 23, 6, 3, N'15应英1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (91, 23, 6, 3, N'15应英2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (92, 23, 6, 3, N'15应英3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (93, 23, 6, 3, N'15应英4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (94, 24, 7, 3, N'15气营1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (95, 24, 7, 3, N'15气营2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (96, 24, 7, 3, N'15气营3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (97, 24, 7, 3, N'15气营4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (13, 3, 1, 3, N'15物联1班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (14, 3, 1, 3, N'15物联2班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (15, 3, 1, 3, N'15物联3班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (16, 3, 1, 3, N'15物联4班')
INSERT [dbo].[StudentClass] ([StudentClassID], [MajorInfoID], [CollegeID], [GradeInfoID], [ClassName]) VALUES (17, 4, 1, 3, N'15影视1班')
SET IDENTITY_INSERT [dbo].[StudentClass] OFF
/****** Object:  Table [dbo].[SchoolTerm]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SchoolTerm](
	[SchoolTermID] [int] IDENTITY(1,1) NOT NULL,
	[TermName] [varchar](50) NULL,
	[TermSimple] [varchar](40) NULL,
 CONSTRAINT [PK_SCHOOLTERM] PRIMARY KEY NONCLUSTERED 
(
	[SchoolTermID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolTerm] ON
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (1, N'2014年春季期', N'2014春')
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (2, N'2014年秋季期', N'2014秋')
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (3, N'2015年春季期', N'2015春')
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (4, N'2015年秋季期', N'2015秋')
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (5, N'2016年春季期', N'2016春')
INSERT [dbo].[SchoolTerm] ([SchoolTermID], [TermName], [TermSimple]) VALUES (6, N'2016年秋季期', N'2016秋')
SET IDENTITY_INSERT [dbo].[SchoolTerm] OFF
/****** Object:  Table [dbo].[PlanBook]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanBook](
	[PlanBookID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[MajorInfoID] [int] NOT NULL,
	[CollegeID] [int] NOT NULL,
	[StudentClassID] [int] NOT NULL,
	[SchoolTermID] [int] NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[BookName] [varchar](50) NOT NULL,
	[ISBN] [varchar](40) NOT NULL,
	[Author] [varchar](20) NOT NULL,
	[Publish] [varchar](30) NOT NULL,
	[Price] [money] NOT NULL,
	[YearMonth] [datetime] NULL,
	[TeacherBookNum] [int] NOT NULL,
	[StudentBookNum] [int] NOT NULL,
	[BookTotalNum] [int] NOT NULL,
	[Examine] [bit] NULL,
	[IsBookStock] [bit] NULL,
	[OrderBookRemark] [varchar](500) NULL,
 CONSTRAINT [PK_PlanBook] PRIMARY KEY CLUSTERED 
(
	[PlanBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_11_FK] ON [dbo].[PlanBook] 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_12_FK] ON [dbo].[PlanBook] 
(
	[CollegeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_13_FK] ON [dbo].[PlanBook] 
(
	[MajorInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_14_FK] ON [dbo].[PlanBook] 
(
	[StudentClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_15_FK] ON [dbo].[PlanBook] 
(
	[SchoolTermID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PlanBook] ON
INSERT [dbo].[PlanBook] ([PlanBookID], [CourseID], [MajorInfoID], [CollegeID], [StudentClassID], [SchoolTermID], [CourseName], [BookName], [ISBN], [Author], [Publish], [Price], [YearMonth], [TeacherBookNum], [StudentBookNum], [BookTotalNum], [Examine], [IsBookStock], [OrderBookRemark]) VALUES (1, 3, 1, 1, 1, 6, N'C#桌面应用开发', N'C#实战', N'1245123147644215', N'枭雄', N'人民出版社', 56.0000, CAST(0x0000A62600FC92EF AS DateTime), 1, 35, 36, 1, 1, NULL)
INSERT [dbo].[PlanBook] ([PlanBookID], [CourseID], [MajorInfoID], [CollegeID], [StudentClassID], [SchoolTermID], [CourseName], [BookName], [ISBN], [Author], [Publish], [Price], [YearMonth], [TeacherBookNum], [StudentBookNum], [BookTotalNum], [Examine], [IsBookStock], [OrderBookRemark]) VALUES (2, 3, 1, 1, 1, 6, N'发生的范德萨', N'456456', N'252356+5', N'发生的', N'水电费', 13.0000, CAST(0x0000A62600FCB707 AS DateTime), 2, 3, 5, 1, 1, NULL)
INSERT [dbo].[PlanBook] ([PlanBookID], [CourseID], [MajorInfoID], [CollegeID], [StudentClassID], [SchoolTermID], [CourseName], [BookName], [ISBN], [Author], [Publish], [Price], [YearMonth], [TeacherBookNum], [StudentBookNum], [BookTotalNum], [Examine], [IsBookStock], [OrderBookRemark]) VALUES (3, 3, 7, 2, 26, 3, N'asdfsadxzcv', N'sfsadfas', N'564831315', N'457456', N'45645512', 4556410.0000, CAST(0x0000A62B013A85F8 AS DateTime), 1, 42, 43, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[PlanBook] OFF
/****** Object:  Table [dbo].[MajorInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MajorInfo](
	[MajorInfoID] [int] IDENTITY(1,1) NOT NULL,
	[CollegeID] [int] NULL,
	[MajorName] [varchar](50) NOT NULL,
	[MajorSimple] [varchar](40) NOT NULL,
 CONSTRAINT [PK_MAJORINFO] PRIMARY KEY NONCLUSTERED 
(
	[MajorInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_2_FK] ON [dbo].[MajorInfo] 
(
	[CollegeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MajorInfo] ON
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (1, 1, N'软件技术专业', N'软件专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (2, 1, N'计算机应用技术专业', N'计应专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (3, 1, N'物联网技术专业', N'物联网专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (4, 1, N'影视鉴赏专业', N'影视专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (5, 2, N'建筑工程管理', N'建筑管理')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (6, 2, N'建筑装饰工程技术', N'建筑装饰')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (7, 2, N'工程造价', N'工程造价')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (8, 2, N'物业管理', N'物业管理')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (9, 3, N'艺术设计专业', N'艺设专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (10, 3, N'人物形象设计专业', N'人物形设')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (11, 3, N'广告设计与制作专业', N'广告设计')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (12, 3, N'服装与服装设计专业', N'服装设计')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (13, 4, N'传播与策划专业', N'传播与策划')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (14, 4, N'新闻采编与制作专业', N'新闻专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (15, 4, N'文秘专业', N'文秘专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (16, 5, N'旅游管理专业', N'旅游专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (17, 5, N'国际邮轮乘务专业', N'国际邮轮乘务')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (18, 5, N'烹饪工艺与营养专业', N'烹饪专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (19, 5, N'酒店管理专业', N'酒管专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (20, 6, N'国际商务专业', N'国际商务')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (21, 6, N'学前教育专业', N'学前教育')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (22, 6, N'商务英语专业', N'商务英语')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (23, 6, N'应用英语专业', N'应用英语')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (24, 7, N'汽车营销与服务专业', N'汽营专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (25, 7, N'工业机器人技术专业', N'工业机器人')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (26, 7, N'数控技术', N'数控专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (27, 7, N'机械设计与制造', N'机械专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (28, 8, N'会计专业', N'会计专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (29, 8, N'国际经济与贸易专业', N'经济贸易专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (30, 8, N'互联网金融专业', N'互联网专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (31, 8, N'投资与理财专业', N'投资理财专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (32, 9, N'市场营销专业', N'市场营销')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (33, 9, N'商务管理专业', N'商务管理')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (34, 9, N'电子商务专业', N'电商专业')
INSERT [dbo].[MajorInfo] ([MajorInfoID], [CollegeID], [MajorName], [MajorSimple]) VALUES (35, 9, N'工商企业管理专业', N'工商管理专业')
SET IDENTITY_INSERT [dbo].[MajorInfo] OFF
/****** Object:  Table [dbo].[GrantBook]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrantBook](
	[GrantID] [int] IDENTITY(1,1) NOT NULL,
	[PlanBookID] [int] NULL,
	[StudentInfoID] [int] NULL,
	[SchoolTermID] [int] NULL,
	[GetBookNum] [int] NOT NULL,
	[ExitBook] [bit] NULL,
 CONSTRAINT [PK_GRANTBOOK] PRIMARY KEY NONCLUSTERED 
(
	[GrantID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_20_FK] ON [dbo].[GrantBook] 
(
	[PlanBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_22_FK] ON [dbo].[GrantBook] 
(
	[SchoolTermID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_23_FK] ON [dbo].[GrantBook] 
(
	[StudentInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GrantBook] ON
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (1, 1, 1, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (2, 1, 2, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (3, 1, 1, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (4, 1, 2, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (5, 1, 3, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (6, 1, 4, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (7, 1, 5, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (8, 1, 6, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (9, 1, 7, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (10, 1, 8, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (11, 1, 9, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (12, 1, 10, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (13, 1, 11, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (14, 1, 12, 6, 1, NULL)
INSERT [dbo].[GrantBook] ([GrantID], [PlanBookID], [StudentInfoID], [SchoolTermID], [GetBookNum], [ExitBook]) VALUES (15, 1, 13, 6, 1, NULL)
SET IDENTITY_INSERT [dbo].[GrantBook] OFF
/****** Object:  Table [dbo].[GradeInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GradeInfo](
	[GradeInfoID] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [varchar](50) NULL,
	[GradeSimple] [varchar](40) NULL,
 CONSTRAINT [PK_GRADEINFO] PRIMARY KEY NONCLUSTERED 
(
	[GradeInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GradeInfo] ON
INSERT [dbo].[GradeInfo] ([GradeInfoID], [GradeName], [GradeSimple]) VALUES (1, N'2013级', N'13级')
INSERT [dbo].[GradeInfo] ([GradeInfoID], [GradeName], [GradeSimple]) VALUES (2, N'2014级', N'14级')
INSERT [dbo].[GradeInfo] ([GradeInfoID], [GradeName], [GradeSimple]) VALUES (3, N'2015级', N'15级')
INSERT [dbo].[GradeInfo] ([GradeInfoID], [GradeName], [GradeSimple]) VALUES (4, N'2016级', N'16级')
INSERT [dbo].[GradeInfo] ([GradeInfoID], [GradeName], [GradeSimple]) VALUES (5, N'2017级', N'17级')
SET IDENTITY_INSERT [dbo].[GradeInfo] OFF
/****** Object:  Table [dbo].[GetBook]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GetBook](
	[GetBookID] [int] IDENTITY(1,1) NOT NULL,
	[PlanBookID] [int] NULL,
	[GetBookNum] [int] NULL,
	[Signer] [varchar](20) NOT NULL,
	[SignerIdentity] [varchar](10) NOT NULL,
	[SignerPhone] [varchar](20) NOT NULL,
	[GetBookRemarks] [text] NULL,
	[CollegeID] [int] NULL,
	[StudentClassID] [int] NULL,
	[SchoolTermID] [int] NULL,
 CONSTRAINT [PK_GETBOOK] PRIMARY KEY NONCLUSTERED 
(
	[GetBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_19_FK] ON [dbo].[GetBook] 
(
	[PlanBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GetBook] ON
INSERT [dbo].[GetBook] ([GetBookID], [PlanBookID], [GetBookNum], [Signer], [SignerIdentity], [SignerPhone], [GetBookRemarks], [CollegeID], [StudentClassID], [SchoolTermID]) VALUES (1, 1, 36, N'打算', N'学生代表', N'1547894564578', NULL, 1, 1, 6)
SET IDENTITY_INSERT [dbo].[GetBook] OFF
/****** Object:  Table [dbo].[Course]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY NONCLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON
INSERT [dbo].[Course] ([CourseID], [CourseType]) VALUES (1, N'校级必修')
INSERT [dbo].[Course] ([CourseID], [CourseType]) VALUES (2, N'校级选修')
INSERT [dbo].[Course] ([CourseID], [CourseType]) VALUES (3, N'院级必修')
INSERT [dbo].[Course] ([CourseID], [CourseType]) VALUES (4, N'院级选修')
SET IDENTITY_INSERT [dbo].[Course] OFF
/****** Object:  Table [dbo].[CollegeInfo]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CollegeInfo](
	[CollegeID] [int] IDENTITY(1,1) NOT NULL,
	[CollegeName] [varchar](50) NOT NULL,
	[CollegeSimple] [varchar](40) NOT NULL,
 CONSTRAINT [PK_COLLEGEINFO] PRIMARY KEY NONCLUSTERED 
(
	[CollegeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CollegeInfo] ON
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (1, N'信息工程学院', N'信工学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (2, N'建筑工程学院', N'建筑学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (3, N'艺术工程学院', N'艺术学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (4, N'公共管理学院', N'公共学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (5, N'旅游学院', N'旅游学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (6, N'国际学院', N'国际学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (7, N'机电学院', N'机电学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (8, N'财经学院', N'财经学院')
INSERT [dbo].[CollegeInfo] ([CollegeID], [CollegeName], [CollegeSimple]) VALUES (9, N'商学院', N'商学院')
SET IDENTITY_INSERT [dbo].[CollegeInfo] OFF
/****** Object:  Table [dbo].[BookStock]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookStock](
	[StockBookID] [int] IDENTITY(1,1) NOT NULL,
	[PlanBookID] [int] NULL,
	[ArriveQuantity] [int] NULL,
	[NoArriveQuantity] [int] NULL,
	[NetPrice] [money] NULL,
	[Discount] [varchar](10) NULL,
	[Arrived] [bit] NULL,
 CONSTRAINT [PK_BookStock_1] PRIMARY KEY CLUSTERED 
(
	[StockBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Relationship_21_FK] UNIQUE NONCLUSTERED 
(
	[PlanBookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookStock] ON
INSERT [dbo].[BookStock] ([StockBookID], [PlanBookID], [ArriveQuantity], [NoArriveQuantity], [NetPrice], [Discount], [Arrived]) VALUES (1, 1, 0, 0, 5.6000, N'0.1', 1)
INSERT [dbo].[BookStock] ([StockBookID], [PlanBookID], [ArriveQuantity], [NoArriveQuantity], [NetPrice], [Discount], [Arrived]) VALUES (2, 2, 4, 1, 11.7000, N'0.9', 1)
INSERT [dbo].[BookStock] ([StockBookID], [PlanBookID], [ArriveQuantity], [NoArriveQuantity], [NetPrice], [Discount], [Arrived]) VALUES (3, 3, 0, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[BookStock] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 06/21/2016 16:22:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[LonginID] [varchar](30) NOT NULL,
	[LonginPwd] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY NONCLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_StudentInfo_StudentSex]    Script Date: 06/21/2016 16:22:04 ******/
ALTER TABLE [dbo].[StudentInfo] ADD  CONSTRAINT [DF_StudentInfo_StudentSex]  DEFAULT (N'男') FOR [StudentSex]
GO
/****** Object:  Default [DF_PlanBook_IsBookStock]    Script Date: 06/21/2016 16:22:04 ******/
ALTER TABLE [dbo].[PlanBook] ADD  CONSTRAINT [DF_PlanBook_IsBookStock]  DEFAULT ((0)) FOR [IsBookStock]
GO
/****** Object:  Default [DF_GrantBook_GetBookNum]    Script Date: 06/21/2016 16:22:04 ******/
ALTER TABLE [dbo].[GrantBook] ADD  CONSTRAINT [DF_GrantBook_GetBookNum]  DEFAULT ((1)) FOR [GetBookNum]
GO
/****** Object:  Default [DF_BookStock_ArriveQuantity]    Script Date: 06/21/2016 16:22:04 ******/
ALTER TABLE [dbo].[BookStock] ADD  CONSTRAINT [DF_BookStock_ArriveQuantity]  DEFAULT ((0)) FOR [ArriveQuantity]
GO
/****** Object:  Default [DF_BookStock_Arrived]    Script Date: 06/21/2016 16:22:04 ******/
ALTER TABLE [dbo].[BookStock] ADD  CONSTRAINT [DF_BookStock_Arrived]  DEFAULT ((0)) FOR [Arrived]
GO
