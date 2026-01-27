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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigureBackupSetInfoRequest : Tea.TeaModel {
    public var backupMethod: String?

    public var backupMode: String?

    public var backupSetId: String?

    public var backupSetName: String?

    public var backupType: String?

    public var checkSum: String?

    public var clientToken: String?

    public var dataSourceId: String?

    public var extraMeta: String?

    public var regionCode: String?

    public var regionId: String?

    public var uploadStatus: String?

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
        if self.backupMethod != nil {
            map["BackupMethod"] = self.backupMethod!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.backupSetName != nil {
            map["BackupSetName"] = self.backupSetName!
        }
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.checkSum != nil {
            map["CheckSum"] = self.checkSum!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.extraMeta != nil {
            map["ExtraMeta"] = self.extraMeta!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uploadStatus != nil {
            map["UploadStatus"] = self.uploadStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["BackupSetName"] as? String {
            self.backupSetName = value
        }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["CheckSum"] as? String {
            self.checkSum = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["ExtraMeta"] as? String {
            self.extraMeta = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UploadStatus"] as? String {
            self.uploadStatus = value
        }
    }
}

public class ConfigureBackupSetInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupSetId: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupSetId"] as? String {
                self.backupSetId = value
            }
        }
    }
    public var code: String?

    public var data: ConfigureBackupSetInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ConfigureBackupSetInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ConfigureBackupSetInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureBackupSetInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfigureBackupSetInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAdvancedPolicyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
    }
}

public class CreateAdvancedPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreateAdvancedPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAdvancedPolicyResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAdvancedPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDownloadRequest : Tea.TeaModel {
    public var adminDatabase: String?

    public var bakSetId: String?

    public var bakSetSize: String?

    public var bakSetType: String?

    public var clusterName: String?

    public var downloadPointInTime: String?

    public var formatType: String?

    public var instanceName: String?

    public var isCluster: String?

    public var isPhysical: Bool?

    public var primaryKeyTypeOnly: String?

    public var regionCode: String?

    public var targetBucket: String?

    public var targetOssRegion: String?

    public var targetPath: String?

    public var targetType: String?

