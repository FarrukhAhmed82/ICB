SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ICB_Industry](
	[IndustryID] [int] NOT NULL PRIMARY KEY,
	[Industry] [nvarchar](MAX) NULL
) ON [PRIMARY]


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ICB_SuperSector](
	[SuperSectorID] [int] NOT NULL PRIMARY KEY,
	[IndustryID] [int] NOT NULL FOREIGN KEY REFERENCES [ICB_Industry]([IndustryID]),
	[SuperSector] [nvarchar](MAX) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ICB_Sector](
	[SectorID] [int] NOT NULL PRIMARY KEY,
	[SuperSectorID] [int] NOT NULL FOREIGN KEY REFERENCES [ICB_SuperSector]([SupersectorID]),
	[Sector] [nvarchar](MAX) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ICB_SubSector](
	[SubSectorID] [int] NOT NULL PRIMARY KEY,
	[SectorID] [int] NOT NULL FOREIGN KEY REFERENCES [ICB_Sector]([SectorID]),
	[SubSector] [nvarchar](MAX) NULL
) ON [PRIMARY]

GO

INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (1, N'Oil & Gas')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (1000, N'Basic Materials')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (2000, N'Industrials')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (3000, N'Consumer Goods')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (4000, N'Health Care')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (5000, N'Consumer Services')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (6000, N'Telecommunications')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (7000, N'Utilities')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (8000, N'Financials')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (9000, N'Technology')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (10000, N'Animals')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (11000, N'Arts')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (12000, N'Culture')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (13000, N'Education')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (14000, N'Entertainment')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (15000, N'Environment')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (16000, N'Health')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (17000, N'Human services')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (18000, N'International affairs')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (19000, N'Law and enforcement')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (20000, N'Politics and government')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (21000, N'Religion')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (22000, N'Research')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (23000, N'Science')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (24000, N'Social care')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (25000, N'Sport')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (26000, N'Technology')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (27000, N'Wellbeing')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (28000, N'Other')
GO
INSERT [dbo].[ICB_Industry] ([IndustryID], [Industry]) VALUES (100000, N'Independent')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (500, 1, N'Oil & Gas')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (1300, 1000, N'Chemicals')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (1700, 1000, N'Basic Resources')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (2300, 2000, N'Construction & Materials')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (2700, 2000, N'Industrial Goods & Services')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (3300, 3000, N'Automobiles & Parts')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (3500, 3000, N'Food & Beverage')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (3700, 3000, N'Personal & Household Goods')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (4500, 4000, N'Health Care')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (5300, 5000, N'Retail')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (5500, 5000, N'Media')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (5700, 5000, N'Travel & Leisure')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (6500, 6000, N'Telecommunications')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (7500, 7000, N'Utilities')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (8300, 8000, N'Banks')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (8500, 8000, N'Insurance')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (8600, 8000, N'Real Estate')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (8700, 8000, N'Financial Services')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (8900, 8000, N'Investment Instruments')
GO
INSERT [dbo].[ICB_Supersector] ([SupersectorID], [IndustryID], [Supersector]) VALUES (9500, 9000, N'Technology')
GO

INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (530, 500, N'Oil & Gas Producers')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (570, 500, N'Oil Equipment, Services & Distribution')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (580, 500, N' Alternative Energy')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (1350, 1300, N'Chemicals')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (1730, 1700, N'Forestry & Paper')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (1750, 1700, N'Industrial Metals & Mining')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (1770, 1700, N'Mining')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2350, 2300, N'Construction & Materials')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2710, 2700, N'Aerospace & Defense')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2720, 2700, N'General Industrials')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2730, 2700, N'Electronic & Electrical Equipment')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2750, 2700, N'Industrial Engineering')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2770, 2700, N'Industrial Transportation')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (2790, 2700, N'Support Services')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3350, 3300, N'Automobiles & Parts')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3530, 3500, N'Beverages')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3570, 3500, N'Food Producers')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3720, 3700, N'Household Goods & Home Construction')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3740, 3700, N'Leisure Goods')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3760, 3700, N'Personal Goods')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (3780, 3700, N'Tobacco')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (4530, 4500, N'Health Care Equipment & Services')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (4570, 4500, N'Pharmaceuticals & Biotechnology')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (5330, 5300, N'Food & Drug Retailers')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (5370, 5300, N'General Retailers')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (5550, 5500, N'Media')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (5750, 5700, N'Travel & Leisure')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (6530, 6500, N'Fixed Line Telecommunications 	')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (6570, 6500, N'Mobile Telecommunications')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (7530, 7500, N'Electricity')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (7570, 7500, N'Gas, Water & Multiutilities')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8350, 8300, N'Banks')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8530, 8500, N'Nonlife Insurance')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8570, 8500, N'Life Insurance')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8630, 8600, N'Real Estate Investment & Services')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8670, 8600, N'Real Estate Investment Trusts')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8770, 8700, N'Financial Services')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8980, 8900, N'Equity Investment Instruments')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (8990, 8900, N'Nonequity Investment Instruments')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (9530, 9500, N'Software & Computer Services')
GO
INSERT [dbo].[ICB_Sector] ([SectorID], [SupersectorID], [Sector]) VALUES (9570, 9500, N'Technology Hardware & Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (533, 530, N'Exploration & Production')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (537, 530, N'Integrated Oil & Gas')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (573, 570, N'Oil Equipment & Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (577, 570, N'Pipelines')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (583, 580, N'Renewable Energy Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (587, 580, N'Alternative Fuels')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1353, 1350, N'Commodity Chemicals')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1357, 1350, N'Specialty Chemicals')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1733, 1730, N'Forestry')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1737, 1730, N'Paper')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1753, 1750, N'Aluminum')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1755, 1750, N'Nonferrous Metals')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1757, 1750, N'Iron & Steel')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1771, 1770, N'Coal')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1773, 1770, N'Diamonds & Gemstones')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1775, 1770, N'General Mining')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1777, 1770, N'Gold Mining')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (1779, 1770, N' Platinum & Precious Metals')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2353, 2350, N' Building Materials & Fixtures')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2357, 2350, N'Heavy Construction')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2713, 2710, N'Aerospace')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2717, 2710, N'Defense')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2723, 2720, N'Containers & Packaging')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2727, 2720, N'Diversified Industrials')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2733, 2730, N'Electrical Components & Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2737, 2730, N'Electronic Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2753, 2750, N'Commercial Vehicles & Trucks')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2757, 2750, N'Industrial Machinery')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2771, 2770, N'Delivery Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2773, 2770, N'Marine Transportation')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2775, 2770, N'Railroads')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2777, 2770, N'Transportation Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2779, 2770, N'Trucking')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2791, 2790, N'Business Support Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2793, 2790, N'Business Training & Employment Agencies')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2795, 2790, N'Financial Administration')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2797, 2790, N'Industrial Suppliers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (2799, 2790, N'Waste & Disposal Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3353, 3350, N'Automobiles')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3355, 3350, N'Auto Parts')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3357, 3350, N'Tires')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3533, 3530, N'Brewers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3535, 3530, N'Distillers & Vintners')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3537, 3530, N'Soft Drinks')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3573, 3570, N'Farming & Fishing')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3577, 3570, N'Food Products')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3722, 3720, N'Durable Household Products')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3724, 3720, N'Nondurable Household Products')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3726, 3720, N'Furnishings')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3728, 3720, N'Home Construction')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3743, 3740, N'Consumer Electronics')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3745, 3740, N'Recreational Products')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3747, 3740, N'Toys')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3763, 3760, N'Clothing & Accessories')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3765, 3760, N'Footwear')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3767, 3760, N'Personal Products')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (3785, 3780, N'Tobacco')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (4533, 4530, N'Health Care Providers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (4535, 4530, N'Medical Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (4537, 4530, N'Medical Supplies')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (4573, 4570, N'Biotechnology')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (4577, 4570, N'Pharmaceuticals')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5333, 5330, N'Drug Retailers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5337, 5330, N'Food Retailers & Wholesalers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5371, 5370, N'Apparel Retailers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5373, 5370, N' Broadline Retailers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5375, 5370, N' Home Improvement Retailers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5377, 5370, N'Specialized Consumer Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5379, 5370, N'Specialty Retailers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5553, 5550, N'Broadcasting & Entertainment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5555, 5550, N'Media Agencies')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5557, 5550, N'Publishing')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5751, 5750, N'Airlines')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5752, 5750, N'Gambling')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5753, 5750, N'Hotels')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5755, 5750, N'Recreational Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5757, 5750, N'Restaurants & Bars')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (5759, 5750, N'Travel & Tourism')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (6535, 6530, N'Fixed Line Telecommunications')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (6575, 6570, N'Mobile Telecommunications')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (7535, 7530, N' Conventional Electricity')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (7537, 7530, N'Alternative Electricity')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (7573, 7570, N' Gas Distribution')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (7575, 7570, N'Multiutilities')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (7577, 7570, N'Water')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8355, 8350, N'Banks')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8532, 8530, N'Full Line Insurance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8534, 8530, N'Insurance Brokers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8536, 8530, N'Property & Casualty Insurance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8538, 8530, N'Reinsurance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8575, 8570, N' Life Insurance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8633, 8630, N' Real Estate Holding & Development')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8637, 8630, N'Real Estate Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8671, 8670, N' Industrial & Office REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8672, 8670, N'Retail REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8673, 8670, N'Residential REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8674, 8670, N'Diversified REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8675, 8670, N'Specialty REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8676, 8670, N'Mortgage REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8677, 8670, N'Hotel & Lodging REITs')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8771, 8770, N'Asset Managers')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8773, 8770, N'Consumer Finance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8775, 8770, N'Specialty Finance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8777, 8770, N'Investment Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8779, 8770, N'Mortgage Finance')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8985, 8980, N'Equity Investment Instruments')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (8995, 8990, N'Nonequity Investment Instruments')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9533, 9530, N'Computer Services')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9535, 9530, N'Internet')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9537, 9530, N'Software')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9572, 9570, N'Computer Hardware')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9574, 9570, N'Electronic Office Equipment')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9576, 9570, N'Semiconductors')
GO
INSERT [dbo].[ICB_Subsector] ([SubsectorID], [SectorID], [Subsector]) VALUES (9578, 9570, N'Telecommunications Equipment')
GO
