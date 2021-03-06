USE [gatetuto_eth]
GO
/****** Object:  Table [dbo].[Update Product_Registration]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Update Product_Registration](
	[User_Name] [nvarchar](50) NOT NULL,
	[ProductReg_ID] [bigint] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[User_Email1] [nvarchar](50) NOT NULL,
	[Mobile_Number] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[Status] [smallint] NOT NULL,
	[ProductRegDate] [nvarchar](50) NOT NULL,
	[FeePaid] [int] NULL,
	[ProductRegSource] [int] NOT NULL,
	[Discount_ID] [int] NOT NULL,
	[TransactionNo] [nvarchar](50) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SpecialDiscount] [tinyint] NULL,
	[RegType] [smallint] NULL,
	[DisplayName] [nvarchar](300) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit_Categories]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit_Categories](
	[Category_ID] [int] NULL,
	[Category_Name] [nvarchar](400) NULL,
	[Category_Desc] [nvarchar](1300) NULL,
	[Unit_IDS] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfWorks]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfWorks](
	[Work_TypeID] [int] NULL,
	[Work_Type] [nvarchar](100) NULL,
	[Work_TypeDesc] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfCompanies]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfCompanies](
	[Comp_TypeID] [int] NULL,
	[Comp_Type] [nvarchar](100) NULL,
	[Comp_TypeDesc] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[traffic_Compaign]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[traffic_Compaign](
	[keyWordID] [int] NULL,
	[keyWordName] [nvarchar](50) NULL,
	[hitCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestCenter]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCenter](
	[centerID] [int] NULL,
	[centerCode] [nchar](50) NULL,
	[centerType] [nchar](10) NULL,
	[centerName] [nvarchar](250) NULL,
	[centerAddress] [nvarchar](400) NULL,
	[centerCityID] [int] NULL,
	[centerStateID] [int] NULL,
	[ContactPersonID1] [int] NULL,
	[ContactPersonID2] [int] NULL,
	[isActive] [tinyint] NULL,
	[isVerified] [tinyint] NULL,
	[comments] [nvarchar](250) NULL,
	[password] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[State_Id] [int] NULL,
	[Country_ID] [int] NULL,
	[State_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSource]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSource](
	[SourceID] [int] NULL,
	[SoureceName] [nvarchar](200) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersadmin]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersadmin](
	[id] [tinyint] NOT NULL,
	[uname] [nvarchar](25) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Created Date] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_usersadmin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPathHistory]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPathHistory](
	[pathID] [int] NOT NULL,
	[userID] [int] NULL,
	[visitEndDate] [datetime] NULL,
	[VisitStartdate] [datetime] NULL,
	[pathVisited] [nvarchar](2000) NULL,
	[userIPAddress] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userMailingQues]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userMailingQues](
	[mailingTID] [int] NULL,
	[UserID] [int] NULL,
	[CourseGroupID] [nvarchar](400) NULL,
	[Cycle_Days] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userCustomeTests]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userCustomeTests](
	[CustomTID] [int] NULL,
	[UserID] [int] NULL,
	[TestName] [nvarchar](400) NULL,
	[TopicIDs] [nvarchar](500) NULL,
	[TestDesc] [nvarchar](400) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCommentsOnQues]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCommentsOnQues](
	[TopicId] [int] NULL,
	[QuesID] [int] NULL,
	[TestID] [int] NULL,
	[CommentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Type]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[ID] [smallint] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_CommonDiscussion]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_CommonDiscussion](
	[userID] [int] NULL,
	[userName] [nvarchar](60) NULL,
	[userEmail] [nvarchar](60) NULL,
	[isEmailSent] [tinyint] NULL,
	[canSendMail] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteNews]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteNews](
	[NewsId] [int] NULL,
	[NewsHeading] [nvarchar](100) NULL,
	[NewsDescription] [nvarchar](1000) NULL,
	[NewsDate] [datetime] NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultMaster]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultMaster](
	[testID] [int] NULL,
	[userID] [int] NULL,
	[HierarchyInfo] [nvarchar](700) NULL,
	[testDate] [datetime] NULL,
	[correctAns] [int] NULL,
	[incorrectAns] [int] NULL,
	[noAns] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultDetails]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultDetails](
	[TestId] [int] NULL,
	[QuesID] [int] NULL,
	[Group_id] [int] NULL,
	[TopicID] [int] NULL,
	[QuesTableId] [tinyint] NULL,
	[UserSelection] [smallint] NULL,
	[isCorrect] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refferred_Users]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refferred_Users](
	[uid] [int] NULL,
	[userEmail] [nvarchar](50) NULL,
	[UserFullName] [nvarchar](50) NULL,
	[refferredByUserID] [int] NULL,
	[refferredForECID] [int] NULL,
	[refferredDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReadingMaterial]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReadingMaterial](
	[userId] [int] NULL,
	[fileName] [nvarchar](150) NULL,
	[ContentType] [nvarchar](200) NULL,
	[BinaryData] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest_Display_Group]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest_Display_Group](
	[QuesID] [int] NULL,
	[Group_ID] [int] NULL,
	[Status] [smallint] NULL,
	[QuestText] [nvarchar](2000) NULL,
	[Opt_A] [nvarchar](2000) NULL,
	[Opt_B] [nvarchar](2000) NULL,
	[Opt_C] [nvarchar](2000) NULL,
	[Opt_D] [nvarchar](2000) NULL,
	[Opt_E] [nvarchar](2000) NULL,
	[Opt_F] [nvarchar](2000) NULL,
	[Ans] [tinyint] NULL,
	[Comment_IDs] [nvarchar](500) NULL,
	[isStrictlyFormated] [tinyint] NULL,
	[SequenceNo] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest_Display]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest_Display](
	[QuesIDOLD] [int] NULL,
	[TopicID] [int] NULL,
	[SourceID] [int] NULL,
	[QuesType] [smallint] NULL,
	[Status] [smallint] NULL,
	[Group_PatternID] [int] NULL,
	[QuestText] [nvarchar](3000) NULL,
	[Opt_A] [nvarchar](1500) NULL,
	[Opt_B] [nvarchar](1500) NULL,
	[Opt_C] [nvarchar](1500) NULL,
	[Opt_D] [nvarchar](1500) NULL,
	[Opt_E] [nvarchar](1500) NULL,
	[Opt_F] [nvarchar](1500) NULL,
	[Ans] [tinyint] NULL,
	[Comment_IDs] [nvarchar](500) NULL,
	[isStrictlyFormated] [tinyint] NULL,
	[QuesID] [int] NULL,
	[AliasTopicID] [int] NULL,
	[Solution] [nvarchar](2000) NULL,
	[AnsProposed] [tinyint] NULL,
	[ReviewerComment] [nvarchar](200) NULL,
	[ReviewRating] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quest_Calculations]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest_Calculations](
	[QuesId] [int] NULL,
	[Chapter_ID] [int] NULL,
	[Base_Marks] [tinyint] NULL,
	[nCorrectlyAnswered] [int] NULL,
	[nNotAttempted] [int] NULL,
	[nIncorrectlyAnswered] [int] NULL,
	[StudentIndependetLevel] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuesGenLevelUpdate]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuesGenLevelUpdate](
	[UpdateId] [smallint] NULL,
	[Status] [char](10) NULL,
	[UpdateParameter] [smallint] NULL,
	[Comments] [char](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ques_Types]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Types](
	[Ques_TypeID] [int] NULL,
	[Ques_TypeName] [nvarchar](50) NULL,
	[Ques_TypeDesc] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Topics]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Topics](
	[Topic_ID] [int] NULL,
	[Table_ID] [int] NULL,
	[Topic_Name] [nvarchar](100) NULL,
	[Topic_Desc] [nvarchar](250) NULL,
	[isActive] [int] NULL,
	[Ques_Active] [int] NULL,
	[Ques_deActive] [int] NULL,
	[Ques_reviewLater] [int] NULL,
	[Topic_Author] [int] NULL,
	[Topic_Owner] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Sources]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Sources](
	[SourceId] [int] NULL,
	[SourceDetails] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Passage]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Passage](
	[Group_id] [int] NULL,
	[Group_TopicID] [int] NULL,
	[Group_Passage] [ntext] NULL,
	[Group_QuesCount] [int] NULL,
	[Group_IsActive] [tinyint] NULL,
	[isStrictlyFormated] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Paper_Parameters]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Paper_Parameters](
	[Parameter_ID] [int] NULL,
	[Duration] [smallint] NOT NULL,
	[ToughnessLevel] [smallint] NOT NULL,
	[NumberOfQuestions] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_in_discussion]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_in_discussion](
	[dis_id] [int] NULL,
	[topic_id] [int] NULL,
	[ques_id] [int] NULL,
	[user_id] [int] NULL,
	[dis_comment] [nvarchar](300) NULL,
	[post_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_AnswerStatusCodes]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_AnswerStatusCodes](
	[StatusId] [smallint] NULL,
	[DisplayText] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products Available]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products Available](
	[DisplayName] [nvarchar](300) NOT NULL,
	[Product_ID] [int] NOT NULL,
	[isProduct] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Users]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Users](
	[User_ID] [float] NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](255) NOT NULL,
	[User_Email1] [nvarchar](50) NOT NULL,
	[User_Email2] [nvarchar](50) NULL,
	[Mobile_Number] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[isOnLine] [float] NULL,
	[User_Full_Name] [nvarchar](200) NULL,
	[BranchID] [float] NULL,
	[status] [float] NULL,
	[isSync] [tinyint] NOT NULL,
	[RegSource] [int] NULL,
	[address] [nvarchar](500) NULL,
	[LastInstituteName] [nvarchar](500) NULL,
	[LastInstituteAddress] [nvarchar](500) NULL,
	[isMailVerified] [tinyint] NULL,
	[isMobileVerified] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Types]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Types](
	[ProductTypeID] [int] NULL,
	[ProductTypeName] [nvarchar](50) NULL,
	[ProductTypeDesc] [nvarchar](200) NULL,
	[isActive] [tinyint] NULL,
	[product_Code] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Seller_Categories_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Seller_Categories_Master](
	[Seller_Category_ID] [int] NULL,
	[Seller_Category_Name] [nvarchar](100) NULL,
	[Product_Listing_in_Products_Group] [tinyint] NULL,
	[Dedicated_Seller_page] [tinyint] NULL,
	[Online_Payment] [tinyint] NULL,
	[Promotional_Emails] [tinyint] NULL,
	[followup_Telephonic_Calls] [tinyint] NULL,
	[Inclusion_Charges] [int] NULL,
	[Demo_Setup] [tinyint] NULL,
	[Annual_Subscription_Amount] [int] NULL,
	[Per_Item_Annual_Inclusion_Charges] [int] NULL,
	[Online_payment_Handling_Charges_Percentage] [float] NULL,
	[DD_payment_Handling_Charges_Percentage] [float] NULL,
	[Seller_Category_Other_benefits] [nvarchar](250) NULL,
	[Seller_Category_IsActive] [tinyint] NULL,
	[isDisplayToAll] [tinyint] NULL,
	[Client_ID] [int] NULL,
	[Effective_Start_Date] [datetime] NULL,
	[Effective_End_Date] [datetime] NULL,
	[Modified_Date] [datetime] NULL,
	[Comments] [nvarchar](500) NULL,
	[Number_of_Ads_on_Site] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_RegStatus]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_RegStatus](
	[Status_ID] [tinyint] NOT NULL,
	[Product_RegStatusDisplay_Name] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_RegSource]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_RegSource](
	[Source_ID] [tinyint] NOT NULL,
	[Source_Name] [nvarchar](50) NOT NULL,
	[Comments] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Registrations]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Registrations](
	[ProductReg_ID] [bigint] NOT NULL,
	[User_ID] [bigint] NULL,
	[Product_ID] [int] NOT NULL,
	[FeePaid] [int] NULL,
	[Status] [smallint] NOT NULL,
	[ProductRegDate] [nvarchar](50) NOT NULL,
	[ProductRegSource] [int] NOT NULL,
	[Discount_ID] [int] NOT NULL,
	[RegType] [smallint] NULL,
	[isValid] [tinyint] NULL,
	[PayHistory] [nvarchar](1500) NULL,
	[Comments] [nvarchar](1000) NULL,
	[SpecialDiscount] [tinyint] NULL,
	[TransactionNo] [nvarchar](50) NULL,
	[feeReceived_ByOwner] [int] NULL,
	[feeReceiveDate_ByOwner] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Registration]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Registration](
	[User_Name] [nvarchar](50) NOT NULL,
	[ProductReg_ID] [bigint] NOT NULL,
	[DisplayName] [nvarchar](300) NOT NULL,
	[User_Email1] [nvarchar](50) NOT NULL,
	[Mobile_Number] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[Product_RegStatusDisplay_Name] [nvarchar](50) NOT NULL,
	[ProductRegDate] [nvarchar](50) NOT NULL,
	[FeePaid] [int] NULL,
	[Discount_ID] [int] NOT NULL,
	[Source_Name] [nvarchar](50) NOT NULL,
	[TransactionNo] [nvarchar](50) NULL,
	[SpecialDiscount] [tinyint] NULL,
	[PayHistory] [nvarchar](1500) NULL,
	[Comments] [nvarchar](1000) NULL,
	[RegType] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_QuesDiscuss_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_QuesDiscuss_Master](
	[Dis_ID] [int] NULL,
	[Dis_Ques_Type] [char](10) NULL,
	[Dis_Topic_ID] [int] NULL,
	[Dis_Group_ID] [int] NULL,
	[Dis_Ques_ID] [int] NULL,
	[Dis_Total_Posts] [smallint] NULL,
	[Dis_StartedBy_UserID] [int] NULL,
	[Dis_FirstPost_Date] [datetime] NULL,
	[Dis_LastPost_Date] [datetime] NULL,
	[Dis_isActive] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_QuesDiscuss_Detail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_QuesDiscuss_Detail](
	[Dis_ID] [int] NULL,
	[Comment_ID] [int] NULL,
	[Comment_PostedBy] [int] NULL,
	[comment_Date] [datetime] NULL,
	[Comment] [nvarchar](1000) NULL,
	[MailMe] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Price_And_Commission_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Price_And_Commission_Master](
	[PPC_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[Commision_Fixed_Amount] [int] NULL,
	[Commision_Percentage_Amount] [float] NULL,
	[Commission_Applicable] [char](10) NULL,
	[Fixed_Commision_Minimum_Amount] [int] NULL,
	[Fixed_Commision_Maximum_Amount] [int] NULL,
	[IsActive] [tinyint] NULL,
	[Product_Price] [int] NULL,
	[Product_Discount] [int] NULL,
	[Product_Price_effective_Start_Date] [datetime] NULL,
	[Product_Price_effective_End_Date] [datetime] NULL,
	[Modified_Date] [datetime] NULL,
	[Comments] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_PaymentType]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_PaymentType](
	[Pay_Mode] [tinyint] NOT NULL,
	[Payment_Type] [nvarchar](50) NOT NULL,
	[Comments] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Page_Navigation_M]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Page_Navigation_M](
	[NavigationID] [int] NOT NULL,
	[userID] [int] NULL,
	[IPAddress] [nvarchar](250) NULL,
	[fromPage] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Page_Navigation_D]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Page_Navigation_D](
	[NavigationID] [int] NULL,
	[pageName] [nvarchar](400) NULL,
	[timeOfAccess] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Owners]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Owners](
	[OwnerID] [int] NULL,
	[LoginID] [nchar](20) NULL,
	[Password] [nchar](20) NULL,
	[OwnerName] [nvarchar](50) NULL,
	[OwnerCompName] [nvarchar](100) NULL,
	[Address] [nvarchar](250) NULL,
	[isActive] [tinyint] NULL,
	[EmailID_2] [nvarchar](50) NULL,
	[Phone] [nchar](11) NULL,
	[Mobile] [nchar](11) NULL,
	[EmailID_1] [nvarchar](50) NULL,
	[WebSite] [nvarchar](50) NULL,
	[logoPath] [nvarchar](500) NULL,
	[logoPath_Bigger] [nvarchar](500) NULL,
	[isVerified] [tinyint] NULL,
	[isCollegeAdmin] [tinyint] NULL,
	[isProductAdmin] [tinyint] NULL,
	[InstituteIDs] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Hierarchy2_old]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Hierarchy2_old](
	[Product_ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[DisplayName] [nvarchar](300) NOT NULL,
	[Comments] [nvarchar](4000) NULL,
	[isActive] [smallint] NOT NULL,
	[isItem] [smallint] NOT NULL,
	[ECID] [tinyint] NULL,
	[TotalItems] [int] NULL,
	[Product_Code] [nchar](10) NULL,
	[isFreeProduct] [tinyint] NULL,
	[FeeAmount] [int] NULL,
	[discountAmount] [int] NULL,
	[isProduct] [tinyint] NULL,
	[prod_startDate] [datetime] NULL,
	[prod_endDate] [datetime] NULL,
	[pageLink] [nvarchar](200) NULL,
	[ProdType_ID] [int] NULL,
	[ownerClientID] [int] NULL,
	[Complete_description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Hierarchy0]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Hierarchy0](
	[Product_ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[DisplayName] [nvarchar](300) NOT NULL,
	[Comments] [nvarchar](4000) NULL,
	[isActive] [smallint] NOT NULL,
	[isItem] [smallint] NOT NULL,
	[ECID] [tinyint] NULL,
	[TotalItems] [int] NULL,
	[Product_Code] [nchar](10) NULL,
	[isFreeProduct] [tinyint] NULL,
	[FeeAmount] [int] NULL,
	[discountAmount] [int] NULL,
	[isProduct] [tinyint] NULL,
	[prod_startDate] [datetime] NULL,
	[prod_endDate] [datetime] NULL,
	[pageLink] [nvarchar](200) NULL,
	[ProdType_ID] [int] NULL,
	[ownerClientID] [int] NULL,
	[Complete_description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Hierarchy]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Hierarchy](
	[Product_ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[DisplayName] [nvarchar](300) NOT NULL,
	[Comments] [nvarchar](4000) NULL,
	[isActive] [smallint] NOT NULL,
	[isItem] [smallint] NOT NULL,
	[ECID] [tinyint] NULL,
	[TotalItems] [int] NULL,
	[Product_Code] [nchar](10) NULL,
	[isFreeProduct] [tinyint] NULL,
	[FeeAmount] [int] NULL,
	[discountAmount] [int] NULL,
	[isProduct] [tinyint] NULL,
	[prod_startDate] [datetime] NULL,
	[prod_endDate] [datetime] NULL,
	[pageLink] [nvarchar](200) NULL,
	[ProdType_ID] [int] NULL,
	[ownerClientID] [int] NULL,
	[Complete_description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_Topics]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_Topics](
	[Topic_ID] [int] NULL,
	[Topic_Name] [nvarchar](100) NULL,
	[Topic_Desc] [nvarchar](250) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_ResultMaster]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_ResultMaster](
	[ResultMaster_ID] [int] NULL,
	[userID] [int] NULL,
	[isCompleted] [tinyint] NULL,
	[timeRemaining] [int] NULL,
	[testDate] [datetime] NULL,
	[mockTestID] [int] NULL,
	[isResultCalculated] [tinyint] NULL,
	[tMarkObtained] [float] NULL,
	[tNegativeMarks] [float] NULL,
	[iAggregateMarks] [float] NULL,
	[iRank] [int] NULL,
	[iRankToShow] [int] NULL,
	[percentile] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_ResultDetails]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_ResultDetails](
	[ResultMaster_ID] [int] NULL,
	[QuesID] [int] NULL,
	[UserSelection] [smallint] NULL,
	[userID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_Questions]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_Questions](
	[QuestText] [nvarchar](3000) NULL,
	[Opt_A] [nvarchar](1500) NULL,
	[Opt_B] [nvarchar](1500) NULL,
	[Opt_C] [nvarchar](1500) NULL,
	[Opt_D] [nvarchar](1500) NULL,
	[Opt_E] [nvarchar](1500) NULL,
	[Opt_F] [nvarchar](1500) NULL,
	[Ans] [tinyint] NULL,
	[Solution] [nvarchar](3500) NULL,
	[QuesID] [int] NULL,
	[Topic_ID] [int] NULL,
	[isStrictlyFormated] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_PaperSetup]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_PaperSetup](
	[MockTest_ID] [int] NULL,
	[Ques_TopicID] [int] NULL,
	[Ques_ID] [int] NULL,
	[Sequence_No] [int] NULL,
	[Section_No] [int] NULL,
	[Positive_Marks] [float] NULL,
	[Negative_Marks] [float] NULL,
	[QuesLevel_Instructions] [nvarchar](250) NULL,
	[superQuesNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Exam_Papers]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Exam_Papers](
	[Product_ID] [int] NULL,
	[totalQues] [int] NULL,
	[SectionNames] [nvarchar](250) NULL,
	[totalTime_Seconds] [int] NULL,
	[isAutoCalculateResult] [tinyint] NULL,
	[parentID] [int] NULL,
	[isSolutionAvailabel] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Delivery_Tracking_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Delivery_Tracking_Master](
	[State_ID] [int] NULL,
	[Product_Type_ID] [int] NULL,
	[State_Number] [int] NULL,
	[State_Name] [nvarchar](50) NULL,
	[State_Description] [nvarchar](500) NULL,
	[IsActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Delivery_Tracking]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Delivery_Tracking](
	[Delivery_Tracking_ID] [int] NULL,
	[Current_State_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[User_ID] [int] NULL,
	[User_Registration_ID] [int] NULL,
	[Modified_Date] [datetime] NULL,
	[Courier_Comp_Name] [nvarchar](200) NULL,
	[Courier_Number] [nvarchar](50) NULL,
	[Dispatch_Date] [datetime] NULL,
	[isActive] [tinyint] NULL,
	[LinkOfWebSite] [nvarchar](255) NULL,
	[UserName] [nvarchar](100) NULL,
	[password] [nvarchar](50) NULL,
	[Comments] [nvarchar](1000) NULL,
	[expectedDeliveryDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Client_Payment_Summary]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Client_Payment_Summary](
	[Payment_ID] [int] NULL,
	[State_ID] [int] NULL,
	[Transaction_Date] [datetime] NULL,
	[Gross_Paid_Amount] [float] NULL,
	[Comments] [nvarchar](2000) NULL,
	[ClientID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Client_Payment_State_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Client_Payment_State_Master](
	[State_ID] [int] NULL,
	[State_Number] [int] NULL,
	[State_Name] [nvarchar](50) NULL,
	[State_Description] [nvarchar](500) NULL,
	[IsActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Client_Payment_Detailed]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Client_Payment_Detailed](
	[Payment_Detail_ID] [int] NULL,
	[Payment_ID] [int] NULL,
	[Product_ID] [int] NULL,
	[User_registration_ID] [int] NULL,
	[user_ID] [int] NULL,
	[User_PayMode] [int] NULL,
	[Transaction_Date] [datetime] NULL,
	[Actual_Amount_Paid_By_User] [float] NULL,
	[Total_pyament_Processing_Charges] [float] NULL,
	[Total_Selling_Commission] [float] NULL,
	[Other_Deduction] [float] NULL,
	[Other_Deduction_Comment] [nvarchar](250) NULL,
	[PPC_ID] [int] NULL,
	[isCalculated] [tinyint] NULL,
	[Comments] [nvarchar](250) NULL,
	[Payment_State_ID] [int] NULL,
	[Seller_Category_ID] [int] NULL,
	[userTransactionID] [nvarchar](50) NULL,
	[isApprovedByClient] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Books]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Books](
	[Product_ID] [int] NULL,
	[book_Author] [nvarchar](150) NULL,
	[book_Publisher] [nvarchar](150) NULL,
	[book_Edition] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pincode]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pincode](
	[Pin_ID] [int] NULL,
	[City_ID] [int] NULL,
	[Pincode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paidTestsMaster]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paidTestsMaster](
	[paidTestID] [int] NULL,
	[paidTestCode] [nvarchar](50) NULL,
	[PaidTestName] [nvarchar](250) NULL,
	[isActive] [tinyint] NULL,
	[Comments] [nvarchar](500) NULL,
	[typeOfTest] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paidTestsDetail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paidTestsDetail](
	[PaidTestDetailID] [int] NULL,
	[PaidTestDetailName] [nvarchar](250) NULL,
	[Duration] [int] NULL,
	[TestDate] [datetime] NULL,
	[isActive] [tinyint] NULL,
	[Comments] [nvarchar](250) NULL,
	[PaidTestMasterID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paid_User_preEnrol]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paid_User_preEnrol](
	[enrollmentID] [int] NULL,
	[FullName] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[contact] [nvarchar](100) NULL,
	[city] [nvarchar](100) NULL,
	[branch] [nvarchar](100) NULL,
	[payMode] [nvarchar](100) NULL,
	[testMode] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paid_Students]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paid_Students](
	[RegistrationID] [int] NULL,
	[StudentID] [int] NULL,
	[RegisteredByID] [int] NULL,
	[RegistrationDate] [datetime] NULL,
	[TestID] [int] NULL,
	[paymentType] [nchar](10) NULL,
	[paymentDetails] [nvarchar](50) NULL,
	[expectedCenterCityID1] [int] NULL,
	[ActualCenterID] [int] NULL,
	[expectedCenterCityID2] [int] NULL,
	[feeAmount] [int] NULL,
	[TestMode] [nchar](10) NULL,
	[DiscountAmt] [int] NULL,
	[DiscountCode] [nchar](10) NULL,
	[TransactionID] [nvarchar](50) NULL,
	[status] [int] NULL,
	[Bank_Branch_Name] [nvarchar](100) NULL,
	[Bank_TransactionDate] [datetime] NULL,
	[Transaction_Number] [nvarchar](50) NULL,
	[DD_Number] [nvarchar](50) NULL,
	[Cheque_Number] [nvarchar](50) NULL,
	[toBankNameAndAccount] [nvarchar](50) NULL,
	[isSentToCCAvenue] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification](
	[Notification_ID] [int] NULL,
	[EC_ID] [int] NULL,
	[Notification_Msg] [nvarchar](150) NULL,
	[Notification_Date] [datetime] NULL,
	[Notification_Type] [char](1) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logSpaceStats]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logSpaceStats](
	[id] [int] NOT NULL,
	[logDate] [datetime] NULL,
	[databaseName] [nvarchar](128) NOT NULL,
	[logSize] [decimal](18, 5) NULL,
	[logUsed] [decimal](18, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institutions]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institutions](
	[Institute_ID] [int] NULL,
	[Institute_Name] [nvarchar](250) NULL,
	[Institute_Address] [nvarchar](250) NULL,
	[Institute_City_ID] [int] NULL,
	[Institute_State_ID] [int] NULL,
	[Institute_Country_ID] [int] NULL,
	[Institute_Type] [char](50) NULL,
	[Institute_Desc] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] NOT NULL,
	[Context] [varchar](50) NULL,
	[CommentON] [varchar](50) NULL,
	[FeedbackDate] [datetime] NULL,
	[FeedbackComment] [nvarchar](500) NULL,
	[FeedBackUserID] [int] NULL,
	[IsReplied] [tinyint] NULL,
	[IsNew] [tinyint] NULL,
	[emailID] [nvarchar](100) NULL,
	[feedbackFromName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedbackRating]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackRating](
	[ratingID] [int] NULL,
	[ratingName] [nvarchar](50) NULL,
	[ratingDescription] [nvarchar](250) NULL,
	[isActive] [tinyint] NULL,
	[dispSequence] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackQuestions]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackQuestions](
	[feedbackQID] [int] NULL,
	[FeedbackQuestion] [nvarchar](255) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackConfiguration2]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackConfiguration2](
	[configID] [int] NULL,
	[FeedbackQID] [int] NULL,
	[FeedbackRatingIDs] [nvarchar](250) NULL,
	[MappingID] [int] NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackConfiguration1]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackConfiguration1](
	[configID] [int] NULL,
	[DisplayeText] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feed]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed](
	[FeedID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DatePublished] [date] NULL,
	[link] [nvarchar](max) NULL,
	[isValid] [smallint] NULL,
	[Hits] [int] NULL,
	[Category] [int] NULL,
	[DisplayIn] [nvarchar](50) NULL,
	[Hit_Date] [datetime] NULL,
	[Summary] [nvarchar](max) NULL,
 CONSTRAINT [PK_Feed] PRIMARY KEY CLUSTERED 
(
	[FeedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeddbackByUsers]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeddbackByUsers](
	[userFeedbackID] [int] NULL,
	[feedbackConfigID] [int] NULL,
	[feedbackQID] [int] NULL,
	[feedbackRatingID] [int] NULL,
	[UserID] [int] NULL,
	[feedbackDate] [datetime] NULL,
	[collegeID] [int] NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExceptionLog]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Exception] [nvarchar](2500) NOT NULL,
	[URL] [nchar](150) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_ExceptionLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamCategory]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamCategory](
	[ECID] [tinyint] NULL,
	[ECName] [nvarchar](50) NULL,
	[ECDesc] [nvarchar](250) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrance_Exams]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrance_Exams](
	[Exam_ID] [int] NULL,
	[Exam_Name] [nvarchar](200) NULL,
	[Exam_Date] [smalldatetime] NULL,
	[Exam_Form_Submission_Last_Date] [smalldatetime] NULL,
	[Exam_Form_Available_Start_Date] [smalldatetime] NULL,
	[Exam_Official_Website] [nvarchar](200) NULL,
	[Exam_Enquiry_Info] [nvarchar](300) NULL,
	[Exam_Comments] [nvarchar](500) NULL,
	[is_Active] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailing_List]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailing_List](
	[email_id] [int] NULL,
	[email] [nvarchar](250) NULL,
	[lastSent] [datetime] NULL,
	[sent_Count] [int] NULL,
	[ECID] [int] NULL,
	[tmpCounter] [smallint] NULL,
	[CanEmailSend] [tinyint] NULL,
	[isMailSent] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Domain]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email_Domain](
	[Domain_ID] [int] NULL,
	[Domain_Name] [varchar](50) NULL,
	[isValid] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Education_Keywords]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education_Keywords](
	[keyword_ID] [smallint] NULL,
	[keyword_Name] [nvarchar](100) NULL,
	[keyword_Desc] [nvarchar](500) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Education_ID] [int] NULL,
	[Education_Name] [nvarchar](250) NULL,
	[Education_Desc] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discussion_Topics_Detail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion_Topics_Detail](
	[DisTopic_DetailID] [int] NULL,
	[DisTopic_ID] [int] NULL,
	[DisTopic_Desc] [nvarchar](400) NULL,
	[DisTopic_UserID] [int] NULL,
	[DisTopic_isAbuse] [tinyint] NULL,
	[DisTopic_Post_Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discussion_Forum]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discussion_Forum](
	[dis_ID] [bigint] NULL,
	[dis_ParentID] [bigint] NULL,
	[dis_PostedBy_UserID] [bigint] NULL,
	[dis_subject] [nvarchar](500) NULL,
	[dis_Comment] [nvarchar](1000) NULL,
	[dis_PostDate] [datetime] NULL,
	[dis_Type] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIS_Ques_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIS_Ques_Master](
	[Dis_ID] [int] NULL,
	[Dis_Ques_Type] [char](10) NULL,
	[Dis_Topic_ID] [int] NULL,
	[Dis_Group_ID] [int] NULL,
	[Dis_Ques_ID] [int] NULL,
	[Dis_Total_Posts] [smallint] NULL,
	[Dis_StartedBy_UserID] [int] NULL,
	[Dis_FirstPost_Date] [datetime] NULL,
	[Dis_LastPost_Date] [datetime] NULL,
	[Dis_isActive] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIS_Ques_Detail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIS_Ques_Detail](
	[Dis_ID] [int] NULL,
	[Comment_ID] [int] NULL,
	[Comment_PostedBy] [int] NULL,
	[comment_Date] [datetime] NULL,
	[Comment] [nvarchar](1000) NULL,
	[MailMe] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Hierarchy]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Hierarchy](
	[Course_ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[Topic_IDs] [nvarchar](200) NULL,
	[Linkage_ID] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](300) NOT NULL,
	[Comments] [nvarchar](1300) NULL,
	[nActiveQuest] [int] NULL,
	[isActive] [smallint] NOT NULL,
	[isLeaf] [smallint] NOT NULL,
	[PaperLevel] [smallint] NULL,
	[GrandQuesWeigh] [int] NULL,
	[IndepenQuesWeigh] [int] NULL,
	[MatchingQuesWeigh] [int] NULL,
	[ParaQuesWeigh] [int] NULL,
	[fixedPaperIDs] [nvarchar](50) NULL,
	[ECID] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [int] NULL,
	[Country_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[counsellor_WebPage_List]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[counsellor_WebPage_List](
	[counsellor_Main_ID] [int] NULL,
	[counsellor_Item_Id] [int] NULL,
	[counsellor_webpage_id] [int] NULL,
	[counsellor_display_order] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counsellor_Users]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counsellor_Users](
	[User_ID] [int] NULL,
	[Full_Name] [nvarchar](60) NULL,
	[emailID] [nvarchar](100) NULL,
	[PhoneNo] [nvarchar](15) NULL,
	[CountryID] [int] NULL,
	[State_ID] [int] NULL,
	[City_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[counsellor_hierarchy]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[counsellor_hierarchy](
	[Item_ID] [int] NULL,
	[ParentID] [int] NULL,
	[Linkage_ID] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](300) NULL,
	[Comments] [nvarchar](800) NULL,
	[isActive] [smallint] NULL,
	[ECID] [tinyint] NULL,
	[Control_Type] [char](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[counsellor]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[counsellor](
	[counsellor_ID] [smallint] NULL,
	[counsellor_Category] [nvarchar](250) NULL,
	[counsellor_PgName] [nvarchar](300) NULL,
	[counsellor_isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments_On_Questions]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments_On_Questions](
	[comment_ID] [int] NULL,
	[comment_Type] [char](10) NULL,
	[user_Id] [int] NULL,
	[comment_Date] [datetime] NULL,
	[topic_ID] [int] NULL,
	[Group_ID] [int] NULL,
	[Ques_ID] [int] NULL,
	[Answer_Proposed] [smallint] NULL,
	[Comment] [nvarchar](1000) NULL,
	[MailMe] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CollegesList]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CollegesList](
	[CollegeID] [int] NULL,
	[CollegeName] [nvarchar](400) NULL,
	[UniversityID] [nvarchar](300) NULL,
	[CityID] [int] NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[email_Address] [nvarchar](300) NULL,
	[email_College_Personal] [nvarchar](100) NULL,
	[website] [nvarchar](100) NULL,
	[Address] [nvarchar](300) NULL,
	[totalBranches] [smallint] NULL,
	[Status] [nvarchar](150) NULL,
	[ApprovedByIDs] [char](10) NULL,
	[CollegePageName] [nvarchar](500) NULL,
	[Admission_Procedure] [nvarchar](1500) NULL,
	[Placements] [nvarchar](1500) NULL,
	[Tech_Events] [nvarchar](1500) NULL,
	[curricula_Activities] [nvarchar](1500) NULL,
	[about_College] [nvarchar](1500) NULL,
	[isActive] [tinyint] NULL,
	[contact_Person] [nvarchar](100) NULL,
	[visit_Count] [int] NULL,
	[CanEmailSend] [tinyint] NULL,
	[isMailSent] [tinyint] NULL,
	[lastEmailSentDate] [datetime] NULL,
	[emailSentCount] [int] NULL,
	[type1] [nvarchar](50) NULL,
	[type2] [nvarchar](50) NULL,
	[type3] [nvarchar](50) NULL,
	[type4] [nvarchar](50) NULL,
	[isEmailVerified] [tinyint] NULL,
	[ReviewLater] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CollegeCourses]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CollegeCourses](
	[CourseID] [int] NULL,
	[collegeID] [int] NULL,
	[BranchID] [int] NULL,
	[DegreeID] [int] NULL,
	[Intake] [int] NULL,
	[AffiliationIDs] [nvarchar](50) NULL,
	[isActive] [tinyint] NULL,
	[status] [nvarchar](50) NULL,
	[ptft] [nvarchar](50) NULL,
	[keywordID] [varchar](50) NULL,
	[Entrance_Exam_ID] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[College_Course_Approver_Bodies]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[College_Course_Approver_Bodies](
	[body_ID] [smallint] NULL,
	[Body_Name] [nvarchar](50) NULL,
	[Body_Desc] [nvarchar](200) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] NULL,
	[State_ID] [int] NULL,
	[City_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[Branch_Id] [int] NULL,
	[Branch_Name] [nvarchar](400) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutoEmailReplyText]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AutoEmailReplyText](
	[EmailId] [int] NOT NULL,
	[Context] [varchar](300) NULL,
	[Subject] [nvarchar](300) NULL,
	[BeginWith] [nvarchar](200) NULL,
	[Message1] [nvarchar](2000) NULL,
	[Message2] [nvarchar](2000) NULL,
	[Message3] [nvarchar](2000) NULL,
	[MessageFooter] [nvarchar](800) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[attackDetails]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attackDetails](
	[TableName] [nvarchar](50) NULL,
	[ColName] [nvarchar](50) NULL,
	[DateTime] [datetime] NULL,
	[isFromTrigger] [tinyint] NULL,
	[ValueNotInserted] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleUpdateLog]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleUpdateLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[UID] [int] NOT NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_ArticleUpdateLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article_Category]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article_Category](
	[CAT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CAT_NAME] [nvarchar](100) NOT NULL,
	[CAT_DESC] [nvarchar](200) NOT NULL,
	[isActive] [int] NOT NULL,
 CONSTRAINT [PK_Article_Category] PRIMARY KEY CLUSTERED 
(
	[CAT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAT_ID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Post_Date] [datetime] NOT NULL,
	[Content] [varchar](8000) NOT NULL,
	[Hits] [int] NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[Keyword] [nvarchar](255) NOT NULL,
	[Show] [int] NOT NULL,
	[No_Rating] [int] NOT NULL,
	[No_Rates] [int] NOT NULL,
	[Summary] [nvarchar](500) NOT NULL,
	[Total_Comments] [int] NOT NULL,
	[UID] [int] NOT NULL,
	[Update_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AllUsers_Experience]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers_Experience](
	[UserID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[OrgName] [nvarchar](150) NULL,
	[Designation] [nvarchar](100) NULL,
	[Salary] [int] NULL,
	[WorkDescription] [nvarchar](1500) NULL,
	[RolesAndResponsibility] [nvarchar](1500) NULL,
	[TotalExpMonths] [int] NULL,
	[ExpId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllUsers_Education]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers_Education](
	[UserID] [int] NULL,
	[SS_Percentage] [float] NULL,
	[SS_Passing_Year] [int] NULL,
	[SS_Board_Name] [nvarchar](100) NULL,
	[SS_Name] [nvarchar](100) NULL,
	[SSS_Percentage] [float] NULL,
	[SSS_Passing_Year] [int] NULL,
	[SSS_Subject_1] [nvarchar](50) NULL,
	[SSS_Subject_2] [nvarchar](50) NULL,
	[SSS_Subject_3] [nvarchar](50) NULL,
	[SSS_Board_Name] [nvarchar](100) NULL,
	[SSS_Name] [nvarchar](100) NULL,
	[Bachelor_Degree] [nvarchar](50) NULL,
	[Bachelor_Percentage] [float] NULL,
	[Bachelor_Subject_1] [nvarchar](50) NULL,
	[Bachelor_Subject_2] [nvarchar](50) NULL,
	[Bachelor_Subject_3] [nvarchar](50) NULL,
	[Bachelor_Passing_year] [int] NULL,
	[Bachelor_College_Name] [nvarchar](100) NULL,
	[Bachelor_Univerisity] [nvarchar](100) NULL,
	[Master_Degree] [nvarchar](50) NULL,
	[Master_Percentage] [float] NULL,
	[Master_Subject_1] [nvarchar](50) NULL,
	[Master_Subject_2] [nvarchar](50) NULL,
	[Master_Subject_3] [nvarchar](50) NULL,
	[Master_College] [nvarchar](100) NULL,
	[Master_University] [nvarchar](100) NULL,
	[Achievements] [nvarchar](1000) NULL,
	[About_Yourself] [nvarchar](1000) NULL,
	[Cover_Letter] [nvarchar](1000) NULL,
	[LastUpdated] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllUsers_Degrees]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers_Degrees](
	[P_Id] [int] NULL,
	[User_Id] [int] NULL,
	[Degree_ID] [int] NULL,
	[Specilization_ID] [int] NULL,
	[DegreePassout_Year] [int] NULL,
	[Degree_Percentage] [float] NULL,
	[Degree_CollegeName] [nvarchar](100) NULL,
	[Degree_UniName] [nvarchar](100) NULL,
	[Comments] [nvarchar](200) NULL,
	[isActive] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllUsers_BioData]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers_BioData](
	[UserID] [int] NULL,
	[SS_Percentage] [float] NULL,
	[SS_Passing_Year] [int] NULL,
	[SS_Board_Name] [nvarchar](100) NULL,
	[SS_Name] [nvarchar](100) NULL,
	[SSS_Percentage] [float] NULL,
	[SSS_Passing_Year] [int] NULL,
	[SSS_Major_Subjects] [nvarchar](150) NULL,
	[SSS_Board_Name] [nvarchar](100) NULL,
	[SSS_Name] [nvarchar](100) NULL,
	[Achievements] [nvarchar](1000) NULL,
	[About_Yourself] [nvarchar](1000) NULL,
	[Cover_Letter] [nvarchar](1000) NULL,
	[LastUpdated] [datetime] NULL,
	[cvStatus] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllUsers_Admission_Applications]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers_Admission_Applications](
	[UserID] [int] NULL,
	[CollegeID] [int] NULL,
	[CourseID] [int] NULL,
	[ApplyDate] [datetime] NULL,
	[isMailSentToCollege] [tinyint] NULL,
	[Priority] [int] NULL,
	[ApplicationID] [int] NULL,
	[Application_Type] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllUsers]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllUsers](
	[UID] [int] NOT NULL,
	[uname] [nvarchar](50) NOT NULL,
	[pswd] [nvarchar](50) NOT NULL,
	[isActive] [smallint] NOT NULL,
	[UserType] [smallint] NOT NULL,
	[Email1] [nvarchar](80) NULL,
	[isEmail1Verified] [smallint] NULL,
	[Email2] [nvarchar](80) NULL,
	[isEmail2Verified] [smallint] NULL,
	[mobile] [nvarchar](20) NULL,
	[phone] [int] NULL,
	[fName] [nvarchar](80) NULL,
	[lName] [nvarchar](80) NULL,
	[Address] [nvarchar](80) NULL,
	[CityID] [int] NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[PIN] [int] NULL,
	[DOB] [datetime] NULL,
	[Sex] [smallint] NULL,
	[EducationID] [smallint] NULL,
	[SpecializationID] [smallint] NULL,
	[CompanyID] [smallint] NULL,
	[ECPreference] [nvarchar](50) NULL,
	[canEmailSend] [smallint] NULL,
	[canEmailSend_NewJob] [smallint] NULL,
	[canEmailSend_NewFeature] [smallint] NULL,
	[canEmailSend_AdmissionNotif] [smallint] NULL,
	[canEmailSend_NewsLetter] [smallint] NULL,
	[RegistrationDate] [datetime] NULL,
	[lastlogin] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[LoginCount] [int] NULL,
	[isCurrentMailSent] [smallint] NULL,
	[AboutMe] [nvarchar](max) NULL,
	[ProfilePercent] [smallint] NULL,
	[Photo] [nvarchar](150) NULL,
	[Website] [nvarchar](100) NULL,
	[Hits] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum_Hierarchy]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum_Hierarchy](
	[Hierarchy_ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[ForumIDs] [nvarchar](200) NULL,
	[Linkage_ID] [nvarchar](200) NULL,
	[Forum_Subject] [nvarchar](300) NOT NULL,
	[Forum_Body] [nvarchar](1300) NULL,
	[isActive] [smallint] NOT NULL,
	[isForum] [smallint] NOT NULL,
	[Owner_ID] [int] NULL,
	[Forum_Start_Date] [datetime] NULL,
	[Total_Posts] [int] NULL,
	[Most_Recent_Post_Date] [datetime] NULL,
	[isDisplayOnMainPage] [tinyint] NULL,
	[target_WebPageName] [nvarchar](250) NULL,
	[permanent_Emailing_Members] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum_Detail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum_Detail](
	[Detail_ID] [int] NULL,
	[Forum_ID] [int] NULL,
	[ParentID] [int] NULL,
	[PostedBy_UserID] [int] NULL,
	[Post_Subject] [nvarchar](250) NULL,
	[Post_Detail] [nvarchar](1000) NULL,
	[Post_Date] [datetime] NULL,
	[Post_isReportedAbused] [tinyint] NULL,
	[Post_Importance] [smallint] NULL,
	[IsActive] [tinyint] NULL,
	[isDisplayOnMainPage] [tinyint] NULL,
	[Rating_Givenby_UserID] [int] NULL,
	[Rating_Value] [smallint] NULL,
	[TypeOfPostID] [smallint] NULL,
	[Total_Replies] [int] NULL,
	[Total_Views] [int] NULL,
	[LastPostDate] [datetime] NULL,
	[LastPostByUserID] [int] NULL,
	[ThreadID] [int] NULL,
	[MailMe] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixed_Paper_Master]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixed_Paper_Master](
	[Fixed_Paper_ID] [smallint] NULL,
	[Fixed_Paper_Name] [nvarchar](250) NULL,
	[Fixed_Paper_Desc] [nvarchar](500) NULL,
	[Fixed_Paper_Total_Ques] [smallint] NULL,
	[Fixed_Paper_Total_Time] [smallint] NULL,
	[Fixed_Paper_EC] [nvarchar](300) NULL,
	[Fixed_Paper_isActive] [tinyint] NULL,
	[Fixed_Paper_Created_On] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixed_Paper_Detail]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixed_Paper_Detail](
	[Fixed_Paper_ID] [smallint] NULL,
	[Fixed_Paper_UnitID] [smallint] NULL,
	[Fixed_Paper_QuesID] [int] NULL,
	[Fixed_Paper_isGroup] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Year]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Year](
	[Year_ID] [smallint] NULL,
	[Year] [char](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webPageList]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webPageList](
	[PageID] [int] NULL,
	[PathName] [nvarchar](100) NULL,
	[PageName] [nvarchar](200) NULL,
	[DisplayText] [nvarchar](300) NULL,
	[SearchKeyWords] [nvarchar](200) NULL,
	[isActive] [tinyint] NULL,
	[GoogleSearchCount] [int] NULL,
	[mailSearchCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTestHistory]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTestHistory](
	[TestId] [int] NULL,
	[UserId] [int] NULL,
	[DateTime] [datetime] NULL,
	[Toughness] [smallint] NULL,
	[Duration] [smallint] NULL,
	[HierarchyInfo] [nvarchar](1000) NULL,
	[TopicIDs] [nvarchar](100) NULL,
	[CorrectAns] [nvarchar](1000) NULL,
	[InCorrectAns] [nvarchar](1000) NULL,
	[unAttempted] [nvarchar](1000) NULL,
	[TotalQues] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specilization]    Script Date: 01/06/2012 13:23:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specilization](
	[Specilization_ID] [int] NULL,
	[Specilization_Name] [nvarchar](250) NULL,
	[Specilization_Desc] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spCheckUsernameAvailabilityAjax]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCheckUsernameAvailabilityAjax]

@Username varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Count(*) Col1 
	FROM 
		dbo.Allusers WITH (NOLOCK) 
	WHERE 
		uName = @Username


END
GO
/****** Object:  StoredProcedure [dbo].[spCheckEmailIfExistsAjax]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCheckEmailIfExistsAjax]

@Email varchar(50)

AS
BEGIN

	SET NOCOUNT ON;
     
    SELECT COUNT(*) Col1 
	FROM 
		dbo.AllUsers WITH (NOLOCK) 
	WHERE 
		Email1 = @Email
		
END
GO
/****** Object:  View [dbo].[usersview]    Script Date: 01/06/2012 13:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[usersview]
AS
SELECT     dbo.AllUsers.UID AS Expr1, dbo.City.City_Name, dbo.AllUsers.UID, dbo.AllUsers.uname, dbo.AllUsers.pswd, dbo.AllUsers.isActive, dbo.AllUsers.UserType, 
                      dbo.AllUsers.Email1, dbo.AllUsers.isEmail1Verified, dbo.AllUsers.Email2, dbo.AllUsers.isEmail2Verified, dbo.AllUsers.mobile, dbo.AllUsers.phone, 
                      dbo.AllUsers.fName, dbo.AllUsers.lName, dbo.AllUsers.Address, dbo.AllUsers.StateID, dbo.AllUsers.CountryID, dbo.AllUsers.PIN, dbo.AllUsers.DOB, 
                      dbo.AllUsers.Sex, dbo.AllUsers.EducationID, dbo.AllUsers.SpecializationID, dbo.AllUsers.CompanyID, dbo.AllUsers.ECPreference, dbo.AllUsers.canEmailSend, 
                      dbo.AllUsers.canEmailSend_NewJob, dbo.AllUsers.canEmailSend_NewFeature, dbo.AllUsers.canEmailSend_AdmissionNotif, dbo.AllUsers.canEmailSend_NewsLetter, 
                      dbo.AllUsers.RegistrationDate, dbo.AllUsers.lastlogin, dbo.AllUsers.LastUpdated, dbo.AllUsers.LoginCount, dbo.AllUsers.isCurrentMailSent, dbo.AllUsers.AboutMe, 
                      dbo.AllUsers.ProfilePercent, dbo.AllUsers.Photo, dbo.AllUsers.Website, dbo.AllUsers.Hits, dbo.AllUsers.uname AS Expr2, dbo.AllUsers.pswd AS Expr3, 
                      dbo.AllUsers.isActive AS Expr4, dbo.AllUsers.UserType AS Expr5, dbo.AllUsers.Email1 AS Expr6, dbo.AllUsers.isEmail1Verified AS Expr7, 
                      dbo.AllUsers.Email2 AS Expr8, dbo.AllUsers.isEmail2Verified AS Expr9, dbo.AllUsers.mobile AS Expr10, dbo.AllUsers.phone AS Expr11, 
                      dbo.AllUsers.fName AS Expr12, dbo.AllUsers.lName AS Expr13, dbo.AllUsers.Address AS Expr14, dbo.AllUsers.StateID AS Expr16, dbo.AllUsers.CountryID AS Expr17, 
                      dbo.AllUsers.PIN AS Expr18, dbo.AllUsers.DOB AS Expr19, dbo.AllUsers.Sex AS Expr20, dbo.AllUsers.ECPreference AS Expr24, 
                      dbo.AllUsers.canEmailSend AS Expr25, dbo.AllUsers.canEmailSend_NewJob AS Expr26, dbo.AllUsers.canEmailSend_NewFeature AS Expr27, 
                      dbo.AllUsers.canEmailSend_AdmissionNotif AS Expr28, dbo.AllUsers.canEmailSend_NewsLetter AS Expr29, dbo.AllUsers.RegistrationDate AS Expr30, 
                      dbo.AllUsers.lastlogin AS Expr31, dbo.AllUsers.LastUpdated AS Expr32, dbo.AllUsers.LoginCount AS Expr33, dbo.AllUsers.isCurrentMailSent AS Expr34, 
                      dbo.AllUsers.AboutMe AS Expr35, dbo.AllUsers.ProfilePercent AS Expr36, dbo.AllUsers.Photo AS Expr37, dbo.AllUsers.Website AS Expr38, 
                      dbo.AllUsers.Hits AS Expr39, dbo.Country.Country_Name, dbo.States.State_Name
FROM         dbo.AllUsers INNER JOIN
                      dbo.City ON dbo.AllUsers.CityID = dbo.City.City_ID INNER JOIN
                      dbo.Country ON dbo.AllUsers.CountryID = dbo.Country.Country_ID INNER JOIN
                      dbo.States ON dbo.AllUsers.StateID = dbo.States.State_Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[6] 2[45] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AllUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "City"
            Begin Extent = 
               Top = 6
               Left = 306
               Bottom = 110
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country"
            Begin Extent = 
               Top = 6
               Left = 504
               Bottom = 95
               Right = 665
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 198
               Left = 38
               Bottom = 302
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'usersview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'usersview'
GO
/****** Object:  StoredProcedure [dbo].[FinalizeArticleSubmission]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FinalizeArticleSubmission]

@ID int

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE Article SET Show = 1, Post_Date = GETDATE()
    Where ID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[AdminManagerGetAnnouncement]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdminManagerGetAnnouncement]

@Letter char(1) = '',
@Category int = '',
@Tab int = '',
@Find varchar(50) = '',
@Top int = '',
@Year int = '',
@Month int = '',
@Image int = '',
@LastViewed int = '',
@PageIndex int = 1,
@PageSize int = 20


AS
BEGIN

DECLARE @StartRow int
DECLARE @EndRow int

SET @StartRow = (@PageSize * (@PageIndex - 1))  + 1  
SET @EndRow = @PageSize * @PageIndex + 1

IF (@LastViewed <> '')
    BEGIN

    DECLARE @NumDays int

    IF (@LastViewed = 1)
        BEGIN
	        SET @NumDays = 1 -- 1 day
        END
    ELSE IF (@LastViewed = 2) 
        BEGIN
	        SET @NumDays = 2 -- 2 days
        END
    ELSE IF (@LastViewed = 3)
        BEGIN
	        SET @NumDays = 3 -- 3 days
        END
    ELSE IF (@LastViewed = 4)
        BEGIN
	        SET @NumDays = 4 -- 4 days
        END
    ELSE IF (@LastViewed = 5)
        BEGIN
	        SET @NumDays = 5 -- 5 days
        END
    ELSE IF (@LastViewed = 6)
        BEGIN
	        SET @NumDays = 6 -- 6 days
        END
    ELSE IF (@LastViewed = 7)
        BEGIN
	        SET @NumDays = 7 -- 1 week
        END
    ELSE IF (@LastViewed = 14)
        BEGIN
	       SET @NumDays = 14 -- 2 weeks
        END
    ELSE IF (@LastViewed = 30)
        BEGIN
	       SET @NumDays = 30 -- 1 month
        END
    ELSE
        BEGIN
	        SET @NumDays = 1 -- default to 1 day
        END
END

DECLARE @Letter_Val varchar(50)
DECLARE @Category_Val int
DECLARE @Tab_Val int
DECLARE @Find_Val varchar(50)
DECLARE @Top_Val int
DECLARE @Year_Val int
DECLARE @Month_Val int
DECLARE @Date_Val int
DECLARE @RecipeImage_Val int
DECLARE @LastViewed_Val int


IF (@Letter <> '')
   BEGIN
		SET @Letter_Val = @Letter
   END
ELSE
   BEGIN
		SET @Letter_Val = NULL
   END

IF (@Category <> '')
	BEGIN
		SET @Category_Val = @Category
	END
ELSE
	BEGIN
		SET @Category_Val = NULL
	END

IF (@Tab <> '')
	BEGIN
		SET @Tab_Val = @Tab
	END
ELSE
	BEGIN
		SET @Tab_Val = NULL
	END

IF (@Find <> '')
	BEGIN
		SET @Find_Val = @Find
	END
ELSE
	BEGIN
		SET @Find_Val = NULL
	END

IF (@Top <> '')
	BEGIN
		SET @Top_Val = @Top
	END
ELSE
	BEGIN
		SET @Top_Val = NULL
	END

	
IF (@Year <> '' AND @Month <> '')
	BEGIN
        SET @Date_Val = 1
		SET @Year_Val = @Year
		SET @Month_Val = @Month
	END
ELSE
	BEGIN
		SET @Date_Val = NULL
		SET @Year_Val = NULL
		SET @Month_Val = NULL
	END

/*IF (@RecipeImage <> '')
	BEGIN
		SET @RecipeImage_Val = @RecipeImage
	END
ELSE
	BEGIN
		SET @RecipeImage_Val = NULL
	END
*/
IF (@LastViewed <> '')
	BEGIN
		SET @LastViewed_Val = @LastViewed
	END
