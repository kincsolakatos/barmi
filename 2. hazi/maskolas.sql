CREATE TABLE [dbo].[Rendeles](
	[SORSZAM] [int] masked with (function = 'random(1, 12)'),
	[LOGIN] [nvarchar](255) masked with (function = 'default()'),
	[REND_DATUM] [date] null,
	[SZALL_DATUM] [date] NULL,
	[SZALL_CIM] [nvarchar](255) NULL,
	[SZALL_MOD] [nvarchar](255) NULL,
	[FIZ_MOD] [nvarchar](255) NULL,
	[SZAMLA_CIM] [nvarchar](255) masked with (function = 'partial(0, "xxxx", 4)'),
 CONSTRAINT [PK_Rendeles] PRIMARY KEY CLUSTERED 
(
	[SORSZAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
