import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var newResourceGroupId: String?

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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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

public class CreateSandboxInstanceRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupSetId: String?

    public var restoreTime: String?

    public var sandboxInstanceName: String?

    public var sandboxPassword: String?

    public var sandboxSpecification: String?

    public var sandboxType: String?

    public var sandboxUser: String?

    public var vpcId: String?

    public var vpcSwitchId: String?

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
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        if self.sandboxInstanceName != nil {
            map["SandboxInstanceName"] = self.sandboxInstanceName!
        }
        if self.sandboxPassword != nil {
            map["SandboxPassword"] = self.sandboxPassword!
        }
        if self.sandboxSpecification != nil {
            map["SandboxSpecification"] = self.sandboxSpecification!
        }
        if self.sandboxType != nil {
            map["SandboxType"] = self.sandboxType!
        }
        if self.sandboxUser != nil {
            map["SandboxUser"] = self.sandboxUser!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcSwitchId != nil {
            map["VpcSwitchId"] = self.vpcSwitchId!
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
        if dict.keys.contains("RestoreTime") && dict["RestoreTime"] != nil {
            self.restoreTime = dict["RestoreTime"] as! String
        }
        if dict.keys.contains("SandboxInstanceName") && dict["SandboxInstanceName"] != nil {
            self.sandboxInstanceName = dict["SandboxInstanceName"] as! String
        }
        if dict.keys.contains("SandboxPassword") && dict["SandboxPassword"] != nil {
            self.sandboxPassword = dict["SandboxPassword"] as! String
        }
        if dict.keys.contains("SandboxSpecification") && dict["SandboxSpecification"] != nil {
            self.sandboxSpecification = dict["SandboxSpecification"] as! String
        }
        if dict.keys.contains("SandboxType") && dict["SandboxType"] != nil {
            self.sandboxType = dict["SandboxType"] as! String
        }
        if dict.keys.contains("SandboxUser") && dict["SandboxUser"] != nil {
            self.sandboxUser = dict["SandboxUser"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcSwitchId") && dict["VpcSwitchId"] != nil {
            self.vpcSwitchId = dict["VpcSwitchId"] as! String
        }
    }
}

public class CreateSandboxInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupPlanId: String?

        public var instanceId: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
                self.backupPlanId = dict["BackupPlanId"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateSandboxInstanceResponseBody.Data?

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
            var model = CreateSandboxInstanceResponseBody.Data()
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

public class CreateSandboxInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSandboxInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateSandboxInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSandboxInstanceRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var instanceId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") && dict["BackupPlanId"] != nil {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