    public var useZstd: String?

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
        if self.adminDatabase != nil {
            map["AdminDatabase"] = self.adminDatabase!
        }
        if self.bakSetId != nil {
            map["BakSetId"] = self.bakSetId!
        }
        if self.bakSetSize != nil {
            map["BakSetSize"] = self.bakSetSize!
        }
        if self.bakSetType != nil {
            map["BakSetType"] = self.bakSetType!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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
        if self.isCluster != nil {
            map["IsCluster"] = self.isCluster!
        }
        if self.isPhysical != nil {
            map["IsPhysical"] = self.isPhysical!
        }
        if self.primaryKeyTypeOnly != nil {
            map["PrimaryKeyTypeOnly"] = self.primaryKeyTypeOnly!
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
        if self.useZstd != nil {
            map["UseZstd"] = self.useZstd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminDatabase"] as? String {
            self.adminDatabase = value
        }
        if let value = dict["BakSetId"] as? String {
            self.bakSetId = value
        }
        if let value = dict["BakSetSize"] as? String {
            self.bakSetSize = value
        }
        if let value = dict["BakSetType"] as? String {
            self.bakSetType = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DownloadPointInTime"] as? String {
            self.downloadPointInTime = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsCluster"] as? String {
            self.isCluster = value
        }
        if let value = dict["IsPhysical"] as? Bool {
            self.isPhysical = value
        }
        if let value = dict["PrimaryKeyTypeOnly"] as? String {
            self.primaryKeyTypeOnly = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["TargetBucket"] as? String {
            self.targetBucket = value
        }
        if let value = dict["TargetOssRegion"] as? String {
            self.targetOssRegion = value
        }
        if let value = dict["TargetPath"] as? String {
            self.targetPath = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["UseZstd"] as? String {
            self.useZstd = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupSetTime"] as? Int64 {
                self.backupSetTime = value
            }
            if let value = dict["BakSetId"] as? String {
                self.bakSetId = value
            }
            if let value = dict["DbList"] as? String {
                self.dbList = value
            }
            if let value = dict["DownloadStatus"] as? String {
                self.downloadStatus = value
            }
            if let value = dict["ExportDataSize"] as? Int64 {
                self.exportDataSize = value
            }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["ImportDataSize"] as? Int64 {
                self.importDataSize = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RegionCode"] as? String {
                self.regionCode = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateDownloadResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDownloadResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSandboxInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["BackupScale"] as? String {
            self.backupScale = value
        }
        if let value = dict["BackupStatus"] as? String {
            self.backupStatus = value
        }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceIsDeleted"] as? Bool {
            self.instanceIsDeleted = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceRegion"] as? String {
            self.instanceRegion = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DumpId"] as? Int64 {
                        self.dumpId = value
                    }
                    if let value = dict["DumpSize"] as? Int64 {
                        self.dumpSize = value
                    }
                    if let value = dict["ExpectExpireTime"] as? String {
                        self.expectExpireTime = value
                    }
                    if let value = dict["expectExpireType"] as? String {
                        self.expectExpireType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupDownloadURL"] as? String {
                    self.backupDownloadURL = value
                }
                if let value = dict["BackupEndTime"] as? String {
                    self.backupEndTime = value
                }
                if let value = dict["BackupId"] as? String {
                    self.backupId = value
                }
                if let value = dict["BackupIntranetDownloadURL"] as? String {
                    self.backupIntranetDownloadURL = value
                }
                if let value = dict["BackupLocation"] as? String {
                    self.backupLocation = value
                }
                if let value = dict["BackupMethod"] as? String {
                    self.backupMethod = value
                }
                if let value = dict["BackupMode"] as? String {
                    self.backupMode = value
                }
                if let value = dict["BackupName"] as? String {
                    self.backupName = value
                }
                if let value = dict["BackupScale"] as? String {
                    self.backupScale = value
                }
                if let value = dict["BackupSize"] as? Int64 {
                    self.backupSize = value
                }
                if let value = dict["BackupStartTime"] as? String {
                    self.backupStartTime = value
                }
                if let value = dict["BackupStatus"] as? String {
                    self.backupStatus = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["Checksum"] as? String {
                    self.checksum = value
                }
                if let value = dict["ConsistentTime"] as? Int64 {
                    self.consistentTime = value
                }
                if let value = dict["Encryption"] as? String {
                    self.encryption = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["ExpectExpireTime"] as? String {
                    self.expectExpireTime = value
                }
                if let value = dict["ExpectExpireType"] as? String {
                    self.expectExpireType = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["IsAvail"] as? Int32 {
                    self.isAvail = value
                }
                if let value = dict["PolarSnapshot"] as? [String: Any?] {
                    var model = DescribeBackupDataListResponseBody.Data.Content.PolarSnapshot()
                    model.fromMap(value)
                    self.polarSnapshot = model
                }
                if let value = dict["SupportDeletion"] as? Int32 {
                    self.supportDeletion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [Any?] {
                var tmp : [DescribeBackupDataListResponseBody.Data.Content] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupDataListResponseBody.Data.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["PageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalElements"] as? Int64 {
                self.totalElements = value
            }
            if let value = dict["TotalPages"] as? Int64 {
                self.totalPages = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeBackupDataListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupDataListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

            public var policyId: String?

            public var retentionType: String?

            public var retentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

            public var storageClass: String?

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
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
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
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreated"] as? Bool {
                    self.autoCreated = value
                }
                if let value = dict["BakType"] as? String {
                    self.bakType = value
                }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["DumpAction"] as? String {
                    self.dumpAction = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["RetentionType"] as? String {
                    self.retentionType = value
                }
                if let value = dict["RetentionValue"] as? String {
                    self.retentionValue = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
            }
        }
        public class AdvanceIncPolicies : Tea.TeaModel {
            public var autoCreated: Bool?

            public var bakType: String?

            public var destRegion: String?

            public var destType: String?

            public var dumpAction: String?

            public var filterKey: String?

            public var filterType: String?

            public var filterValue: String?

            public var policyId: String?

            public var retentionType: String?

            public var retentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

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
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreated"] as? Bool {
                    self.autoCreated = value
                }
                if let value = dict["BakType"] as? String {
                    self.bakType = value
                }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["DumpAction"] as? String {
                    self.dumpAction = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["RetentionType"] as? String {
                    self.retentionType = value
                }
                if let value = dict["RetentionValue"] as? String {
                    self.retentionValue = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
            }
        }
        public class AdvanceLogPolicies : Tea.TeaModel {
            public var destRegion: String?

            public var destType: String?

            public var enableLogBackup: Int64?

            public var filterKey: String?

            public var filterType: String?

            public var filterValue: String?

            public var logRetentionType: String?

            public var logRetentionValue: String?

            public var policyId: String?

            public var srcRegion: String?

            public var srcType: String?

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
                if self.filterKey != nil {
                    map["FilterKey"] = self.filterKey!
                }
                if self.filterType != nil {
                    map["FilterType"] = self.filterType!
                }
                if self.filterValue != nil {
                    map["FilterValue"] = self.filterValue!
                }
                if self.logRetentionType != nil {
                    map["LogRetentionType"] = self.logRetentionType!
                }
                if self.logRetentionValue != nil {
                    map["LogRetentionValue"] = self.logRetentionValue!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.srcRegion != nil {
                    map["SrcRegion"] = self.srcRegion!
                }
                if self.srcType != nil {
                    map["SrcType"] = self.srcType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["EnableLogBackup"] as? Int64 {
                    self.enableLogBackup = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["LogRetentionType"] as? String {
                    self.logRetentionType = value
                }
                if let value = dict["LogRetentionValue"] as? String {
                    self.logRetentionValue = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
            }
        }
        public var advanceDataPolicies: [DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies]?

        public var advanceIncPolicies: [DescribeBackupPolicyResponseBody.Data.AdvanceIncPolicies]?

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
            if self.advanceIncPolicies != nil {
                var tmp : [Any] = []
                for k in self.advanceIncPolicies! {
                    tmp.append(k.toMap())
                }
                map["AdvanceIncPolicies"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceDataPolicies"] as? [Any?] {
                var tmp : [DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupPolicyResponseBody.Data.AdvanceDataPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceDataPolicies = tmp
            }
            if let value = dict["AdvanceIncPolicies"] as? [Any?] {
                var tmp : [DescribeBackupPolicyResponseBody.Data.AdvanceIncPolicies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupPolicyResponseBody.Data.AdvanceIncPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceIncPolicies = tmp
            }
            if let value = dict["AdvanceLogPolicies"] as? [Any?] {
                var tmp : [DescribeBackupPolicyResponseBody.Data.AdvanceLogPolicies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupPolicyResponseBody.Data.AdvanceLogPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceLogPolicies = tmp
            }
            if let value = dict["BackupMethod"] as? String {
                self.backupMethod = value
            }
            if let value = dict["BackupPriority"] as? Int32 {
                self.backupPriority = value
            }
            if let value = dict["BackupRetentionPeriod"] as? Int32 {
                self.backupRetentionPeriod = value
            }
            if let value = dict["BackupRetentionPolicyOnClusterDeletion"] as? String {
                self.backupRetentionPolicyOnClusterDeletion = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["EnableBackup"] as? Int32 {
                self.enableBackup = value
            }
            if let value = dict["EnableIncBackup"] as? Int32 {
                self.enableIncBackup = value
            }
            if let value = dict["EnableLogBackup"] as? Int32 {
                self.enableLogBackup = value
            }
            if let value = dict["HighFrequencyBakInterval"] as? Int32 {
                self.highFrequencyBakInterval = value
            }
            if let value = dict["HighSpaceUsageProtection"] as? String {
                self.highSpaceUsageProtection = value
            }
            if let value = dict["IncBackupInterval"] as? Int32 {
                self.incBackupInterval = value
            }
            if let value = dict["LocalLogRetentionSpace"] as? Int32 {
                self.localLogRetentionSpace = value
            }
            if let value = dict["LogBackupLocalRetentionNumber"] as? String {
                self.logBackupLocalRetentionNumber = value
            }
            if let value = dict["LogBackupRetention"] as? Int32 {
                self.logBackupRetention = value
            }
            if let value = dict["PreferredBackupDate"] as? String {
                self.preferredBackupDate = value
            }
            if let value = dict["PreferredBackupWindow"] as? String {
                self.preferredBackupWindow = value
            }
            if let value = dict["PreferredBackupWindowBegin"] as? String {
                self.preferredBackupWindowBegin = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeBackupPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBakDataSourceStorageAccessInfoRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var backupType: String?

    public var clientToken: String?

    public var dataSourceId: String?

    public var durationSeconds: Int64?

    public var regionCode: String?

    public var regionId: String?

    public var storageType: String?

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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.durationSeconds != nil {
            map["DurationSeconds"] = self.durationSeconds!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DurationSeconds"] as? Int64 {
            self.durationSeconds = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class DescribeBakDataSourceStorageAccessInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OssAccessInfo : Tea.TeaModel {
            public var accessKeyId: String?

            public var accessKeySecret: String?

            public var bucketName: String?

            public var expiredTime: String?

            public var objectKey: String?

            public var ossEndpoint: String?

            public var ossInternalEndpoint: String?

            public var ossRegion: String?

            public var securityToken: String?

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
                if self.accessKeyId != nil {
                    map["AccessKeyId"] = self.accessKeyId!
                }
                if self.accessKeySecret != nil {
                    map["AccessKeySecret"] = self.accessKeySecret!
                }
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.objectKey != nil {
                    map["ObjectKey"] = self.objectKey!
                }
                if self.ossEndpoint != nil {
                    map["OssEndpoint"] = self.ossEndpoint!
                }
                if self.ossInternalEndpoint != nil {
                    map["OssInternalEndpoint"] = self.ossInternalEndpoint!
                }
                if self.ossRegion != nil {
                    map["OssRegion"] = self.ossRegion!
                }
                if self.securityToken != nil {
                    map["SecurityToken"] = self.securityToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessKeyId"] as? String {
                    self.accessKeyId = value
                }
                if let value = dict["AccessKeySecret"] as? String {
                    self.accessKeySecret = value
                }
                if let value = dict["BucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["ObjectKey"] as? String {
                    self.objectKey = value
                }
                if let value = dict["OssEndpoint"] as? String {
                    self.ossEndpoint = value
                }
                if let value = dict["OssInternalEndpoint"] as? String {
                    self.ossInternalEndpoint = value
                }
                if let value = dict["OssRegion"] as? String {
                    self.ossRegion = value
                }
                if let value = dict["SecurityToken"] as? String {
                    self.securityToken = value
                }
            }
        }
        public var ossAccessInfo: DescribeBakDataSourceStorageAccessInfoResponseBody.Data.OssAccessInfo?

        public var storageType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ossAccessInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossAccessInfo != nil {
                map["OssAccessInfo"] = self.ossAccessInfo?.toMap()
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OssAccessInfo"] as? [String: Any?] {
                var model = DescribeBakDataSourceStorageAccessInfoResponseBody.Data.OssAccessInfo()
                model.fromMap(value)
                self.ossAccessInfo = model
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
        }
    }
    public var code: String?

    public var data: DescribeBakDataSourceStorageAccessInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeBakDataSourceStorageAccessInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DescribeBakDataSourceStorageAccessInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBakDataSourceStorageAccessInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBakDataSourceStorageAccessInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCostInfoByDbsInstanceRequest : Tea.TeaModel {
    public var backupPlanId: String?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
    }
}

public class DescribeCostInfoByDbsInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DescribeCostInfoByDbsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCostInfoByDbsInstanceResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCostInfoByDbsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryBackupSetRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBTablesRecoveryBackupSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryStateRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBTablesRecoveryStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBTablesRecoveryTimeRangeRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBTablesRecoveryTimeRangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDownloadBackupSetStorageInfoRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpirationTime"] as? Int64 {
                self.expirationTime = value
            }
            if let value = dict["PrivateUrl"] as? String {
                self.privateUrl = value
            }
            if let value = dict["PublicUrl"] as? String {
                self.publicUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDownloadBackupSetStorageInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDownloadBackupSetStorageInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDownloadSupportRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDownloadSupportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDownloadTaskRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["DatasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderDirect"] as? String {
            self.orderDirect = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BackupSetTime"] as? String {
                        self.backupSetTime = value
                    }
                    if let value = dict["BakSetId"] as? String {
                        self.bakSetId = value
                    }
                    if let value = dict["DbList"] as? String {
                        self.dbList = value
                    }
                    if let value = dict["DownloadStatus"] as? String {
                        self.downloadStatus = value
                    }
                    if let value = dict["ExportDataSize"] as? String {
                        self.exportDataSize = value
                    }
                    if let value = dict["Format"] as? String {
                        self.format = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["ImportDataSize"] as? String {
                        self.importDataSize = value
                    }
                    if let value = dict["Progress"] as? String {
                        self.progress = value
                    }
                    if let value = dict["RegionCode"] as? String {
                        self.regionCode = value
                    }
                    if let value = dict["TargetPath"] as? String {
                        self.targetPath = value
                    }
                    if let value = dict["TargetType"] as? String {
                        self.targetType = value
                    }
                    if let value = dict["TaskId"] as? String {
                        self.taskId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["List"] as? [Any?] {
                    var tmp : [DescribeDownloadTaskResponseBody.Data.Content.List] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDownloadTaskResponseBody.Data.Content.List()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [String: Any?] {
                var model = DescribeDownloadTaskResponseBody.Data.Content()
                model.fromMap(value)
                self.content = model
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["PageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalElements"] as? Int64 {
                self.totalElements = value
            }
            if let value = dict["TotalPages"] as? Int64 {
                self.totalPages = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDownloadTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDownloadTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSandboxBackupSetsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSandboxInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupPlanId"] as? String {
                self.backupPlanId = value
            }
            if let value = dict["RecoveryBeginTime"] as? String {
                self.recoveryBeginTime = value
            }
            if let value = dict["RecoveryEndTime"] as? String {
                self.recoveryEndTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeSandboxRecoveryTimeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSandboxRecoveryTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public class AdvanceDataPolicies : Tea.TeaModel {
        public var actionType: String?

        public var destRegion: String?

        public var destType: String?

        public var filterKey: String?

        public var filterType: String?

        public var filterValue: String?

        public var onlyPreserveOneEachDay: Bool?

        public var policyId: String?

        public var retentionType: String?

        public var retentionValue: String?

        public var srcRegion: String?

        public var srcType: String?

        public var storageClass: String?

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
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.destRegion != nil {
                map["DestRegion"] = self.destRegion!
            }
            if self.destType != nil {
                map["DestType"] = self.destType!
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
            if self.onlyPreserveOneEachDay != nil {
                map["OnlyPreserveOneEachDay"] = self.onlyPreserveOneEachDay!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
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
            if self.storageClass != nil {
                map["StorageClass"] = self.storageClass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? String {
                self.actionType = value
            }
            if let value = dict["DestRegion"] as? String {
                self.destRegion = value
            }
            if let value = dict["DestType"] as? String {
                self.destType = value
            }
            if let value = dict["FilterKey"] as? String {
                self.filterKey = value
            }
            if let value = dict["FilterType"] as? String {
                self.filterType = value
            }
            if let value = dict["FilterValue"] as? String {
                self.filterValue = value
            }
            if let value = dict["OnlyPreserveOneEachDay"] as? Bool {
                self.onlyPreserveOneEachDay = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["RetentionType"] as? String {
                self.retentionType = value
            }
            if let value = dict["RetentionValue"] as? String {
                self.retentionValue = value
            }
            if let value = dict["SrcRegion"] as? String {
                self.srcRegion = value
            }
            if let value = dict["SrcType"] as? String {
                self.srcType = value
            }
            if let value = dict["StorageClass"] as? String {
                self.storageClass = value
            }
        }
    }
    public class AdvanceIncPolicies : Tea.TeaModel {
        public var actionType: String?

        public var destRegion: String?

        public var destType: String?

        public var filterKey: String?

        public var filterType: String?

        public var filterValue: String?

        public var onlyPreserveOneEachDay: Bool?

        public var policyId: String?

        public var retentionType: String?

        public var retentionValue: String?

        public var srcRegion: String?

        public var srcType: String?

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
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.destRegion != nil {
                map["DestRegion"] = self.destRegion!
            }
            if self.destType != nil {
                map["DestType"] = self.destType!
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
            if self.onlyPreserveOneEachDay != nil {
                map["OnlyPreserveOneEachDay"] = self.onlyPreserveOneEachDay!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? String {
                self.actionType = value
            }
            if let value = dict["DestRegion"] as? String {
                self.destRegion = value
            }
            if let value = dict["DestType"] as? String {
                self.destType = value
            }
            if let value = dict["FilterKey"] as? String {
                self.filterKey = value
            }
            if let value = dict["FilterType"] as? String {
                self.filterType = value
            }
            if let value = dict["FilterValue"] as? String {
                self.filterValue = value
            }
            if let value = dict["OnlyPreserveOneEachDay"] as? Bool {
                self.onlyPreserveOneEachDay = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["RetentionType"] as? String {
                self.retentionType = value
            }
            if let value = dict["RetentionValue"] as? String {
                self.retentionValue = value
            }
            if let value = dict["SrcRegion"] as? String {
                self.srcRegion = value
            }
            if let value = dict["SrcType"] as? String {
                self.srcType = value
            }
        }
    }
    public class AdvanceLogPolicies : Tea.TeaModel {
        public var actionType: String?

        public var destRegion: String?

        public var destType: String?

        public var enableLogBackup: Int64?

        public var filterKey: String?

        public var filterType: String?

        public var filterValue: String?

        public var logRetentionType: String?

        public var logRetentionValue: String?

        public var policyId: String?

        public var srcRegion: String?

        public var srcType: String?

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
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.destRegion != nil {
                map["DestRegion"] = self.destRegion!
            }
            if self.destType != nil {
                map["DestType"] = self.destType!
            }
            if self.enableLogBackup != nil {
                map["EnableLogBackup"] = self.enableLogBackup!
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
            if self.logRetentionType != nil {
                map["LogRetentionType"] = self.logRetentionType!
            }
            if self.logRetentionValue != nil {
                map["LogRetentionValue"] = self.logRetentionValue!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.srcRegion != nil {
                map["SrcRegion"] = self.srcRegion!
            }
            if self.srcType != nil {
                map["SrcType"] = self.srcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? String {
                self.actionType = value
            }
            if let value = dict["DestRegion"] as? String {
                self.destRegion = value
            }
            if let value = dict["DestType"] as? String {
                self.destType = value
            }
            if let value = dict["EnableLogBackup"] as? Int64 {
                self.enableLogBackup = value
            }
            if let value = dict["FilterKey"] as? String {
                self.filterKey = value
            }
            if let value = dict["FilterType"] as? String {
                self.filterType = value
            }
            if let value = dict["FilterValue"] as? String {
                self.filterValue = value
            }
            if let value = dict["LogRetentionType"] as? String {
                self.logRetentionType = value
            }
            if let value = dict["LogRetentionValue"] as? String {
                self.logRetentionValue = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["SrcRegion"] as? String {
                self.srcRegion = value
            }
            if let value = dict["SrcType"] as? String {
                self.srcType = value
            }
        }
    }
    public var advanceDataPolicies: [ModifyBackupPolicyRequest.AdvanceDataPolicies]?

    public var advanceIncPolicies: [ModifyBackupPolicyRequest.AdvanceIncPolicies]?

    public var advanceLogPolicies: [ModifyBackupPolicyRequest.AdvanceLogPolicies]?

    public var backupMethod: String?

    public var backupPriority: Int32?

    public var backupRetentionPolicyOnClusterDeletion: String?

    public var category: String?

    public var enableIncBackup: Bool?

    public var instanceName: String?

    public var preferredBackupWindowBegin: String?

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
        if self.advanceDataPolicies != nil {
            var tmp : [Any] = []
            for k in self.advanceDataPolicies! {
                tmp.append(k.toMap())
            }
            map["AdvanceDataPolicies"] = tmp
        }
        if self.advanceIncPolicies != nil {
            var tmp : [Any] = []
            for k in self.advanceIncPolicies! {
                tmp.append(k.toMap())
            }
            map["AdvanceIncPolicies"] = tmp
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
        if self.backupRetentionPolicyOnClusterDeletion != nil {
            map["BackupRetentionPolicyOnClusterDeletion"] = self.backupRetentionPolicyOnClusterDeletion!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.enableIncBackup != nil {
            map["EnableIncBackup"] = self.enableIncBackup!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.preferredBackupWindowBegin != nil {
            map["PreferredBackupWindowBegin"] = self.preferredBackupWindowBegin!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvanceDataPolicies"] as? [Any?] {
            var tmp : [ModifyBackupPolicyRequest.AdvanceDataPolicies] = []
            for v in value {
                if v != nil {
                    var model = ModifyBackupPolicyRequest.AdvanceDataPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.advanceDataPolicies = tmp
        }
        if let value = dict["AdvanceIncPolicies"] as? [Any?] {
            var tmp : [ModifyBackupPolicyRequest.AdvanceIncPolicies] = []
            for v in value {
                if v != nil {
                    var model = ModifyBackupPolicyRequest.AdvanceIncPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.advanceIncPolicies = tmp
        }
        if let value = dict["AdvanceLogPolicies"] as? [Any?] {
            var tmp : [ModifyBackupPolicyRequest.AdvanceLogPolicies] = []
            for v in value {
                if v != nil {
                    var model = ModifyBackupPolicyRequest.AdvanceLogPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.advanceLogPolicies = tmp
        }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["BackupPriority"] as? Int32 {
            self.backupPriority = value
        }
        if let value = dict["BackupRetentionPolicyOnClusterDeletion"] as? String {
            self.backupRetentionPolicyOnClusterDeletion = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["EnableIncBackup"] as? Bool {
            self.enableIncBackup = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PreferredBackupWindowBegin"] as? String {
            self.preferredBackupWindowBegin = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
    }
}

public class ModifyBackupPolicyShrinkRequest : Tea.TeaModel {
    public var advanceDataPoliciesShrink: String?

    public var advanceIncPoliciesShrink: String?

    public var advanceLogPoliciesShrink: String?

    public var backupMethod: String?

    public var backupPriority: Int32?

    public var backupRetentionPolicyOnClusterDeletion: String?

    public var category: String?

    public var enableIncBackup: Bool?

    public var instanceName: String?

    public var preferredBackupWindowBegin: String?

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
        if self.advanceDataPoliciesShrink != nil {
            map["AdvanceDataPolicies"] = self.advanceDataPoliciesShrink!
        }
        if self.advanceIncPoliciesShrink != nil {
            map["AdvanceIncPolicies"] = self.advanceIncPoliciesShrink!
        }
        if self.advanceLogPoliciesShrink != nil {
            map["AdvanceLogPolicies"] = self.advanceLogPoliciesShrink!
        }
        if self.backupMethod != nil {
            map["BackupMethod"] = self.backupMethod!
        }
        if self.backupPriority != nil {
            map["BackupPriority"] = self.backupPriority!
        }
        if self.backupRetentionPolicyOnClusterDeletion != nil {
            map["BackupRetentionPolicyOnClusterDeletion"] = self.backupRetentionPolicyOnClusterDeletion!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.enableIncBackup != nil {
            map["EnableIncBackup"] = self.enableIncBackup!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.preferredBackupWindowBegin != nil {
            map["PreferredBackupWindowBegin"] = self.preferredBackupWindowBegin!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvanceDataPolicies"] as? String {
            self.advanceDataPoliciesShrink = value
        }
        if let value = dict["AdvanceIncPolicies"] as? String {
            self.advanceIncPoliciesShrink = value
        }
        if let value = dict["AdvanceLogPolicies"] as? String {
            self.advanceLogPoliciesShrink = value
        }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["BackupPriority"] as? Int32 {
            self.backupPriority = value
        }
        if let value = dict["BackupRetentionPolicyOnClusterDeletion"] as? String {
            self.backupRetentionPolicyOnClusterDeletion = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["EnableIncBackup"] as? Bool {
            self.enableIncBackup = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PreferredBackupWindowBegin"] as? String {
            self.preferredBackupWindowBegin = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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

            public var onlyPreserveOneEachDay: Bool?

            public var policyId: String?

            public var retentionType: String?

            public var retentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

            public var storageClass: String?

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
                if self.onlyPreserveOneEachDay != nil {
                    map["OnlyPreserveOneEachDay"] = self.onlyPreserveOneEachDay!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
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
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreated"] as? Bool {
                    self.autoCreated = value
                }
                if let value = dict["BakType"] as? String {
                    self.bakType = value
                }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["DumpAction"] as? String {
                    self.dumpAction = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["OnlyPreserveOneEachDay"] as? Bool {
                    self.onlyPreserveOneEachDay = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["RetentionType"] as? String {
                    self.retentionType = value
                }
                if let value = dict["RetentionValue"] as? String {
                    self.retentionValue = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
            }
        }
        public class AdvanceIncPolicies : Tea.TeaModel {
            public var autoCreated: Bool?

            public var bakType: String?

            public var destRegion: String?

            public var destType: String?

            public var dumpAction: String?

            public var filterKey: String?

            public var filterType: String?

            public var filterValue: String?

            public var onlyPreserveOneEachDay: Bool?

            public var policyId: String?

            public var retentionType: String?

            public var retentionValue: String?

            public var srcRegion: String?

            public var srcType: String?

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
                if self.onlyPreserveOneEachDay != nil {
                    map["OnlyPreserveOneEachDay"] = self.onlyPreserveOneEachDay!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreated"] as? Bool {
                    self.autoCreated = value
                }
                if let value = dict["BakType"] as? String {
                    self.bakType = value
                }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["DumpAction"] as? String {
                    self.dumpAction = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["OnlyPreserveOneEachDay"] as? Bool {
                    self.onlyPreserveOneEachDay = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["RetentionType"] as? String {
                    self.retentionType = value
                }
                if let value = dict["RetentionValue"] as? String {
                    self.retentionValue = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
            }
        }
        public class AdvanceLogPolicies : Tea.TeaModel {
            public var destRegion: String?

            public var destType: String?

            public var enableLogBackup: Int64?

            public var filterKey: String?

            public var filterType: String?

            public var filterValue: String?

            public var logRetentionType: String?

            public var logRetentionValue: String?

            public var policyId: String?

            public var srcRegion: String?

            public var srcType: String?

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
                if self.filterKey != nil {
                    map["FilterKey"] = self.filterKey!
                }
                if self.filterType != nil {
                    map["FilterType"] = self.filterType!
                }
                if self.filterValue != nil {
                    map["FilterValue"] = self.filterValue!
                }
                if self.logRetentionType != nil {
                    map["LogRetentionType"] = self.logRetentionType!
                }
                if self.logRetentionValue != nil {
                    map["LogRetentionValue"] = self.logRetentionValue!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.srcRegion != nil {
                    map["SrcRegion"] = self.srcRegion!
                }
                if self.srcType != nil {
                    map["SrcType"] = self.srcType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestRegion"] as? String {
                    self.destRegion = value
                }
                if let value = dict["DestType"] as? String {
                    self.destType = value
                }
                if let value = dict["EnableLogBackup"] as? Int64 {
                    self.enableLogBackup = value
                }
                if let value = dict["FilterKey"] as? String {
                    self.filterKey = value
                }
                if let value = dict["FilterType"] as? String {
                    self.filterType = value
                }
                if let value = dict["FilterValue"] as? String {
                    self.filterValue = value
                }
                if let value = dict["LogRetentionType"] as? String {
                    self.logRetentionType = value
                }
                if let value = dict["LogRetentionValue"] as? String {
                    self.logRetentionValue = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["SrcRegion"] as? String {
                    self.srcRegion = value
                }
                if let value = dict["SrcType"] as? String {
                    self.srcType = value
                }
            }
        }
        public var advanceDataPolicies: [ModifyBackupPolicyResponseBody.Data.AdvanceDataPolicies]?

        public var advanceIncPolicies: [ModifyBackupPolicyResponseBody.Data.AdvanceIncPolicies]?

        public var advanceLogPolicies: [ModifyBackupPolicyResponseBody.Data.AdvanceLogPolicies]?

        public var backupMethod: String?

        public var backupPriority: Int32?

        public var backupRetentionPolicyOnClusterDeletion: String?

        public var category: String?

        public var enableIncBackup: Bool?

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
            if self.advanceIncPolicies != nil {
                var tmp : [Any] = []
                for k in self.advanceIncPolicies! {
                    tmp.append(k.toMap())
                }
                map["AdvanceIncPolicies"] = tmp
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
            if self.backupRetentionPolicyOnClusterDeletion != nil {
                map["BackupRetentionPolicyOnClusterDeletion"] = self.backupRetentionPolicyOnClusterDeletion!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.enableIncBackup != nil {
                map["EnableIncBackup"] = self.enableIncBackup!
            }
            if self.preferredBackupWindow != nil {
                map["PreferredBackupWindow"] = self.preferredBackupWindow!
            }
            if self.preferredBackupWindowBegin != nil {
                map["PreferredBackupWindowBegin"] = self.preferredBackupWindowBegin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceDataPolicies"] as? [Any?] {
                var tmp : [ModifyBackupPolicyResponseBody.Data.AdvanceDataPolicies] = []
                for v in value {
                    if v != nil {
                        var model = ModifyBackupPolicyResponseBody.Data.AdvanceDataPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceDataPolicies = tmp
            }
            if let value = dict["AdvanceIncPolicies"] as? [Any?] {
                var tmp : [ModifyBackupPolicyResponseBody.Data.AdvanceIncPolicies] = []
                for v in value {
                    if v != nil {
                        var model = ModifyBackupPolicyResponseBody.Data.AdvanceIncPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceIncPolicies = tmp
            }
            if let value = dict["AdvanceLogPolicies"] as? [Any?] {
                var tmp : [ModifyBackupPolicyResponseBody.Data.AdvanceLogPolicies] = []
                for v in value {
                    if v != nil {
                        var model = ModifyBackupPolicyResponseBody.Data.AdvanceLogPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advanceLogPolicies = tmp
            }
            if let value = dict["BackupMethod"] as? String {
                self.backupMethod = value
            }
            if let value = dict["BackupPriority"] as? Int32 {
                self.backupPriority = value
            }
            if let value = dict["BackupRetentionPolicyOnClusterDeletion"] as? String {
                self.backupRetentionPolicyOnClusterDeletion = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["EnableIncBackup"] as? Bool {
                self.enableIncBackup = value
            }
            if let value = dict["PreferredBackupWindow"] as? String {
                self.preferredBackupWindow = value
            }
            if let value = dict["PreferredBackupWindowBegin"] as? String {
                self.preferredBackupWindowBegin = value
            }
        }
    }
    public var code: String?

    public var data: ModifyBackupPolicyResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyBackupPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ModifyBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPolicyResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBTablesRecoveryStateRequest : Tea.TeaModel {
    public var category: String?

    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["Retention"] as? String {
            self.retention = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBTablesRecoveryStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryDownloadTaskRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class RetryDownloadTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class RetryDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryDownloadTaskResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RetryDownloadTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SupportDBTableRecoveryRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionCode != nil {
            map["RegionCode"] = self.regionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionCode"] as? String {
            self.regionCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SupportDBTableRecoveryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
