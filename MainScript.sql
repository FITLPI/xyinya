USE [RepairWorkShop]
GO
/****** Object:  Table [dbo].[Defect]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Defect](
	[DefectId] [int] IDENTITY(1,1) NOT NULL,
	[DefectName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Defect] PRIMARY KEY CLUSTERED 
(
	[DefectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceId] [int] IDENTITY(1,1) NOT NULL,
	[DeviceName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priory]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priory](
	[PrioryId] [int] IDENTITY(1,1) NOT NULL,
	[PrioryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Priory] PRIMARY KEY CLUSTERED 
(
	[PrioryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestId] [int] NOT NULL,
	[RequestDate] [datetime] NULL,
	[RequestDeviceId] [int] NULL,
	[RequestDefectId] [int] NULL,
	[RequestUserId] [int] NULL,
	[RequestDesc] [nvarchar](max) NULL,
	[RequestStatusId] [int] NULL,
	[RequestMasterId] [int] NULL,
	[RequestTime] [int] NULL,
	[RequestPrioryId] [int] NULL,
	[RequestStageId] [int] NULL,
	[RequestComment] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageId] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[StageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 29.10.2024 15:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFullName] [nvarchar](max) NULL,
	[UserLogin] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL,
	[UserRoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Defect] ON 

INSERT [dbo].[Defect] ([DefectId], [DefectName]) VALUES (1, N'Механическая')
INSERT [dbo].[Defect] ([DefectId], [DefectName]) VALUES (2, N'Электрическая')
INSERT [dbo].[Defect] ([DefectId], [DefectName]) VALUES (3, N'Ошибки эксплуатации')
INSERT [dbo].[Defect] ([DefectId], [DefectName]) VALUES (4, N'Программная')
INSERT [dbo].[Defect] ([DefectId], [DefectName]) VALUES (5, N'Ненадлежащее обслуживание')
SET IDENTITY_INSERT [dbo].[Defect] OFF
GO
SET IDENTITY_INSERT [dbo].[Device] ON 

INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (1, N'Токарный станок АП567')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (2, N'Фрезерный станок 12')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (3, N'Расточный станок ТИ90')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (4, N'Расточный станок ОР99')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (5, N'Расточный станок 55')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (6, N'Токарный станок ОР788')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (7, N'Сверлильный станок ВТ567')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (8, N'Лазерный станок для резки металла')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (9, N'Гибочный станок ВА34')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (10, N'Фрезерный станок 124')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (11, N'Фрезерный станок 45')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (12, N'Фрезерный станок ВА44')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (13, N'Фрезерный станок 766')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (14, N'Шлифовальный станок')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (15, N'Шлифовальный станок 66')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (16, N'Гибочный станок СМ44')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (17, N'Расточный станок СМИ56')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (18, N'Гибочный станок ВА35')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (19, N'Токарный станок ЛОР')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (20, N'Токарный станок')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (21, N'Плазменный станок ПС567')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (22, N'Шлифовальный станок РП77')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (23, N'Фрезерный станок 77')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (24, N'Токарный станок ФЫ567')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (25, N'Лазерный станок для резки металла ПА56')
INSERT [dbo].[Device] ([DeviceId], [DeviceName]) VALUES (26, N'Фрезерный станок РП77')
SET IDENTITY_INSERT [dbo].[Device] OFF
GO
SET IDENTITY_INSERT [dbo].[Priory] ON 

INSERT [dbo].[Priory] ([PrioryId], [PrioryName]) VALUES (1, N'Низкий')
INSERT [dbo].[Priory] ([PrioryId], [PrioryName]) VALUES (2, N'Средний')
INSERT [dbo].[Priory] ([PrioryId], [PrioryName]) VALUES (3, N'Высокий')
SET IDENTITY_INSERT [dbo].[Priory] OFF
GO
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (1, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 1, 1, 125, N'Износ элементов конструкции', 1, 105, 0, 1, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (2, CAST(N'2023-03-13T00:00:00.000' AS DateTime), 2, 2, 126, N'Нарушение в электрических цепях', 2, 110, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (3, CAST(N'2023-03-14T00:00:00.000' AS DateTime), 3, 3, 127, N'Износ деталей', 3, 105, 120, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (4, CAST(N'2023-03-15T00:00:00.000' AS DateTime), 4, 4, 128, N'Ошибки в работе управляещего ПО', 3, 105, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (5, CAST(N'2023-03-16T00:00:00.000' AS DateTime), 5, 1, 129, N'Внешние признаки неработоспособности', 3, 119, 320, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (6, CAST(N'2023-03-17T00:00:00.000' AS DateTime), 5, 1, 131, N'Появление дыма при работе', 1, 106, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (7, CAST(N'2023-03-18T00:00:00.000' AS DateTime), 6, 1, 131, N'Поломка механических деталей конструкции', 3, 137, 240, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (8, CAST(N'2023-03-19T00:00:00.000' AS DateTime), 7, 1, 101, N'Посторонние шумы', 3, 105, 360, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (9, CAST(N'2023-03-20T00:00:00.000' AS DateTime), 8, 2, 101, N'Нарушения в электрических компонентах', 3, 137, 720, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (10, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 9, 3, 102, N'Ошибки монтажа', 3, 146, 120, 3, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (11, CAST(N'2023-03-22T00:00:00.000' AS DateTime), 10, 5, 102, N'Попадание грязи и влаги', 3, 119, 600, 2, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (12, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 11, 2, 102, N'Нарушения в электрических соединениях', 2, 115, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (13, CAST(N'2023-03-24T00:00:00.000' AS DateTime), 9, 2, 107, N'Нарушения в электрических соединениях', 3, 119, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (14, CAST(N'2023-03-25T00:00:00.000' AS DateTime), 8, 4, 107, N'Ошибки в работе прошивок', 3, 106, 320, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (15, CAST(N'2023-03-26T00:00:00.000' AS DateTime), 12, 4, 131, N'Ошибки в работе управляещего ПО', 3, 106, 480, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (16, CAST(N'2023-03-27T00:00:00.000' AS DateTime), 13, 5, 107, N'Попадание грязи и влаги', 1, 137, 0, 1, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (17, CAST(N'2023-03-28T00:00:00.000' AS DateTime), 9, 1, 116, N'Износ элементов конструкции', 2, 110, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (18, CAST(N'2023-03-29T00:00:00.000' AS DateTime), 14, 1, 101, N'Износ элементов конструкции', 2, 110, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (19, CAST(N'2023-03-30T00:00:00.000' AS DateTime), 5, 3, 117, N'Износ деталей', 1, 146, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (20, CAST(N'2023-03-31T00:00:00.000' AS DateTime), 15, 1, 116, N'Поломка механических деталей конструкции', 1, 137, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (21, CAST(N'2023-04-01T00:00:00.000' AS DateTime), 16, 3, 134, N'Ошибки монтажа', 3, 106, 120, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (22, CAST(N'2023-04-02T00:00:00.000' AS DateTime), 17, 3, 118, N'Воздействие вредных факторов среды', 3, 137, 600, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (23, CAST(N'2023-04-03T00:00:00.000' AS DateTime), 18, 2, 111, N'Нарушения в электрических компонентах', 3, 137, 320, 1, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (24, CAST(N'2023-04-04T00:00:00.000' AS DateTime), 18, 5, 145, N'Ошибки проектирования', 3, 105, 480, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (25, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 19, 1, 116, N'Внешние признаки неработоспособности', 2, 137, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (26, CAST(N'2023-04-06T00:00:00.000' AS DateTime), 5, 5, 145, N'Воздействие вредных факторов среды', 2, 146, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (27, CAST(N'2023-04-07T00:00:00.000' AS DateTime), 16, 2, 150, N'Нарушение в электрических цепях', 3, 105, 720, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (28, CAST(N'2023-04-08T00:00:00.000' AS DateTime), 18, 1, 134, N'Появление дыма при работе', 3, 105, 120, 3, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (29, CAST(N'2023-04-09T00:00:00.000' AS DateTime), 15, 1, 116, N'Поломка механических деталей конструкции', 3, 146, 600, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (30, CAST(N'2023-04-10T00:00:00.000' AS DateTime), 20, 1, 117, N'Поломка механических деталей конструкции', 2, 105, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (31, CAST(N'2023-04-11T00:00:00.000' AS DateTime), 21, 5, 117, N'Загрязнение деталей', 3, 119, 600, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (32, CAST(N'2023-04-12T00:00:00.000' AS DateTime), 18, 4, 111, N'Ошибки в работе управляещего ПО', 1, 115, 0, 3, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (33, CAST(N'2023-04-13T00:00:00.000' AS DateTime), 22, 4, 134, N'Ошибки в работе прошивок', 3, 115, 480, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (34, CAST(N'2023-04-14T00:00:00.000' AS DateTime), 7, 5, 117, N'Загрязнение деталей', 1, 137, 0, 3, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (35, CAST(N'2023-04-15T00:00:00.000' AS DateTime), 18, 5, 117, N'Загрязнение деталей', 2, 106, 0, 3, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (36, CAST(N'2023-04-02T00:00:00.000' AS DateTime), 23, 2, 145, N'Нарушение в электрических цепях', 2, 137, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (37, CAST(N'2023-04-03T00:00:00.000' AS DateTime), 18, 2, 118, N'Нарушение в электрических цепях', 2, 110, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (38, CAST(N'2023-04-04T00:00:00.000' AS DateTime), 21, 1, 134, N'Износ элементов конструкции', 3, 137, 600, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (39, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 15, 1, 145, N'Износ элементов конструкции', 2, 137, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (40, CAST(N'2023-04-06T00:00:00.000' AS DateTime), 15, 1, 118, N'Посторонние шумы', 1, 105, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (41, CAST(N'2023-04-07T00:00:00.000' AS DateTime), 24, 1, 145, N'Появление дыма при работе', 3, 146, 320, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (42, CAST(N'2023-04-08T00:00:00.000' AS DateTime), 21, 3, 145, N'Износ деталей', 2, 115, 0, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (43, CAST(N'2023-04-09T00:00:00.000' AS DateTime), 16, 2, 117, N'Нарушения в электрических соединениях', 3, 105, 1260, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (44, CAST(N'2023-04-01T00:00:00.000' AS DateTime), 5, 1, 145, N'Поломка механических деталей конструкции', 2, 105, 0, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (45, CAST(N'2023-04-02T00:00:00.000' AS DateTime), 16, 5, 117, N'Загрязнение деталей', 3, 137, 720, 1, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (46, CAST(N'2023-04-03T00:00:00.000' AS DateTime), 25, 2, 145, N'Нарушения в электрических компонентах', 3, 110, 480, 2, 2, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (47, CAST(N'2023-04-04T00:00:00.000' AS DateTime), 21, 2, 111, N'Нарушение в электрических цепях', 3, 106, 320, 3, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (48, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 26, 5, 134, N'Загрязнение деталей', 1, 137, 0, 2, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (49, CAST(N'2023-04-06T00:00:00.000' AS DateTime), 25, 4, 145, N'Ошибки в работе управляещего ПО', 3, 115, 240, 3, 1, N'')
INSERT [dbo].[Request] ([RequestId], [RequestDate], [RequestDeviceId], [RequestDefectId], [RequestUserId], [RequestDesc], [RequestStatusId], [RequestMasterId], [RequestTime], [RequestPrioryId], [RequestStageId], [RequestComment]) VALUES (50, CAST(N'2023-04-07T00:00:00.000' AS DateTime), 5, 1, 118, N'Посторонние шумы', 3, 105, 360, 2, 1, N'')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Заказчик')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Оператор')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (4, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (1, N'Выполнено')
INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (2, N'В работе')
INSERT [dbo].[Stage] ([StageId], [StageName]) VALUES (3, N'Не выполнено')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (1, N'Выполнено')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (3, N'В ожидании')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (101, N'Ефремов Сергей Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (102, N'Родионова Тамара Валентиновна', N'loginDElqb2018', N'RNynil', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (103, N'Миронова Галина Улебовна', N'loginDEydn2018', N'34I}X9', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (104, N'Сидоров Роман Иринеевич', N'loginDEijg2018', N'4QlKJW', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (105, N'Ситников Парфений Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (106, N'Никонов Роман Геласьевич', N'loginDEwdm2018', N'&PynqU', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (107, N'Щербаков Владимир Матвеевич', N'loginDEdup2018', N'JM+2{s', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (108, N'Кулаков Мартын Михаилович', N'loginDEhbm2018', N'9aObu4', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (109, N'Сазонова Оксана Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (110, N'Архипов Варлам Мэлорович', N'loginDErks2018', N'LQNSjo', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (111, N'Устинова Ираида Мэлоровна', N'loginDErvb2018', N'ceAf&R', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (112, N'Лукин Георгий Альбертович', N'loginDEulo2018', N'fg56DRgh', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (113, N'Кононов Эдуард Валентинович', N'loginDEgfw2018', N'3c2Ic1', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (114, N'Орехова Клавдия Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (115, N'Яковлев Яков Эдуардович', N'loginDEgeq2018', N'&&Eim0', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (116, N'Воронов Мэлс Семёнович', N'loginDEkhj2018', N'Pbc0t{', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (117, N'Вишнякова Ия Данииловна', N'loginDEliu2018', N'32FyTl', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (118, N'Третьяков Фёдор Вадимович', N'loginDEsmf2018', N'{{O2QG', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (119, N'Макаров Максим Ильяович', N'loginDEutd2018', N'GbcJvC', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (120, N'Шубина Маргарита Анатольевна', N'loginDEpgh2018', N'YV2lvh', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (121, N'Блинова Ангелина Владленовна', N'loginDEvop2018', N'pBP8rO', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (122, N'Воробьёв Владлен Фролович', N'loginDEwjo2018', N'EQaD|d', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (123, N'Сорокина Прасковья Фёдоровна', N'loginDEbur2018', N'aZKGeI', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (124, N'Давыдов Яков Антонович', N'loginDEszw2018', N'EGU{YE', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (125, N'Рыбакова Евдокия Анатольевна', N'loginDExsu2018', N'*2RMsp', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (126, N'Маслов Геннадий Фролович', N'loginDEztn2018', N'nJBZpU', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (127, N'Цветкова Элеонора Аристарховна', N'loginDEtmn2018', N'UObB}N', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (128, N'Евдокимов Ростислав Александрович', N'loginDEhep2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (129, N'Никонова Венера Станиславовна', N'loginDEevr2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (130, N'Громов Егор Антонович', N'loginDEnpa2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (131, N'Суворова Валерия Борисовна', N'loginDEgyt2018', N'Pav+GP', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (132, N'Мишина Елизавета Романовна', N'loginDEbrr2018', N'Z7L|+i', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (133, N'Зимина Ольга Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (134, N'Игнатьев Игнатий Антонинович', N'loginDEaob2018', N'3fy+3I', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (135, N'Пахомова Зинаида Витальевна', N'loginDEwtz2018', N'&GxSST', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (136, N'Устинов Владимир Федосеевич', N'loginDEctf2018', N'sjt*3N', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (137, N'Кулаков Мэлор Вячеславович', N'loginDEipm2018', N'MAZl6|', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (138, N'Сазонов Авксентий Брониславович', N'loginDEjoi2018', N'o}C4jv', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (139, N'Бурова Наина Брониславовна', N'loginDEwap2018', N'4hny7k', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (140, N'Фадеев Демьян Федосеевич', N'loginDEaxm2018', N'BEc3xq', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (141, N'Бобылёва Дарья Якуновна', N'loginDEsmq2018', N'ATVmM7', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (142, N'Виноградов Созон Арсеньевич', N'loginDEeur2018', N'n4V{wP', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (143, N'Гордеев Владлен Ефимович', N'loginDEvke2018', N'WQLXSl', 3)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (144, N'Иванова Зинаида Валерьевна', N'loginDEvod2018', N'0EW93v', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (145, N'Гусев Руслан Дамирович', N'loginDEjaw2018', N'h6z&Ky', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (146, N'Маслов Дмитрий Иванович', N'loginDEpdp2018', N'8NvRfC', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (147, N'Антонова Ульяна Семёновна', N'loginDEjpp2018', N'oMOQq3', 1)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (148, N'Орехова Людмила Владимировна', N'loginDEkiy2018', N'BQzsts', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (149, N'Авдеева Жанна Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 2)
INSERT [dbo].[User] ([UserId], [UserFullName], [UserLogin], [UserPassword], [UserRoleId]) VALUES (150, N'Кузнецов Фрол Варламович', N'loginDEfmn2018', N'cw3|03', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Defect] FOREIGN KEY([RequestDefectId])
REFERENCES [dbo].[Defect] ([DefectId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Defect]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Device] FOREIGN KEY([RequestDeviceId])
REFERENCES [dbo].[Device] ([DeviceId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Device]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Priory] FOREIGN KEY([RequestPrioryId])
REFERENCES [dbo].[Priory] ([PrioryId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Priory]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Stage] FOREIGN KEY([RequestStageId])
REFERENCES [dbo].[Stage] ([StageId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Stage]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([RequestStatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([RequestUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