ELSE
	BEGIN
		SET @LastViewed_Val = NULL
	END


DECLARE @MaxHits int
SET @MaxHits = 1000

DECLARE @CountRecord int

--Returns total count
SELECT @CountRecord = Count(*) FROM dbo.Feed WITH (NOLOCK) 
	WHERE 
	(@Find_Val IS NOT NULL AND [Title] LIKE '%' + COALESCE(@Find, [Title]) + '%') OR
	(@Letter_Val IS NOT NULL AND [Title] LIKE COALESCE(@Letter, [Title]) + '%') OR
	(@Category_Val IS NOT NULL AND Category = @Category) OR
	(@Tab_Val IS NOT NULL AND isValid = @Tab_Val) OR
	(@Top_Val IS NOT NULL AND Hits > @MaxHits) OR
	(@Date_Val IS NOT NULL AND (DATEPART([year], DatePublished) = @Year AND DATEPART([month], DatePublished) = @Month)) OR
	/*(@RecipeImage_Val IS NOT NULL AND (RecipeImage IS NOT NULL AND LEN(RecipeImage) > 1)) OR*/
	(@LastViewed_Val IS NOT NULL AND HIT_DATE >= DATEADD(day, - @NumDays, GETDATE()) OR
    (@Letter_Val IS NULL AND @Category_Val IS NULL AND @Find_Val IS NULL AND @Tab_Val IS NULL AND @Top_Val IS NULL 
    AND @Year_Val IS NULL AND @Month_Val IS NULL /*AND @RecipeImage_Val IS NULL*/ AND @LastViewed_Val IS NULL))


 SET NOCOUNT ON;

 WITH Feed AS
   (
	 SELECT
	   ROW_NUMBER() OVER 
		 (
			ORDER BY FeedID
		 ) AS RowNumber, 
		   FeedID, 
		   Category, 
		   [Title], 
		   Author, 
		   DatePublished, 
		   HITS,
           HIT_DATE,
           /*RecipeImage,*/
		   @CountRecord AS RCount
	  FROM dbo.Feed WITH (NOLOCK) 
		  WHERE 
		  (@Find_Val IS NOT NULL AND [Title] LIKE '%' + COALESCE(@Find, [Title]) + '%') OR
		  (@Letter_Val IS NOT NULL AND [Title] LIKE COALESCE(@Letter, [Title]) + '%') OR
		  (@Category_Val IS NOT NULL AND Category = @Category) OR
		  (@Tab_Val IS NOT NULL AND isValid = @Tab_Val) OR
		  (@Top_Val IS NOT NULL AND Hits >= @MaxHits) OR
		  (@Date_Val IS NOT NULL AND (DATEPART([year], DatePublished) = @Year AND DATEPART([month], DatePublished) = @Month)) OR
		  /*(@RecipeImage_Val IS NOT NULL AND (RecipeImage IS NOT NULL AND LEN(RecipeImage) > 1)) OR*/
		  (@LastViewed_Val IS NOT NULL AND HIT_DATE >= DATEADD(day, - @NumDays, GETDATE()) 
		  OR --Returns no filter record set
          (@Letter_Val IS NULL AND @Category_Val IS NULL AND @Find_Val IS NULL AND @Tab_Val IS NULL AND @Top_Val IS NULL 
		  AND @Year_Val IS NULL AND @Month_Val IS NULL /*AND @RecipeImage_Val IS NULL*/ AND @LastViewed_Val IS NULL))
	 )
	 -- Statement that executes the CTE
	 SELECT a.*
	 FROM
		   Feed a
	 WHERE
		   a.RowNumber BETWEEN @StartRow AND @EndRow - 1
	 ORDER BY
		   a.RowNumber

