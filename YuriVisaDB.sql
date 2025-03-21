USE [YuriVisaDB]
GO
/****** Object:  StoredProcedure [dbo].[spFindMatch]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP PROCEDURE [dbo].[spFindMatch]
GO
ALTER TABLE [dbo].[POST] DROP CONSTRAINT [FK_POST_CATEGORY]
GO
ALTER TABLE [dbo].[LookupTable] DROP CONSTRAINT [FK_LookupTable_Language]
GO
ALTER TABLE [dbo].[LookupTable] DROP CONSTRAINT [FK_LookupTable_Item]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[POST]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[POST]
GO
/****** Object:  Table [dbo].[LookupTable]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[LookupTable]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[Language]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[Item]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[CATEGORY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
USE [master]
GO
/****** Object:  Database [YuriVisaDB]    Script Date: 6/26/2019 2:34:56 AM ******/
DROP DATABASE [YuriVisaDB]
GO
/****** Object:  Database [YuriVisaDB]    Script Date: 6/26/2019 2:34:56 AM ******/
CREATE DATABASE [YuriVisaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YuriVisaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YuriVisaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YuriVisaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YuriVisaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [YuriVisaDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YuriVisaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YuriVisaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YuriVisaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YuriVisaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YuriVisaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YuriVisaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [YuriVisaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YuriVisaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YuriVisaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YuriVisaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YuriVisaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YuriVisaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YuriVisaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YuriVisaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YuriVisaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YuriVisaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YuriVisaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YuriVisaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YuriVisaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YuriVisaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YuriVisaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YuriVisaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YuriVisaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YuriVisaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YuriVisaDB] SET  MULTI_USER 
GO
ALTER DATABASE [YuriVisaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YuriVisaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YuriVisaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YuriVisaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YuriVisaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YuriVisaDB] SET QUERY_STORE = OFF
GO
USE [YuriVisaDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/26/2019 2:34:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](40) NULL,
 CONSTRAINT [PK_WEB_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Object] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Object] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lang] [nchar](2) NOT NULL,
	[Language] [nchar](50) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[lang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupTable]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupTable](
	[Object] [nvarchar](150) NOT NULL,
	[Lang] [nchar](2) NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[Object] ASC,
	[Lang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POST]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LINK] [varchar](150) NULL,
	[SEO_TITLE] [nvarchar](200) NULL,
	[SEO_DESCRIPTION] [nvarchar](160) NULL,
	[IMG_DESCRIPTION] [nvarchar](400) NULL,
	[TEXT_DESCRIPTION] [nvarchar](400) NULL,
	[CONTENT] [nvarchar](max) NULL,
	[DATE_CREATE] [date] NULL,
	[AUTHOR] [nvarchar](20) NULL,
	[VIEW_NUMBER] [int] NULL,
	[CATEGORY] [int] NULL,
	[POST_STATE] [bit] NULL,
	[TITLE] [nvarchar](200) NULL,
	[IMG] [nvarchar](200) NULL,
 CONSTRAINT [PK_POST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905091903268_InitialCreate', N'Yurivisa_v2._1.Areas.Admin.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD48A9DEE624F60B7709DA40DBAB9609D2DCE790A68897688952855A2D204457F591FFA93CE5F3843DD2CF1A28B2D5F522CB0B0C8E137C3E1901C0E87F9DF9F7F8DBF7FF15CE3198711F1E9C41C0E4E4D0353DB77085D4DCC982DBFF9607EFFDD3FBE1A5F3ADE8BF14B4E77C6E9A0258D26E61363C1B96545F613F65034F0881DFA91BF6403DBF72CE4F8D6E8F4F4DFD6706861803001CB30C69F62CA8887930FF89CF9D4C6018B917BE33BD88DB272A89927A8C62DF27014201B4FCCFFC6217926117A7C1E0D1E8783698881E9D4F1081DA48D4D63EA120482CDB1BB340D44A9CF1003B1CF3F4778CE429FAEE6011420F7E135C040B7446E84B3EE9CAFC9DBF6EC74C47B66AD1BE650761C31DFEB08383CCB546589CD3752B859A8129479094A67AFBCD7894227E6B58393A24FBE0B0A10199ECFDC90134FCC9B82C5340A6E311BE40D0729E4550870BFF9E1974119F1C468DDEEA430ADD1E094FF3B3166B1CBE2104F288E5988DC13E33E5EB8C4FE19BF3EF85F309D9C0D17CBB30FEFDE23E7ECFDB7F8EC5DB9A7D057A0AB1440D17DE8073804D9F0B2E8BF6958D57696D8B068566A936A056C09668969DCA0978F98AED813CC9FD107D3B8222FD8C94B32E3FA4C094C2A68C4C2183E6F63D7450B1717F5562D4FFE7F0DD7D1BBF7BD70BD45CF64950CBDC01F264E08F3EA137693DAE88904E9F4AA8CF763467615FA1EFFAEDA575AFB38F7E3D0E69DF1B5240F285C6156956E6CAD8DB7954973A8FECD3A473D7ED3E692CAE6AD24E51DDA6426E42CF63D1B727977CBB7B5C54D8300062F312DAE913A836BDCBB0602D889516E325CDBD2B0AD2D51E8E3DF7969BCF410717B581B5B70012F6549420F17BDFCC1074B44B4B3CCF7288A6069707E42D1538DE8F0B307D1E7D8061362AF7386BC60E7DCEE9F7C8A6F636FC127C2FE78F536340FBFF957C8667E784979ABADF13EFAF6173F6697D4B9400C7F66760EC83F1F88D71EA01771A6B68DA3E80A8C193B331F9CF01CF09AB2B3516738BE441DDA3799B988786AE744584C1F73D2B583A2A6909C140D99CA51A913F5A3BF22B49DA839A95ED494A251D48CACABA81CAC9DA419A55ED084A051CE94AA37D72F19A1FE7DBF04F6F89DBFED366FDD5A5052E31C5648FC23A6388465CCB9478CE190AE47A0CDBA71086721193ECE74E77B53C2E917E4C67DB3DA6836248B40FFB321813DFED9908809C5CFC4E15E498B13514E0CF0ADE8D587ADE6392748B6EFE950E9E6BE99EF670DD04D976914F9364966812216964532AAF2830F67348735D2DE88A111E818183AE15B1E9440DF4CD1A8EEE8057631C3C6D44E63853314D9C891D5081D723A0896EFA80AC1D62192AA705F4B3CC1D271C81B217E088A60A612CAE46941A84D02E4366A4968D9720BE37D2F7888351738C094336CD4441BE6EA880817A0E0230C4A9386C656C9E2EA0D51E3B5EAC6BCC9855D8FBB14A8D88B4D36F8CE1ABBCCFCB79D1866BDC6F6609CF52A69238036BA770803CDCE2A6D0D403CB81C9B810A27268D81662ED55E0CB4AAB103186855256FCE40D3236ADBF117CEABC7669ED583F2FEB7F55A751DC0362BFA3832D34C7D4F68C3A0050E65F3BC58F04AFCC214873390333B9F4599AB2B9A08079F63560DD9ACFD5DA51F6AD58388465407B836B406D0EC5E500292265407E1F2585EAD749917D101368FBBD5C2666BBF005BB20119BB7C3F5A22D4DFA28AC6D9EAF451F4ACB006C9C85B1D164A380A831017AF6AC75B284517979515D3C617EEE20D973A960D468D821A3C578D92F2CEF4AEA5DC349BB5A472C8BAB8645B6949709F345ACA3BD3BB96321B6D5692C229E8E0166CA5A2EA16DED364CB231DC56E53D48DAD348B2A2B185B9A74ABF10D0A024257A5F4ABACC498A7B957B36FE6DDB390BC14C3B223453252216DC189F9215A61A1165883A457248CD805626881789C67E6781299726FD52CFF39CBF2F6290F62BE0FE4D4FC77DAA2F936BFB2F5CABE490679051DF6B8839344D515E6A06E6EF0EC38E4A25011C89FF96EEC51BDBFA56F9D5EE795DBA72532C2D812E497FC29497992D75B1D8956E324CF91DD8C59E1DD6C3E6E7A089DF673DFB4AC7F9DBFAA47C9C35765145D48EB60E3A87373B6193BD1A1EC3E748D08BB997559164B19202BEA88514A8490C04A75ED51ABB92A65CC6A4D7B442121A50C29547590B29C765211B25CB1119E46A36A8AF61CE4449332BA5CDB1E599172528656546F80AD9059AC6B8FAAC84A29032BAADB63AF5354C435F588F735ED31A7AF8D2D3D186FB7B3693076B340F6B33196EEFFCB40A5E28E58D90DBF0496951FA571694F877D19571A1ED9CEB83418FA75A972915E5D966A6FFFF59895DBF1CAD25F971DA0C7EB66C23B3514E9AC289214DC8B33A370361C67E7B4E6F73AD2C12D25318D5C8DB0EDBF460C7B034E3098FFEACE5C82F9229F13DC204A963862694688393A1D8E84373EC7F3DEC68A22C7559C73758F6EAA63B687E42EFA8C42FB098572AAC5166F52D6A05214FB9A3AF86562FE9EB43A4F0222FC57527C625C479F29F935868A8730C6C61F72EA683F39FA2D5E851482FEF1269E5BB457F9F57F1ED3A627C65D08D3E9DC381514BDC9F0571F617492266DBA85341B3FCD78BBB3ADF2CC41892ACC96CD5F352C08EBE545432EE53F3DF4F2AFAEA2295F2D6C85A87899D0175E2F2AD4BD3CD8044BFBEAC0814F96BC3AE8D659F52B844D44D3BE4020B43B98F8FEA0FD3294B73CE03EA4383FED63494AF4DC98BFBD5532E7A1F72629CD7BAB892EA7727780EB355D7B3B17E58DA541F7B6752AB29C7BC33EA4DDEF3CB5F958B299D74EFB619398F799B75C73FBF4B74A573E82043B45C2D0E19392F76D6BBA80F0916776764B3D3E3263CBB6F9C32718EFDBD87401E22337B64E69C447666B87DA3F0F6C69ADB7D0832705CBF94D9A8B1D5514B929E9370DB9C3F17FE18311A41E65FA56539D65569721DBC0704DA267AA4F6F13194B1347E22B51D4B3EDD6D76CC3AFED6C4653CF5693145AC73B5BFF6B796734F5BC35A99687485756263BAA52C81BD6B1BA5CABB7949E5CE94943367C93CF5A7B4BFF96B2917B514A65F6686E97DF4EF2712F2AE973EA744836962F8A61EF2CFDF947D8BF23B25A43F03F0649B15DD9350B9A6BBAF4F3CD5B90282711223437982107B6D469C8C812D90CAA79003A796C9E04F5F835C8023BD7F42E6641CCA0CBD85BB89580177702EAF82719D55599C77701FF8AFAE802884978E0FE8EFE1013D729E4BE52C4843410DCBBC8C2BD7C2C190FFBAE5E0BA45B9FB604CAD45738450FD80B5C008BEEE81C3DE34D6403F3FB8857C87E5D47007520CD035155FBF882A05588BC28C358B7874FB061C77BF9EEFF3A5C72E105550000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4b9e4261-ea7e-4107-9ed9-2c16da791ab4', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'66101360-b7cf-44e8-b6fc-786a5f723e3c', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9121f3d2-6331-415f-b60e-9a162de2ada9', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'216da1f1-a01c-480d-a78d-25151e6358c8', N'4b9e4261-ea7e-4107-9ed9-2c16da791ab4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'67a5446f-eef9-4a2b-a508-f7a5636a1c81', N'9121f3d2-6331-415f-b60e-9a162de2ada9')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'216da1f1-a01c-480d-a78d-25151e6358c8', N'lamphong2291@gmail.com', 0, N'ACBLNVixnh+9yxxlOtcAIEXTYVcOnjdbp/nM8I53iSJhV2GLT6FRKZ7kQRGkv7VCQg==', N'74bddb70-cb8d-4179-9f33-409dfb5d4b17', NULL, 0, 0, NULL, 1, 0, N'manage')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'67a5446f-eef9-4a2b-a508-f7a5636a1c81', N'quyenle2291@gmail.com', 0, N'AFvtGBY3xnWuN7brOFw9tDJ8GkWPcbBLnm7ImI6REdLbuarJwheAJ6eGA8l3SAmiyg==', N'5fdf9e8e-8dbf-41c4-ba67-02170974eb4f', NULL, 0, 0, NULL, 0, 0, N'admin')
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([ID], [category_name]) VALUES (1, N'tin tuc')
INSERT [dbo].[CATEGORY] ([ID], [category_name]) VALUES (2, N'chia se kinh nghiem')
INSERT [dbo].[CATEGORY] ([ID], [category_name]) VALUES (3, N'review trip')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Object]) VALUES (18, N'ChooseLang')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (1, N'Header_NamePage1')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (2, N'Header_NamePage2')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (3, N'Header_NamePage3')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (4, N'Header_NamePage4')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (5, N'Language1')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (6, N'Language2')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (7, N'Language3')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (8, N'Yuri_Section2_card_content1')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (9, N'Yuri_Section2_card_content2')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (10, N'Yuri_Section2_card_content3')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (11, N'Yuri_Section2_card_content4')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (12, N'Yuri_Section2_card_title1')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (13, N'Yuri_Section2_card_title2')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (14, N'Yuri_Section2_card_title3')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (15, N'Yuri_Section2_card_title4')
INSERT [dbo].[Item] ([ID], [Object]) VALUES (16, N'Yuri_Section2_title')
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([ID], [lang], [Language]) VALUES (1, N'en', N'English                                           ')
INSERT [dbo].[Language] ([ID], [lang], [Language]) VALUES (2, N'kr', N'Korean                                            ')
INSERT [dbo].[Language] ([ID], [lang], [Language]) VALUES (3, N'vi', N'Vietnamese                                        ')
SET IDENTITY_INSERT [dbo].[Language] OFF
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'ChooseLang', N'en', N' - Language - ')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'ChooseLang', N'kr', N' - 어법 - ')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'ChooseLang', N'vi', N' - Ngôn ngữ - ')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage1', N'en', N'About')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage1', N'kr', N'약')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage2', N'en', N'Services')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage2', N'kr', N'서비스')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage3', N'en', N'News')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage3', N'kr', N'뉴스')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage4', N'en', N'Payment')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Header_NamePage4', N'kr', N'지불')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language1', N'en', N'English')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language1', N'kr', N'영어')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language1', N'vi', N'Tiếng Anh')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language2', N'en', N'Korean')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language2', N'kr', N'한국어')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language2', N'vi', N'Tiếng Hàn')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language3', N'en', N'Vietnamese')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language3', N'kr', N'베트남 사람')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Language3', N'vi', N'Tiếng Việt')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_card_content1', N'kr', N'YURIVISA의 외국인을위한 한국 비자 서비스를 방문해 주셔서 감사합니다.')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_card_content2', N'kr', N'왜 비자 서비스가 필요한지 아직 모르는 경우, 서비스는 주로 재정적 증명, 귀하의 업무, 충분한 콩과의 유대 관계에 대해 조언 해 줄 것입니다.')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_card_title1', N'kr', N'외국인을위한 비자')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_card_title2', N'kr', N'베트남 사람을위한 비자')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_title', N'en', N'Services of Yurivisa')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_title', N'kr', N'서비스 Yurivisa')
INSERT [dbo].[LookupTable] ([Object], [Lang], [Content]) VALUES (N'Yuri_Section2_title', N'vi', N'Dịch vụ của chúng tôi')
SET IDENTITY_INSERT [dbo].[POST] ON 

