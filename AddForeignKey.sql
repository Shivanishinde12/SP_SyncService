USE [eBS4_INT_QA2]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddKeyConstraint]    Script Date: 9/23/2022 1:49:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER   proc [dbo].[SP_AddKeyConstraint]
as
Begin
--FormID = 4464
-- ALTER TABLE [UI].[DataSource] WITH NOCHECK ADD   CONSTRAINT [FK_DataSource_FormDesign]  FOREIGN KEY (FormDesignID) REFERENCES  UI.FormDesign(FormID)

--FormID = 2471
ALTER TABLE [ws].[ServiceDefinition] WITH NOCHECK ADD   CONSTRAINT  FK_UIElementID_ServiceDefinition_UIElement FOREIGN KEY (UIElementID) REFERENCES  UI.UIElement(UIElementID);



ALTER TABLE [ws].[ServiceDesignVersion]
WITH NOCHECK ADD   CONSTRAINT  FK_FormDesignVersionID_ServiceVersion_FormDesignVersion FOREIGN KEY (FormDesignVersionID) REFERENCES  UI.FormDesignVersion(FormDesignVersionID),
 CONSTRAINT FK_FormDesignID_ServiceVersion_FormDesign FOREIGN KEY (FormDesignID) REFERENCES UI.FormDesign (FormID);


--FormID = 2405

ALTER TABLE [UI].[TargetRepeaterKeyFilter] WITH NOCHECK ADD  CONSTRAINT FK_TargetRepeaterKeyFilter_PropertyRuleMap FOREIGN KEY (PropertyRuleMapID) REFERENCES  UI.PropertyRuleMap(PropertyRuleMapID),
 CONSTRAINT FK_TargetRepeaterKeyFilter_Rule FOREIGN KEY (RuleID) REFERENCES [UI].[Rule] (RuleID);

ALTER TABLE [Accn].[FormDesignAccountPropertyMap] WITH NOCHECK ADD  CONSTRAINT FK_FormDesignAccountPropertyMap_FormDesignVersion FOREIGN KEY (FormDesignVersionID) REFERENCES  UI.FormDesignVersion(FormDesignVersionID),
CONSTRAINT [FK_FormDesignAccountPropertyMap_FormDesign] FOREIGN KEY (FormDesignID) REFERENCES [UI].[FormDesign] (FormID)

ALTER TABLE [Fldr].[Folder] WITH NOCHECK ADD CONSTRAINT FK__Folder__FormDesi__15DA3E5D FOREIGN KEY (FormDesignGroupId) REFERENCES UI.FormDesignGroup(FormDesignGroupID)

ALTER TABLE [UI].[FormDesignGroupMapping] WITH NOCHECK ADD CONSTRAINT FK_FormDesignGroupMapping_FormDesignGroup FOREIGN KEY (FormDesignGroupID) REFERENCES UI.FormDesignGroup(FormDesignGroupID)

ALTER TABLE [Fldr].[FormInstance] WITH NOCHECK ADD CONSTRAINT FK_FormInstance_FormDesignVersion FOREIGN KEY(FormDesignVersionID) REFERENCES UI.FormDesignVersion(FormDesignVersionID),
CONSTRAINT FK_FormInstance_FormDesign FOREIGN KEY (FormDesignID) REFERENCES [UI].[FormDesign] (FormID)

END







 