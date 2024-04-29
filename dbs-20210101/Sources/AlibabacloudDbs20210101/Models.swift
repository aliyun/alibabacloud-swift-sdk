import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var newResourceGroupId: String?

    public var regionCode: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDownloadRequest : Tea.TeaModel {
    public var bakSetId: String?

    public var bakSetSize: String?

    public var bakSetType: String?

    public var downloadPointInTime: String?

    public var formatType: String?

    public var instanceName: String?

    public var regionCode: String?

    public var targetBucket: String?

    public var targetOssRegion: String?

    public var targetPath: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bakSetId != nil {
            map["BakSetId"] = self.bakSetId!
        }
        if self.bakSetSize != nil {
            map["BakSetSize"] = self.bakSetSize!
        }
        if self.bakSetType != nil {
            map["BakSetType"] = self.bakSetType!
        }
        if self.downloadPointInTime != nil {
            map["DownloadPointInTime"] = self.downloadPointInTime!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.targetBucket != nil {
            map["TargetBucket"] = self.targetBucket!
        }
        if self.targetOssRegion != nil {
            map["TargetOssRegion"] = self.targetOssRegion!
        }
        if self.targetPath != nil {
            map["TargetPath"] = self.targetPath!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BakSetId") && dict["BakSetId"] != nil {
            self.bakSetId = dict["BakSetId"] as! String
        }
        if dict.keys.contains("BakSetSize") && dict["BakSetSize"] != nil {
            self.bakSetSize = dict["BakSetSize"] as! String
        }
        if dict.keys.contains("BakSetType") && dict["BakSetType"] != nil {
            self.bakSetType = dict["BakSetType"] as! String
        }
        if dict.keys.contains("DownloadPointInTime") && dict["DownloadPointInTime"] != nil {
            self.downloadPointInTime = dict["DownloadPointInTime"] as! String
        }
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("TargetBucket") && dict["TargetBucket"] != nil {
            self.targetBucket = dict["TargetBucket"] as! String
        }
        if dict.keys.contains("TargetOssRegion") && dict["TargetOssRegion"] != nil {
            self.targetOssRegion = dict["TargetOssRegion"] as! String
        }
        if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
            self.targetPath = dict["TargetPath"] as! String
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateDownloadResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupSetTime: Int64?

        public var bakSetId: String?

        public var dbList: String?

        public var downloadStatus: String?

        public var exportDataSize: Int64?

        public var format: String?

        public var gmtCreate: Int64?

        public var importDataSize: Int64?

        public var progress: String?

        public var regionCode: String?

        public var targetPath: String?

        public var targetType: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupSetTime != nil {
                map["BackupSetTime"] = self.backupSetTime!
            }
            if self.bakSetId != nil {
                map["BakSetId"] = self.bakSetId!
            }
            if self.dbList != nil {
                map["DbList"] = self.dbList!
            }
            if self.downloadStatus != nil {
                map["DownloadStatus"] = self.downloadStatus!
            }
            if self.exportDataSize != nil {
                map["ExportDataSize"] = self.exportDataSize!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.importDataSize != nil {
                map["ImportDataSize"] = self.importDataSize!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.regionCode != nil {
                map["RegionCode"] = self.regionCode!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupSetTime") && dict["BackupSetTime"] != nil {
                self.backupSetTime = dict["BackupSetTime"] as! Int64
            }
            if dict.keys.contains("BakSetId") && dict["BakSetId"] != nil {
                self.bakSetId = dict["BakSetId"] as! String
            }
            if dict.keys.contains("DbList") && dict["DbList"] != nil {
                self.dbList = dict["DbList"] as! String
            }
            if dict.keys.contains("DownloadStatus") && dict["DownloadStatus"] != nil {
                self.downloadStatus = dict["DownloadStatus"] as! String
            }
            if dict.keys.contains("ExportDataSize") && dict["ExportDataSize"] != nil {
                self.exportDataSize = dict["ExportDataSize"] as! Int64
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("ImportDataSize") && dict["ImportDataSize"] != nil {
                self.importDataSize = dict["ImportDataSize"] as! Int64
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
                self.regionCode = dict["RegionCode"] as! String
            }
            if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDownloadResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDownloadResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateDownloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDownloadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDownloadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSandboxInstanceRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var instanceId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteSandboxInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteSandboxInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSandboxInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSandboxInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupDataListRequest : Tea.TeaModel {
    public var backupId: String?

    public var backupMethod: String?

    public var backupMode: String?

    public var backupScale: String?

    public var backupStatus: String?

    public var backupType: String?

    public var dataSourceId: String?

    public var endTime: String?

    public var instanceIsDeleted: Bool?

    public var instanceName: String?

    public var instanceRegion: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionCode: String?

    public var sceneType: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.backupMethod != nil {
            map["BackupMethod"] = self.backupMethod!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.backupScale != nil {
            map["BackupScale"] = self.backupScale!
        }
        if self.backupStatus != nil {
            map["BackupStatus"] = self.backupStatus!
        }
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIsDeleted != nil {
            map["InstanceIsDeleted"] = self.instanceIsDeleted!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceRegion != nil {
            map["InstanceRegion"] = self.instanceRegion!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
            self.backupMethod = dict["BackupMethod"] as! String
        }
        if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("BackupScale") && dict["BackupScale"] != nil {
            self.backupScale = dict["BackupScale"] as! String
        }
        if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
            self.backupStatus = dict["BackupStatus"] as! String
        }
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceIsDeleted") && dict["InstanceIsDeleted"] != nil {
            self.instanceIsDeleted = dict["InstanceIsDeleted"] as! Bool
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceRegion") && dict["InstanceRegion"] != nil {
            self.instanceRegion = dict["InstanceRegion"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("SceneType") && dict["SceneType"] != nil {
            self.sceneType = dict["SceneType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeBackupDataListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class PolarSnapshot : Tea.TeaModel {
                public var dumpId: Int64?

                public var dumpSize: Int64?

                public var expectExpireTime: String?

                public var expectExpireType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dumpId != nil {
                        map["DumpId"] = self.dumpId!
                    }
                    if self.dumpSize != nil {
                        map["DumpSize"] = self.dumpSize!
                    }
                    if self.expectExpireTime != nil {
                        map["ExpectExpireTime"] = self.expectExpireTime!
                    }
                    if self.expectExpireType != nil {
                        map["expectExpireType"] = self.expectExpireType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DumpId") && dict["DumpId"] != nil {
                        self.dumpId = dict["DumpId"] as! Int64
                    }
                    if dict.keys.contains("DumpSize") && dict["DumpSize"] != nil {
                        self.dumpSize = dict["DumpSize"] as! Int64
                    }
                    if dict.keys.contains("ExpectExpireTime") && dict["ExpectExpireTime"] != nil {
                        self.expectExpireTime = dict["ExpectExpireTime"] as! String
                    }
                    if dict.keys.contains("expectExpireType") && dict["expectExpireType"] != nil {
                        self.expectExpireType = dict["expectExpireType"] as! String
                    }
                }
            }
            public var backupDownloadURL: String?

            public var backupEndTime: String?

            public var backupId: String?

            public var backupIntranetDownloadURL: String?

            public var backupLocation: String?

            public var backupMethod: String?

            public var backupMode: String?

            public var backupName: String?

            public var backupScale: String?

            public var backupSize: Int64?

            public var backupStartTime: String?

            public var backupStatus: String?

            public var backupType: String?

            public var checksum: String?

            public var consistentTime: Int64?

            public var encryption: String?

            public var engine: String?

            public var engineVersion: String?

            public var expectExpireTime: String?

            public var expectExpireType: String?

            public var instanceName: String?

            public var isAvail: Int32?

            public var polarSnapshot: DescribeBackupDataListResponseBody.Data.Content.PolarSnapshot?

            public var supportDeletion: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.polarSnapshot?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupDownloadURL != nil {
                    map["BackupDownloadURL"] = self.backupDownloadURL!
                }
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupIntranetDownloadURL != nil {
                    map["BackupIntranetDownloadURL"] = self.backupIntranetDownloadURL!
                }
                if self.backupLocation != nil {
                    map["BackupLocation"] = self.backupLocation!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupMode != nil {
                    map["BackupMode"] = self.backupMode!
                }
                if self.backupName != nil {
                    map["BackupName"] = self.backupName!
                }
                if self.backupScale != nil {
                    map["BackupScale"] = self.backupScale!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.checksum != nil {
                    map["Checksum"] = self.checksum!
                }
                if self.consistentTime != nil {
                    map["ConsistentTime"] = self.consistentTime!
                }
                if self.encryption != nil {
                    map["Encryption"] = self.encryption!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expectExpireTime != nil {
                    map["ExpectExpireTime"] = self.expectExpireTime!
                }
                if self.expectExpireType != nil {
                    map["ExpectExpireType"] = self.expectExpireType!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.isAvail != nil {
                    map["IsAvail"] = self.isAvail!
                }
                if self.polarSnapshot != nil {
                    map["PolarSnapshot"] = self.polarSnapshot?.toMap()
                }
                if self.supportDeletion != nil {
                    map["SupportDeletion"] = self.supportDeletion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupDownloadURL") && dict["BackupDownloadURL"] != nil {
                    self.backupDownloadURL = dict["BackupDownloadURL"] as! String
                }
                if dict.keys.contains("BackupEndTime") && dict["BackupEndTime"] != nil {
                    self.backupEndTime = dict["BackupEndTime"] as! String
                }
                if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
                    self.backupId = dict["BackupId"] as! String
                }
                if dict.keys.contains("BackupIntranetDownloadURL") && dict["BackupIntranetDownloadURL"] != nil {
                    self.backupIntranetDownloadURL = dict["BackupIntranetDownloadURL"] as! String
                }
                if dict.keys.contains("BackupLocation") && dict["BackupLocation"] != nil {
                    self.backupLocation = dict["BackupLocation"] as! String
                }
                if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                    self.backupMode = dict["BackupMode"] as! String
                }
                if dict.keys.contains("BackupName") && dict["BackupName"] != nil {
                    self.backupName = dict["BackupName"] as! String
                }
                if dict.keys.contains("BackupScale") && dict["BackupScale"] != nil {
                    self.backupScale = dict["BackupScale"] as! String
                }
                if dict.keys.contains("BackupSize") && dict["BackupSize"] != nil {
                    self.backupSize = dict["BackupSize"] as! Int64
                }
                if dict.keys.contains("BackupStartTime") && dict["BackupStartTime"] != nil {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("Checksum") && dict["Checksum"] != nil {
                    self.checksum = dict["Checksum"] as! String
                }
                if dict.keys.contains("ConsistentTime") && dict["ConsistentTime"] != nil {
                    self.consistentTime = dict["ConsistentTime"] as! Int64
                }
                if dict.keys.contains("Encryption") && dict["Encryption"] != nil {
                    self.encryption = dict["Encryption"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpectExpireTime") && dict["ExpectExpireTime"] != nil {
                    self.expectExpireTime = dict["ExpectExpireTime"] as! String
                }
                if dict.keys.contains("ExpectExpireType") && dict["ExpectExpireType"] != nil {
                    self.expectExpireType = dict["ExpectExpireType"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("IsAvail") && dict["IsAvail"] != nil {
                    self.isAvail = dict["IsAvail"] as! Int32
                }
                if dict.keys.contains("PolarSnapshot") && dict["PolarSnapshot"] != nil {
                    var model = DescribeBackupDataListResponseBody.Data.Content.PolarSnapshot()
                    model.fromMap(dict["PolarSnapshot"] as! [String: Any])
                    self.polarSnapshot = model
                }
                if dict.keys.contains("SupportDeletion") && dict["SupportDeletion"] != nil {
                    self.supportDeletion = dict["SupportDeletion"] as! Int32
                }
            }
        }
        public var content: [DescribeBackupDataListResponseBody.Data.Content]?

        public var extra: String?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalElements: Int64?

        public var totalPages: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["Content"] = tmp
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                var tmp : [DescribeBackupDataListResponseBody.Data.Content] = []
                for v in dict["Content"] as! [Any] {
                    var model = DescribeBackupDataListResponseBody.Data.Content()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.content = tmp
            }
            if dict.keys.contains("Extra") && dict["Extra"] != nil {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeBackupDataListResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeBackupDataListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeBackupDataListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupDataListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupDataListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AdvanceDataPolicies : Tea.TeaModel {
            public var autoCreated: Bool?

            public var bakType: String?

            public var destRegion: String?

            public var destType: String?

            public var dumpAction: String?

            public var filterKey: String?

            public var filterType: String?

            public var filterValue: String?

            public var retentionType: String?

            public var retentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

            public var strategyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoCreated != nil {
                    map["AutoCreated"] = self.autoCreated!
                }
                if self.bakType != nil {
                    map["BakType"] = self.bakType!
                }
                if self.destRegion != nil {
                    map["DestRegion"] = self.destRegion!
                }
                if self.destType != nil {
                    map["DestType"] = self.destType!
                }
                if self.dumpAction != nil {
                    map["DumpAction"] = self.dumpAction!
                }
                if self.filterKey != nil {
                    map["FilterKey"] = self.filterKey!
                }
                if self.filterType != nil {
                    map["FilterType"] = self.filterType!
                }
                if self.filterValue != nil {
                    map["FilterValue"] = self.filterValue!
                }
                if self.retentionType != nil {
                    map["RetentionType"] = self.retentionType!
                }
                if self.retentionValue != nil {
                    map["RetentionValue"] = self.retentionValue!
                }
                if self.srcRegion != nil {
                    map["SrcRegion"] = self.srcRegion!
                }
                if self.srcType != nil {
                    map["SrcType"] = self.srcType!
                }
                if self.strategyId != nil {
                    map["StrategyId"] = self.strategyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoCreated") && dict["AutoCreated"] != nil {
                    self.autoCreated = dict["AutoCreated"] as! Bool
                }
                if dict.keys.contains("BakType") && dict["BakType"] != nil {
                    self.bakType = dict["BakType"] as! String
                }
                if dict.keys.contains("DestRegion") && dict["DestRegion"] != nil {
                    self.destRegion = dict["DestRegion"] as! String
                }
                if dict.keys.contains("DestType") && dict["DestType"] != nil {
                    self.destType = dict["DestType"] as! String
                }
                if dict.keys.contains("DumpAction") && dict["DumpAction"] != nil {
                    self.dumpAction = dict["DumpAction"] as! String
                }
                if dict.keys.contains("FilterKey") && dict["FilterKey"] != nil {
                    self.filterKey = dict["FilterKey"] as! String
                }
                if dict.keys.contains("FilterType") && dict["FilterType"] != nil {
                    self.filterType = dict["FilterType"] as! String
                }
                if dict.keys.contains("FilterValue") && dict["FilterValue"] != nil {
                    self.filterValue = dict["FilterValue"] as! String
                }
                if dict.keys.contains("RetentionType") && dict["RetentionType"] != nil {
                    self.retentionType = dict["RetentionType"] as! String
                }
                if dict.keys.contains("RetentionValue") && dict["RetentionValue"] != nil {
                    self.retentionValue = dict["RetentionValue"] as! String
                }
                if dict.keys.contains("SrcRegion") && dict["SrcRegion"] != nil {
                    self.srcRegion = dict["SrcRegion"] as! String
                }
                if dict.keys.contains("SrcType") && dict["SrcType"] != nil {
                    self.srcType = dict["SrcType"] as! String
                }
                if dict.keys.contains("StrategyId") && dict["StrategyId"] != nil {
                    self.strategyId = dict["StrategyId"] as! String
                }
            }
        }
        public class AdvanceLogPolicies : Tea.TeaModel {
            public var destRegion: String?

            public var destType: String?

            public var enableLogBackup: Bool?

            public var logRetentionType: String?

            public var logRetentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

            public var strategyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destRegion != nil {
                    map["DestRegion"] = self.destRegion!
                }
                if self.destType != nil {
                    map["DestType"] = self.destType!
                }
                if self.enableLogBackup != nil {
                    map["EnableLogBackup"] = self.enableLogBackup!
                }
                if self.logRetentionType != nil {
                    map["LogRetentionType"] = self.logRetentionType!
                }
                if self.logRetentionValue != nil {
                    map["LogRetentionValue"] = self.logRetentionValue!
                }
                if self.srcRegion != nil {
                    map["SrcRegion"] = self.srcRegion!
                }
                if self.srcType != nil {
                    map["SrcType"] = self.srcType!
                }
                if self.strategyId != nil {
                    map["StrategyId"] = self.strategyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestRegion") && dict["DestRegion"] != nil {
                    self.destRegion = dict["DestRegion"] as! String
                }
                if dict.keys.contains("DestType") && dict["DestType"] != nil {
                    self.destType = dict["DestType"] as! String
                }
                if dict.keys.contains("EnableLogBackup") && dict["EnableLogBackup"] != nil {
                    self.enableLogBackup = dict["EnableLogBackup"] as! Bool
                }
                if dict.keys.contains("LogRetentionType") && dict["LogRetentionType"] != nil {
                    self.logRetentionType = dict["LogRetentionType"] as! String
                }
                if dict.keys.contains("LogRetentionValue") && dict["LogRetentionValue"] != nil {
                    self.logRetentionValue = dict["LogRetentionValue"] as! String
                }
                if dict.keys.contains("SrcRegion") && dict["SrcRegion"] != nil {
                    self.srcRegion = dict["SrcRegion"] as! String
                }
                if dict.keys.contains("SrcType") && dict["SrcType"] != nil {
                    self.srcType = dict["SrcType"] as! String
                }
                if dict.keys.contains("StrategyId") && dict["StrategyId"] != nil {
                    self.strategyId = dict["StrategyId"] as! String
                }
            }
        }
        public var advanceDataPolicies: [DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies]?

        public var advanceLogPolicies: [DescribeBackupPolicyResponseBody.Data.AdvanceLogPolicies]?

        public var backupMethod: String?

        public var backupPriority: Int32?

        public var backupRetentionPeriod: Int32?

        public var backupRetentionPolicyOnClusterDeletion: String?

        public var category: String?

        public var enableBackup: Int32?

        public var enableIncBackup: Int32?

        public var enableLogBackup: Int32?

        public var highFrequencyBakInterval: Int32?

        public var highSpaceUsageProtection: String?

        public var incBackupInterval: Int32?

        public var localLogRetentionSpace: Int32?

        public var logBackupLocalRetentionNumber: String?

        public var logBackupRetention: Int32?

        public var preferredBackupDate: String?

        public var preferredBackupWindow: String?

        public var preferredBackupWindowBegin: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceDataPolicies != nil {
                var tmp : [Any] = []
                for k in self.advanceDataPolicies! {
                    tmp.append(k.toMap())
                }
                map["AdvanceDataPolicies"] = tmp
            }
            if self.advanceLogPolicies != nil {
                var tmp : [Any] = []
                for k in self.advanceLogPolicies! {
                    tmp.append(k.toMap())
                }
                map["AdvanceLogPolicies"] = tmp
            }
            if self.backupMethod != nil {
                map["BackupMethod"] = self.backupMethod!
            }
            if self.backupPriority != nil {
                map["BackupPriority"] = self.backupPriority!
            }
            if self.backupRetentionPeriod != nil {
                map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
            }
            if self.backupRetentionPolicyOnClusterDeletion != nil {
                map["BackupRetentionPolicyOnClusterDeletion"] = self.backupRetentionPolicyOnClusterDeletion!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.enableBackup != nil {
                map["EnableBackup"] = self.enableBackup!
            }
            if self.enableIncBackup != nil {
                map["EnableIncBackup"] = self.enableIncBackup!
            }
            if self.enableLogBackup != nil {
                map["EnableLogBackup"] = self.enableLogBackup!
            }
            if self.highFrequencyBakInterval != nil {
                map["HighFrequencyBakInterval"] = self.highFrequencyBakInterval!
            }
            if self.highSpaceUsageProtection != nil {
                map["HighSpaceUsageProtection"] = self.highSpaceUsageProtection!
            }
            if self.incBackupInterval != nil {
                map["IncBackupInterval"] = self.incBackupInterval!
            }
            if self.localLogRetentionSpace != nil {
                map["LocalLogRetentionSpace"] = self.localLogRetentionSpace!
            }
            if self.logBackupLocalRetentionNumber != nil {
                map["LogBackupLocalRetentionNumber"] = self.logBackupLocalRetentionNumber!
            }
            if self.logBackupRetention != nil {
                map["LogBackupRetention"] = self.logBackupRetention!
            }
            if self.preferredBackupDate != nil {
                map["PreferredBackupDate"] = self.preferredBackupDate!
            }
            if self.preferredBackupWindow != nil {
                map["PreferredBackupWindow"] = self.preferredBackupWindow!
            }
            if self.preferredBackupWindowBegin != nil {
                map["PreferredBackupWindowBegin"] = self.preferredBackupWindowBegin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvanceDataPolicies") && dict["AdvanceDataPolicies"] != nil {
                var tmp : [DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies] = []
                for v in dict["AdvanceDataPolicies"] as! [Any] {
                    var model = DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.advanceDataPolicies = tmp
            }
            if dict.keys.contains("AdvanceLogPolicies") && dict["AdvanceLogPolicies"] != nil {
                var tmp : [DescribeBackupPolicyResponseBody.Data.AdvanceLogPolicies] = []
                for v in dict["AdvanceLogPolicies"] as! [Any] {
                    var model = DescribeBackupPolicyResponseBody.Data.AdvanceLogPolicies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.advanceLogPolicies = tmp
            }
            if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
                self.backupMethod = dict["BackupMethod"] as! String
            }
            if dict.keys.contains("BackupPriority") && dict["BackupPriority"] != nil {
                self.backupPriority = dict["BackupPriority"] as! Int32
            }
            if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
                self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
            }
            if dict.keys.contains("BackupRetentionPolicyOnClusterDeletion") && dict["BackupRetentionPolicyOnClusterDeletion"] != nil {
                self.backupRetentionPolicyOnClusterDeletion = dict["BackupRetentionPolicyOnClusterDeletion"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("EnableBackup") && dict["EnableBackup"] != nil {
                self.enableBackup = dict["EnableBackup"] as! Int32
            }
            if dict.keys.contains("EnableIncBackup") && dict["EnableIncBackup"] != nil {
                self.enableIncBackup = dict["EnableIncBackup"] as! Int32
            }
            if dict.keys.contains("EnableLogBackup") && dict["EnableLogBackup"] != nil {
                self.enableLogBackup = dict["EnableLogBackup"] as! Int32
            }
            if dict.keys.contains("HighFrequencyBakInterval") && dict["HighFrequencyBakInterval"] != nil {
                self.highFrequencyBakInterval = dict["HighFrequencyBakInterval"] as! Int32
            }
            if dict.keys.contains("HighSpaceUsageProtection") && dict["HighSpaceUsageProtection"] != nil {
                self.highSpaceUsageProtection = dict["HighSpaceUsageProtection"] as! String
            }
            if dict.keys.contains("IncBackupInterval") && dict["IncBackupInterval"] != nil {
                self.incBackupInterval = dict["IncBackupInterval"] as! Int32
            }
            if dict.keys.contains("LocalLogRetentionSpace") && dict["LocalLogRetentionSpace"] != nil {
                self.localLogRetentionSpace = dict["LocalLogRetentionSpace"] as! Int32
            }
            if dict.keys.contains("LogBackupLocalRetentionNumber") && dict["LogBackupLocalRetentionNumber"] != nil {
                self.logBackupLocalRetentionNumber = dict["LogBackupLocalRetentionNumber"] as! String
            }
            if dict.keys.contains("LogBackupRetention") && dict["LogBackupRetention"] != nil {
                self.logBackupRetention = dict["LogBackupRetention"] as! Int32
            }
            if dict.keys.contains("PreferredBackupDate") && dict["PreferredBackupDate"] != nil {
                self.preferredBackupDate = dict["PreferredBackupDate"] as! String
            }
            if dict.keys.contains("PreferredBackupWindow") && dict["PreferredBackupWindow"] != nil {
                self.preferredBackupWindow = dict["PreferredBackupWindow"] as! String
            }
            if dict.keys.contains("PreferredBackupWindowBegin") && dict["PreferredBackupWindowBegin"] != nil {
                self.preferredBackupWindowBegin = dict["PreferredBackupWindowBegin"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeBackupPolicyResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeBackupPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryBackupSetRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryBackupSetResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryBackupSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBTablesRecoveryBackupSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBTablesRecoveryBackupSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryStateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryStateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBTablesRecoveryStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBTablesRecoveryStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryTimeRangeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryTimeRangeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDBTablesRecoveryTimeRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBTablesRecoveryTimeRangeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBTablesRecoveryTimeRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadBackupSetStorageInfoRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var duration: String?

    public var instanceName: String?

    public var regionCode: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetId") && dict["BackupSetId"] != nil {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeDownloadBackupSetStorageInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expirationTime: Int64?

        public var privateUrl: String?

        public var publicUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.privateUrl != nil {
                map["PrivateUrl"] = self.privateUrl!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpirationTime") && dict["ExpirationTime"] != nil {
                self.expirationTime = dict["ExpirationTime"] as! Int64
            }
            if dict.keys.contains("PrivateUrl") && dict["PrivateUrl"] != nil {
                self.privateUrl = dict["PrivateUrl"] as! String
            }
            if dict.keys.contains("PublicUrl") && dict["PublicUrl"] != nil {
                self.publicUrl = dict["PublicUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeDownloadBackupSetStorageInfoResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDownloadBackupSetStorageInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDownloadBackupSetStorageInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadBackupSetStorageInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDownloadBackupSetStorageInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadSupportRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class DescribeDownloadSupportResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDownloadSupportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadSupportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDownloadSupportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadTaskRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var currentPage: String?

    public var datasourceId: String?

    public var endTime: String?

    public var instanceName: String?

    public var orderColumn: String?

    public var orderDirect: String?

    public var pageSize: String?

    public var regionCode: String?

    public var startTime: String?

    public var state: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.datasourceId != nil {
            map["DatasourceId"] = self.datasourceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderDirect != nil {
            map["OrderDirect"] = self.orderDirect!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetId") && dict["BackupSetId"] != nil {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("DatasourceId") && dict["DatasourceId"] != nil {
            self.datasourceId = dict["DatasourceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("OrderColumn") && dict["OrderColumn"] != nil {
            self.orderColumn = dict["OrderColumn"] as! String
        }
        if dict.keys.contains("OrderDirect") && dict["OrderDirect"] != nil {
            self.orderDirect = dict["OrderDirect"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class DescribeDownloadTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class List : Tea.TeaModel {
                public var backupSetTime: String?

                public var bakSetId: String?

                public var dbList: String?

                public var downloadStatus: String?

                public var exportDataSize: String?

                public var format: String?

                public var gmtCreate: String?

                public var importDataSize: String?

                public var progress: String?

                public var regionCode: String?

                public var targetPath: String?

                public var targetType: String?

                public var taskId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backupSetTime != nil {
                        map["BackupSetTime"] = self.backupSetTime!
                    }
                    if self.bakSetId != nil {
                        map["BakSetId"] = self.bakSetId!
                    }
                    if self.dbList != nil {
                        map["DbList"] = self.dbList!
                    }
                    if self.downloadStatus != nil {
                        map["DownloadStatus"] = self.downloadStatus!
                    }
                    if self.exportDataSize != nil {
                        map["ExportDataSize"] = self.exportDataSize!
                    }
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.importDataSize != nil {
                        map["ImportDataSize"] = self.importDataSize!
                    }
                    if self.progress != nil {
                        map["Progress"] = self.progress!
                    }
                    if self.regionCode != nil {
                        map["RegionCode"] = self.regionCode!
                    }
                    if self.targetPath != nil {
                        map["TargetPath"] = self.targetPath!
                    }
                    if self.targetType != nil {
                        map["TargetType"] = self.targetType!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BackupSetTime") && dict["BackupSetTime"] != nil {
                        self.backupSetTime = dict["BackupSetTime"] as! String
                    }
                    if dict.keys.contains("BakSetId") && dict["BakSetId"] != nil {
                        self.bakSetId = dict["BakSetId"] as! String
                    }
                    if dict.keys.contains("DbList") && dict["DbList"] != nil {
                        self.dbList = dict["DbList"] as! String
                    }
                    if dict.keys.contains("DownloadStatus") && dict["DownloadStatus"] != nil {
                        self.downloadStatus = dict["DownloadStatus"] as! String
                    }
                    if dict.keys.contains("ExportDataSize") && dict["ExportDataSize"] != nil {
                        self.exportDataSize = dict["ExportDataSize"] as! String
                    }
                    if dict.keys.contains("Format") && dict["Format"] != nil {
                        self.format = dict["Format"] as! String
                    }
                    if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("ImportDataSize") && dict["ImportDataSize"] != nil {
                        self.importDataSize = dict["ImportDataSize"] as! String
                    }
                    if dict.keys.contains("Progress") && dict["Progress"] != nil {
                        self.progress = dict["Progress"] as! String
                    }
                    if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
                        self.regionCode = dict["RegionCode"] as! String
                    }
                    if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
                        self.targetPath = dict["TargetPath"] as! String
                    }
                    if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                        self.targetType = dict["TargetType"] as! String
                    }
                    if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                        self.taskId = dict["TaskId"] as! String
                    }
                }
            }
            public var list: [DescribeDownloadTaskResponseBody.Data.Content.List]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.list != nil {
                    var tmp : [Any] = []
                    for k in self.list! {
                        tmp.append(k.toMap())
                    }
                    map["List"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("List") && dict["List"] != nil {
                    var tmp : [DescribeDownloadTaskResponseBody.Data.Content.List] = []
                    for v in dict["List"] as! [Any] {
                        var model = DescribeDownloadTaskResponseBody.Data.Content.List()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.list = tmp
                }
            }
        }
        public var content: DescribeDownloadTaskResponseBody.Data.Content?

        public var extra: String?

        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalElements: Int64?

        public var totalPages: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content?.toMap()
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                var model = DescribeDownloadTaskResponseBody.Data.Content()
                model.fromMap(dict["Content"] as! [String: Any])
                self.content = model
            }
            if dict.keys.contains("Extra") && dict["Extra"] != nil {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeDownloadTaskResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDownloadTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDownloadTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSandboxBackupSetsRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupSetId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupSetId") && dict["BackupSetId"] != nil {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class DescribeSandboxBackupSetsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeSandboxBackupSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSandboxBackupSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSandboxBackupSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSandboxInstancesRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class DescribeSandboxInstancesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeSandboxInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSandboxInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSandboxInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSandboxRecoveryTimeRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
    }
}

public class DescribeSandboxRecoveryTimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupPlanId: String?

        public var recoveryBeginTime: String?

        public var recoveryEndTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupPlanId != nil {
                map["BackupPlanId"] = self.backupPlanId!
            }
            if self.recoveryBeginTime != nil {
                map["RecoveryBeginTime"] = self.recoveryBeginTime!
            }
            if self.recoveryEndTime != nil {
                map["RecoveryEndTime"] = self.recoveryEndTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
                self.backupPlanId = dict["BackupPlanId"] as! String
            }
            if dict.keys.contains("RecoveryBeginTime") && dict["RecoveryBeginTime"] != nil {
                self.recoveryBeginTime = dict["RecoveryBeginTime"] as! String
            }
            if dict.keys.contains("RecoveryEndTime") && dict["RecoveryEndTime"] != nil {
                self.recoveryEndTime = dict["RecoveryEndTime"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeSandboxRecoveryTimeResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeSandboxRecoveryTimeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeSandboxRecoveryTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSandboxRecoveryTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSandboxRecoveryTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBTablesRecoveryStateRequest : Tea.TeaModel {
    public var category: String?

    public var instanceId: String?

    public var regionCode: String?

    public var retention: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! String
        }
    }
}

public class ModifyDBTablesRecoveryStateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ModifyDBTablesRecoveryStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBTablesRecoveryStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDBTablesRecoveryStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SupportDBTableRecoveryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionCode") && dict["RegionCode"] != nil {
            self.regionCode = dict["RegionCode"] as! String
        }
    }
}

public class SupportDBTableRecoveryResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class SupportDBTableRecoveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SupportDBTableRecoveryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SupportDBTableRecoveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
