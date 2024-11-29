select dr.RequestId, dum.UserFullName as Maste, dro.RoleName as RoleMaster, duc.UserFullName as Client, dp.PrioryName, ds.StatusName, dst.StageName, dd.DeviceName, dr.RequestTime, dr.RequestDate, dde.DefectName, dr.RequestDesc, dr.RequestComment from dbo.Request dr
inner join dbo.Device dd on dd.DeviceId = dr.RequestDeviceId
inner join dbo.Status ds on ds.StatusId = dr.RequestStatusId
inner join dbo.Defect dde on dde.DefectId = dr.RequestDefectId
inner join dbo.Priory dp on dp.PrioryId = dr.RequestPrioryId
inner join dbo.Stage dst on dst.StageId = dr.RequestStageId
inner join dbo.[User] duc on duc.UserId = dr.RequestUserId
inner join dbo.[User] dum on dum.UserId = dr.RequestMasterId
inner join dbo.[Role] dro on dro.RoleId = dum.UserRoleId