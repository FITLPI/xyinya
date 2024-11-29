SELECT dbo.Request.RequestId, dbo.Request.RequestDate, dbo.Device.DeviceName, dbo.Defect.DefectName, dbo. [User].UserFullName AS Client, dbo.Request.RequestDesc, dbo.Status.StatusName, User_1.UserFullName AS Master, dbo. Request. RequestTime, dbo. Priory. PrioryName, dbo.Stage.StageName, dbo.Request. RequestComment
FROM dbo.Defect INNER JOIN
dbo.Request ON dbo.Defect.DefectId = dbo.Request.RequestDefectId INNER JOIN
dbo.Device ON dbo.Request.RequestDeviceId = dbo.Device.DeviceId INNER JOIN
dbo.Priory ON dbo.Request.RequestPrioryId = dbo. Priory.PrioryId INNER JOIN
dbo.Stage ON dbo. Request.RequestStageId = dbo.Stage.StageId INNER JOIN
dbo.Status ON dbo.Request.RequestStatusId = dbo.Status.StatusId INNER JOIN
dbo. [User] ON dbo.Request.RequestUserId = dbo.[User].UserId INNER JOIN
dbo. [User] AS User_1 ON dbo.Request.RequestMasterId = User_1.UserId