END
GO
/****** Object:  StoredProcedure [dbo].[AdminAddNewArticleCategory]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|7|0|C:\Users\Ajay\AppData\Local\Temp\~vs65C0.sql

CREATE PROCEDURE [dbo].[AdminAddNewArticleCategory] 

@CatName varchar(100),
@CatDesc varchar(200),
@isValid int

AS

declare @ErrorCode int

set @ErrorCode = @@error

BEGIN TRANSACTION

IF ( @ErrorCode = 0 )

BEGIN

	-- Insert
	INSERT INTO Article_Category (CAT_NAME, CAT_DESC, isActive)
		VALUES(@CatName, @CatDesc, @isValid)

END

IF ( @ErrorCode = 0 )
	COMMIT TRANSACTION
ELSE
	ROLLBACK TRANSACTION

RETURN @ErrorCode
GO
/****** Object:  StoredProcedure [dbo].[AddNewFeed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddNewFeed] 

@Title varchar(50),
@Author varchar(50),
@Description nvarchar(MAX),
@Summary nvarchar(MAX),
@Link  varchar(50),
@DisplayIn    varchar(50),
@Category	   smallint,
@isValid     smallint

AS

DECLARE @ErrorCode int

SET @ErrorCode = @@error

BEGIN TRANSACTION

IF ( @ErrorCode = 0 )

BEGIN

INSERT INTO dbo.Feed
(
	Author,
	Title,
	Description,
	Summary,
	link,
	DisplayIn,
	Category,
	DatePublished,
	isValid,
	Hits
)
VALUES
(
	@Author,
	@Title,
	@Description,
	@Summary,
	@Link,
	@DisplayIn,
	@Category,
	GETDATE(),
	@isValid,
	0
)

END


IF ( @ErrorCode = 0 )
	COMMIT TRANSACTION
ELSE
	ROLLBACK TRANSACTION

RETURN @ErrorCode
GO
/****** Object:  StoredProcedure [dbo].[GetXMLTopFeed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetXMLTopFeed]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Top 20 FeedID, 
			Title, 
			Author, 
			Summary,
			DatePublished,
			link
			
	FROM 
		dbo.Feed WITH (NOLOCK)
	
	
	ORDER BY DatePublished DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetXMLNewFeed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetXMLNewFeed]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Top 20 FeedID, 
			Title, 
			Author, 
			Summary,
			DatePublished,
			link
			
	FROM 
		dbo.Feed WITH (NOLOCK)
	
	
	ORDER BY DatePublished DESC

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCategoryArticleCount]    Script Date: 01/06/2012 13:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetCategoryArticleCount] 
(
@CatId int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @GetCount int

	Set @GetCount = (SELECT Count(*) As RecCount from Article
    Where Show = 1 AND CAT_ID = @CatId)

	-- Return the result of the function
	RETURN @GetCount

END
GO
/****** Object:  StoredProcedure [dbo].[GetArticleDetails]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticleDetails] 

@AID int,
@Show int

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Show_Val int

	IF (@Show = 1)
		BEGIN
		   SET @Show_Val = 1
		END
	ELSE
		BEGIN
		   SET @Show_Val = NULL
		END

	SELECT a.ID,
		   a.CAT_ID,
		   b.CAT_NAME, 
		   a.Title, 
		   a.Post_Date, 
		   a.Content, 
		   a.Hits, 
		   a.Author,
		   a.Keyword,
		   a.No_Rates, 
		   CAST((1.0 * a.No_Rating/a.No_Rates) as decimal(2,1)) as Rates,
		   a.Summary,
		   a.Total_Comments,
		   a.UID       
		   FROM 
				dbo.Article a WITH (NOLOCK) 
		   INNER JOIN 
				dbo.Article_Category b WITH (NOLOCK)
		   ON 
				a.CAT_ID = b.CAT_ID
		   WHERE
		   (@Show_Val IS NOT NULL AND (a.Show = 1 AND a.ID = @AID)) OR
		   (@Show_Val IS NULL AND a.ID = @AID)

	IF (@Show_Val IS NOT NULL)
		BEGIN
		   -- Update article hit counter
		   UPDATE dbo.Article set Hits = Hits + 1 WHERE ID = @AID
		END

END
GO
/****** Object:  StoredProcedure [dbo].[GetArticleCategoryList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticleCategoryList] 

AS
BEGIN

	SET NOCOUNT ON;

     SELECT *,
		(
		  SELECT COUNT (*)  
		  FROM 
			Article WITH (NOLOCK) 
		  WHERE 
	        Article.CAT_ID = Article_Category.CAT_ID AND Show = 1
		) AS REC_COUNT 
     FROM 
		Article_Category WITH (NOLOCK)
     ORDER BY 
		CAT_NAME ASC

END
GO
/****** Object:  StoredProcedure [dbo].[GetArticleCategoryDetails]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetArticleCategoryDetails] 

@CATID int

AS
BEGIN

	SET NOCOUNT ON;

     SELECT * 		 
     FROM 
		Article_Category WITH (NOLOCK)
     WHERE
		CAT_ID = @CATID

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateFeed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateFeed] 

@Title varchar(50),
@Author varchar(50),
@Description nvarchar(MAX),
@Summary nvarchar(MAX),
@Link  varchar(50),
@Category	   smallint,
@isValid     smallint,
@FeedID smallint,
@DisplayIn varchar(50)

AS

DECLARE @ErrorCode int

SET @ErrorCode = @@error

BEGIN TRANSACTION

IF ( @ErrorCode = 0 )

BEGIN

SET NOCOUNT ON;
UPDATE dbo.Feed SET Author = @Author, Title = @Title, Description = @Description, Summary = @Summary, link = @Link, Category = @Category, isValid = @isValid, DisplayIn = @DisplayIn WHERE FeedID = @FeedID

END


IF ( @ErrorCode = 0 )
	COMMIT TRANSACTION
ELSE
	ROLLBACK TRANSACTION

RETURN @ErrorCode
GO
/****** Object:  StoredProcedure [dbo].[UpdateArticleCategory]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateArticleCategory]

@Catid int,
@CatName varchar(100),
@CatDesc varchar(200),
@isValid int

AS
BEGIN

	SET NOCOUNT ON;
    
    Update Article_Category Set CAT_NAME = @CatName, CAT_DESC = @CatDesc, isActive = @isValid Where CAT_ID = @Catid

 
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectCountryList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectCountryList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Country_ID, Country_Name FROM Country
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectCityList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectCityList]

@StateID int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT City_ID, City_Name FROM City
	WHERE State_ID = @StateID
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectAdminUserLogin]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectAdminUserLogin]

@Username varchar(50),
@UserPassword varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Count(*) col1 FROM dbo.usersadmin WITH (NOLOCK) WHERE uname = @Username AND [password] = @UserPassword

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertUser] 

@Username varchar(50),
@Password varchar(50),
@Firstname varchar(50),
@Lastname  varchar(50),
@Email    varchar(50),
@City	   smallint,
@State     smallint,
@Country   smallint,
@Sex   smallint,
@DOB       Datetime,
@canEmailSend     int,
@EC      varchar(50),
@Mobile		Bigint,
@Address	varchar(80),
@Website        varchar(100),
@AboutMe        varchar(1000),
@Photo          varchar(150)


AS

BEGIN

DECLARE @maxid int
DECLARE @maxidvalue int
DECLARE @WebsiteValue varchar(100)
DECLARE @AboutMeValue varchar(1000)
DECLARE @PhotoValue varchar(150)

IF (@Website = '')
  BEGIN
    SET @WebsiteValue = 'NA'
  END
ELSE
  BEGIN
    SET @WebsiteValue = @Website
  END

IF (@AboutMe = '')
  BEGIN
    SET @AboutMeValue = 'NA'
  END
ELSE
  BEGIN
    SET @AboutMeValue = @AboutMe
  END

IF (@Photo = '')
  BEGIN
    SET @PhotoValue = ''
  END
ELSE
  BEGIN
    SET @PhotoValue = @Photo
  END
  
SELECT @maxid = (max(UID) + 1) from AllUsers

IF @maxid = NULL
BEGIN
	SET @maxidvalue = 0
END
ELSE
BEGIN
	SET @maxidvalue = @maxid
END
INSERT INTO dbo.AllUsers
(
	uname,
	pswd,
	isActive,
	UserType,
	UID,
	fName,
	lName,
	Email1,
	CityID,
	StateID,
	CountryID,
	Sex,
	DOB,
	canEmailSend,
	ECPreference,
	mobile,
	Address,
	Website,
	AboutMe,
	RegistrationDate,
	Photo
)
VALUES
(
	@Username,
	@Password,
	1,
	1,
	@maxidvalue,
	@Firstname,
	@Lastname,
	@Email,
	@City,
	@State,
	@Country,
	@Sex,
	@DOB,
	@canEmailSend,
	@EC,
	@Mobile,
	@Address,
	@WebsiteValue,
	@AboutMeValue,
	GETDATE(),
	@PhotoValue
)

END



RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[spInsertExceptionError]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertExceptionError]

@URL varchar(100),
@Exception varchar(1000)

AS

SET NOCOUNT ON;

INSERT INTO dbo.ExceptionLog (URL, Exception, Date)
VALUES (@URL, @Exception, GETDATE())

Return 0
GO
/****** Object:  StoredProcedure [dbo].[spInsertArticle]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertArticle]

@UserID int,
@Title varchar(200),
@Content varchar(8000),
@Author varchar(50),
@CAT_ID int,
@Keyword varchar(100),
@Summary varchar(500)

AS

DECLARE @ErrorCode int

SET @ErrorCode = @@error

BEGIN TRANSACTION

IF ( @ErrorCode = 0 )

BEGIN

	IF Exists (SELECT CAT_ID FROM dbo.Article_Category WITH (NOLOCK) WHERE CAT_ID = @CAT_ID)
	BEGIN

		INSERT INTO Article ([UID],Title,[Content],Author,CAT_ID,Keyword,Summary)
			VALUES(
				@UserID,
				@Title,
				@Content,
				@Author,
				@CAT_ID,
				@Keyword,
				@Summary
				)
	END

END

IF ( @ErrorCode = 0 )
	COMMIT TRANSACTION
ELSE
	ROLLBACK TRANSACTION

RETURN @ErrorCode
GO
/****** Object:  StoredProcedure [dbo].[spGetUserType]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUserType] 

@Username varchar(50),
@UserPassword varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Title 
	FROM 
		dbo.AllUsers INNER JOIN User_Type 
	ON
		AllUsers.UserType = User_Type.ID
	WHERE 
		uname = @Username AND [pswd] = @UserPassword

END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserPhoto]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUserPhoto] 

@Username varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Photo 
	FROM 
		dbo.AllUsers 
	WHERE 
		uname = @Username

END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserID]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUserID] 

@Username varchar(50),
@UserPassword varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT [UID] 
	FROM 
		dbo.AllUsers WITH (NOLOCK) 
	WHERE 
		uname = @Username AND [pswd] = @UserPassword

END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserEmail]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetUserEmail] 

@Username varchar(50),
@UserPassword varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT Email1 
	FROM 
		dbo.AllUsers 
	WHERE 
		uname = @Username AND [pswd] = @UserPassword

END
GO
/****** Object:  StoredProcedure [dbo].[spGetFeedId]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFeedId] 

@Link varchar(50),
@Category int,
@State int

AS
BEGIN

	SET NOCOUNT ON;

	SELECT [FeedID] 
	FROM 
		dbo.Feed WITH (NOLOCK) 
	WHERE 
		link = @Link AND Category = @Category AND isValid = @State

END
GO
/****** Object:  StoredProcedure [dbo].[spGetFeedDuplicacy]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetFeedDuplicacy] 

@Link varchar(50),
@Category int

AS
BEGIN

	SET NOCOUNT ON;

	SELECT [FeedID] 
	FROM 
		dbo.Feed WITH (NOLOCK) 
	WHERE 
		link = @Link AND Category = @Category

END
GO
/****** Object:  StoredProcedure [dbo].[spVerifyUserLoginCredential]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spVerifyUserLoginCredential]

@Username varchar(50),
@UserPassword varchar(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT COUNT(*) AS UCount FROM dbo.AllUsers WITH (NOLOCK) WHERE uname = @Username AND pswd = @UserPassword

END
GO
/****** Object:  StoredProcedure [dbo].[spValidateUsernameAndEmailOnRegistration]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spValidateUsernameAndEmailOnRegistration] 

@UserName varchar(50),
@Email varchar(50)

AS
BEGIN

--This sp will validate the username and email during registration.
--Preventing duplicate username and email.

IF Exists (SELECT uname, Email1 FROM dbo.AllUsers WITH (NOLOCK) WHERE uname = @UserName AND Email1 = @Email)
	BEGIN
		SELECT 'USERNAME AND EMAIL ALREADY TAKEN' as Result
	END
ELSE IF Exists (SELECT uname, Email1 FROM dbo.AllUsers WITH (NOLOCK) WHERE uname = @UserName)
	BEGIN
		SELECT 'USERNAME ALREADY TAKEN' as Result
	END
ELSE IF Exists (SELECT uname, Email1 FROM dbo.AllUsers WITH (NOLOCK) WHERE Email1 = @Email)
	BEGIN
		SELECT 'EMAIL ALREADY TAKEN' as Result
	END
ELSE
	BEGIN
		SELECT 'GOOD' as Result
	END

END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateArticle]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateArticle]

@UserID int,
@AID int,
@Title varchar(200),
@Content varchar(8000),
@CAT_ID int,
@Keyword varchar(100),
@Summary varchar(500),
@Show int

AS

DECLARE @ErrorCode int

BEGIN

--Make sure it belongs to the right owner.
IF Exists (SELECT ID FROM dbo.Article WHERE [UID] = @UserID AND ID = @AID)

BEGIN

	IF (@Cat_Id = 0)

		BEGIN

			UPDATE Article SET 
								   Title = @Title,
								   [Content] = @Content,
								   Keyword = @Keyword,
								   Summary = @Summary,
								   Update_date = getdate(),
								   Show = @Show
								   WHERE [UID] = @UserID AND ID = @AID
		END

	ELSE

		BEGIN

			UPDATE Article SET 
								   Title = @Title,
								   [Content] = @Content,
								   CAT_ID = @CAT_ID,
								   Keyword = @Keyword,
								   Summary = @Summary,
								   Update_date = getdate(),
								   Show = @Show
								   WHERE [UID] = @UserID AND ID = @AID

		END

--Insert Article Update Log
INSERT INTO dbo.ArticleUpdateLog(AID, [UID], DateUpdated) VALUES(@AID, @UserID, GETDATE())

END

SET @ErrorCode = @@error
		
END

RETURN @ErrorCode
GO
/****** Object:  StoredProcedure [dbo].[spSelectUnApprovedArticle]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectUnApprovedArticle] 

AS
BEGIN

	SET NOCOUNT ON;

	SELECT a.ID, 
		   a.CAT_ID, 
		   ac.CAT_NAME,
		   a.Title, 
		   a.Post_Date, 
		   a.Author,
		   a.UID
	FROM 
		dbo.Article a
	INNER JOIN
		dbo.Article_Category ac
	ON
		a.CAT_ID = ac.CAT_ID
	WHERE 
		a.Show = 0
	ORDER BY a.Post_Date

END
GO
/****** Object:  StoredProcedure [dbo].[spSelectStateList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectStateList]

@CountryID int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT State_ID, State_Name FROM States
	WHERE Country_ID = @CountryID
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectLast10Feed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectLast10Feed]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT TOP 10 Title,
		   link,
		   DatePublished,
		   Author,
		   Category,
		   FeedID
	FROM Feed
		
	
	ORDER BY 
		DatePublished DESC

END
GO
/****** Object:  StoredProcedure [dbo].[spSelectFeedList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectFeedList]

@CategoryID int,	
@State int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Feed
	WHERE Category = @CategoryID AND isValid = @State
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectFeed]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectFeed]

@FeedID int

AS

BEGIN

SET NOCOUNT ON;

 SELECT
		   * FROM dbo.Feed WITH (NOLOCK) 
		  WHERE FeedID = @FeedID
		  


END
GO
/****** Object:  StoredProcedure [dbo].[spSelectExamCategoryList]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectExamCategoryList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ECID, ECName, ECDesc, isActive FROM ExamCategory WHERE isActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectDisplayAllMembersAdmin]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectDisplayAllMembersAdmin]

@Input varchar(50),
@NumDays int = 0,
@OrderBy int = '',
@SortBy int = '',
@PageIndex int = 1,
@PageSize int = 20

AS
BEGIN

DECLARE @StartRow int
DECLARE @EndRow int

SET @StartRow = (@PageSize * (@PageIndex - 1))  + 1  
SET @EndRow = @PageSize * @PageIndex + 1

DECLARE @ItemCounter int

--Returns total records count
SELECT @ItemCounter = Count(*) 
FROM 
	dbo.usersview 
WHERE
(uname LIKE COALESCE(@Input, '%')
 OR fName LIKE COALESCE(@Input, '%')
 OR lName LIKE COALESCE(@Input, '%')
 OR City_Name LIKE COALESCE(@Input, '%')
 OR State_Name LIKE COALESCE(@Input, '%')
 OR Country_Name LIKE COALESCE(@Input, '%')
 OR Email1 LIKE COALESCE(@Input, '%')
 OR (@NumDays > 0 AND RegistrationDate >= DATEADD(day, - @NumDays, GETDATE()))
 OR uName LIKE COALESCE(@Input, uName) + '%') -- Counter for Username alpha Letter search
 OR (@Input = 'none' AND @NumDays = 0) --Count all, no filter

SET NOCOUNT ON;

WITH Users AS
	(
		SELECT
		   ROW_NUMBER() OVER 
			 (
			  ORDER BY 
              CASE WHEN @OrderBy = 1 AND @SortBy = 1 THEN Hits END DESC,
              CASE WHEN @OrderBy = 1 AND @SortBy = '' THEN Hits END DESC,
              CASE WHEN @OrderBy = 1 AND @SortBy = 2 THEN Hits END ASC,
              CASE WHEN @OrderBy = 2 AND @SortBy = 1 THEN Email1 END DESC,
              CASE WHEN @OrderBy = 2 AND @SortBy = '' THEN Email1 END DESC,
              CASE WHEN @OrderBy = 2 AND @SortBy = 2 THEN Email1 END ASC,
              CASE WHEN @OrderBy = 3 AND @SortBy = 2 THEN uName END ASC,
              CASE WHEN @OrderBy = 3 AND @SortBy = '' THEN uName END ASC,
              CASE WHEN @OrderBy = 3 AND @SortBy = 1 THEN uName END DESC,
              CASE WHEN @OrderBy = 4 AND @SortBy = 1 OR @OrderBy = '' THEN RegistrationDate END DESC,
              CASE WHEN @OrderBy = 4 AND @SortBy = '' OR @OrderBy = '' THEN RegistrationDate END DESC,
              CASE WHEN @OrderBy = 4 AND @SortBy = 2 THEN RegistrationDate END ASC,
              CASE WHEN @OrderBy = 5 AND @SortBy = 1 THEN lastlogin END DESC,
              CASE WHEN @OrderBy = 5 AND @SortBy = '' THEN lastlogin END DESC,
              CASE WHEN @OrderBy = 5 AND @SortBy = 2 THEN lastlogin END ASC,
              CASE WHEN @OrderBy = 6 AND @SortBy = 1 THEN isActive END DESC,
              CASE WHEN @OrderBy = 6 AND @SortBy = '' THEN isActive END DESC,
              CASE WHEN @OrderBy = 6 AND @SortBy = 2 THEN isActive END ASC,
              CASE WHEN @OrderBy = 11 AND @SortBy = 1 THEN LastUpdated END DESC,
              CASE WHEN @OrderBy = 11 AND @SortBy = '' THEN LastUpdated END DESC,
              CASE WHEN @OrderBy = 11 AND @SortBy = 2 THEN LastUpdated END ASC
			 ) AS RowNumber, 
				[UID], 
				uName,
				[pswd],
				Email1,
				fName,
				lName,
				City_Name,
				[State_Name],
				Country_Name,
				RegistrationDate,
				isActive,
				lastlogin,
				Hits,
                LastUpdated,
				UserType,
				@ItemCounter TotalCount
				FROM 
					dbo.usersview
                WHERE (
                 uName LIKE COALESCE(@Input, '%') OR
                 fName LIKE COALESCE(@Input, '%') OR
                 lName LIKE COALESCE(@Input, '%') OR
                 City_Name LIKE COALESCE(@Input, '%') OR
                 [State_Name] LIKE COALESCE(@Input, '%') OR
                 Country_Name LIKE COALESCE(@Input, '%') OR
                 Email1 LIKE COALESCE(@Input, '%') OR
                 (@NumDays > 0 AND RegistrationDate >= DATEADD(day, - @NumDays, GETDATE())) OR
                 uName LIKE COALESCE(@Input, uName) + '%')-- User name letter search
                 OR (@Input = 'none' AND @NumDays = 0) -- Returns default no filter record set.
                 
	)
	-- Statement that executes the CTE
	SELECT a.*
	FROM
		  Users a
	WHERE
		  a.RowNumber BETWEEN @StartRow AND @EndRow - 1
	ORDER BY
		  a.RowNumber

END
GO
/****** Object:  StoredProcedure [dbo].[CategoryPage_Article]    Script Date: 01/06/2012 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CategoryPage_Article] 

@CATID int,
@OrderBy int = '',
@SortBy int = ''

AS
BEGIN

	SET NOCOUNT ON;

    SELECT a.ID,
       a.CAT_ID,
       b.CAT_NAME, 
       a.Title, 
       a.Post_Date, 
       a.Content, 
       a.Hits, 
       a.Author,
       a.Keyword,
       a.No_Rates, 
       CAST((1.0 * a.No_Rating/a.No_Rates) as decimal(2,1)) as Rates,
       dbo.GetCategoryArticleCount(@CATID) As RCount, 
       a.Summary,
       a.Total_Comments        
       FROM 
			Article a WITH (NOLOCK) 
	   INNER JOIN 
			Article_Category b WITH (NOLOCK)
       ON 
			a.CAT_ID = b.CAT_ID
       WHERE Show = 1 AND a.CAT_ID = @CATID
		ORDER BY
		CASE WHEN @OrderBy = 1 AND @SortBy = 1 THEN a.Hits END DESC,
		CASE WHEN @OrderBy = 1 AND @SortBy = '' THEN a.Hits END DESC,
		CASE WHEN @OrderBy = 1 AND @SortBy = 2 THEN a.Hits END ASC,
		CASE WHEN @OrderBy = 2 AND @SortBy = 1 THEN a.No_Rates END DESC,
		CASE WHEN @OrderBy = 2 AND @SortBy = '' THEN a.No_Rates END DESC,
		CASE WHEN @OrderBy = 2 AND @SortBy = 2 THEN a.No_Rates END ASC,
		CASE WHEN @OrderBy = 3 AND @SortBy = 2 THEN a.Title END ASC,
		CASE WHEN @OrderBy = 3 AND @SortBy = '' THEN a.Title END ASC,
		CASE WHEN @OrderBy = 3 AND @SortBy = 1 THEN a.Title END DESC,
		CASE WHEN @OrderBy = 4 AND @SortBy = 1 OR @OrderBy = '' THEN a.Post_Date END DESC,
		CASE WHEN @OrderBy = 4 AND @SortBy = '' OR @OrderBy = '' THEN a.Post_Date END DESC,
		CASE WHEN @OrderBy = 4 AND @SortBy = 2 THEN a.Post_Date END ASC

END
GO
/****** Object:  Default [DF_Article_Post_Date]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Post_Date]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [Post_Date]
GO
/****** Object:  Default [DF_Article_Hits]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Hits]  DEFAULT ((1)) FOR [Hits]
GO
/****** Object:  Default [DF_Article_Show]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Show]  DEFAULT ((0)) FOR [Show]
GO
/****** Object:  Default [DF_Article_No_Rating]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_No_Rating]  DEFAULT ((5)) FOR [No_Rating]
GO
/****** Object:  Default [DF_Article_No_Rates]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_No_Rates]  DEFAULT ((1)) FOR [No_Rates]
GO
/****** Object:  Default [DF_Article_Total_Comments]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Total_Comments]  DEFAULT ((0)) FOR [Total_Comments]
GO
/****** Object:  Default [DF_Article_Updated]    Script Date: 01/06/2012 13:23:47 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Updated]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [Update_date]
GO