INSERT [dbo].[POST] ([ID], [LINK], [SEO_TITLE], [SEO_DESCRIPTION], [IMG_DESCRIPTION], [TEXT_DESCRIPTION], [CONTENT], [DATE_CREATE], [AUTHOR], [VIEW_NUMBER], [CATEGORY], [POST_STATE], [TITLE], [IMG]) VALUES (2, N'/tin-tuc/mon-an-han-quoc', N'Món ăn Hàn Quốc', N'Món ăn Hàn Quốc', N'<p><img src="/Uploads/img/pngtree-Star-Moon-Celestial-Body-Space-background-photo-876112.jpg" style="width:100%" /></p>
', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
', N'<p style="text-align:center"><strong>&quot;Nếu bạn y&ecirc;u th&iacute;ch c&aacute;c m&oacute;n ăn đường phố H&agrave;n Quốc th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua ẩm thực khu chợ Gwangjang vốn nổi tiếng với nhiều m&oacute;n ăn truyền thống hấp dẫn...&quot;</strong></p>

<hr />
<p>Nếu bạn y&ecirc;u th&iacute;ch c&aacute;c m&oacute;n ăn đường phố H&agrave;n Quốc th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua ẩm thực khu chợ Gwangjang vốn nổi tiếng với nhiều m&oacute;n ăn truyền thống hấp dẫn.Phải thừa nhận rằng khi mới &quot;diện kiến&quot; m&oacute;n ăn n&agrave;y th&igrave; rất nhiều người cảm thấy đ&aacute;ng sợ n&ecirc;n kh&ocirc;ng d&aacute;m thử. Tuy nhi&ecirc;n, theo kinh nghiệm của du kh&aacute;ch nước ngo&agrave;i lẫn người d&acirc;n địa phương th&igrave; bạn đừng để nỗi sợ h&atilde;i lấn &aacute;t m&agrave; h&atilde;y can đảm thử ngay một miếng dồi Soondae, bảo đảm sẽ kh&ocirc;ng bao giờ hối hận.Khi đến quầy b&aacute;n Mayak&nbsp;Gimbap, bạn sẽ bị thu h&uacute;t ngay bởi những đống Gimbap được cuộn sẵn nằm chất cao tr&ecirc;n kệ. M&agrave;u trắng của cơm, m&agrave;u đỏ cam của c&agrave; rốt, m&agrave;u xanh của rau, m&agrave;u v&agrave;ng của hạt vừng v&agrave; m&agrave;u xanh đen của l&aacute; rong biển h&ograve;a quyện v&agrave;o nhau n&ecirc;n c&agrave;ng khiến c&aacute;c cuộn Gimbap trở n&ecirc;n hấp dẫn v&agrave; đặc sắc hơn rất nhiều.</p>

<p><img alt="" src="/Uploads/images/mon-an-a.jpg" style="width:100%" /></p>

<p>B&aacute;nh gạo cay Tteokbokki l&agrave; một trong những thực phẩm đường phố phổ biến nhất của H&agrave;n Quốc, thậm ch&iacute; c&ograve;n nổi tiếng đối với nhiều du kh&aacute;ch nước ngo&agrave;i.Những thanh bột gạo trắng n&otilde;n được hầm trong nồi nước sốt ớt đỏ tươi l&agrave; m&oacute;n ăn khiến nhiều thực kh&aacute;ch kh&oacute; kiềm l&ograve;ng khi chợt nh&igrave;n thấy.<br />
B&aacute;nh x&egrave;o tại chợ Gwangjang được r&aacute;n gi&ograve;n n&oacute;ng hổi lớp b&ecirc;n ngo&agrave;i, c&ograve;n lớp b&ecirc;n trong th&igrave; ch&iacute;n mềm c&oacute; vị giống như khoai t&acirc;y nghiền. Nhờ được phục vụ chung với nước sốt l&agrave;m từ h&agrave;nh t&acirc;y, giấm v&agrave; nước tương lại th&ecirc;m một b&aacute;t kim chi ăn k&egrave;m n&ecirc;n vị ngon của b&aacute;nh x&egrave;o Bindaetteok được tăng hơn hẳn v&agrave; dễ g&acirc;y ấn tượng ngay lần nếm thử đầu ti&ecirc;n.</p>

<p><img alt="" src="/Uploads/images/mon-an-2.jpg" style="width:100%" /><br />
&nbsp;</p>

<p>-&nbsp; Nghe l&agrave; muốn x&aacute;ch balo l&ecirc;n v&agrave; đi&nbsp;rồi đ&uacute;ng kh&ocirc;ng ? Li&ecirc;n hệ Yuri qua số&nbsp; <span style="color:#3498db"><strong>Hotline/ Inbox Zalo</strong></span>: 035 2165 585 (Ms. Yuri) ngay nh&eacute;</p>

<ul>
	<li>&nbsp;Nhận tư vấn miễn ph&iacute; hồ sơ xin visa du lịch H&agrave;n Quốc tự t&uacute;c.</li>
	<li>&nbsp;L&ecirc;n lịch tr&igrave;nh tham qua du lịch c&aacute;c địa danh nổi tiếng ở Seoul, H&agrave;n Quốc miễn ph&iacute;.</li>
	<li>&nbsp;Tư vấn nhanh hồ sơ kh&oacute; &ndash; hộ chiếu trắng.</li>
	<li>Dịch vụ hỗ trợ Chứng Minh T&agrave;i Ch&iacute;nh (Minh bạch &ndash; Uy t&iacute;nh &ndash; An to&agrave;n)</li>
	<li>👉&nbsp;Link đăng k&yacute; tư vấn miễn ph&iacute;:&nbsp;<a href="https://goo.gl/aZqxgH?fbclid=IwAR38r284QrQvXMqeoaM3M3bN0H34M6at6SUr6MCEDe1N0M7GhTeA_I_TMOk" rel="noopener nofollow" target="_blank">goo.gl/aZqxgH</a></li>
</ul>

<p>&nbsp;</p>
', CAST(N'2019-05-13' AS Date), N'yurivisa', 1007, 1, 1, N'<h1 style="text-align:center">M&oacute;n&nbsp;ăn H&agrave;n Quốc</h1>
', N'<p><img src="/Uploads/img/pngtree-Star-Moon-Celestial-Body-Space-background-photo-876112.jpg" style="width:100%" /></p>
')
SET IDENTITY_INSERT [dbo].[POST] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LookupTable]  WITH CHECK ADD  CONSTRAINT [FK_LookupTable_Item] FOREIGN KEY([Object])
REFERENCES [dbo].[Item] ([Object])
GO
ALTER TABLE [dbo].[LookupTable] CHECK CONSTRAINT [FK_LookupTable_Item]
GO
ALTER TABLE [dbo].[LookupTable]  WITH CHECK ADD  CONSTRAINT [FK_LookupTable_Language] FOREIGN KEY([Lang])
REFERENCES [dbo].[Language] ([lang])
GO
ALTER TABLE [dbo].[LookupTable] CHECK CONSTRAINT [FK_LookupTable_Language]
GO
ALTER TABLE [dbo].[POST]  WITH CHECK ADD  CONSTRAINT [FK_POST_CATEGORY] FOREIGN KEY([CATEGORY])
REFERENCES [dbo].[CATEGORY] ([ID])
GO
ALTER TABLE [dbo].[POST] CHECK CONSTRAINT [FK_POST_CATEGORY]
GO
/****** Object:  StoredProcedure [dbo].[spFindMatch]    Script Date: 6/26/2019 2:34:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spFindMatch]
@lang nchar(2)
AS
BEGIN
	select LT.Object,LT.Content
	from LookupTable LT
	where LT.Lang=@lang;
end
GO
USE [master]
GO
ALTER DATABASE [YuriVisaDB] SET  READ_WRITE 
GO
