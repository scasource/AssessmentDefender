--  
-- Script to Update dbo.Conditions in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.Conditions Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_Conditions')
      ALTER TABLE [dbo].[Conditions] DROP CONSTRAINT [PK_Conditions]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_Conditions')
      DROP INDEX [dbo].[Conditions].[IX_Conditions]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[Conditions] ADD CONSTRAINT [PK_Conditions] PRIMARY KEY CLUSTERED ([Condition_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_Conditions] ON [dbo].[Conditions] ([Condition_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.Conditions Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.Conditions Table'
END
GO


--  
-- Script to Update dbo.ConditionStatus in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.ConditionStatus Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_ConditionStatus')
      ALTER TABLE [dbo].[ConditionStatus] DROP CONSTRAINT [PK_ConditionStatus]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_ConditionStatus')
      DROP INDEX [dbo].[ConditionStatus].[IX_ConditionStatus]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[ConditionStatus] ADD CONSTRAINT [PK_ConditionStatus] PRIMARY KEY CLUSTERED ([ConditionStatus_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_ConditionStatus] ON [dbo].[ConditionStatus] ([ConditionStatus_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.ConditionStatus Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.ConditionStatus Table'
END
GO


--  
-- Script to Update dbo.ConditionTypes in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.ConditionTypes Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_ConditionTypes')
      ALTER TABLE [dbo].[ConditionTypes] DROP CONSTRAINT [PK_ConditionTypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_ConditionTypes')
      DROP INDEX [dbo].[ConditionTypes].[IX_ConditionTypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[ConditionTypes] ADD CONSTRAINT [PK_ConditionTypes] PRIMARY KEY CLUSTERED ([ConditionType_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_ConditionTypes] ON [dbo].[ConditionTypes] ([ConditionType_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.ConditionTypes Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.ConditionTypes Table'
END
GO


--  
-- Script to Update dbo.ConstructionCodes in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.ConstructionCodes Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_ConstructionCodes')
      ALTER TABLE [dbo].[ConstructionCodes] DROP CONSTRAINT [PK_ConstructionCodes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_ConstructionCodes')
      DROP INDEX [dbo].[ConstructionCodes].[IX_ConstructionCodes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[ConstructionCodes] ADD CONSTRAINT [PK_ConstructionCodes] PRIMARY KEY CLUSTERED ([ConstructionCode_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_ConstructionCodes] ON [dbo].[ConstructionCodes] ([ConstructionCode_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.ConstructionCodes Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.ConstructionCodes Table'
END
GO


--  
-- Script to Update dbo.ConstructionType in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.ConstructionType Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_constructiontype')
      ALTER TABLE [dbo].[ConstructionType] DROP CONSTRAINT [PK_constructiontype]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_ConstructionType')
      DROP INDEX [dbo].[ConstructionType].[IX_ConstructionType]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[ConstructionType] ADD CONSTRAINT [PK_constructiontype] PRIMARY KEY CLUSTERED ([ConstructionType_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_ConstructionType] ON [dbo].[ConstructionType] ([ConstructionType_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.ConstructionType Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.ConstructionType Table'
END
GO


--  
-- Script to Update dbo.ConstructionTypes in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.ConstructionTypes Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_ConstructionTypes')
      ALTER TABLE [dbo].[ConstructionTypes] DROP CONSTRAINT [PK_ConstructionTypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_ConstructionTypes')
      DROP INDEX [dbo].[ConstructionTypes].[IX_ConstructionTypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[ConstructionTypes] ADD CONSTRAINT [PK_ConstructionTypes] PRIMARY KEY CLUSTERED ([ConstructionType_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_ConstructionTypes] ON [dbo].[ConstructionTypes] ([ConstructionType_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.ConstructionTypes Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.ConstructionTypes Table'
END
GO


--  
-- Script to Update dbo.Improvementtypes in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.Improvementtypes Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_Improvementtypes')
      ALTER TABLE [dbo].[Improvementtypes] DROP CONSTRAINT [PK_Improvementtypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_Improvementtypes')
      DROP INDEX [dbo].[Improvementtypes].[IX_Improvementtypes]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[Improvementtypes] ADD CONSTRAINT [PK_Improvementtypes] PRIMARY KEY CLUSTERED ([ImprovementType_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_Improvementtypes] ON [dbo].[Improvementtypes] ([ImprovementType_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.Improvementtypes Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.Improvementtypes Table'
END
GO


--  
-- Script to Update dbo.SiteBuildingMap in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.SiteBuildingMap Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_SiteBuildingMap')
      ALTER TABLE [dbo].[SiteBuildingMap] DROP CONSTRAINT [PK_SiteBuildingMap]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[SiteBuildingMap] ADD CONSTRAINT [PK_SiteBuildingMap] PRIMARY KEY CLUSTERED ([SiteBuildingMap_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.SiteBuildingMap Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.SiteBuildingMap Table'
END
GO


--  
-- Script to Update dbo.SiteImprovementMap in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.SiteImprovementMap Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_SiteImprovmentMap')
      ALTER TABLE [dbo].[SiteImprovementMap] DROP CONSTRAINT [PK_SiteImprovmentMap]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[SiteImprovementMap] ADD CONSTRAINT [PK_SiteImprovmentMap] PRIMARY KEY CLUSTERED ([SiteImprovmentMap_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.SiteImprovementMap Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.SiteImprovementMap Table'
END
GO


--  
-- Script to Update dbo.SiteLandMap in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.SiteLandMap Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_SiteLandMap')
      ALTER TABLE [dbo].[SiteLandMap] DROP CONSTRAINT [PK_SiteLandMap]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[SiteLandMap] ADD CONSTRAINT [PK_SiteLandMap] PRIMARY KEY CLUSTERED ([SiteLandMap_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.SiteLandMap Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.SiteLandMap Table'
END
GO


--  
-- Script to Update dbo.SpecialDistricts in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.SpecialDistricts Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_SpecialDistricts')
      ALTER TABLE [dbo].[SpecialDistricts] DROP CONSTRAINT [PK_SpecialDistricts]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_SpecialDistricts')
      DROP INDEX [dbo].[SpecialDistricts].[IX_SpecialDistricts]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[SpecialDistricts] ADD CONSTRAINT [PK_SpecialDistricts] PRIMARY KEY CLUSTERED ([SpecialDistrict_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_SpecialDistricts] ON [dbo].[SpecialDistricts] ([SpecialDistrict_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.SpecialDistricts Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.SpecialDistricts Table'
END
GO


--  
-- Script to Update dbo.SwisCodeTable in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.SwisCodeTable Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'PK_SwisCodeTable')
      ALTER TABLE [dbo].[SwisCodeTable] DROP CONSTRAINT [PK_SwisCodeTable]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysindexes WHERE name = N'IX_SwisCodeTable')
      DROP INDEX [dbo].[SwisCodeTable].[IX_SwisCodeTable]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[SwisCodeTable] ADD CONSTRAINT [PK_SwisCodeTable] PRIMARY KEY CLUSTERED ([SwisCode_ID]) WITH  FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_SwisCodeTable] ON [dbo].[SwisCodeTable] ([SwisCode_ID], [Deleted]) WITH FILLFACTOR = 80
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.SwisCodeTable Table Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.SwisCodeTable Table'
END
GO


--  
-- Script to Delete dbo.TParcelRec in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Deleting dbo.TParcelRec Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   DROP TABLE [dbo].[TParcelRec]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.TParcelRec Table Deleted Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Delete dbo.TParcelRec Table'
END
GO


--  
-- Script to Update dbo.Assessment_Parcel_View in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Updating dbo.Assessment_Parcel_View View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('ALTER VIEW [dbo].[Assessment_Parcel_View] AS
Select Parcels.Parcel_ID, Parcels.PrintKey, Parcels.Legaladdrno, Parcels.LegalAddr, 
Parcels.SwisSBLKey, Parcels.Latitude, Parcels.Longitude,
Case Parcels.Acreage When ''0'' Then Cast(((Cast(Parcels.Frontage As Float) * Cast(Parcels.Depth As Float))/43560) as Varchar) Else Parcels.Acreage End As Acreage,
Case Cast(SqFootLivingArea as Float) When 0 Then ''0'' Else Cast(SalePrice As Float)/Cast(SqFootLivingArea As Float) End As PricePerSqFoot, 
Owners.FullName AS Owner1, TotalAssessedVal, LandAssessedVal,
Case TotalAssessedVal When '''' then ''0'' else (Cast(TotalAssessedVal as Float) / .0285) end As MarketValue,
Parcels.PropertyClass As PropertyClassCode,
NPResidentialSite.NeighborhoodCode,
NPResidentialBldg.BuildingStyleCode,
NPResidentialSite.ZoningCode As ParcelZone,
NPResidentialSite.SewerTypeCode,
NPResidentialSite.WaterSupplyCode,
NPResidentialBldg.ActualYearBuilt,
NPResidentialBldg.ConditionCode,
NPResidentialBldg.OverallGradeCode,
NPResidentialBldg.BasementTypeCode,
NPResidentialBldg.SqFootLivingArea,
NPResidentialBldg.FirstStoryArea,
NPResidentialBldg.NumberOfStories,
NPResidentialBldg.NumberOfBathrooms,
NPResidentialBldg.NumberOfBedrooms,
NPResidentialBldg.NumHalfBathrooms,
NPResidentialBldg.NumberOfFireplaces,
''AG: '' + NPResidentialBldg.AttachedGarCapacity + '' DG: '' + NPResidentialBldg.DetachedGarCapacity + '' BG: '' + NPResidentialBldg.BasementGarCapacity As Garages,
Parcels.Frontage As Frontage,
Parcels.Depth As Depth,
Parcels.Coordinates As Coordinates,
Parcels.SwisCode as SwisCode,
Parcels.SchoolDistrict,
Parcels.FireDistrict
from Parcels
LEFT OUTER JOIN NPAssessRec
ON Parcels.SwisSBLKey = NPAssessRec.SwisSBLKey
LEFT OUTER JOIN NPResidentialBldg
ON Parcels.SwisSBLKey = NPResidentialBldg.SwisSBLKey
LEFT OUTER JOIN NPResidentialSite
ON Parcels.SwisSBLKey = NPResidentialSite.SwisSBLKey
LEFT OUTER JOIN ParcelOwnersMap 
ON Parcels.Parcel_ID = ParcelOwnersMap.Parcel_ID 
LEFT OUTER JOIN Owners 
ON dbo.ParcelOwnersMap.Owner_ID = Owners.Owner_ID
WHERE ParcelOwnersMap.MasterOwner = 1
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.Assessment_Parcel_View View Updated Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Update dbo.Assessment_Parcel_View View'
END
GO


--  
-- Script to Delete dbo.vwApplicationTemplateStatusReporting in (local).Municity_MtPleasant 
-- Generated Tuesday, June 12, 2012, at 10:46 AM 
--  
-- Please backup (local).Municity_MtPleasant before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Deleting dbo.vwApplicationTemplateStatusReporting View'
GO

   DROP VIEW [dbo].[vwApplicationTemplateStatusReporting]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.vwApplicationTemplateStatusReporting View Deleted Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Delete dbo.vwApplicationTemplateStatusReporting View'
END
GO
