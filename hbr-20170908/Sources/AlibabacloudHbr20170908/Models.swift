import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class OtsDetail : Tea.TeaModel {
    public var tableNames: [String]?

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
        if self.tableNames != nil {
            map["TableNames"] = self.tableNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TableNames") && dict["TableNames"] != nil {
            self.tableNames = dict["TableNames"] as! [String]
        }
    }
}

public class OtsTableRestoreDetail : Tea.TeaModel {
    public var batchChannelCount: Int32?

    public var indexNameSuffix: String?

    public var overwriteExisting: Bool?

    public var reGenerateAutoIncrementPK: Bool?

    public var restoreIndex: Bool?

    public var restoreSearchIndex: Bool?

    public var searchIndexNameSuffix: String?

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
        if self.batchChannelCount != nil {
            map["BatchChannelCount"] = self.batchChannelCount!
        }
        if self.indexNameSuffix != nil {
            map["IndexNameSuffix"] = self.indexNameSuffix!
        }
        if self.overwriteExisting != nil {
            map["OverwriteExisting"] = self.overwriteExisting!
        }
        if self.reGenerateAutoIncrementPK != nil {
            map["ReGenerateAutoIncrementPK"] = self.reGenerateAutoIncrementPK!
        }
        if self.restoreIndex != nil {
            map["RestoreIndex"] = self.restoreIndex!
        }
        if self.restoreSearchIndex != nil {
            map["RestoreSearchIndex"] = self.restoreSearchIndex!
        }
        if self.searchIndexNameSuffix != nil {
            map["SearchIndexNameSuffix"] = self.searchIndexNameSuffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchChannelCount") && dict["BatchChannelCount"] != nil {
            self.batchChannelCount = dict["BatchChannelCount"] as! Int32
        }
        if dict.keys.contains("IndexNameSuffix") && dict["IndexNameSuffix"] != nil {
            self.indexNameSuffix = dict["IndexNameSuffix"] as! String
        }
        if dict.keys.contains("OverwriteExisting") && dict["OverwriteExisting"] != nil {
            self.overwriteExisting = dict["OverwriteExisting"] as! Bool
        }
        if dict.keys.contains("ReGenerateAutoIncrementPK") && dict["ReGenerateAutoIncrementPK"] != nil {
            self.reGenerateAutoIncrementPK = dict["ReGenerateAutoIncrementPK"] as! Bool
        }
        if dict.keys.contains("RestoreIndex") && dict["RestoreIndex"] != nil {
            self.restoreIndex = dict["RestoreIndex"] as! Bool
        }
        if dict.keys.contains("RestoreSearchIndex") && dict["RestoreSearchIndex"] != nil {
            self.restoreSearchIndex = dict["RestoreSearchIndex"] as! Bool
        }
        if dict.keys.contains("SearchIndexNameSuffix") && dict["SearchIndexNameSuffix"] != nil {
            self.searchIndexNameSuffix = dict["SearchIndexNameSuffix"] as! String
        }
    }
}

public class Report : Tea.TeaModel {
    public var failedFiles: String?

    public var skippedFiles: String?

    public var successFiles: String?

    public var totalFiles: String?

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
        if self.failedFiles != nil {
            map["FailedFiles"] = self.failedFiles!
        }
        if self.skippedFiles != nil {
            map["SkippedFiles"] = self.skippedFiles!
        }
        if self.successFiles != nil {
            map["SuccessFiles"] = self.successFiles!
        }
        if self.totalFiles != nil {
            map["TotalFiles"] = self.totalFiles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedFiles") && dict["FailedFiles"] != nil {
            self.failedFiles = dict["FailedFiles"] as! String
        }
        if dict.keys.contains("SkippedFiles") && dict["SkippedFiles"] != nil {
            self.skippedFiles = dict["SkippedFiles"] as! String
        }
        if dict.keys.contains("SuccessFiles") && dict["SuccessFiles"] != nil {
            self.successFiles = dict["SuccessFiles"] as! String
        }
        if dict.keys.contains("TotalFiles") && dict["TotalFiles"] != nil {
            self.totalFiles = dict["TotalFiles"] as! String
        }
    }
}

public class Rule : Tea.TeaModel {
    public var backupType: String?

    public var destinationRegionId: String?

    public var destinationRetention: Int64?

    public var disabled: Bool?

    public var doCopy: Bool?

    public var retention: Int64?

    public var ruleName: String?

    public var schedule: String?

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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.destinationRetention != nil {
            map["DestinationRetention"] = self.destinationRetention!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.doCopy != nil {
            map["DoCopy"] = self.doCopy!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
            self.destinationRetention = dict["DestinationRetention"] as! Int64
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
            self.doCopy = dict["DoCopy"] as! Bool
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
    }
}

public class AddContainerClusterRequest : Tea.TeaModel {
    public var clusterType: String?

    public var description_: String?

    public var identifier: String?

    public var name: String?

    public var networkType: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
    }
}

public class AddContainerClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var token: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class AddContainerClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddContainerClusterResponseBody?

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
            var model = AddContainerClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachNasFileSystemRequest : Tea.TeaModel {
    public var createTime: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var fileSystemId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
    }
}

public class AttachNasFileSystemResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AttachNasFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachNasFileSystemResponseBody?

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
            var model = AttachNasFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelBackupJobRequest : Tea.TeaModel {
    public var jobId: String?

    public var vaultId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CancelBackupJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelBackupJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelBackupJobResponseBody?

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
            var model = CancelBackupJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelRestoreJobRequest : Tea.TeaModel {
    public var restoreId: String?

    public var vaultId: String?

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
        if self.restoreId != nil {
            map["RestoreId"] = self.restoreId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
            self.restoreId = dict["RestoreId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CancelRestoreJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelRestoreJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRestoreJobResponseBody?

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
            var model = CancelRestoreJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
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

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

public class CheckRoleRequest : Tea.TeaModel {
    public var checkRoleType: String?

    public var crossAccountRoleName: String?

    public var crossAccountUserId: Int64?

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
        if self.checkRoleType != nil {
            map["CheckRoleType"] = self.checkRoleType!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckRoleType") && dict["CheckRoleType"] != nil {
            self.checkRoleType = dict["CheckRoleType"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
    }
}

public class CheckRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckRoleResponseBody?

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
            var model = CheckRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBackupJobRequest : Tea.TeaModel {
    public var backupType: String?

    public var clusterId: String?

    public var containerClusterId: String?

    public var containerResources: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var detail: [String: Any]?

    public var exclude: String?

    public var include: String?

    public var initiatedByAck: Bool?

    public var instanceId: String?

    public var jobName: String?

    public var options: String?

    public var retention: Int64?

    public var sourceType: String?

    public var speedLimit: String?

    public var vaultId: String?

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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.containerClusterId != nil {
            map["ContainerClusterId"] = self.containerClusterId!
        }
        if self.containerResources != nil {
            map["ContainerResources"] = self.containerResources!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.initiatedByAck != nil {
            map["InitiatedByAck"] = self.initiatedByAck!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerClusterId") && dict["ContainerClusterId"] != nil {
            self.containerClusterId = dict["ContainerClusterId"] as! String
        }
        if dict.keys.contains("ContainerResources") && dict["ContainerResources"] != nil {
            self.containerResources = dict["ContainerResources"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InitiatedByAck") && dict["InitiatedByAck"] != nil {
            self.initiatedByAck = dict["InitiatedByAck"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("JobName") && dict["JobName"] != nil {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateBackupJobShrinkRequest : Tea.TeaModel {
    public var backupType: String?

    public var clusterId: String?

    public var containerClusterId: String?

    public var containerResources: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var detailShrink: String?

    public var exclude: String?

    public var include: String?

    public var initiatedByAck: Bool?

    public var instanceId: String?

    public var jobName: String?

    public var options: String?

    public var retention: Int64?

    public var sourceType: String?

    public var speedLimit: String?

    public var vaultId: String?

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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.containerClusterId != nil {
            map["ContainerClusterId"] = self.containerClusterId!
        }
        if self.containerResources != nil {
            map["ContainerResources"] = self.containerResources!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.detailShrink != nil {
            map["Detail"] = self.detailShrink!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.initiatedByAck != nil {
            map["InitiatedByAck"] = self.initiatedByAck!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerClusterId") && dict["ContainerClusterId"] != nil {
            self.containerClusterId = dict["ContainerClusterId"] as! String
        }
        if dict.keys.contains("ContainerResources") && dict["ContainerResources"] != nil {
            self.containerResources = dict["ContainerResources"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detailShrink = dict["Detail"] as! String
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InitiatedByAck") && dict["InitiatedByAck"] != nil {
            self.initiatedByAck = dict["InitiatedByAck"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("JobName") && dict["JobName"] != nil {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateBackupJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var jobId: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateBackupJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupJobResponseBody?

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
            var model = CreateBackupJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBackupPlanRequest : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public var backupType: String?

        public var destinationRegionId: String?

        public var destinationRetention: Int64?

        public var disabled: Bool?

        public var doCopy: Bool?

        public var retention: Int64?

        public var ruleName: String?

        public var schedule: String?

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
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationRetention != nil {
                map["DestinationRetention"] = self.destinationRetention!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.doCopy != nil {
                map["DoCopy"] = self.doCopy!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                self.destinationRetention = dict["DestinationRetention"] as! Int64
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                self.doCopy = dict["DoCopy"] as! Bool
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var backupType: String?

    public var bucket: String?

    public var changeListPath: String?

    public var createTime: Int64?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var destDataSourceDetail: [String: Any]?

    public var destDataSourceId: String?

    public var destSourceType: String?

    public var detail: [String: Any]?

    public var disabled: Bool?

    public var exclude: String?

    public var fileSystemId: String?

    public var include: String?

    public var instanceId: String?

    public var instanceName: String?

    public var keepLatestSnapshots: Int64?

    public var options: String?

    public var otsDetail: OtsDetail?

    public var path: [String]?

    public var planName: String?

    public var prefix_: String?

    public var retention: Int64?

    public var rule: [CreateBackupPlanRequest.Rule]?

    public var schedule: String?

    public var sourceType: String?

    public var speedLimit: String?

    public var udmRegionId: String?

    public var vaultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.otsDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.changeListPath != nil {
            map["ChangeListPath"] = self.changeListPath!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.destDataSourceDetail != nil {
            map["DestDataSourceDetail"] = self.destDataSourceDetail!
        }
        if self.destDataSourceId != nil {
            map["DestDataSourceId"] = self.destDataSourceId!
        }
        if self.destSourceType != nil {
            map["DestSourceType"] = self.destSourceType!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.keepLatestSnapshots != nil {
            map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetail != nil {
            map["OtsDetail"] = self.otsDetail?.toMap()
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rule != nil {
            var tmp : [Any] = []
            for k in self.rule! {
                tmp.append(k.toMap())
            }
            map["Rule"] = tmp
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
            self.changeListPath = dict["ChangeListPath"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("DestDataSourceDetail") && dict["DestDataSourceDetail"] != nil {
            self.destDataSourceDetail = dict["DestDataSourceDetail"] as! [String: Any]
        }
        if dict.keys.contains("DestDataSourceId") && dict["DestDataSourceId"] != nil {
            self.destDataSourceId = dict["DestDataSourceId"] as! String
        }
        if dict.keys.contains("DestSourceType") && dict["DestSourceType"] != nil {
            self.destSourceType = dict["DestSourceType"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
            self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            var model = OtsDetail()
            model.fromMap(dict["OtsDetail"] as! [String: Any])
            self.otsDetail = model
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! [String]
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var tmp : [CreateBackupPlanRequest.Rule] = []
            for v in dict["Rule"] as! [Any] {
                var model = CreateBackupPlanRequest.Rule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rule = tmp
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateBackupPlanShrinkRequest : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public var backupType: String?

        public var destinationRegionId: String?

        public var destinationRetention: Int64?

        public var disabled: Bool?

        public var doCopy: Bool?

        public var retention: Int64?

        public var ruleName: String?

        public var schedule: String?

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
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationRetention != nil {
                map["DestinationRetention"] = self.destinationRetention!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.doCopy != nil {
                map["DoCopy"] = self.doCopy!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                self.destinationRetention = dict["DestinationRetention"] as! Int64
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                self.doCopy = dict["DoCopy"] as! Bool
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var backupType: String?

    public var bucket: String?

    public var changeListPath: String?

    public var createTime: Int64?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var destDataSourceDetailShrink: String?

    public var destDataSourceId: String?

    public var destSourceType: String?

    public var detailShrink: String?

    public var disabled: Bool?

    public var exclude: String?

    public var fileSystemId: String?

    public var include: String?

    public var instanceId: String?

    public var instanceName: String?

    public var keepLatestSnapshots: Int64?

    public var options: String?

    public var otsDetailShrink: String?

    public var path: [String]?

    public var planName: String?

    public var prefix_: String?

    public var retention: Int64?

    public var rule: [CreateBackupPlanShrinkRequest.Rule]?

    public var schedule: String?

    public var sourceType: String?

    public var speedLimit: String?

    public var udmRegionId: String?

    public var vaultId: String?

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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.changeListPath != nil {
            map["ChangeListPath"] = self.changeListPath!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.destDataSourceDetailShrink != nil {
            map["DestDataSourceDetail"] = self.destDataSourceDetailShrink!
        }
        if self.destDataSourceId != nil {
            map["DestDataSourceId"] = self.destDataSourceId!
        }
        if self.destSourceType != nil {
            map["DestSourceType"] = self.destSourceType!
        }
        if self.detailShrink != nil {
            map["Detail"] = self.detailShrink!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.keepLatestSnapshots != nil {
            map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetailShrink != nil {
            map["OtsDetail"] = self.otsDetailShrink!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rule != nil {
            var tmp : [Any] = []
            for k in self.rule! {
                tmp.append(k.toMap())
            }
            map["Rule"] = tmp
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
            self.changeListPath = dict["ChangeListPath"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("DestDataSourceDetail") && dict["DestDataSourceDetail"] != nil {
            self.destDataSourceDetailShrink = dict["DestDataSourceDetail"] as! String
        }
        if dict.keys.contains("DestDataSourceId") && dict["DestDataSourceId"] != nil {
            self.destDataSourceId = dict["DestDataSourceId"] as! String
        }
        if dict.keys.contains("DestSourceType") && dict["DestSourceType"] != nil {
            self.destSourceType = dict["DestSourceType"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detailShrink = dict["Detail"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
            self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            self.otsDetailShrink = dict["OtsDetail"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! [String]
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var tmp : [CreateBackupPlanShrinkRequest.Rule] = []
            for v in dict["Rule"] as! [Any] {
                var model = CreateBackupPlanShrinkRequest.Rule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rule = tmp
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var planId: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupPlanResponseBody?

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
            var model = CreateBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClientsRequest : Tea.TeaModel {
    public var alertSetting: String?

    public var clientInfo: String?

    public var resourceGroupId: String?

    public var useHttps: Bool?

    public var vaultId: String?

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
        if self.alertSetting != nil {
            map["AlertSetting"] = self.alertSetting!
        }
        if self.clientInfo != nil {
            map["ClientInfo"] = self.clientInfo!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.useHttps != nil {
            map["UseHttps"] = self.useHttps!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertSetting") && dict["AlertSetting"] != nil {
            self.alertSetting = dict["AlertSetting"] as! String
        }
        if dict.keys.contains("ClientInfo") && dict["ClientInfo"] != nil {
            self.clientInfo = dict["ClientInfo"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("UseHttps") && dict["UseHttps"] != nil {
            self.useHttps = dict["UseHttps"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateClientsResponseBody : Tea.TeaModel {
    public class InstanceStatuses : Tea.TeaModel {
        public class InstanceStatus : Tea.TeaModel {
            public var instanceId: String?

            public var validInstance: Bool?

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
                if self.validInstance != nil {
                    map["ValidInstance"] = self.validInstance!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ValidInstance") && dict["ValidInstance"] != nil {
                    self.validInstance = dict["ValidInstance"] as! Bool
                }
            }
        }
        public var instanceStatus: [CreateClientsResponseBody.InstanceStatuses.InstanceStatus]?

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
            if self.instanceStatus != nil {
                var tmp : [Any] = []
                for k in self.instanceStatus! {
                    tmp.append(k.toMap())
                }
                map["InstanceStatus"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                var tmp : [CreateClientsResponseBody.InstanceStatuses.InstanceStatus] = []
                for v in dict["InstanceStatus"] as! [Any] {
                    var model = CreateClientsResponseBody.InstanceStatuses.InstanceStatus()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceStatus = tmp
            }
        }
    }
    public var code: String?

    public var instanceStatuses: CreateClientsResponseBody.InstanceStatuses?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceStatuses?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceStatuses != nil {
            map["InstanceStatuses"] = self.instanceStatuses?.toMap()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceStatuses") && dict["InstanceStatuses"] != nil {
            var model = CreateClientsResponseBody.InstanceStatuses()
            model.fromMap(dict["InstanceStatuses"] as! [String: Any])
            self.instanceStatuses = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientsResponseBody?

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
            var model = CreateClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHanaBackupPlanRequest : Tea.TeaModel {
    public var backupPrefix: String?

    public var backupType: String?

    public var clusterId: String?

    public var databaseName: String?

    public var planName: String?

    public var resourceGroupId: String?

    public var schedule: String?

    public var vaultId: String?

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
        if self.backupPrefix != nil {
            map["BackupPrefix"] = self.backupPrefix!
        }
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPrefix") && dict["BackupPrefix"] != nil {
            self.backupPrefix = dict["BackupPrefix"] as! String
        }
        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateHanaBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var planId: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateHanaBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHanaBackupPlanResponseBody?

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
            var model = CreateHanaBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHanaInstanceRequest : Tea.TeaModel {
    public var alertSetting: String?

    public var ecsInstanceId: String?

    public var hanaName: String?

    public var host: String?

    public var instanceNumber: Int32?

    public var password: String?

    public var resourceGroupId: String?

    public var sid: String?

    public var useSsl: Bool?

    public var userName: String?

    public var validateCertificate: Bool?

    public var vaultId: String?

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
        if self.alertSetting != nil {
            map["AlertSetting"] = self.alertSetting!
        }
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        if self.hanaName != nil {
            map["HanaName"] = self.hanaName!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceNumber != nil {
            map["InstanceNumber"] = self.instanceNumber!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sid != nil {
            map["Sid"] = self.sid!
        }
        if self.useSsl != nil {
            map["UseSsl"] = self.useSsl!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.validateCertificate != nil {
            map["ValidateCertificate"] = self.validateCertificate!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertSetting") && dict["AlertSetting"] != nil {
            self.alertSetting = dict["AlertSetting"] as! String
        }
        if dict.keys.contains("EcsInstanceId") && dict["EcsInstanceId"] != nil {
            self.ecsInstanceId = dict["EcsInstanceId"] as! String
        }
        if dict.keys.contains("HanaName") && dict["HanaName"] != nil {
            self.hanaName = dict["HanaName"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
            self.instanceNumber = dict["InstanceNumber"] as! Int32
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sid") && dict["Sid"] != nil {
            self.sid = dict["Sid"] as! String
        }
        if dict.keys.contains("UseSsl") && dict["UseSsl"] != nil {
            self.useSsl = dict["UseSsl"] as! Bool
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("ValidateCertificate") && dict["ValidateCertificate"] != nil {
            self.validateCertificate = dict["ValidateCertificate"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateHanaInstanceResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateHanaInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHanaInstanceResponseBody?

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
            var model = CreateHanaInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHanaRestoreRequest : Tea.TeaModel {
    public var backupId: Int64?

    public var backupPrefix: String?

    public var checkAccess: Bool?

    public var clearLog: Bool?

    public var clusterId: String?

    public var databaseName: String?

    public var logPosition: Int64?

    public var masterClientId: String?

    public var mode: String?

    public var recoveryPointInTime: Int64?

    public var sidAdmin: String?

    public var source: String?

    public var sourceClusterId: String?

    public var systemCopy: Bool?

    public var useCatalog: Bool?

    public var useDelta: Bool?

    public var vaultId: String?

    public var volumeId: Int32?

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
        if self.backupPrefix != nil {
            map["BackupPrefix"] = self.backupPrefix!
        }
        if self.checkAccess != nil {
            map["CheckAccess"] = self.checkAccess!
        }
        if self.clearLog != nil {
            map["ClearLog"] = self.clearLog!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.logPosition != nil {
            map["LogPosition"] = self.logPosition!
        }
        if self.masterClientId != nil {
            map["MasterClientId"] = self.masterClientId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.recoveryPointInTime != nil {
            map["RecoveryPointInTime"] = self.recoveryPointInTime!
        }
        if self.sidAdmin != nil {
            map["SidAdmin"] = self.sidAdmin!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceClusterId != nil {
            map["SourceClusterId"] = self.sourceClusterId!
        }
        if self.systemCopy != nil {
            map["SystemCopy"] = self.systemCopy!
        }
        if self.useCatalog != nil {
            map["UseCatalog"] = self.useCatalog!
        }
        if self.useDelta != nil {
            map["UseDelta"] = self.useDelta!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        if self.volumeId != nil {
            map["VolumeId"] = self.volumeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! Int64
        }
        if dict.keys.contains("BackupPrefix") && dict["BackupPrefix"] != nil {
            self.backupPrefix = dict["BackupPrefix"] as! String
        }
        if dict.keys.contains("CheckAccess") && dict["CheckAccess"] != nil {
            self.checkAccess = dict["CheckAccess"] as! Bool
        }
        if dict.keys.contains("ClearLog") && dict["ClearLog"] != nil {
            self.clearLog = dict["ClearLog"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("LogPosition") && dict["LogPosition"] != nil {
            self.logPosition = dict["LogPosition"] as! Int64
        }
        if dict.keys.contains("MasterClientId") && dict["MasterClientId"] != nil {
            self.masterClientId = dict["MasterClientId"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("RecoveryPointInTime") && dict["RecoveryPointInTime"] != nil {
            self.recoveryPointInTime = dict["RecoveryPointInTime"] as! Int64
        }
        if dict.keys.contains("SidAdmin") && dict["SidAdmin"] != nil {
            self.sidAdmin = dict["SidAdmin"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceClusterId") && dict["SourceClusterId"] != nil {
            self.sourceClusterId = dict["SourceClusterId"] as! String
        }
        if dict.keys.contains("SystemCopy") && dict["SystemCopy"] != nil {
            self.systemCopy = dict["SystemCopy"] as! Bool
        }
        if dict.keys.contains("UseCatalog") && dict["UseCatalog"] != nil {
            self.useCatalog = dict["UseCatalog"] as! Bool
        }
        if dict.keys.contains("UseDelta") && dict["UseDelta"] != nil {
            self.useDelta = dict["UseDelta"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
        if dict.keys.contains("VolumeId") && dict["VolumeId"] != nil {
            self.volumeId = dict["VolumeId"] as! Int32
        }
    }
}

public class CreateHanaRestoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var restoreId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreId != nil {
            map["RestoreId"] = self.restoreId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
            self.restoreId = dict["RestoreId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateHanaRestoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHanaRestoreResponseBody?

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
            var model = CreateHanaRestoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyBindingsRequest : Tea.TeaModel {
    public class PolicyBindingList : Tea.TeaModel {
        public class AdvancedOptions : Tea.TeaModel {
            public class CommonFileSystemDetail : Tea.TeaModel {
                public var fetchSliceSize: Int64?

                public var fullOnIncrementFail: Bool?

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
                    if self.fetchSliceSize != nil {
                        map["FetchSliceSize"] = self.fetchSliceSize!
                    }
                    if self.fullOnIncrementFail != nil {
                        map["FullOnIncrementFail"] = self.fullOnIncrementFail!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FetchSliceSize") && dict["FetchSliceSize"] != nil {
                        self.fetchSliceSize = dict["FetchSliceSize"] as! Int64
                    }
                    if dict.keys.contains("FullOnIncrementFail") && dict["FullOnIncrementFail"] != nil {
                        self.fullOnIncrementFail = dict["FullOnIncrementFail"] as! Bool
                    }
                }
            }
            public class CommonNasDetail : Tea.TeaModel {
                public var clusterId: String?

                public var fetchSliceSize: Int64?

                public var fullOnIncrementFail: Bool?

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
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.fetchSliceSize != nil {
                        map["FetchSliceSize"] = self.fetchSliceSize!
                    }
                    if self.fullOnIncrementFail != nil {
                        map["FullOnIncrementFail"] = self.fullOnIncrementFail!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("FetchSliceSize") && dict["FetchSliceSize"] != nil {
                        self.fetchSliceSize = dict["FetchSliceSize"] as! Int64
                    }
                    if dict.keys.contains("FullOnIncrementFail") && dict["FullOnIncrementFail"] != nil {
                        self.fullOnIncrementFail = dict["FullOnIncrementFail"] as! Bool
                    }
                }
            }
            public class FileDetail : Tea.TeaModel {
                public var advPolicy: Bool?

                public var useVSS: Bool?

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
                    if self.advPolicy != nil {
                        map["AdvPolicy"] = self.advPolicy!
                    }
                    if self.useVSS != nil {
                        map["UseVSS"] = self.useVSS!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdvPolicy") && dict["AdvPolicy"] != nil {
                        self.advPolicy = dict["AdvPolicy"] as! Bool
                    }
                    if dict.keys.contains("UseVSS") && dict["UseVSS"] != nil {
                        self.useVSS = dict["UseVSS"] as! Bool
                    }
                }
            }
            public class OssDetail : Tea.TeaModel {
                public var inventoryCleanupPolicy: String?

                public var inventoryId: String?

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
                    if self.inventoryCleanupPolicy != nil {
                        map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                    }
                    if self.inventoryId != nil {
                        map["InventoryId"] = self.inventoryId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InventoryCleanupPolicy") && dict["InventoryCleanupPolicy"] != nil {
                        self.inventoryCleanupPolicy = dict["InventoryCleanupPolicy"] as! String
                    }
                    if dict.keys.contains("InventoryId") && dict["InventoryId"] != nil {
                        self.inventoryId = dict["InventoryId"] as! String
                    }
                }
            }
            public class UdmDetail : Tea.TeaModel {
                public var appConsistent: Bool?

                public var diskIdList: [String]?

                public var enableFsFreeze: Bool?

                public var enableWriters: Bool?

                public var excludeDiskIdList: [String]?

                public var postScriptPath: String?

                public var preScriptPath: String?

                public var ramRoleName: String?

                public var snapshotGroup: Bool?

                public var timeoutInSeconds: Int64?

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
                    if self.appConsistent != nil {
                        map["AppConsistent"] = self.appConsistent!
                    }
                    if self.diskIdList != nil {
                        map["DiskIdList"] = self.diskIdList!
                    }
                    if self.enableFsFreeze != nil {
                        map["EnableFsFreeze"] = self.enableFsFreeze!
                    }
                    if self.enableWriters != nil {
                        map["EnableWriters"] = self.enableWriters!
                    }
                    if self.excludeDiskIdList != nil {
                        map["ExcludeDiskIdList"] = self.excludeDiskIdList!
                    }
                    if self.postScriptPath != nil {
                        map["PostScriptPath"] = self.postScriptPath!
                    }
                    if self.preScriptPath != nil {
                        map["PreScriptPath"] = self.preScriptPath!
                    }
                    if self.ramRoleName != nil {
                        map["RamRoleName"] = self.ramRoleName!
                    }
                    if self.snapshotGroup != nil {
                        map["SnapshotGroup"] = self.snapshotGroup!
                    }
                    if self.timeoutInSeconds != nil {
                        map["TimeoutInSeconds"] = self.timeoutInSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppConsistent") && dict["AppConsistent"] != nil {
                        self.appConsistent = dict["AppConsistent"] as! Bool
                    }
                    if dict.keys.contains("DiskIdList") && dict["DiskIdList"] != nil {
                        self.diskIdList = dict["DiskIdList"] as! [String]
                    }
                    if dict.keys.contains("EnableFsFreeze") && dict["EnableFsFreeze"] != nil {
                        self.enableFsFreeze = dict["EnableFsFreeze"] as! Bool
                    }
                    if dict.keys.contains("EnableWriters") && dict["EnableWriters"] != nil {
                        self.enableWriters = dict["EnableWriters"] as! Bool
                    }
                    if dict.keys.contains("ExcludeDiskIdList") && dict["ExcludeDiskIdList"] != nil {
                        self.excludeDiskIdList = dict["ExcludeDiskIdList"] as! [String]
                    }
                    if dict.keys.contains("PostScriptPath") && dict["PostScriptPath"] != nil {
                        self.postScriptPath = dict["PostScriptPath"] as! String
                    }
                    if dict.keys.contains("PreScriptPath") && dict["PreScriptPath"] != nil {
                        self.preScriptPath = dict["PreScriptPath"] as! String
                    }
                    if dict.keys.contains("RamRoleName") && dict["RamRoleName"] != nil {
                        self.ramRoleName = dict["RamRoleName"] as! String
                    }
                    if dict.keys.contains("SnapshotGroup") && dict["SnapshotGroup"] != nil {
                        self.snapshotGroup = dict["SnapshotGroup"] as! Bool
                    }
                    if dict.keys.contains("TimeoutInSeconds") && dict["TimeoutInSeconds"] != nil {
                        self.timeoutInSeconds = dict["TimeoutInSeconds"] as! Int64
                    }
                }
            }
            public var commonFileSystemDetail: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonFileSystemDetail?

            public var commonNasDetail: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonNasDetail?

            public var fileDetail: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.FileDetail?

            public var ossDetail: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.OssDetail?

            public var udmDetail: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.UdmDetail?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.commonFileSystemDetail?.validate()
                try self.commonNasDetail?.validate()
                try self.fileDetail?.validate()
                try self.ossDetail?.validate()
                try self.udmDetail?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commonFileSystemDetail != nil {
                    map["CommonFileSystemDetail"] = self.commonFileSystemDetail?.toMap()
                }
                if self.commonNasDetail != nil {
                    map["CommonNasDetail"] = self.commonNasDetail?.toMap()
                }
                if self.fileDetail != nil {
                    map["FileDetail"] = self.fileDetail?.toMap()
                }
                if self.ossDetail != nil {
                    map["OssDetail"] = self.ossDetail?.toMap()
                }
                if self.udmDetail != nil {
                    map["UdmDetail"] = self.udmDetail?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommonFileSystemDetail") && dict["CommonFileSystemDetail"] != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonFileSystemDetail()
                    model.fromMap(dict["CommonFileSystemDetail"] as! [String: Any])
                    self.commonFileSystemDetail = model
                }
                if dict.keys.contains("CommonNasDetail") && dict["CommonNasDetail"] != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonNasDetail()
                    model.fromMap(dict["CommonNasDetail"] as! [String: Any])
                    self.commonNasDetail = model
                }
                if dict.keys.contains("FileDetail") && dict["FileDetail"] != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.FileDetail()
                    model.fromMap(dict["FileDetail"] as! [String: Any])
                    self.fileDetail = model
                }
                if dict.keys.contains("OssDetail") && dict["OssDetail"] != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.OssDetail()
                    model.fromMap(dict["OssDetail"] as! [String: Any])
                    self.ossDetail = model
                }
                if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.UdmDetail()
                    model.fromMap(dict["UdmDetail"] as! [String: Any])
                    self.udmDetail = model
                }
            }
        }
        public var advancedOptions: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions?

        public var crossAccountRoleName: String?

        public var crossAccountType: String?

        public var crossAccountUserId: Int64?

        public var dataSourceId: String?

        public var policyBindingDescription: String?

        public var source: String?

        public var sourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advancedOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advancedOptions != nil {
                map["AdvancedOptions"] = self.advancedOptions?.toMap()
            }
            if self.crossAccountRoleName != nil {
                map["CrossAccountRoleName"] = self.crossAccountRoleName!
            }
            if self.crossAccountType != nil {
                map["CrossAccountType"] = self.crossAccountType!
            }
            if self.crossAccountUserId != nil {
                map["CrossAccountUserId"] = self.crossAccountUserId!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.policyBindingDescription != nil {
                map["PolicyBindingDescription"] = self.policyBindingDescription!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvancedOptions") && dict["AdvancedOptions"] != nil {
                var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions()
                model.fromMap(dict["AdvancedOptions"] as! [String: Any])
                self.advancedOptions = model
            }
            if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
            }
            if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
                self.crossAccountType = dict["CrossAccountType"] as! String
            }
            if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
            }
            if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("PolicyBindingDescription") && dict["PolicyBindingDescription"] != nil {
                self.policyBindingDescription = dict["PolicyBindingDescription"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
        }
    }
    public var policyBindingList: [CreatePolicyBindingsRequest.PolicyBindingList]?

    public var policyId: String?

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
        if self.policyBindingList != nil {
            var tmp : [Any] = []
            for k in self.policyBindingList! {
                tmp.append(k.toMap())
            }
            map["PolicyBindingList"] = tmp
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyBindingList") && dict["PolicyBindingList"] != nil {
            var tmp : [CreatePolicyBindingsRequest.PolicyBindingList] = []
            for v in dict["PolicyBindingList"] as! [Any] {
                var model = CreatePolicyBindingsRequest.PolicyBindingList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyBindingList = tmp
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class CreatePolicyBindingsShrinkRequest : Tea.TeaModel {
    public var policyBindingListShrink: String?

    public var policyId: String?

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
        if self.policyBindingListShrink != nil {
            map["PolicyBindingList"] = self.policyBindingListShrink!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyBindingList") && dict["PolicyBindingList"] != nil {
            self.policyBindingListShrink = dict["PolicyBindingList"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class CreatePolicyBindingsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreatePolicyBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyBindingsResponseBody?

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
            var model = CreatePolicyBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyV2Request : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RetentionRules : Tea.TeaModel {
            public var advancedRetentionType: String?

            public var retention: Int64?

            public var whichSnapshot: Int64?

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
                if self.advancedRetentionType != nil {
                    map["AdvancedRetentionType"] = self.advancedRetentionType!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.whichSnapshot != nil {
                    map["WhichSnapshot"] = self.whichSnapshot!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdvancedRetentionType") && dict["AdvancedRetentionType"] != nil {
                    self.advancedRetentionType = dict["AdvancedRetentionType"] as! String
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("WhichSnapshot") && dict["WhichSnapshot"] != nil {
                    self.whichSnapshot = dict["WhichSnapshot"] as! Int64
                }
            }
        }
        public var backupType: String?

        public var keepLatestSnapshots: Int64?

        public var replicationRegionId: String?

        public var retention: Int64?

        public var retentionRules: [CreatePolicyV2Request.Rules.RetentionRules]?

        public var ruleType: String?

        public var schedule: String?

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
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.keepLatestSnapshots != nil {
                map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
            }
            if self.replicationRegionId != nil {
                map["ReplicationRegionId"] = self.replicationRegionId!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.retentionRules != nil {
                var tmp : [Any] = []
                for k in self.retentionRules! {
                    tmp.append(k.toMap())
                }
                map["RetentionRules"] = tmp
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
                self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
            }
            if dict.keys.contains("ReplicationRegionId") && dict["ReplicationRegionId"] != nil {
                self.replicationRegionId = dict["ReplicationRegionId"] as! String
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RetentionRules") && dict["RetentionRules"] != nil {
                var tmp : [CreatePolicyV2Request.Rules.RetentionRules] = []
                for v in dict["RetentionRules"] as! [Any] {
                    var model = CreatePolicyV2Request.Rules.RetentionRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.retentionRules = tmp
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var policyDescription: String?

    public var policyName: String?

    public var rules: [CreatePolicyV2Request.Rules]?

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
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [CreatePolicyV2Request.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = CreatePolicyV2Request.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
    }
}

public class CreatePolicyV2ShrinkRequest : Tea.TeaModel {
    public var policyDescription: String?

    public var policyName: String?

    public var rulesShrink: String?

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
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rulesShrink = dict["Rules"] as! String
        }
    }
}

public class CreatePolicyV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var policyId: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreatePolicyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyV2ResponseBody?

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
            var model = CreatePolicyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateReplicationVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var redundancyType: String?

    public var replicationSourceRegionId: String?

    public var replicationSourceVaultId: String?

    public var vaultName: String?

    public var vaultRegionId: String?

    public var vaultStorageClass: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.redundancyType != nil {
            map["RedundancyType"] = self.redundancyType!
        }
        if self.replicationSourceRegionId != nil {
            map["ReplicationSourceRegionId"] = self.replicationSourceRegionId!
        }
        if self.replicationSourceVaultId != nil {
            map["ReplicationSourceVaultId"] = self.replicationSourceVaultId!
        }
        if self.vaultName != nil {
            map["VaultName"] = self.vaultName!
        }
        if self.vaultRegionId != nil {
            map["VaultRegionId"] = self.vaultRegionId!
        }
        if self.vaultStorageClass != nil {
            map["VaultStorageClass"] = self.vaultStorageClass!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RedundancyType") && dict["RedundancyType"] != nil {
            self.redundancyType = dict["RedundancyType"] as! String
        }
        if dict.keys.contains("ReplicationSourceRegionId") && dict["ReplicationSourceRegionId"] != nil {
            self.replicationSourceRegionId = dict["ReplicationSourceRegionId"] as! String
        }
        if dict.keys.contains("ReplicationSourceVaultId") && dict["ReplicationSourceVaultId"] != nil {
            self.replicationSourceVaultId = dict["ReplicationSourceVaultId"] as! String
        }
        if dict.keys.contains("VaultName") && dict["VaultName"] != nil {
            self.vaultName = dict["VaultName"] as! String
        }
        if dict.keys.contains("VaultRegionId") && dict["VaultRegionId"] != nil {
            self.vaultRegionId = dict["VaultRegionId"] as! String
        }
        if dict.keys.contains("VaultStorageClass") && dict["VaultStorageClass"] != nil {
            self.vaultStorageClass = dict["VaultStorageClass"] as! String
        }
    }
}

public class CreateReplicationVaultResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public var vaultId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateReplicationVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateReplicationVaultResponseBody?

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
            var model = CreateReplicationVaultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRestoreJobRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var exclude: String?

    public var failbackDetail: [String: Any]?

    public var include: String?

    public var initiatedByAck: Bool?

    public var options: String?

    public var otsDetail: OtsTableRestoreDetail?

    public var restoreType: String?

    public var snapshotHash: String?

    public var snapshotId: String?

    public var sourceType: String?

    public var targetBucket: String?

    public var targetContainer: String?

    public var targetContainerClusterId: String?

    public var targetCreateTime: Int64?

    public var targetFileSystemId: String?

    public var targetInstanceId: String?

    public var targetInstanceName: String?

    public var targetPath: String?

    public var targetPrefix: String?

    public var targetTableName: String?

    public var targetTime: Int64?

    public var udmDetail: [String: Any]?

    public var udmRegionId: String?

    public var vaultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.otsDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.failbackDetail != nil {
            map["FailbackDetail"] = self.failbackDetail!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.initiatedByAck != nil {
            map["InitiatedByAck"] = self.initiatedByAck!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetail != nil {
            map["OtsDetail"] = self.otsDetail?.toMap()
        }
        if self.restoreType != nil {
            map["RestoreType"] = self.restoreType!
        }
        if self.snapshotHash != nil {
            map["SnapshotHash"] = self.snapshotHash!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.targetBucket != nil {
            map["TargetBucket"] = self.targetBucket!
        }
        if self.targetContainer != nil {
            map["TargetContainer"] = self.targetContainer!
        }
        if self.targetContainerClusterId != nil {
            map["TargetContainerClusterId"] = self.targetContainerClusterId!
        }
        if self.targetCreateTime != nil {
            map["TargetCreateTime"] = self.targetCreateTime!
        }
        if self.targetFileSystemId != nil {
            map["TargetFileSystemId"] = self.targetFileSystemId!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        if self.targetInstanceName != nil {
            map["TargetInstanceName"] = self.targetInstanceName!
        }
        if self.targetPath != nil {
            map["TargetPath"] = self.targetPath!
        }
        if self.targetPrefix != nil {
            map["TargetPrefix"] = self.targetPrefix!
        }
        if self.targetTableName != nil {
            map["TargetTableName"] = self.targetTableName!
        }
        if self.targetTime != nil {
            map["TargetTime"] = self.targetTime!
        }
        if self.udmDetail != nil {
            map["UdmDetail"] = self.udmDetail!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("FailbackDetail") && dict["FailbackDetail"] != nil {
            self.failbackDetail = dict["FailbackDetail"] as! [String: Any]
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InitiatedByAck") && dict["InitiatedByAck"] != nil {
            self.initiatedByAck = dict["InitiatedByAck"] as! Bool
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            var model = OtsTableRestoreDetail()
            model.fromMap(dict["OtsDetail"] as! [String: Any])
            self.otsDetail = model
        }
        if dict.keys.contains("RestoreType") && dict["RestoreType"] != nil {
            self.restoreType = dict["RestoreType"] as! String
        }
        if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
            self.snapshotHash = dict["SnapshotHash"] as! String
        }
        if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetBucket") && dict["TargetBucket"] != nil {
            self.targetBucket = dict["TargetBucket"] as! String
        }
        if dict.keys.contains("TargetContainer") && dict["TargetContainer"] != nil {
            self.targetContainer = dict["TargetContainer"] as! String
        }
        if dict.keys.contains("TargetContainerClusterId") && dict["TargetContainerClusterId"] != nil {
            self.targetContainerClusterId = dict["TargetContainerClusterId"] as! String
        }
        if dict.keys.contains("TargetCreateTime") && dict["TargetCreateTime"] != nil {
            self.targetCreateTime = dict["TargetCreateTime"] as! Int64
        }
        if dict.keys.contains("TargetFileSystemId") && dict["TargetFileSystemId"] != nil {
            self.targetFileSystemId = dict["TargetFileSystemId"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
        if dict.keys.contains("TargetInstanceName") && dict["TargetInstanceName"] != nil {
            self.targetInstanceName = dict["TargetInstanceName"] as! String
        }
        if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
            self.targetPath = dict["TargetPath"] as! String
        }
        if dict.keys.contains("TargetPrefix") && dict["TargetPrefix"] != nil {
            self.targetPrefix = dict["TargetPrefix"] as! String
        }
        if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
            self.targetTableName = dict["TargetTableName"] as! String
        }
        if dict.keys.contains("TargetTime") && dict["TargetTime"] != nil {
            self.targetTime = dict["TargetTime"] as! Int64
        }
        if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
            self.udmDetail = dict["UdmDetail"] as! [String: Any]
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateRestoreJobShrinkRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var exclude: String?

    public var failbackDetailShrink: String?

    public var include: String?

    public var initiatedByAck: Bool?

    public var options: String?

    public var otsDetailShrink: String?

    public var restoreType: String?

    public var snapshotHash: String?

    public var snapshotId: String?

    public var sourceType: String?

    public var targetBucket: String?

    public var targetContainer: String?

    public var targetContainerClusterId: String?

    public var targetCreateTime: Int64?

    public var targetFileSystemId: String?

    public var targetInstanceId: String?

    public var targetInstanceName: String?

    public var targetPath: String?

    public var targetPrefix: String?

    public var targetTableName: String?

    public var targetTime: Int64?

    public var udmDetailShrink: String?

    public var udmRegionId: String?

    public var vaultId: String?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.failbackDetailShrink != nil {
            map["FailbackDetail"] = self.failbackDetailShrink!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.initiatedByAck != nil {
            map["InitiatedByAck"] = self.initiatedByAck!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetailShrink != nil {
            map["OtsDetail"] = self.otsDetailShrink!
        }
        if self.restoreType != nil {
            map["RestoreType"] = self.restoreType!
        }
        if self.snapshotHash != nil {
            map["SnapshotHash"] = self.snapshotHash!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.targetBucket != nil {
            map["TargetBucket"] = self.targetBucket!
        }
        if self.targetContainer != nil {
            map["TargetContainer"] = self.targetContainer!
        }
        if self.targetContainerClusterId != nil {
            map["TargetContainerClusterId"] = self.targetContainerClusterId!
        }
        if self.targetCreateTime != nil {
            map["TargetCreateTime"] = self.targetCreateTime!
        }
        if self.targetFileSystemId != nil {
            map["TargetFileSystemId"] = self.targetFileSystemId!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        if self.targetInstanceName != nil {
            map["TargetInstanceName"] = self.targetInstanceName!
        }
        if self.targetPath != nil {
            map["TargetPath"] = self.targetPath!
        }
        if self.targetPrefix != nil {
            map["TargetPrefix"] = self.targetPrefix!
        }
        if self.targetTableName != nil {
            map["TargetTableName"] = self.targetTableName!
        }
        if self.targetTime != nil {
            map["TargetTime"] = self.targetTime!
        }
        if self.udmDetailShrink != nil {
            map["UdmDetail"] = self.udmDetailShrink!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("FailbackDetail") && dict["FailbackDetail"] != nil {
            self.failbackDetailShrink = dict["FailbackDetail"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("InitiatedByAck") && dict["InitiatedByAck"] != nil {
            self.initiatedByAck = dict["InitiatedByAck"] as! Bool
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            self.otsDetailShrink = dict["OtsDetail"] as! String
        }
        if dict.keys.contains("RestoreType") && dict["RestoreType"] != nil {
            self.restoreType = dict["RestoreType"] as! String
        }
        if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
            self.snapshotHash = dict["SnapshotHash"] as! String
        }
        if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetBucket") && dict["TargetBucket"] != nil {
            self.targetBucket = dict["TargetBucket"] as! String
        }
        if dict.keys.contains("TargetContainer") && dict["TargetContainer"] != nil {
            self.targetContainer = dict["TargetContainer"] as! String
        }
        if dict.keys.contains("TargetContainerClusterId") && dict["TargetContainerClusterId"] != nil {
            self.targetContainerClusterId = dict["TargetContainerClusterId"] as! String
        }
        if dict.keys.contains("TargetCreateTime") && dict["TargetCreateTime"] != nil {
            self.targetCreateTime = dict["TargetCreateTime"] as! Int64
        }
        if dict.keys.contains("TargetFileSystemId") && dict["TargetFileSystemId"] != nil {
            self.targetFileSystemId = dict["TargetFileSystemId"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
        if dict.keys.contains("TargetInstanceName") && dict["TargetInstanceName"] != nil {
            self.targetInstanceName = dict["TargetInstanceName"] as! String
        }
        if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
            self.targetPath = dict["TargetPath"] as! String
        }
        if dict.keys.contains("TargetPrefix") && dict["TargetPrefix"] != nil {
            self.targetPrefix = dict["TargetPrefix"] as! String
        }
        if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
            self.targetTableName = dict["TargetTableName"] as! String
        }
        if dict.keys.contains("TargetTime") && dict["TargetTime"] != nil {
            self.targetTime = dict["TargetTime"] as! Int64
        }
        if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
            self.udmDetailShrink = dict["UdmDetail"] as! String
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateRestoreJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var restoreId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreId != nil {
            map["RestoreId"] = self.restoreId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
            self.restoreId = dict["RestoreId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateRestoreJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRestoreJobResponseBody?

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
            var model = CreateRestoreJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTempFileUploadUrlRequest : Tea.TeaModel {
    public var fileName: String?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.fileName = dict["FileName"] as! String
        }
    }
}

public class CreateTempFileUploadUrlResponseBody : Tea.TeaModel {
    public var bucketName: String?

    public var code: String?

    public var endpoint: String?

    public var expireTime: Int64?

    public var message: String?

    public var ossAccessKeyId: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

    public var success: Bool?

    public var tempFileKey: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.ossAccessKeyId != nil {
            map["OssAccessKeyId"] = self.ossAccessKeyId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tempFileKey != nil {
            map["TempFileKey"] = self.tempFileKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OssAccessKeyId") && dict["OssAccessKeyId"] != nil {
            self.ossAccessKeyId = dict["OssAccessKeyId"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TempFileKey") && dict["TempFileKey"] != nil {
            self.tempFileKey = dict["TempFileKey"] as! String
        }
    }
}

public class CreateTempFileUploadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTempFileUploadUrlResponseBody?

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
            var model = CreateTempFileUploadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptType: String?

    public var kmsKeyId: String?

    public var vaultName: String?

    public var vaultRegionId: String?

    public var vaultStorageClass: String?

    public var vaultType: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
        }
        if self.vaultName != nil {
            map["VaultName"] = self.vaultName!
        }
        if self.vaultRegionId != nil {
            map["VaultRegionId"] = self.vaultRegionId!
        }
        if self.vaultStorageClass != nil {
            map["VaultStorageClass"] = self.vaultStorageClass!
        }
        if self.vaultType != nil {
            map["VaultType"] = self.vaultType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncryptType") && dict["EncryptType"] != nil {
            self.encryptType = dict["EncryptType"] as! String
        }
        if dict.keys.contains("KmsKeyId") && dict["KmsKeyId"] != nil {
            self.kmsKeyId = dict["KmsKeyId"] as! String
        }
        if dict.keys.contains("VaultName") && dict["VaultName"] != nil {
            self.vaultName = dict["VaultName"] as! String
        }
        if dict.keys.contains("VaultRegionId") && dict["VaultRegionId"] != nil {
            self.vaultRegionId = dict["VaultRegionId"] as! String
        }
        if dict.keys.contains("VaultStorageClass") && dict["VaultStorageClass"] != nil {
            self.vaultStorageClass = dict["VaultStorageClass"] as! String
        }
        if dict.keys.contains("VaultType") && dict["VaultType"] != nil {
            self.vaultType = dict["VaultType"] as! String
        }
    }
}

public class CreateVaultResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public var vaultId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class CreateVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVaultResponseBody?

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
            var model = CreateVaultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBackupClientRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
    }
}

public class DeleteBackupClientResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteBackupClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupClientResponseBody?

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
            var model = DeleteBackupClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBackupClientResourceRequest : Tea.TeaModel {
    public var clientIds: [String: Any]?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String: Any]
        }
    }
}

public class DeleteBackupClientResourceShrinkRequest : Tea.TeaModel {
    public var clientIdsShrink: String?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
    }
}

public class DeleteBackupClientResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteBackupClientResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupClientResourceResponseBody?

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
            var model = DeleteBackupClientResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBackupPlanRequest : Tea.TeaModel {
    public var planId: String?

    public var requireNoRunningJobs: Bool?

    public var sourceType: String?

    public var vaultId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requireNoRunningJobs != nil {
            map["RequireNoRunningJobs"] = self.requireNoRunningJobs!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequireNoRunningJobs") && dict["RequireNoRunningJobs"] != nil {
            self.requireNoRunningJobs = dict["RequireNoRunningJobs"] as! Bool
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupPlanResponseBody?

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
            var model = DeleteBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClientRequest : Tea.TeaModel {
    public var clientId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteClientResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientResponseBody?

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
            var model = DeleteClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHanaBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var planId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteHanaBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteHanaBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHanaBackupPlanResponseBody?

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
            var model = DeleteHanaBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHanaInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var resourceGroupId: String?

    public var sid: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sid != nil {
            map["Sid"] = self.sid!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sid") && dict["Sid"] != nil {
            self.sid = dict["Sid"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteHanaInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteHanaInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHanaInstanceResponseBody?

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
            var model = DeleteHanaInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyBindingRequest : Tea.TeaModel {
    public var dataSourceIds: [String]?

    public var policyId: String?

    public var sourceType: String?

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
        if self.dataSourceIds != nil {
            map["DataSourceIds"] = self.dataSourceIds!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceIds") && dict["DataSourceIds"] != nil {
            self.dataSourceIds = dict["DataSourceIds"] as! [String]
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DeletePolicyBindingShrinkRequest : Tea.TeaModel {
    public var dataSourceIdsShrink: String?

    public var policyId: String?

    public var sourceType: String?

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
        if self.dataSourceIdsShrink != nil {
            map["DataSourceIds"] = self.dataSourceIdsShrink!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceIds") && dict["DataSourceIds"] != nil {
            self.dataSourceIdsShrink = dict["DataSourceIds"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DeletePolicyBindingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePolicyBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyBindingResponseBody?

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
            var model = DeletePolicyBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyV2Request : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class DeletePolicyV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePolicyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyV2ResponseBody?

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
            var model = DeletePolicyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSnapshotRequest : Tea.TeaModel {
    public var clientId: String?

    public var force: Bool?

    public var instanceId: String?

    public var snapshotId: String?

    public var sourceType: String?

    public var token: String?

    public var vaultId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteSnapshotResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSnapshotResponseBody?

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
            var model = DeleteSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVaultRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var token: String?

    public var vaultId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DeleteVaultResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVaultResponseBody?

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
            var model = DeleteVaultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupClientsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientIds: [String]?

    public var clientType: String?

    public var clusterId: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tag: [DescribeBackupClientsRequest.Tag]?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String]
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeBackupClientsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeBackupClientsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeBackupClientsShrinkRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientIdsShrink: String?

    public var clientType: String?

    public var clusterId: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tag: [DescribeBackupClientsShrinkRequest.Tag]?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeBackupClientsShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeBackupClientsShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeBackupClientsResponseBody : Tea.TeaModel {
    public class Clients : Tea.TeaModel {
        public class Settings : Tea.TeaModel {
            public var alertOnPartialComplete: Bool?

            public var dataNetworkType: String?

            public var dataProxySetting: String?

            public var maxCpuCore: String?

            public var maxMemory: Int64?

            public var maxWorker: String?

            public var proxyHost: String?

            public var proxyPassword: String?

            public var proxyPort: Int32?

            public var proxyUser: String?

            public var useHttps: String?

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
                if self.alertOnPartialComplete != nil {
                    map["AlertOnPartialComplete"] = self.alertOnPartialComplete!
                }
                if self.dataNetworkType != nil {
                    map["DataNetworkType"] = self.dataNetworkType!
                }
                if self.dataProxySetting != nil {
                    map["DataProxySetting"] = self.dataProxySetting!
                }
                if self.maxCpuCore != nil {
                    map["MaxCpuCore"] = self.maxCpuCore!
                }
                if self.maxMemory != nil {
                    map["MaxMemory"] = self.maxMemory!
                }
                if self.maxWorker != nil {
                    map["MaxWorker"] = self.maxWorker!
                }
                if self.proxyHost != nil {
                    map["ProxyHost"] = self.proxyHost!
                }
                if self.proxyPassword != nil {
                    map["ProxyPassword"] = self.proxyPassword!
                }
                if self.proxyPort != nil {
                    map["ProxyPort"] = self.proxyPort!
                }
                if self.proxyUser != nil {
                    map["ProxyUser"] = self.proxyUser!
                }
                if self.useHttps != nil {
                    map["UseHttps"] = self.useHttps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertOnPartialComplete") && dict["AlertOnPartialComplete"] != nil {
                    self.alertOnPartialComplete = dict["AlertOnPartialComplete"] as! Bool
                }
                if dict.keys.contains("DataNetworkType") && dict["DataNetworkType"] != nil {
                    self.dataNetworkType = dict["DataNetworkType"] as! String
                }
                if dict.keys.contains("DataProxySetting") && dict["DataProxySetting"] != nil {
                    self.dataProxySetting = dict["DataProxySetting"] as! String
                }
                if dict.keys.contains("MaxCpuCore") && dict["MaxCpuCore"] != nil {
                    self.maxCpuCore = dict["MaxCpuCore"] as! String
                }
                if dict.keys.contains("MaxMemory") && dict["MaxMemory"] != nil {
                    self.maxMemory = dict["MaxMemory"] as! Int64
                }
                if dict.keys.contains("MaxWorker") && dict["MaxWorker"] != nil {
                    self.maxWorker = dict["MaxWorker"] as! String
                }
                if dict.keys.contains("ProxyHost") && dict["ProxyHost"] != nil {
                    self.proxyHost = dict["ProxyHost"] as! String
                }
                if dict.keys.contains("ProxyPassword") && dict["ProxyPassword"] != nil {
                    self.proxyPassword = dict["ProxyPassword"] as! String
                }
                if dict.keys.contains("ProxyPort") && dict["ProxyPort"] != nil {
                    self.proxyPort = dict["ProxyPort"] as! Int32
                }
                if dict.keys.contains("ProxyUser") && dict["ProxyUser"] != nil {
                    self.proxyUser = dict["ProxyUser"] as! String
                }
                if dict.keys.contains("UseHttps") && dict["UseHttps"] != nil {
                    self.useHttps = dict["UseHttps"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var value: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var appliance: Bool?

        public var archType: String?

        public var backupStatus: String?

        public var clientId: String?

        public var clientType: String?

        public var clientVersion: String?

        public var createdTime: Int64?

        public var hostname: String?

        public var instanceId: String?

        public var instanceName: String?

        public var lastHeartBeatTime: Int64?

        public var maxClientVersion: String?

        public var osType: String?

        public var privateIpV4: String?

        public var settings: DescribeBackupClientsResponseBody.Clients.Settings?

        public var status: String?

        public var tags: [DescribeBackupClientsResponseBody.Clients.Tags]?

        public var updatedTime: Int64?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.settings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appliance != nil {
                map["Appliance"] = self.appliance!
            }
            if self.archType != nil {
                map["ArchType"] = self.archType!
            }
            if self.backupStatus != nil {
                map["BackupStatus"] = self.backupStatus!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.lastHeartBeatTime != nil {
                map["LastHeartBeatTime"] = self.lastHeartBeatTime!
            }
            if self.maxClientVersion != nil {
                map["MaxClientVersion"] = self.maxClientVersion!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.privateIpV4 != nil {
                map["PrivateIpV4"] = self.privateIpV4!
            }
            if self.settings != nil {
                map["Settings"] = self.settings?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Appliance") && dict["Appliance"] != nil {
                self.appliance = dict["Appliance"] as! Bool
            }
            if dict.keys.contains("ArchType") && dict["ArchType"] != nil {
                self.archType = dict["ArchType"] as! String
            }
            if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
                self.backupStatus = dict["BackupStatus"] as! String
            }
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("LastHeartBeatTime") && dict["LastHeartBeatTime"] != nil {
                self.lastHeartBeatTime = dict["LastHeartBeatTime"] as! Int64
            }
            if dict.keys.contains("MaxClientVersion") && dict["MaxClientVersion"] != nil {
                self.maxClientVersion = dict["MaxClientVersion"] as! String
            }
            if dict.keys.contains("OsType") && dict["OsType"] != nil {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("PrivateIpV4") && dict["PrivateIpV4"] != nil {
                self.privateIpV4 = dict["PrivateIpV4"] as! String
            }
            if dict.keys.contains("Settings") && dict["Settings"] != nil {
                var model = DescribeBackupClientsResponseBody.Clients.Settings()
                model.fromMap(dict["Settings"] as! [String: Any])
                self.settings = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeBackupClientsResponseBody.Clients.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeBackupClientsResponseBody.Clients.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clients: [DescribeBackupClientsResponseBody.Clients]?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.clients != nil {
            var tmp : [Any] = []
            for k in self.clients! {
                tmp.append(k.toMap())
            }
            map["Clients"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clients") && dict["Clients"] != nil {
            var tmp : [DescribeBackupClientsResponseBody.Clients] = []
            for v in dict["Clients"] as! [Any] {
                var model = DescribeBackupClientsResponseBody.Clients()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clients = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeBackupClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupClientsResponseBody?

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
            var model = DescribeBackupClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupJobs2Request : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var values: [String]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public var filters: [DescribeBackupJobs2Request.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortDirection: String?

    public var sourceType: String?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortDirection != nil {
            map["SortDirection"] = self.sortDirection!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [DescribeBackupJobs2Request.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = DescribeBackupJobs2Request.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortDirection") && dict["SortDirection"] != nil {
            self.sortDirection = dict["SortDirection"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DescribeBackupJobs2ResponseBody : Tea.TeaModel {
    public class BackupJobs : Tea.TeaModel {
        public class BackupJob : Tea.TeaModel {
            public class Detail : Tea.TeaModel {
                public class DiskNativeSnapshotIdList : Tea.TeaModel {
                    public var diskNativeSnapshotId: [String]?

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
                        if self.diskNativeSnapshotId != nil {
                            map["DiskNativeSnapshotId"] = self.diskNativeSnapshotId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DiskNativeSnapshotId") && dict["DiskNativeSnapshotId"] != nil {
                            self.diskNativeSnapshotId = dict["DiskNativeSnapshotId"] as! [String]
                        }
                    }
                }
                public var destinationNativeSnapshotErrorMessage: String?

                public var destinationNativeSnapshotId: String?

                public var destinationNativeSnapshotProgress: Int32?

                public var destinationNativeSnapshotStatus: String?

                public var destinationRetention: Int64?

                public var destinationSnapshotId: String?

                public var diskNativeSnapshotIdList: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail.DiskNativeSnapshotIdList?

                public var doCopy: Bool?

                public var nativeSnapshotId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.diskNativeSnapshotIdList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationNativeSnapshotErrorMessage != nil {
                        map["DestinationNativeSnapshotErrorMessage"] = self.destinationNativeSnapshotErrorMessage!
                    }
                    if self.destinationNativeSnapshotId != nil {
                        map["DestinationNativeSnapshotId"] = self.destinationNativeSnapshotId!
                    }
                    if self.destinationNativeSnapshotProgress != nil {
                        map["DestinationNativeSnapshotProgress"] = self.destinationNativeSnapshotProgress!
                    }
                    if self.destinationNativeSnapshotStatus != nil {
                        map["DestinationNativeSnapshotStatus"] = self.destinationNativeSnapshotStatus!
                    }
                    if self.destinationRetention != nil {
                        map["DestinationRetention"] = self.destinationRetention!
                    }
                    if self.destinationSnapshotId != nil {
                        map["DestinationSnapshotId"] = self.destinationSnapshotId!
                    }
                    if self.diskNativeSnapshotIdList != nil {
                        map["DiskNativeSnapshotIdList"] = self.diskNativeSnapshotIdList?.toMap()
                    }
                    if self.doCopy != nil {
                        map["DoCopy"] = self.doCopy!
                    }
                    if self.nativeSnapshotId != nil {
                        map["NativeSnapshotId"] = self.nativeSnapshotId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationNativeSnapshotErrorMessage") && dict["DestinationNativeSnapshotErrorMessage"] != nil {
                        self.destinationNativeSnapshotErrorMessage = dict["DestinationNativeSnapshotErrorMessage"] as! String
                    }
                    if dict.keys.contains("DestinationNativeSnapshotId") && dict["DestinationNativeSnapshotId"] != nil {
                        self.destinationNativeSnapshotId = dict["DestinationNativeSnapshotId"] as! String
                    }
                    if dict.keys.contains("DestinationNativeSnapshotProgress") && dict["DestinationNativeSnapshotProgress"] != nil {
                        self.destinationNativeSnapshotProgress = dict["DestinationNativeSnapshotProgress"] as! Int32
                    }
                    if dict.keys.contains("DestinationNativeSnapshotStatus") && dict["DestinationNativeSnapshotStatus"] != nil {
                        self.destinationNativeSnapshotStatus = dict["DestinationNativeSnapshotStatus"] as! String
                    }
                    if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                        self.destinationRetention = dict["DestinationRetention"] as! Int64
                    }
                    if dict.keys.contains("DestinationSnapshotId") && dict["DestinationSnapshotId"] != nil {
                        self.destinationSnapshotId = dict["DestinationSnapshotId"] as! String
                    }
                    if dict.keys.contains("DiskNativeSnapshotIdList") && dict["DiskNativeSnapshotIdList"] != nil {
                        var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail.DiskNativeSnapshotIdList()
                        model.fromMap(dict["DiskNativeSnapshotIdList"] as! [String: Any])
                        self.diskNativeSnapshotIdList = model
                    }
                    if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                        self.doCopy = dict["DoCopy"] as! Bool
                    }
                    if dict.keys.contains("NativeSnapshotId") && dict["NativeSnapshotId"] != nil {
                        self.nativeSnapshotId = dict["NativeSnapshotId"] as! String
                    }
                }
            }
            public class OtsDetail : Tea.TeaModel {
                public class TableNames : Tea.TeaModel {
                    public var tableName: [String]?

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
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TableName") && dict["TableName"] != nil {
                            self.tableName = dict["TableName"] as! [String]
                        }
                    }
                }
                public var tableNames: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail.TableNames?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.tableNames?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableNames != nil {
                        map["TableNames"] = self.tableNames?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TableNames") && dict["TableNames"] != nil {
                        var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail.TableNames()
                        model.fromMap(dict["TableNames"] as! [String: Any])
                        self.tableNames = model
                    }
                }
            }
            public class Paths : Tea.TeaModel {
                public var path: [String]?

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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") && dict["Path"] != nil {
                        self.path = dict["Path"] as! [String]
                    }
                }
            }
            public var actualBytes: Int64?

            public var actualFiles: Int64?

            public var actualItems: Int64?

            public var backupType: String?

            public var bucket: String?

            public var bytesDone: Int64?

            public var bytesTotal: Int64?

            public var changeListPath: String?

            public var clientId: String?

            public var completeTime: Int64?

            public var createTime: Int64?

            public var createdTime: Int64?

            public var crossAccountRoleName: String?

            public var crossAccountType: String?

            public var crossAccountUserId: Int64?

            public var destDataSourceDetail: String?

            public var destDataSourceId: String?

            public var destSourceType: String?

            public var detail: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail?

            public var errorMessage: String?

            public var exclude: String?

            public var fileSystemId: String?

            public var filesDone: Int64?

            public var filesTotal: Int64?

            public var identifier: String?

            public var include: String?

            public var instanceId: String?

            public var instanceName: String?

            public var itemsDone: Int64?

            public var itemsTotal: Int64?

            public var jobId: String?

            public var jobName: String?

            public var options: String?

            public var otsDetail: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail?

            public var paths: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Paths?

            public var planId: String?

            public var prefix_: String?

            public var progress: Int32?

            public var sourceType: String?

            public var speed: Int64?

            public var speedLimit: String?

            public var startTime: Int64?

            public var status: String?

            public var tableName: String?

            public var updatedTime: Int64?

            public var vaultId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.detail?.validate()
                try self.otsDetail?.validate()
                try self.paths?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualBytes != nil {
                    map["ActualBytes"] = self.actualBytes!
                }
                if self.actualFiles != nil {
                    map["ActualFiles"] = self.actualFiles!
                }
                if self.actualItems != nil {
                    map["ActualItems"] = self.actualItems!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.bucket != nil {
                    map["Bucket"] = self.bucket!
                }
                if self.bytesDone != nil {
                    map["BytesDone"] = self.bytesDone!
                }
                if self.bytesTotal != nil {
                    map["BytesTotal"] = self.bytesTotal!
                }
                if self.changeListPath != nil {
                    map["ChangeListPath"] = self.changeListPath!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.completeTime != nil {
                    map["CompleteTime"] = self.completeTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.crossAccountRoleName != nil {
                    map["CrossAccountRoleName"] = self.crossAccountRoleName!
                }
                if self.crossAccountType != nil {
                    map["CrossAccountType"] = self.crossAccountType!
                }
                if self.crossAccountUserId != nil {
                    map["CrossAccountUserId"] = self.crossAccountUserId!
                }
                if self.destDataSourceDetail != nil {
                    map["DestDataSourceDetail"] = self.destDataSourceDetail!
                }
                if self.destDataSourceId != nil {
                    map["DestDataSourceId"] = self.destDataSourceId!
                }
                if self.destSourceType != nil {
                    map["DestSourceType"] = self.destSourceType!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail?.toMap()
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.filesDone != nil {
                    map["FilesDone"] = self.filesDone!
                }
                if self.filesTotal != nil {
                    map["FilesTotal"] = self.filesTotal!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.include != nil {
                    map["Include"] = self.include!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.itemsDone != nil {
                    map["ItemsDone"] = self.itemsDone!
                }
                if self.itemsTotal != nil {
                    map["ItemsTotal"] = self.itemsTotal!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                if self.otsDetail != nil {
                    map["OtsDetail"] = self.otsDetail?.toMap()
                }
                if self.paths != nil {
                    map["Paths"] = self.paths?.toMap()
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.prefix_ != nil {
                    map["Prefix"] = self.prefix_!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.speed != nil {
                    map["Speed"] = self.speed!
                }
                if self.speedLimit != nil {
                    map["SpeedLimit"] = self.speedLimit!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActualBytes") && dict["ActualBytes"] != nil {
                    self.actualBytes = dict["ActualBytes"] as! Int64
                }
                if dict.keys.contains("ActualFiles") && dict["ActualFiles"] != nil {
                    self.actualFiles = dict["ActualFiles"] as! Int64
                }
                if dict.keys.contains("ActualItems") && dict["ActualItems"] != nil {
                    self.actualItems = dict["ActualItems"] as! Int64
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                    self.bucket = dict["Bucket"] as! String
                }
                if dict.keys.contains("BytesDone") && dict["BytesDone"] != nil {
                    self.bytesDone = dict["BytesDone"] as! Int64
                }
                if dict.keys.contains("BytesTotal") && dict["BytesTotal"] != nil {
                    self.bytesTotal = dict["BytesTotal"] as! Int64
                }
                if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
                    self.changeListPath = dict["ChangeListPath"] as! String
                }
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("CompleteTime") && dict["CompleteTime"] != nil {
                    self.completeTime = dict["CompleteTime"] as! Int64
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                    self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
                }
                if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
                    self.crossAccountType = dict["CrossAccountType"] as! String
                }
                if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                    self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
                }
                if dict.keys.contains("DestDataSourceDetail") && dict["DestDataSourceDetail"] != nil {
                    self.destDataSourceDetail = dict["DestDataSourceDetail"] as! String
                }
                if dict.keys.contains("DestDataSourceId") && dict["DestDataSourceId"] != nil {
                    self.destDataSourceId = dict["DestDataSourceId"] as! String
                }
                if dict.keys.contains("DestSourceType") && dict["DestSourceType"] != nil {
                    self.destSourceType = dict["DestSourceType"] as! String
                }
                if dict.keys.contains("Detail") && dict["Detail"] != nil {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail()
                    model.fromMap(dict["Detail"] as! [String: Any])
                    self.detail = model
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
                    self.exclude = dict["Exclude"] as! String
                }
                if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                    self.fileSystemId = dict["FileSystemId"] as! String
                }
                if dict.keys.contains("FilesDone") && dict["FilesDone"] != nil {
                    self.filesDone = dict["FilesDone"] as! Int64
                }
                if dict.keys.contains("FilesTotal") && dict["FilesTotal"] != nil {
                    self.filesTotal = dict["FilesTotal"] as! Int64
                }
                if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("Include") && dict["Include"] != nil {
                    self.include = dict["Include"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("ItemsDone") && dict["ItemsDone"] != nil {
                    self.itemsDone = dict["ItemsDone"] as! Int64
                }
                if dict.keys.contains("ItemsTotal") && dict["ItemsTotal"] != nil {
                    self.itemsTotal = dict["ItemsTotal"] as! Int64
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobName") && dict["JobName"] != nil {
                    self.jobName = dict["JobName"] as! String
                }
                if dict.keys.contains("Options") && dict["Options"] != nil {
                    self.options = dict["Options"] as! String
                }
                if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail()
                    model.fromMap(dict["OtsDetail"] as! [String: Any])
                    self.otsDetail = model
                }
                if dict.keys.contains("Paths") && dict["Paths"] != nil {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Paths()
                    model.fromMap(dict["Paths"] as! [String: Any])
                    self.paths = model
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
                    self.prefix_ = dict["Prefix"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("Speed") && dict["Speed"] != nil {
                    self.speed = dict["Speed"] as! Int64
                }
                if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
                    self.speedLimit = dict["SpeedLimit"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var backupJob: [DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob]?

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
            if self.backupJob != nil {
                var tmp : [Any] = []
                for k in self.backupJob! {
                    tmp.append(k.toMap())
                }
                map["BackupJob"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupJob") && dict["BackupJob"] != nil {
                var tmp : [DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob] = []
                for v in dict["BackupJob"] as! [Any] {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backupJob = tmp
            }
        }
    }
    public var backupJobs: DescribeBackupJobs2ResponseBody.BackupJobs?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backupJobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupJobs != nil {
            map["BackupJobs"] = self.backupJobs?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupJobs") && dict["BackupJobs"] != nil {
            var model = DescribeBackupJobs2ResponseBody.BackupJobs()
            model.fromMap(dict["BackupJobs"] as! [String: Any])
            self.backupJobs = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeBackupJobs2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupJobs2ResponseBody?

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
            var model = DescribeBackupJobs2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPlansRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public var filters: [DescribeBackupPlansRequest.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sourceType: String?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [DescribeBackupPlansRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = DescribeBackupPlansRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DescribeBackupPlansResponseBody : Tea.TeaModel {
    public class BackupPlans : Tea.TeaModel {
        public class BackupPlan : Tea.TeaModel {
            public class OtsDetail : Tea.TeaModel {
                public class TableNames : Tea.TeaModel {
                    public var tableName: [String]?

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
                        if self.tableName != nil {
                            map["TableName"] = self.tableName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TableName") && dict["TableName"] != nil {
                            self.tableName = dict["TableName"] as! [String]
                        }
                    }
                }
                public var tableNames: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail.TableNames?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.tableNames?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableNames != nil {
                        map["TableNames"] = self.tableNames?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TableNames") && dict["TableNames"] != nil {
                        var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail.TableNames()
                        model.fromMap(dict["TableNames"] as! [String: Any])
                        self.tableNames = model
                    }
                }
            }
            public class Paths : Tea.TeaModel {
                public var path: [String]?

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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") && dict["Path"] != nil {
                        self.path = dict["Path"] as! [String]
                    }
                }
            }
            public class Resources : Tea.TeaModel {
                public class Resource : Tea.TeaModel {
                    public var extra: String?

                    public var resourceId: String?

                    public var sourceType: String?

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
                        if self.extra != nil {
                            map["Extra"] = self.extra!
                        }
                        if self.resourceId != nil {
                            map["ResourceId"] = self.resourceId!
                        }
                        if self.sourceType != nil {
                            map["SourceType"] = self.sourceType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Extra") && dict["Extra"] != nil {
                            self.extra = dict["Extra"] as! String
                        }
                        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                            self.resourceId = dict["ResourceId"] as! String
                        }
                        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                            self.sourceType = dict["SourceType"] as! String
                        }
                    }
                }
                public var resource: [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources.Resource]?

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
                    if self.resource != nil {
                        var tmp : [Any] = []
                        for k in self.resource! {
                            tmp.append(k.toMap())
                        }
                        map["Resource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Resource") && dict["Resource"] != nil {
                        var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources.Resource] = []
                        for v in dict["Resource"] as! [Any] {
                            var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources.Resource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.resource = tmp
                    }
                }
            }
            public class Rules : Tea.TeaModel {
                public class Rule : Tea.TeaModel {
                    public var backupType: String?

                    public var destinationRegionId: String?

                    public var destinationRetention: Int64?

                    public var disabled: Bool?

                    public var doCopy: Bool?

                    public var retention: Int64?

                    public var ruleId: String?

                    public var ruleName: String?

                    public var schedule: String?

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
                        if self.backupType != nil {
                            map["BackupType"] = self.backupType!
                        }
                        if self.destinationRegionId != nil {
                            map["DestinationRegionId"] = self.destinationRegionId!
                        }
                        if self.destinationRetention != nil {
                            map["DestinationRetention"] = self.destinationRetention!
                        }
                        if self.disabled != nil {
                            map["Disabled"] = self.disabled!
                        }
                        if self.doCopy != nil {
                            map["DoCopy"] = self.doCopy!
                        }
                        if self.retention != nil {
                            map["Retention"] = self.retention!
                        }
                        if self.ruleId != nil {
                            map["RuleId"] = self.ruleId!
                        }
                        if self.ruleName != nil {
                            map["RuleName"] = self.ruleName!
                        }
                        if self.schedule != nil {
                            map["Schedule"] = self.schedule!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                            self.backupType = dict["BackupType"] as! String
                        }
                        if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                            self.destinationRegionId = dict["DestinationRegionId"] as! String
                        }
                        if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                            self.destinationRetention = dict["DestinationRetention"] as! Int64
                        }
                        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                            self.disabled = dict["Disabled"] as! Bool
                        }
                        if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                            self.doCopy = dict["DoCopy"] as! Bool
                        }
                        if dict.keys.contains("Retention") && dict["Retention"] != nil {
                            self.retention = dict["Retention"] as! Int64
                        }
                        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                            self.ruleId = dict["RuleId"] as! String
                        }
                        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                            self.ruleName = dict["RuleName"] as! String
                        }
                        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                            self.schedule = dict["Schedule"] as! String
                        }
                    }
                }
                public var rule: [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules.Rule]?

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
                    if self.rule != nil {
                        var tmp : [Any] = []
                        for k in self.rule! {
                            tmp.append(k.toMap())
                        }
                        map["Rule"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rule") && dict["Rule"] != nil {
                        var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules.Rule] = []
                        for v in dict["Rule"] as! [Any] {
                            var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules.Rule()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.rule = tmp
                    }
                }
            }
            public class TrialInfo : Tea.TeaModel {
                public var keepAfterTrialExpiration: Bool?

                public var trialExpireTime: Int64?

                public var trialStartTime: Int64?

                public var trialVaultReleaseTime: Int64?

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
                    if self.keepAfterTrialExpiration != nil {
                        map["KeepAfterTrialExpiration"] = self.keepAfterTrialExpiration!
                    }
                    if self.trialExpireTime != nil {
                        map["TrialExpireTime"] = self.trialExpireTime!
                    }
                    if self.trialStartTime != nil {
                        map["TrialStartTime"] = self.trialStartTime!
                    }
                    if self.trialVaultReleaseTime != nil {
                        map["TrialVaultReleaseTime"] = self.trialVaultReleaseTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KeepAfterTrialExpiration") && dict["KeepAfterTrialExpiration"] != nil {
                        self.keepAfterTrialExpiration = dict["KeepAfterTrialExpiration"] as! Bool
                    }
                    if dict.keys.contains("TrialExpireTime") && dict["TrialExpireTime"] != nil {
                        self.trialExpireTime = dict["TrialExpireTime"] as! Int64
                    }
                    if dict.keys.contains("TrialStartTime") && dict["TrialStartTime"] != nil {
                        self.trialStartTime = dict["TrialStartTime"] as! Int64
                    }
                    if dict.keys.contains("TrialVaultReleaseTime") && dict["TrialVaultReleaseTime"] != nil {
                        self.trialVaultReleaseTime = dict["TrialVaultReleaseTime"] as! Int64
                    }
                }
            }
            public var backupSourceGroupId: String?

            public var backupType: String?

            public var bucket: String?

            public var changeListPath: String?

            public var clientId: String?

            public var clusterId: String?

            public var createTime: Int64?

            public var createdTime: Int64?

            public var crossAccountRoleName: String?

            public var crossAccountType: String?

            public var crossAccountUserId: Int64?

            public var dataSourceId: String?

            public var destDataSourceDetail: String?

            public var destDataSourceId: String?

            public var destSourceType: String?

            public var detail: String?

            public var disabled: Bool?

            public var exclude: String?

            public var fileSystemId: String?

            public var include: String?

            public var instanceGroupId: String?

            public var instanceId: String?

            public var instanceName: String?

            public var keepLatestSnapshots: Int64?

            public var latestExecuteJobId: String?

            public var options: String?

            public var otsDetail: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail?

            public var paths: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Paths?

            public var planId: String?

            public var planName: String?

            public var prefix_: String?

            public var resources: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources?

            public var retention: Int64?

            public var rules: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules?

            public var schedule: String?

            public var sourceType: String?

            public var speedLimit: String?

            public var trialInfo: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.TrialInfo?

            public var updatedTime: Int64?

            public var vaultId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.otsDetail?.validate()
                try self.paths?.validate()
                try self.resources?.validate()
                try self.rules?.validate()
                try self.trialInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupSourceGroupId != nil {
                    map["BackupSourceGroupId"] = self.backupSourceGroupId!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.bucket != nil {
                    map["Bucket"] = self.bucket!
                }
                if self.changeListPath != nil {
                    map["ChangeListPath"] = self.changeListPath!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.crossAccountRoleName != nil {
                    map["CrossAccountRoleName"] = self.crossAccountRoleName!
                }
                if self.crossAccountType != nil {
                    map["CrossAccountType"] = self.crossAccountType!
                }
                if self.crossAccountUserId != nil {
                    map["CrossAccountUserId"] = self.crossAccountUserId!
                }
                if self.dataSourceId != nil {
                    map["DataSourceId"] = self.dataSourceId!
                }
                if self.destDataSourceDetail != nil {
                    map["DestDataSourceDetail"] = self.destDataSourceDetail!
                }
                if self.destDataSourceId != nil {
                    map["DestDataSourceId"] = self.destDataSourceId!
                }
                if self.destSourceType != nil {
                    map["DestSourceType"] = self.destSourceType!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.include != nil {
                    map["Include"] = self.include!
                }
                if self.instanceGroupId != nil {
                    map["InstanceGroupId"] = self.instanceGroupId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.keepLatestSnapshots != nil {
                    map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
                }
                if self.latestExecuteJobId != nil {
                    map["LatestExecuteJobId"] = self.latestExecuteJobId!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                if self.otsDetail != nil {
                    map["OtsDetail"] = self.otsDetail?.toMap()
                }
                if self.paths != nil {
                    map["Paths"] = self.paths?.toMap()
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.planName != nil {
                    map["PlanName"] = self.planName!
                }
                if self.prefix_ != nil {
                    map["Prefix"] = self.prefix_!
                }
                if self.resources != nil {
                    map["Resources"] = self.resources?.toMap()
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.rules != nil {
                    map["Rules"] = self.rules?.toMap()
                }
                if self.schedule != nil {
                    map["Schedule"] = self.schedule!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.speedLimit != nil {
                    map["SpeedLimit"] = self.speedLimit!
                }
                if self.trialInfo != nil {
                    map["TrialInfo"] = self.trialInfo?.toMap()
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupSourceGroupId") && dict["BackupSourceGroupId"] != nil {
                    self.backupSourceGroupId = dict["BackupSourceGroupId"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                    self.bucket = dict["Bucket"] as! String
                }
                if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
                    self.changeListPath = dict["ChangeListPath"] as! String
                }
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                    self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
                }
                if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
                    self.crossAccountType = dict["CrossAccountType"] as! String
                }
                if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                    self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
                }
                if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                    self.dataSourceId = dict["DataSourceId"] as! String
                }
                if dict.keys.contains("DestDataSourceDetail") && dict["DestDataSourceDetail"] != nil {
                    self.destDataSourceDetail = dict["DestDataSourceDetail"] as! String
                }
                if dict.keys.contains("DestDataSourceId") && dict["DestDataSourceId"] != nil {
                    self.destDataSourceId = dict["DestDataSourceId"] as! String
                }
                if dict.keys.contains("DestSourceType") && dict["DestSourceType"] != nil {
                    self.destSourceType = dict["DestSourceType"] as! String
                }
                if dict.keys.contains("Detail") && dict["Detail"] != nil {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                    self.disabled = dict["Disabled"] as! Bool
                }
                if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
                    self.exclude = dict["Exclude"] as! String
                }
                if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                    self.fileSystemId = dict["FileSystemId"] as! String
                }
                if dict.keys.contains("Include") && dict["Include"] != nil {
                    self.include = dict["Include"] as! String
                }
                if dict.keys.contains("InstanceGroupId") && dict["InstanceGroupId"] != nil {
                    self.instanceGroupId = dict["InstanceGroupId"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
                    self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
                }
                if dict.keys.contains("LatestExecuteJobId") && dict["LatestExecuteJobId"] != nil {
                    self.latestExecuteJobId = dict["LatestExecuteJobId"] as! String
                }
                if dict.keys.contains("Options") && dict["Options"] != nil {
                    self.options = dict["Options"] as! String
                }
                if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail()
                    model.fromMap(dict["OtsDetail"] as! [String: Any])
                    self.otsDetail = model
                }
                if dict.keys.contains("Paths") && dict["Paths"] != nil {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Paths()
                    model.fromMap(dict["Paths"] as! [String: Any])
                    self.paths = model
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
                    self.planName = dict["PlanName"] as! String
                }
                if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
                    self.prefix_ = dict["Prefix"] as! String
                }
                if dict.keys.contains("Resources") && dict["Resources"] != nil {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources()
                    model.fromMap(dict["Resources"] as! [String: Any])
                    self.resources = model
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("Rules") && dict["Rules"] != nil {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules()
                    model.fromMap(dict["Rules"] as! [String: Any])
                    self.rules = model
                }
                if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                    self.schedule = dict["Schedule"] as! String
                }
                if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
                    self.speedLimit = dict["SpeedLimit"] as! String
                }
                if dict.keys.contains("TrialInfo") && dict["TrialInfo"] != nil {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.TrialInfo()
                    model.fromMap(dict["TrialInfo"] as! [String: Any])
                    self.trialInfo = model
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var backupPlan: [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan]?

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
            if self.backupPlan != nil {
                var tmp : [Any] = []
                for k in self.backupPlan! {
                    tmp.append(k.toMap())
                }
                map["BackupPlan"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPlan") && dict["BackupPlan"] != nil {
                var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan] = []
                for v in dict["BackupPlan"] as! [Any] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backupPlan = tmp
            }
        }
    }
    public var backupPlans: DescribeBackupPlansResponseBody.BackupPlans?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backupPlans?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlans != nil {
            map["BackupPlans"] = self.backupPlans?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlans") && dict["BackupPlans"] != nil {
            var model = DescribeBackupPlansResponseBody.BackupPlans()
            model.fromMap(dict["BackupPlans"] as! [String: Any])
            self.backupPlans = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeBackupPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPlansResponseBody?

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
            var model = DescribeBackupPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClientsRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientType: String?

    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var sourceType: String?

    public var vaultId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeClientsResponseBody : Tea.TeaModel {
    public class Clients : Tea.TeaModel {
        public class Client : Tea.TeaModel {
            public var alertSetting: String?

            public var clientId: String?

            public var clientName: String?

            public var clientType: String?

            public var clientVersion: String?

            public var clusterId: String?

            public var createdTime: Int64?

            public var instanceId: String?

            public var instanceName: String?

            public var maxVersion: String?

            public var networkType: String?

            public var status: String?

            public var statusMessage: String?

            public var updatedTime: Int64?

            public var useHttps: Bool?

            public var vaultId: String?

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
                if self.alertSetting != nil {
                    map["AlertSetting"] = self.alertSetting!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.clientName != nil {
                    map["ClientName"] = self.clientName!
                }
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.clientVersion != nil {
                    map["ClientVersion"] = self.clientVersion!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.maxVersion != nil {
                    map["MaxVersion"] = self.maxVersion!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.useHttps != nil {
                    map["UseHttps"] = self.useHttps!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertSetting") && dict["AlertSetting"] != nil {
                    self.alertSetting = dict["AlertSetting"] as! String
                }
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("ClientName") && dict["ClientName"] != nil {
                    self.clientName = dict["ClientName"] as! String
                }
                if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
                    self.clientType = dict["ClientType"] as! String
                }
                if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
                    self.clientVersion = dict["ClientVersion"] as! String
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("MaxVersion") && dict["MaxVersion"] != nil {
                    self.maxVersion = dict["MaxVersion"] as! String
                }
                if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("UseHttps") && dict["UseHttps"] != nil {
                    self.useHttps = dict["UseHttps"] as! Bool
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var client: [DescribeClientsResponseBody.Clients.Client]?

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
            if self.client != nil {
                var tmp : [Any] = []
                for k in self.client! {
                    tmp.append(k.toMap())
                }
                map["Client"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Client") && dict["Client"] != nil {
                var tmp : [DescribeClientsResponseBody.Clients.Client] = []
                for v in dict["Client"] as! [Any] {
                    var model = DescribeClientsResponseBody.Clients.Client()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.client = tmp
            }
        }
    }
    public var clients: DescribeClientsResponseBody.Clients?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clients?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clients != nil {
            map["Clients"] = self.clients?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clients") && dict["Clients"] != nil {
            var model = DescribeClientsResponseBody.Clients()
            model.fromMap(dict["Clients"] as! [String: Any])
            self.clients = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientsResponseBody?

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
            var model = DescribeClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var identifier: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeContainerClusterResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public var agentStatus: String?

        public var clusterId: String?

        public var clusterType: String?

        public var description_: String?

        public var identifier: String?

        public var name: String?

        public var networkType: String?

        public var token: String?

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
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentStatus") && dict["AgentStatus"] != nil {
                self.agentStatus = dict["AgentStatus"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var clusters: [DescribeContainerClusterResponseBody.Clusters]?

    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
            var tmp : [DescribeContainerClusterResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = DescribeContainerClusterResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeContainerClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerClusterResponseBody?

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
            var model = DescribeContainerClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCrossAccountsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeCrossAccountsResponseBody : Tea.TeaModel {
    public class CrossAccounts : Tea.TeaModel {
        public class CrossAccount : Tea.TeaModel {
            public var alias: String?

            public var createdTime: Int64?

            public var crossAccountRoleName: String?

            public var crossAccountUserId: Int64?

            public var id: Int64?

            public var ownerId: Int64?

            public var updatedTime: Int64?

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
                if self.alias != nil {
                    map["Alias"] = self.alias!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.crossAccountRoleName != nil {
                    map["CrossAccountRoleName"] = self.crossAccountRoleName!
                }
                if self.crossAccountUserId != nil {
                    map["CrossAccountUserId"] = self.crossAccountUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alias") && dict["Alias"] != nil {
                    self.alias = dict["Alias"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                    self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
                }
                if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                    self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
            }
        }
        public var crossAccount: [DescribeCrossAccountsResponseBody.CrossAccounts.CrossAccount]?

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
            if self.crossAccount != nil {
                var tmp : [Any] = []
                for k in self.crossAccount! {
                    tmp.append(k.toMap())
                }
                map["CrossAccount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CrossAccount") && dict["CrossAccount"] != nil {
                var tmp : [DescribeCrossAccountsResponseBody.CrossAccounts.CrossAccount] = []
                for v in dict["CrossAccount"] as! [Any] {
                    var model = DescribeCrossAccountsResponseBody.CrossAccounts.CrossAccount()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.crossAccount = tmp
            }
        }
    }
    public var code: String?

    public var crossAccounts: DescribeCrossAccountsResponseBody.CrossAccounts?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.crossAccounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.crossAccounts != nil {
            map["CrossAccounts"] = self.crossAccounts?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CrossAccounts") && dict["CrossAccounts"] != nil {
            var model = DescribeCrossAccountsResponseBody.CrossAccounts()
            model.fromMap(dict["CrossAccounts"] as! [String: Any])
            self.crossAccounts = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeCrossAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCrossAccountsResponseBody?

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
            var model = DescribeCrossAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaBackupPlansRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaBackupPlansResponseBody : Tea.TeaModel {
    public class HanaBackupPlans : Tea.TeaModel {
        public class HanaBackupPlan : Tea.TeaModel {
            public var backupPrefix: String?

            public var backupType: String?

            public var clusterId: String?

            public var databaseName: String?

            public var disabled: Bool?

            public var planId: String?

            public var planName: String?

            public var schedule: String?

            public var vaultId: String?

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
                if self.backupPrefix != nil {
                    map["BackupPrefix"] = self.backupPrefix!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.planName != nil {
                    map["PlanName"] = self.planName!
                }
                if self.schedule != nil {
                    map["Schedule"] = self.schedule!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupPrefix") && dict["BackupPrefix"] != nil {
                    self.backupPrefix = dict["BackupPrefix"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                    self.disabled = dict["Disabled"] as! Bool
                }
                if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
                    self.planName = dict["PlanName"] as! String
                }
                if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                    self.schedule = dict["Schedule"] as! String
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var hanaBackupPlan: [DescribeHanaBackupPlansResponseBody.HanaBackupPlans.HanaBackupPlan]?

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
            if self.hanaBackupPlan != nil {
                var tmp : [Any] = []
                for k in self.hanaBackupPlan! {
                    tmp.append(k.toMap())
                }
                map["HanaBackupPlan"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HanaBackupPlan") && dict["HanaBackupPlan"] != nil {
                var tmp : [DescribeHanaBackupPlansResponseBody.HanaBackupPlans.HanaBackupPlan] = []
                for v in dict["HanaBackupPlan"] as! [Any] {
                    var model = DescribeHanaBackupPlansResponseBody.HanaBackupPlans.HanaBackupPlan()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hanaBackupPlan = tmp
            }
        }
    }
    public var code: String?

    public var hanaBackupPlans: DescribeHanaBackupPlansResponseBody.HanaBackupPlans?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hanaBackupPlans?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.hanaBackupPlans != nil {
            map["HanaBackupPlans"] = self.hanaBackupPlans?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HanaBackupPlans") && dict["HanaBackupPlans"] != nil {
            var model = DescribeHanaBackupPlansResponseBody.HanaBackupPlans()
            model.fromMap(dict["HanaBackupPlans"] as! [String: Any])
            self.hanaBackupPlans = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeHanaBackupPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaBackupPlansResponseBody?

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
            var model = DescribeHanaBackupPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaBackupSettingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaBackupSettingResponseBody : Tea.TeaModel {
    public class HanaBackupSetting : Tea.TeaModel {
        public var catalogBackupParameterFile: String?

        public var catalogBackupUsingBackint: Bool?

        public var dataBackupParameterFile: String?

        public var databaseName: String?

        public var enableAutoLogBackup: Bool?

        public var logBackupParameterFile: String?

        public var logBackupTimeout: Int64?

        public var logBackupUsingBackint: Bool?

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
            if self.catalogBackupParameterFile != nil {
                map["CatalogBackupParameterFile"] = self.catalogBackupParameterFile!
            }
            if self.catalogBackupUsingBackint != nil {
                map["CatalogBackupUsingBackint"] = self.catalogBackupUsingBackint!
            }
            if self.dataBackupParameterFile != nil {
                map["DataBackupParameterFile"] = self.dataBackupParameterFile!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.enableAutoLogBackup != nil {
                map["EnableAutoLogBackup"] = self.enableAutoLogBackup!
            }
            if self.logBackupParameterFile != nil {
                map["LogBackupParameterFile"] = self.logBackupParameterFile!
            }
            if self.logBackupTimeout != nil {
                map["LogBackupTimeout"] = self.logBackupTimeout!
            }
            if self.logBackupUsingBackint != nil {
                map["LogBackupUsingBackint"] = self.logBackupUsingBackint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CatalogBackupParameterFile") && dict["CatalogBackupParameterFile"] != nil {
                self.catalogBackupParameterFile = dict["CatalogBackupParameterFile"] as! String
            }
            if dict.keys.contains("CatalogBackupUsingBackint") && dict["CatalogBackupUsingBackint"] != nil {
                self.catalogBackupUsingBackint = dict["CatalogBackupUsingBackint"] as! Bool
            }
            if dict.keys.contains("DataBackupParameterFile") && dict["DataBackupParameterFile"] != nil {
                self.dataBackupParameterFile = dict["DataBackupParameterFile"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("EnableAutoLogBackup") && dict["EnableAutoLogBackup"] != nil {
                self.enableAutoLogBackup = dict["EnableAutoLogBackup"] as! Bool
            }
            if dict.keys.contains("LogBackupParameterFile") && dict["LogBackupParameterFile"] != nil {
                self.logBackupParameterFile = dict["LogBackupParameterFile"] as! String
            }
            if dict.keys.contains("LogBackupTimeout") && dict["LogBackupTimeout"] != nil {
                self.logBackupTimeout = dict["LogBackupTimeout"] as! Int64
            }
            if dict.keys.contains("LogBackupUsingBackint") && dict["LogBackupUsingBackint"] != nil {
                self.logBackupUsingBackint = dict["LogBackupUsingBackint"] as! Bool
            }
        }
    }
    public var code: String?

    public var hanaBackupSetting: DescribeHanaBackupSettingResponseBody.HanaBackupSetting?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hanaBackupSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.hanaBackupSetting != nil {
            map["HanaBackupSetting"] = self.hanaBackupSetting?.toMap()
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
        if dict.keys.contains("HanaBackupSetting") && dict["HanaBackupSetting"] != nil {
            var model = DescribeHanaBackupSettingResponseBody.HanaBackupSetting()
            model.fromMap(dict["HanaBackupSetting"] as! [String: Any])
            self.hanaBackupSetting = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeHanaBackupSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaBackupSettingResponseBody?

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
            var model = DescribeHanaBackupSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaBackupsAsyncRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var includeDifferential: Bool?

    public var includeIncremental: Bool?

    public var includeLog: Bool?

    public var logPosition: Int64?

    public var mode: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recoveryPointInTime: Int64?

    public var resourceGroupId: String?

    public var source: String?

    public var sourceClusterId: String?

    public var systemCopy: Bool?

    public var useBackint: Bool?

    public var vaultId: String?

    public var volumeId: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.includeDifferential != nil {
            map["IncludeDifferential"] = self.includeDifferential!
        }
        if self.includeIncremental != nil {
            map["IncludeIncremental"] = self.includeIncremental!
        }
        if self.includeLog != nil {
            map["IncludeLog"] = self.includeLog!
        }
        if self.logPosition != nil {
            map["LogPosition"] = self.logPosition!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recoveryPointInTime != nil {
            map["RecoveryPointInTime"] = self.recoveryPointInTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceClusterId != nil {
            map["SourceClusterId"] = self.sourceClusterId!
        }
        if self.systemCopy != nil {
            map["SystemCopy"] = self.systemCopy!
        }
        if self.useBackint != nil {
            map["UseBackint"] = self.useBackint!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        if self.volumeId != nil {
            map["VolumeId"] = self.volumeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("IncludeDifferential") && dict["IncludeDifferential"] != nil {
            self.includeDifferential = dict["IncludeDifferential"] as! Bool
        }
        if dict.keys.contains("IncludeIncremental") && dict["IncludeIncremental"] != nil {
            self.includeIncremental = dict["IncludeIncremental"] as! Bool
        }
        if dict.keys.contains("IncludeLog") && dict["IncludeLog"] != nil {
            self.includeLog = dict["IncludeLog"] as! Bool
        }
        if dict.keys.contains("LogPosition") && dict["LogPosition"] != nil {
            self.logPosition = dict["LogPosition"] as! Int64
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecoveryPointInTime") && dict["RecoveryPointInTime"] != nil {
            self.recoveryPointInTime = dict["RecoveryPointInTime"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceClusterId") && dict["SourceClusterId"] != nil {
            self.sourceClusterId = dict["SourceClusterId"] as! String
        }
        if dict.keys.contains("SystemCopy") && dict["SystemCopy"] != nil {
            self.systemCopy = dict["SystemCopy"] as! Bool
        }
        if dict.keys.contains("UseBackint") && dict["UseBackint"] != nil {
            self.useBackint = dict["UseBackint"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
        if dict.keys.contains("VolumeId") && dict["VolumeId"] != nil {
            self.volumeId = dict["VolumeId"] as! Int32
        }
    }
}

public class DescribeHanaBackupsAsyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeHanaBackupsAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaBackupsAsyncResponseBody?

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
            var model = DescribeHanaBackupsAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaDatabasesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaDatabasesResponseBody : Tea.TeaModel {
    public class HanaDatabases : Tea.TeaModel {
        public class HanaDatabase : Tea.TeaModel {
            public var activeStatus: String?

            public var databaseName: String?

            public var detail: String?

            public var host: String?

            public var serviceName: String?

            public var sqlPort: Int32?

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
                if self.activeStatus != nil {
                    map["ActiveStatus"] = self.activeStatus!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                if self.sqlPort != nil {
                    map["SqlPort"] = self.sqlPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveStatus") && dict["ActiveStatus"] != nil {
                    self.activeStatus = dict["ActiveStatus"] as! String
                }
                if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("Detail") && dict["Detail"] != nil {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                    self.serviceName = dict["ServiceName"] as! String
                }
                if dict.keys.contains("SqlPort") && dict["SqlPort"] != nil {
                    self.sqlPort = dict["SqlPort"] as! Int32
                }
            }
        }
        public var hanaDatabase: [DescribeHanaDatabasesResponseBody.HanaDatabases.HanaDatabase]?

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
            if self.hanaDatabase != nil {
                var tmp : [Any] = []
                for k in self.hanaDatabase! {
                    tmp.append(k.toMap())
                }
                map["HanaDatabase"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HanaDatabase") && dict["HanaDatabase"] != nil {
                var tmp : [DescribeHanaDatabasesResponseBody.HanaDatabases.HanaDatabase] = []
                for v in dict["HanaDatabase"] as! [Any] {
                    var model = DescribeHanaDatabasesResponseBody.HanaDatabases.HanaDatabase()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hanaDatabase = tmp
            }
        }
    }
    public var code: String?

    public var hanaDatabases: DescribeHanaDatabasesResponseBody.HanaDatabases?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hanaDatabases?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.hanaDatabases != nil {
            map["HanaDatabases"] = self.hanaDatabases?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HanaDatabases") && dict["HanaDatabases"] != nil {
            var model = DescribeHanaDatabasesResponseBody.HanaDatabases()
            model.fromMap(dict["HanaDatabases"] as! [String: Any])
            self.hanaDatabases = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeHanaDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaDatabasesResponseBody?

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
            var model = DescribeHanaDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaInstancesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var tag: [DescribeHanaInstancesRequest.Tag]?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeHanaInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeHanaInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaInstancesResponseBody : Tea.TeaModel {
    public class Hanas : Tea.TeaModel {
        public class Hana : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var key: String?

                    public var value: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeHanaInstancesResponseBody.Hanas.Hana.Tags.Tag]?

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
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeHanaInstancesResponseBody.Hanas.Hana.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeHanaInstancesResponseBody.Hanas.Hana.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var alertSetting: String?

            public var clusterId: String?

            public var hanaName: String?

            public var host: String?

            public var instanceNumber: Int32?

            public var resourceGroupId: String?

            public var status: Int64?

            public var statusMessage: String?

            public var tags: DescribeHanaInstancesResponseBody.Hanas.Hana.Tags?

            public var useSsl: Bool?

            public var userName: String?

            public var validateCertificate: Bool?

            public var vaultId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertSetting != nil {
                    map["AlertSetting"] = self.alertSetting!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.hanaName != nil {
                    map["HanaName"] = self.hanaName!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.instanceNumber != nil {
                    map["InstanceNumber"] = self.instanceNumber!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.useSsl != nil {
                    map["UseSsl"] = self.useSsl!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.validateCertificate != nil {
                    map["ValidateCertificate"] = self.validateCertificate!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertSetting") && dict["AlertSetting"] != nil {
                    self.alertSetting = dict["AlertSetting"] as! String
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("HanaName") && dict["HanaName"] != nil {
                    self.hanaName = dict["HanaName"] as! String
                }
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
                    self.instanceNumber = dict["InstanceNumber"] as! Int32
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int64
                }
                if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeHanaInstancesResponseBody.Hanas.Hana.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UseSsl") && dict["UseSsl"] != nil {
                    self.useSsl = dict["UseSsl"] as! Bool
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("ValidateCertificate") && dict["ValidateCertificate"] != nil {
                    self.validateCertificate = dict["ValidateCertificate"] as! Bool
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var hana: [DescribeHanaInstancesResponseBody.Hanas.Hana]?

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
            if self.hana != nil {
                var tmp : [Any] = []
                for k in self.hana! {
                    tmp.append(k.toMap())
                }
                map["Hana"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Hana") && dict["Hana"] != nil {
                var tmp : [DescribeHanaInstancesResponseBody.Hanas.Hana] = []
                for v in dict["Hana"] as! [Any] {
                    var model = DescribeHanaInstancesResponseBody.Hanas.Hana()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hana = tmp
            }
        }
    }
    public var code: String?

    public var hanas: DescribeHanaInstancesResponseBody.Hanas?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hanas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.hanas != nil {
            map["Hanas"] = self.hanas?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Hanas") && dict["Hanas"] != nil {
            var model = DescribeHanaInstancesResponseBody.Hanas()
            model.fromMap(dict["Hanas"] as! [String: Any])
            self.hanas = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeHanaInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaInstancesResponseBody?

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
            var model = DescribeHanaInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaRestoresRequest : Tea.TeaModel {
    public var backupId: Int64?

    public var clusterId: String?

    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var restoreId: String?

    public var restoreStatus: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.restoreId != nil {
            map["RestoreId"] = self.restoreId!
        }
        if self.restoreStatus != nil {
            map["RestoreStatus"] = self.restoreStatus!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! Int64
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
            self.restoreId = dict["RestoreId"] as! String
        }
        if dict.keys.contains("RestoreStatus") && dict["RestoreStatus"] != nil {
            self.restoreStatus = dict["RestoreStatus"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaRestoresResponseBody : Tea.TeaModel {
    public class HanaRestore : Tea.TeaModel {
        public class HanaRestores : Tea.TeaModel {
            public var backupID: Int64?

            public var backupPrefix: String?

            public var checkAccess: Bool?

            public var clearLog: Bool?

            public var clusterId: String?

            public var currentPhase: Int32?

            public var currentProgress: Int64?

            public var databaseName: String?

            public var databaseRestoreId: Int64?

            public var endTime: Int64?

            public var logPosition: Int64?

            public var maxPhase: Int32?

            public var maxProgress: Int64?

            public var message: String?

            public var mode: String?

            public var phase: String?

            public var reachedTime: Int64?

            public var recoveryPointInTime: Int64?

            public var restoreId: String?

            public var source: String?

            public var sourceClusterId: String?

            public var startTime: Int64?

            public var state: String?

            public var status: String?

            public var systemCopy: Bool?

            public var useCatalog: Bool?

            public var useDelta: Bool?

            public var vaultId: String?

            public var volumeId: Int32?

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
                if self.backupID != nil {
                    map["BackupID"] = self.backupID!
                }
                if self.backupPrefix != nil {
                    map["BackupPrefix"] = self.backupPrefix!
                }
                if self.checkAccess != nil {
                    map["CheckAccess"] = self.checkAccess!
                }
                if self.clearLog != nil {
                    map["ClearLog"] = self.clearLog!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.currentPhase != nil {
                    map["CurrentPhase"] = self.currentPhase!
                }
                if self.currentProgress != nil {
                    map["CurrentProgress"] = self.currentProgress!
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.databaseRestoreId != nil {
                    map["DatabaseRestoreId"] = self.databaseRestoreId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.logPosition != nil {
                    map["LogPosition"] = self.logPosition!
                }
                if self.maxPhase != nil {
                    map["MaxPhase"] = self.maxPhase!
                }
                if self.maxProgress != nil {
                    map["MaxProgress"] = self.maxProgress!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.phase != nil {
                    map["Phase"] = self.phase!
                }
                if self.reachedTime != nil {
                    map["ReachedTime"] = self.reachedTime!
                }
                if self.recoveryPointInTime != nil {
                    map["RecoveryPointInTime"] = self.recoveryPointInTime!
                }
                if self.restoreId != nil {
                    map["RestoreId"] = self.restoreId!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.sourceClusterId != nil {
                    map["SourceClusterId"] = self.sourceClusterId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.systemCopy != nil {
                    map["SystemCopy"] = self.systemCopy!
                }
                if self.useCatalog != nil {
                    map["UseCatalog"] = self.useCatalog!
                }
                if self.useDelta != nil {
                    map["UseDelta"] = self.useDelta!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                if self.volumeId != nil {
                    map["VolumeId"] = self.volumeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupID") && dict["BackupID"] != nil {
                    self.backupID = dict["BackupID"] as! Int64
                }
                if dict.keys.contains("BackupPrefix") && dict["BackupPrefix"] != nil {
                    self.backupPrefix = dict["BackupPrefix"] as! String
                }
                if dict.keys.contains("CheckAccess") && dict["CheckAccess"] != nil {
                    self.checkAccess = dict["CheckAccess"] as! Bool
                }
                if dict.keys.contains("ClearLog") && dict["ClearLog"] != nil {
                    self.clearLog = dict["ClearLog"] as! Bool
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CurrentPhase") && dict["CurrentPhase"] != nil {
                    self.currentPhase = dict["CurrentPhase"] as! Int32
                }
                if dict.keys.contains("CurrentProgress") && dict["CurrentProgress"] != nil {
                    self.currentProgress = dict["CurrentProgress"] as! Int64
                }
                if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("DatabaseRestoreId") && dict["DatabaseRestoreId"] != nil {
                    self.databaseRestoreId = dict["DatabaseRestoreId"] as! Int64
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("LogPosition") && dict["LogPosition"] != nil {
                    self.logPosition = dict["LogPosition"] as! Int64
                }
                if dict.keys.contains("MaxPhase") && dict["MaxPhase"] != nil {
                    self.maxPhase = dict["MaxPhase"] as! Int32
                }
                if dict.keys.contains("MaxProgress") && dict["MaxProgress"] != nil {
                    self.maxProgress = dict["MaxProgress"] as! Int64
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("Phase") && dict["Phase"] != nil {
                    self.phase = dict["Phase"] as! String
                }
                if dict.keys.contains("ReachedTime") && dict["ReachedTime"] != nil {
                    self.reachedTime = dict["ReachedTime"] as! Int64
                }
                if dict.keys.contains("RecoveryPointInTime") && dict["RecoveryPointInTime"] != nil {
                    self.recoveryPointInTime = dict["RecoveryPointInTime"] as! Int64
                }
                if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
                    self.restoreId = dict["RestoreId"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("SourceClusterId") && dict["SourceClusterId"] != nil {
                    self.sourceClusterId = dict["SourceClusterId"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SystemCopy") && dict["SystemCopy"] != nil {
                    self.systemCopy = dict["SystemCopy"] as! Bool
                }
                if dict.keys.contains("UseCatalog") && dict["UseCatalog"] != nil {
                    self.useCatalog = dict["UseCatalog"] as! Bool
                }
                if dict.keys.contains("UseDelta") && dict["UseDelta"] != nil {
                    self.useDelta = dict["UseDelta"] as! Bool
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
                if dict.keys.contains("VolumeId") && dict["VolumeId"] != nil {
                    self.volumeId = dict["VolumeId"] as! Int32
                }
            }
        }
        public var hanaRestores: [DescribeHanaRestoresResponseBody.HanaRestore.HanaRestores]?

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
            if self.hanaRestores != nil {
                var tmp : [Any] = []
                for k in self.hanaRestores! {
                    tmp.append(k.toMap())
                }
                map["HanaRestores"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HanaRestores") && dict["HanaRestores"] != nil {
                var tmp : [DescribeHanaRestoresResponseBody.HanaRestore.HanaRestores] = []
                for v in dict["HanaRestores"] as! [Any] {
                    var model = DescribeHanaRestoresResponseBody.HanaRestore.HanaRestores()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hanaRestores = tmp
            }
        }
    }
    public var code: String?

    public var hanaRestore: DescribeHanaRestoresResponseBody.HanaRestore?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hanaRestore?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.hanaRestore != nil {
            map["HanaRestore"] = self.hanaRestore?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HanaRestore") && dict["HanaRestore"] != nil {
            var model = DescribeHanaRestoresResponseBody.HanaRestore()
            model.fromMap(dict["HanaRestore"] as! [String: Any])
            self.hanaRestore = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeHanaRestoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaRestoresResponseBody?

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
            var model = DescribeHanaRestoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHanaRetentionSettingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaRetentionSettingResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var code: String?

    public var databaseName: String?

    public var disabled: Bool?

    public var message: String?

    public var requestId: String?

    public var retentionDays: Int64?

    public var schedule: String?

    public var success: Bool?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RetentionDays") && dict["RetentionDays"] != nil {
            self.retentionDays = dict["RetentionDays"] as! Int64
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeHanaRetentionSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHanaRetentionSettingResponseBody?

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
            var model = DescribeHanaRetentionSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOtsTableSnapshotsRequest : Tea.TeaModel {
    public class OtsInstances : Tea.TeaModel {
        public var instanceName: String?

        public var tableNames: [String]?

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
            if self.tableNames != nil {
                map["TableNames"] = self.tableNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("TableNames") && dict["TableNames"] != nil {
                self.tableNames = dict["TableNames"] as! [String]
            }
        }
    }
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var endTime: Int64?

    public var limit: Int32?

    public var nextToken: String?

    public var otsInstances: [DescribeOtsTableSnapshotsRequest.OtsInstances]?

    public var snapshotIds: [String]?

    public var startTime: Int64?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.otsInstances != nil {
            var tmp : [Any] = []
            for k in self.otsInstances! {
                tmp.append(k.toMap())
            }
            map["OtsInstances"] = tmp
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OtsInstances") && dict["OtsInstances"] != nil {
            var tmp : [DescribeOtsTableSnapshotsRequest.OtsInstances] = []
            for v in dict["OtsInstances"] as! [Any] {
                var model = DescribeOtsTableSnapshotsRequest.OtsInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.otsInstances = tmp
        }
        if dict.keys.contains("SnapshotIds") && dict["SnapshotIds"] != nil {
            self.snapshotIds = dict["SnapshotIds"] as! [String]
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeOtsTableSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public var actualBytes: String?

        public var backupType: String?

        public var bytesTotal: Int64?

        public var completeTime: Int64?

        public var createTime: Int64?

        public var createdTime: Int64?

        public var instanceName: String?

        public var jobId: String?

        public var parentSnapshotHash: String?

        public var rangeEnd: Int64?

        public var rangeStart: Int64?

        public var retention: Int64?

        public var snapshotHash: String?

        public var snapshotId: String?

        public var sourceType: String?

        public var startTime: Int64?

        public var status: String?

        public var tableName: String?

        public var updatedTime: Int64?

        public var vaultId: String?

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
            if self.actualBytes != nil {
                map["ActualBytes"] = self.actualBytes!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.bytesTotal != nil {
                map["BytesTotal"] = self.bytesTotal!
            }
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.parentSnapshotHash != nil {
                map["ParentSnapshotHash"] = self.parentSnapshotHash!
            }
            if self.rangeEnd != nil {
                map["RangeEnd"] = self.rangeEnd!
            }
            if self.rangeStart != nil {
                map["RangeStart"] = self.rangeStart!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.snapshotHash != nil {
                map["SnapshotHash"] = self.snapshotHash!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.vaultId != nil {
                map["VaultId"] = self.vaultId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualBytes") && dict["ActualBytes"] != nil {
                self.actualBytes = dict["ActualBytes"] as! String
            }
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("BytesTotal") && dict["BytesTotal"] != nil {
                self.bytesTotal = dict["BytesTotal"] as! Int64
            }
            if dict.keys.contains("CompleteTime") && dict["CompleteTime"] != nil {
                self.completeTime = dict["CompleteTime"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("ParentSnapshotHash") && dict["ParentSnapshotHash"] != nil {
                self.parentSnapshotHash = dict["ParentSnapshotHash"] as! String
            }
            if dict.keys.contains("RangeEnd") && dict["RangeEnd"] != nil {
                self.rangeEnd = dict["RangeEnd"] as! Int64
            }
            if dict.keys.contains("RangeStart") && dict["RangeStart"] != nil {
                self.rangeStart = dict["RangeStart"] as! Int64
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
                self.snapshotHash = dict["SnapshotHash"] as! String
            }
            if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
            if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                self.vaultId = dict["VaultId"] as! String
            }
        }
    }
    public var code: String?

    public var limit: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var snapshots: [DescribeOtsTableSnapshotsResponseBody.Snapshots]?

    public var success: Bool?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
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
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") && dict["Snapshots"] != nil {
            var tmp : [DescribeOtsTableSnapshotsResponseBody.Snapshots] = []
            for v in dict["Snapshots"] as! [Any] {
                var model = DescribeOtsTableSnapshotsResponseBody.Snapshots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshots = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeOtsTableSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOtsTableSnapshotsResponseBody?

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
            var model = DescribeOtsTableSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePoliciesV2Request : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var policyId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class DescribePoliciesV2ResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public class RetentionRules : Tea.TeaModel {
                public var advancedRetentionType: String?

                public var retention: Int64?

                public var whichSnapshot: Int64?

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
                    if self.advancedRetentionType != nil {
                        map["AdvancedRetentionType"] = self.advancedRetentionType!
                    }
                    if self.retention != nil {
                        map["Retention"] = self.retention!
                    }
                    if self.whichSnapshot != nil {
                        map["WhichSnapshot"] = self.whichSnapshot!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdvancedRetentionType") && dict["AdvancedRetentionType"] != nil {
                        self.advancedRetentionType = dict["AdvancedRetentionType"] as! String
                    }
                    if dict.keys.contains("Retention") && dict["Retention"] != nil {
                        self.retention = dict["Retention"] as! Int64
                    }
                    if dict.keys.contains("WhichSnapshot") && dict["WhichSnapshot"] != nil {
                        self.whichSnapshot = dict["WhichSnapshot"] as! Int64
                    }
                }
            }
            public var archiveDays: Int64?

            public var backupType: String?

            public var keepLatestSnapshots: Int64?

            public var replicationRegionId: String?

            public var retention: Int64?

            public var retentionRules: [DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules]?

            public var ruleId: String?

            public var ruleType: String?

            public var schedule: String?

            public var vaultId: String?

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
                if self.archiveDays != nil {
                    map["ArchiveDays"] = self.archiveDays!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.keepLatestSnapshots != nil {
                    map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
                }
                if self.replicationRegionId != nil {
                    map["ReplicationRegionId"] = self.replicationRegionId!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.retentionRules != nil {
                    var tmp : [Any] = []
                    for k in self.retentionRules! {
                        tmp.append(k.toMap())
                    }
                    map["RetentionRules"] = tmp
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.schedule != nil {
                    map["Schedule"] = self.schedule!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArchiveDays") && dict["ArchiveDays"] != nil {
                    self.archiveDays = dict["ArchiveDays"] as! Int64
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
                    self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
                }
                if dict.keys.contains("ReplicationRegionId") && dict["ReplicationRegionId"] != nil {
                    self.replicationRegionId = dict["ReplicationRegionId"] as! String
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("RetentionRules") && dict["RetentionRules"] != nil {
                    var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules] = []
                    for v in dict["RetentionRules"] as! [Any] {
                        var model = DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.retentionRules = tmp
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
                if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                    self.schedule = dict["Schedule"] as! String
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var createdTime: Int64?

        public var policyBindingCount: Int64?

        public var policyDescription: String?

        public var policyId: String?

        public var policyName: String?

        public var rules: [DescribePoliciesV2ResponseBody.Policies.Rules]?

        public var updatedTime: Int64?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.policyBindingCount != nil {
                map["PolicyBindingCount"] = self.policyBindingCount!
            }
            if self.policyDescription != nil {
                map["PolicyDescription"] = self.policyDescription!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("PolicyBindingCount") && dict["PolicyBindingCount"] != nil {
                self.policyBindingCount = dict["PolicyBindingCount"] as! Int64
            }
            if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
                self.policyDescription = dict["PolicyDescription"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = DescribePoliciesV2ResponseBody.Policies.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var policies: [DescribePoliciesV2ResponseBody.Policies]?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Policies") && dict["Policies"] != nil {
            var tmp : [DescribePoliciesV2ResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = DescribePoliciesV2ResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePoliciesV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePoliciesV2ResponseBody?

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
            var model = DescribePoliciesV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyBindingsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var values: [String]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public var dataSourceIds: [String]?

    public var filters: [DescribePolicyBindingsRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policyId: String?

    public var sourceType: String?

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
        if self.dataSourceIds != nil {
            map["DataSourceIds"] = self.dataSourceIds!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceIds") && dict["DataSourceIds"] != nil {
            self.dataSourceIds = dict["DataSourceIds"] as! [String]
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [DescribePolicyBindingsRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = DescribePolicyBindingsRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DescribePolicyBindingsShrinkRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var values: [String]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public var dataSourceIdsShrink: String?

    public var filters: [DescribePolicyBindingsShrinkRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policyId: String?

    public var sourceType: String?

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
        if self.dataSourceIdsShrink != nil {
            map["DataSourceIds"] = self.dataSourceIdsShrink!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceIds") && dict["DataSourceIds"] != nil {
            self.dataSourceIdsShrink = dict["DataSourceIds"] as! String
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [DescribePolicyBindingsShrinkRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = DescribePolicyBindingsShrinkRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class DescribePolicyBindingsResponseBody : Tea.TeaModel {
    public class PolicyBindings : Tea.TeaModel {
        public class AdvancedOptions : Tea.TeaModel {
            public class CommonFileSystemDetail : Tea.TeaModel {
                public var fetchSliceSize: Int64?

                public var fullOnIncrementFail: Bool?

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
                    if self.fetchSliceSize != nil {
                        map["FetchSliceSize"] = self.fetchSliceSize!
                    }
                    if self.fullOnIncrementFail != nil {
                        map["FullOnIncrementFail"] = self.fullOnIncrementFail!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FetchSliceSize") && dict["FetchSliceSize"] != nil {
                        self.fetchSliceSize = dict["FetchSliceSize"] as! Int64
                    }
                    if dict.keys.contains("FullOnIncrementFail") && dict["FullOnIncrementFail"] != nil {
                        self.fullOnIncrementFail = dict["FullOnIncrementFail"] as! Bool
                    }
                }
            }
            public class CommonNasDetail : Tea.TeaModel {
                public var clientId: String?

                public var clusterId: String?

                public var fetchSliceSize: Int64?

                public var fullOnIncrementFail: Bool?

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
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.fetchSliceSize != nil {
                        map["FetchSliceSize"] = self.fetchSliceSize!
                    }
                    if self.fullOnIncrementFail != nil {
                        map["FullOnIncrementFail"] = self.fullOnIncrementFail!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                        self.clientId = dict["ClientId"] as! String
                    }
                    if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("FetchSliceSize") && dict["FetchSliceSize"] != nil {
                        self.fetchSliceSize = dict["FetchSliceSize"] as! Int64
                    }
                    if dict.keys.contains("FullOnIncrementFail") && dict["FullOnIncrementFail"] != nil {
                        self.fullOnIncrementFail = dict["FullOnIncrementFail"] as! Bool
                    }
                }
            }
            public class FileDetail : Tea.TeaModel {
                public var advPolicy: Bool?

                public var useVSS: Bool?

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
                    if self.advPolicy != nil {
                        map["AdvPolicy"] = self.advPolicy!
                    }
                    if self.useVSS != nil {
                        map["UseVSS"] = self.useVSS!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdvPolicy") && dict["AdvPolicy"] != nil {
                        self.advPolicy = dict["AdvPolicy"] as! Bool
                    }
                    if dict.keys.contains("UseVSS") && dict["UseVSS"] != nil {
                        self.useVSS = dict["UseVSS"] as! Bool
                    }
                }
            }
            public class OssDetail : Tea.TeaModel {
                public var inventoryCleanupPolicy: String?

                public var inventoryId: String?

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
                    if self.inventoryCleanupPolicy != nil {
                        map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                    }
                    if self.inventoryId != nil {
                        map["InventoryId"] = self.inventoryId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InventoryCleanupPolicy") && dict["InventoryCleanupPolicy"] != nil {
                        self.inventoryCleanupPolicy = dict["InventoryCleanupPolicy"] as! String
                    }
                    if dict.keys.contains("InventoryId") && dict["InventoryId"] != nil {
                        self.inventoryId = dict["InventoryId"] as! String
                    }
                }
            }
            public class UdmDetail : Tea.TeaModel {
                public var appConsistent: Bool?

                public var destinationKmsKeyId: String?

                public var diskIdList: [String]?

                public var enableFsFreeze: Bool?

                public var enableWriters: Bool?

                public var excludeDiskIdList: [String]?

                public var postScriptPath: String?

                public var preScriptPath: String?

                public var ramRoleName: String?

                public var snapshotGroup: Bool?

                public var timeoutInSeconds: Int64?

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
                    if self.appConsistent != nil {
                        map["AppConsistent"] = self.appConsistent!
                    }
                    if self.destinationKmsKeyId != nil {
                        map["DestinationKmsKeyId"] = self.destinationKmsKeyId!
                    }
                    if self.diskIdList != nil {
                        map["DiskIdList"] = self.diskIdList!
                    }
                    if self.enableFsFreeze != nil {
                        map["EnableFsFreeze"] = self.enableFsFreeze!
                    }
                    if self.enableWriters != nil {
                        map["EnableWriters"] = self.enableWriters!
                    }
                    if self.excludeDiskIdList != nil {
                        map["ExcludeDiskIdList"] = self.excludeDiskIdList!
                    }
                    if self.postScriptPath != nil {
                        map["PostScriptPath"] = self.postScriptPath!
                    }
                    if self.preScriptPath != nil {
                        map["PreScriptPath"] = self.preScriptPath!
                    }
                    if self.ramRoleName != nil {
                        map["RamRoleName"] = self.ramRoleName!
                    }
                    if self.snapshotGroup != nil {
                        map["SnapshotGroup"] = self.snapshotGroup!
                    }
                    if self.timeoutInSeconds != nil {
                        map["TimeoutInSeconds"] = self.timeoutInSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppConsistent") && dict["AppConsistent"] != nil {
                        self.appConsistent = dict["AppConsistent"] as! Bool
                    }
                    if dict.keys.contains("DestinationKmsKeyId") && dict["DestinationKmsKeyId"] != nil {
                        self.destinationKmsKeyId = dict["DestinationKmsKeyId"] as! String
                    }
                    if dict.keys.contains("DiskIdList") && dict["DiskIdList"] != nil {
                        self.diskIdList = dict["DiskIdList"] as! [String]
                    }
                    if dict.keys.contains("EnableFsFreeze") && dict["EnableFsFreeze"] != nil {
                        self.enableFsFreeze = dict["EnableFsFreeze"] as! Bool
                    }
                    if dict.keys.contains("EnableWriters") && dict["EnableWriters"] != nil {
                        self.enableWriters = dict["EnableWriters"] as! Bool
                    }
                    if dict.keys.contains("ExcludeDiskIdList") && dict["ExcludeDiskIdList"] != nil {
                        self.excludeDiskIdList = dict["ExcludeDiskIdList"] as! [String]
                    }
                    if dict.keys.contains("PostScriptPath") && dict["PostScriptPath"] != nil {
                        self.postScriptPath = dict["PostScriptPath"] as! String
                    }
                    if dict.keys.contains("PreScriptPath") && dict["PreScriptPath"] != nil {
                        self.preScriptPath = dict["PreScriptPath"] as! String
                    }
                    if dict.keys.contains("RamRoleName") && dict["RamRoleName"] != nil {
                        self.ramRoleName = dict["RamRoleName"] as! String
                    }
                    if dict.keys.contains("SnapshotGroup") && dict["SnapshotGroup"] != nil {
                        self.snapshotGroup = dict["SnapshotGroup"] as! Bool
                    }
                    if dict.keys.contains("TimeoutInSeconds") && dict["TimeoutInSeconds"] != nil {
                        self.timeoutInSeconds = dict["TimeoutInSeconds"] as! Int64
                    }
                }
            }
            public var commonFileSystemDetail: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonFileSystemDetail?

            public var commonNasDetail: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonNasDetail?

            public var fileDetail: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.FileDetail?

            public var ossDetail: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.OssDetail?

            public var udmDetail: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.UdmDetail?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.commonFileSystemDetail?.validate()
                try self.commonNasDetail?.validate()
                try self.fileDetail?.validate()
                try self.ossDetail?.validate()
                try self.udmDetail?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commonFileSystemDetail != nil {
                    map["CommonFileSystemDetail"] = self.commonFileSystemDetail?.toMap()
                }
                if self.commonNasDetail != nil {
                    map["CommonNasDetail"] = self.commonNasDetail?.toMap()
                }
                if self.fileDetail != nil {
                    map["FileDetail"] = self.fileDetail?.toMap()
                }
                if self.ossDetail != nil {
                    map["OssDetail"] = self.ossDetail?.toMap()
                }
                if self.udmDetail != nil {
                    map["UdmDetail"] = self.udmDetail?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommonFileSystemDetail") && dict["CommonFileSystemDetail"] != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonFileSystemDetail()
                    model.fromMap(dict["CommonFileSystemDetail"] as! [String: Any])
                    self.commonFileSystemDetail = model
                }
                if dict.keys.contains("CommonNasDetail") && dict["CommonNasDetail"] != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonNasDetail()
                    model.fromMap(dict["CommonNasDetail"] as! [String: Any])
                    self.commonNasDetail = model
                }
                if dict.keys.contains("FileDetail") && dict["FileDetail"] != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.FileDetail()
                    model.fromMap(dict["FileDetail"] as! [String: Any])
                    self.fileDetail = model
                }
                if dict.keys.contains("OssDetail") && dict["OssDetail"] != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.OssDetail()
                    model.fromMap(dict["OssDetail"] as! [String: Any])
                    self.ossDetail = model
                }
                if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.UdmDetail()
                    model.fromMap(dict["UdmDetail"] as! [String: Any])
                    self.udmDetail = model
                }
            }
        }
        public var advancedOptions: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions?

        public var createdTime: Int64?

        public var crossAccountRoleName: String?

        public var crossAccountType: String?

        public var crossAccountUserId: Int64?

        public var dataSourceId: String?

        public var disabled: Bool?

        public var policyBindingDescription: String?

        public var policyBindingId: String?

        public var policyId: String?

        public var sourceType: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advancedOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advancedOptions != nil {
                map["AdvancedOptions"] = self.advancedOptions?.toMap()
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.crossAccountRoleName != nil {
                map["CrossAccountRoleName"] = self.crossAccountRoleName!
            }
            if self.crossAccountType != nil {
                map["CrossAccountType"] = self.crossAccountType!
            }
            if self.crossAccountUserId != nil {
                map["CrossAccountUserId"] = self.crossAccountUserId!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.policyBindingDescription != nil {
                map["PolicyBindingDescription"] = self.policyBindingDescription!
            }
            if self.policyBindingId != nil {
                map["PolicyBindingId"] = self.policyBindingId!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvancedOptions") && dict["AdvancedOptions"] != nil {
                var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions()
                model.fromMap(dict["AdvancedOptions"] as! [String: Any])
                self.advancedOptions = model
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
            }
            if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
                self.crossAccountType = dict["CrossAccountType"] as! String
            }
            if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
            }
            if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("PolicyBindingDescription") && dict["PolicyBindingDescription"] != nil {
                self.policyBindingDescription = dict["PolicyBindingDescription"] as! String
            }
            if dict.keys.contains("PolicyBindingId") && dict["PolicyBindingId"] != nil {
                self.policyBindingId = dict["PolicyBindingId"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var policyBindings: [DescribePolicyBindingsResponseBody.PolicyBindings]?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyBindings != nil {
            var tmp : [Any] = []
            for k in self.policyBindings! {
                tmp.append(k.toMap())
            }
            map["PolicyBindings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyBindings") && dict["PolicyBindings"] != nil {
            var tmp : [DescribePolicyBindingsResponseBody.PolicyBindings] = []
            for v in dict["PolicyBindings"] as! [Any] {
                var model = DescribePolicyBindingsResponseBody.PolicyBindings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyBindings = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePolicyBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyBindingsResponseBody?

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
            var model = DescribePolicyBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecoverableOtsInstancesRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
    }
}

public class DescribeRecoverableOtsInstancesResponseBody : Tea.TeaModel {
    public class OtsInstances : Tea.TeaModel {
        public var instanceName: String?

        public var tableNames: [String]?

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
            if self.tableNames != nil {
                map["TableNames"] = self.tableNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("TableNames") && dict["TableNames"] != nil {
                self.tableNames = dict["TableNames"] as! [String]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var otsInstances: [DescribeRecoverableOtsInstancesResponseBody.OtsInstances]?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.otsInstances != nil {
            var tmp : [Any] = []
            for k in self.otsInstances! {
                tmp.append(k.toMap())
            }
            map["OtsInstances"] = tmp
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OtsInstances") && dict["OtsInstances"] != nil {
            var tmp : [DescribeRecoverableOtsInstancesResponseBody.OtsInstances] = []
            for v in dict["OtsInstances"] as! [Any] {
                var model = DescribeRecoverableOtsInstancesResponseBody.OtsInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.otsInstances = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRecoverableOtsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecoverableOtsInstancesResponseBody?

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
            var model = DescribeRecoverableOtsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var needVaultCount: Bool?

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
        if self.needVaultCount != nil {
            map["NeedVaultCount"] = self.needVaultCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedVaultCount") && dict["NeedVaultCount"] != nil {
            self.needVaultCount = dict["NeedVaultCount"] as! Bool
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

            public var regionId: String?

            public var vaultCount: Int32?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.vaultCount != nil {
                    map["VaultCount"] = self.vaultCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("VaultCount") && dict["VaultCount"] != nil {
                    self.vaultCount = dict["VaultCount"] as! Int32
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

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
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRestoreJobs2Request : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var values: [String]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                self.values = dict["Values"] as! [String]
            }
        }
    }
    public var filters: [DescribeRestoreJobs2Request.Filters]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var restoreType: String?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.restoreType != nil {
            map["RestoreType"] = self.restoreType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [DescribeRestoreJobs2Request.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = DescribeRestoreJobs2Request.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RestoreType") && dict["RestoreType"] != nil {
            self.restoreType = dict["RestoreType"] as! String
        }
    }
}

public class DescribeRestoreJobs2ResponseBody : Tea.TeaModel {
    public class RestoreJobs : Tea.TeaModel {
        public class RestoreJob : Tea.TeaModel {
            public class OtsDetail : Tea.TeaModel {
                public var batchChannelCount: Int32?

                public var overwriteExisting: Bool?

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
                    if self.batchChannelCount != nil {
                        map["BatchChannelCount"] = self.batchChannelCount!
                    }
                    if self.overwriteExisting != nil {
                        map["OverwriteExisting"] = self.overwriteExisting!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BatchChannelCount") && dict["BatchChannelCount"] != nil {
                        self.batchChannelCount = dict["BatchChannelCount"] as! Int32
                    }
                    if dict.keys.contains("OverwriteExisting") && dict["OverwriteExisting"] != nil {
                        self.overwriteExisting = dict["OverwriteExisting"] as! Bool
                    }
                }
            }
            public class Report : Tea.TeaModel {
                public var failedFiles: String?

                public var reportTaskStatus: String?

                public var skippedFiles: String?

                public var successFiles: String?

                public var totalFiles: String?

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
                    if self.failedFiles != nil {
                        map["FailedFiles"] = self.failedFiles!
                    }
                    if self.reportTaskStatus != nil {
                        map["ReportTaskStatus"] = self.reportTaskStatus!
                    }
                    if self.skippedFiles != nil {
                        map["SkippedFiles"] = self.skippedFiles!
                    }
                    if self.successFiles != nil {
                        map["SuccessFiles"] = self.successFiles!
                    }
                    if self.totalFiles != nil {
                        map["TotalFiles"] = self.totalFiles!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FailedFiles") && dict["FailedFiles"] != nil {
                        self.failedFiles = dict["FailedFiles"] as! String
                    }
                    if dict.keys.contains("ReportTaskStatus") && dict["ReportTaskStatus"] != nil {
                        self.reportTaskStatus = dict["ReportTaskStatus"] as! String
                    }
                    if dict.keys.contains("SkippedFiles") && dict["SkippedFiles"] != nil {
                        self.skippedFiles = dict["SkippedFiles"] as! String
                    }
                    if dict.keys.contains("SuccessFiles") && dict["SuccessFiles"] != nil {
                        self.successFiles = dict["SuccessFiles"] as! String
                    }
                    if dict.keys.contains("TotalFiles") && dict["TotalFiles"] != nil {
                        self.totalFiles = dict["TotalFiles"] as! String
                    }
                }
            }
            public var actualBytes: Int64?

            public var actualItems: Int64?

            public var bytesDone: Int64?

            public var bytesTotal: Int64?

            public var clusterId: String?

            public var completeTime: Int64?

            public var createdTime: Int64?

            public var crossAccountRoleName: String?

            public var crossAccountType: String?

            public var crossAccountUserId: Int64?

            public var errorFile: String?

            public var errorMessage: String?

            public var exclude: String?

            public var expireTime: Int64?

            public var failbackDetail: String?

            public var include: String?

            public var itemsDone: Int64?

            public var itemsTotal: Int64?

            public var meteringBytesDone: Int64?

            public var meteringBytesTotal: Int64?

            public var options: String?

            public var otsDetail: DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.OtsDetail?

            public var parentId: String?

            public var progress: Int32?

            public var report: DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.Report?

            public var restoreId: String?

            public var restoreType: String?

            public var snapshotHash: String?

            public var snapshotId: String?

            public var sourceType: String?

            public var speed: Int64?

            public var startTime: Int64?

            public var status: String?

            public var storageClass: String?

            public var targetBucket: String?

            public var targetClientId: String?

            public var targetCreateTime: Int64?

            public var targetDataSourceId: String?

            public var targetFileSystemId: String?

            public var targetInstanceId: String?

            public var targetInstanceName: String?

            public var targetPath: String?

            public var targetPrefix: String?

            public var targetTableName: String?

            public var targetTime: Int64?

            public var udmDetail: String?

            public var updatedTime: Int64?

            public var vaultId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.otsDetail?.validate()
                try self.report?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualBytes != nil {
                    map["ActualBytes"] = self.actualBytes!
                }
                if self.actualItems != nil {
                    map["ActualItems"] = self.actualItems!
                }
                if self.bytesDone != nil {
                    map["BytesDone"] = self.bytesDone!
                }
                if self.bytesTotal != nil {
                    map["BytesTotal"] = self.bytesTotal!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.completeTime != nil {
                    map["CompleteTime"] = self.completeTime!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.crossAccountRoleName != nil {
                    map["CrossAccountRoleName"] = self.crossAccountRoleName!
                }
                if self.crossAccountType != nil {
                    map["CrossAccountType"] = self.crossAccountType!
                }
                if self.crossAccountUserId != nil {
                    map["CrossAccountUserId"] = self.crossAccountUserId!
                }
                if self.errorFile != nil {
                    map["ErrorFile"] = self.errorFile!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.failbackDetail != nil {
                    map["FailbackDetail"] = self.failbackDetail!
                }
                if self.include != nil {
                    map["Include"] = self.include!
                }
                if self.itemsDone != nil {
                    map["ItemsDone"] = self.itemsDone!
                }
                if self.itemsTotal != nil {
                    map["ItemsTotal"] = self.itemsTotal!
                }
                if self.meteringBytesDone != nil {
                    map["MeteringBytesDone"] = self.meteringBytesDone!
                }
                if self.meteringBytesTotal != nil {
                    map["MeteringBytesTotal"] = self.meteringBytesTotal!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                if self.otsDetail != nil {
                    map["OtsDetail"] = self.otsDetail?.toMap()
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.report != nil {
                    map["Report"] = self.report?.toMap()
                }
                if self.restoreId != nil {
                    map["RestoreId"] = self.restoreId!
                }
                if self.restoreType != nil {
                    map["RestoreType"] = self.restoreType!
                }
                if self.snapshotHash != nil {
                    map["SnapshotHash"] = self.snapshotHash!
                }
                if self.snapshotId != nil {
                    map["SnapshotId"] = self.snapshotId!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.speed != nil {
                    map["Speed"] = self.speed!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                if self.targetBucket != nil {
                    map["TargetBucket"] = self.targetBucket!
                }
                if self.targetClientId != nil {
                    map["TargetClientId"] = self.targetClientId!
                }
                if self.targetCreateTime != nil {
                    map["TargetCreateTime"] = self.targetCreateTime!
                }
                if self.targetDataSourceId != nil {
                    map["TargetDataSourceId"] = self.targetDataSourceId!
                }
                if self.targetFileSystemId != nil {
                    map["TargetFileSystemId"] = self.targetFileSystemId!
                }
                if self.targetInstanceId != nil {
                    map["TargetInstanceId"] = self.targetInstanceId!
                }
                if self.targetInstanceName != nil {
                    map["TargetInstanceName"] = self.targetInstanceName!
                }
                if self.targetPath != nil {
                    map["TargetPath"] = self.targetPath!
                }
                if self.targetPrefix != nil {
                    map["TargetPrefix"] = self.targetPrefix!
                }
                if self.targetTableName != nil {
                    map["TargetTableName"] = self.targetTableName!
                }
                if self.targetTime != nil {
                    map["TargetTime"] = self.targetTime!
                }
                if self.udmDetail != nil {
                    map["UdmDetail"] = self.udmDetail!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActualBytes") && dict["ActualBytes"] != nil {
                    self.actualBytes = dict["ActualBytes"] as! Int64
                }
                if dict.keys.contains("ActualItems") && dict["ActualItems"] != nil {
                    self.actualItems = dict["ActualItems"] as! Int64
                }
                if dict.keys.contains("BytesDone") && dict["BytesDone"] != nil {
                    self.bytesDone = dict["BytesDone"] as! Int64
                }
                if dict.keys.contains("BytesTotal") && dict["BytesTotal"] != nil {
                    self.bytesTotal = dict["BytesTotal"] as! Int64
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CompleteTime") && dict["CompleteTime"] != nil {
                    self.completeTime = dict["CompleteTime"] as! Int64
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
                    self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
                }
                if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
                    self.crossAccountType = dict["CrossAccountType"] as! String
                }
                if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
                    self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
                }
                if dict.keys.contains("ErrorFile") && dict["ErrorFile"] != nil {
                    self.errorFile = dict["ErrorFile"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
                    self.exclude = dict["Exclude"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("FailbackDetail") && dict["FailbackDetail"] != nil {
                    self.failbackDetail = dict["FailbackDetail"] as! String
                }
                if dict.keys.contains("Include") && dict["Include"] != nil {
                    self.include = dict["Include"] as! String
                }
                if dict.keys.contains("ItemsDone") && dict["ItemsDone"] != nil {
                    self.itemsDone = dict["ItemsDone"] as! Int64
                }
                if dict.keys.contains("ItemsTotal") && dict["ItemsTotal"] != nil {
                    self.itemsTotal = dict["ItemsTotal"] as! Int64
                }
                if dict.keys.contains("MeteringBytesDone") && dict["MeteringBytesDone"] != nil {
                    self.meteringBytesDone = dict["MeteringBytesDone"] as! Int64
                }
                if dict.keys.contains("MeteringBytesTotal") && dict["MeteringBytesTotal"] != nil {
                    self.meteringBytesTotal = dict["MeteringBytesTotal"] as! Int64
                }
                if dict.keys.contains("Options") && dict["Options"] != nil {
                    self.options = dict["Options"] as! String
                }
                if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
                    var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.OtsDetail()
                    model.fromMap(dict["OtsDetail"] as! [String: Any])
                    self.otsDetail = model
                }
                if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("Report") && dict["Report"] != nil {
                    var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.Report()
                    model.fromMap(dict["Report"] as! [String: Any])
                    self.report = model
                }
                if dict.keys.contains("RestoreId") && dict["RestoreId"] != nil {
                    self.restoreId = dict["RestoreId"] as! String
                }
                if dict.keys.contains("RestoreType") && dict["RestoreType"] != nil {
                    self.restoreType = dict["RestoreType"] as! String
                }
                if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
                    self.snapshotHash = dict["SnapshotHash"] as! String
                }
                if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
                    self.snapshotId = dict["SnapshotId"] as! String
                }
                if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("Speed") && dict["Speed"] != nil {
                    self.speed = dict["Speed"] as! Int64
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClass") && dict["StorageClass"] != nil {
                    self.storageClass = dict["StorageClass"] as! String
                }
                if dict.keys.contains("TargetBucket") && dict["TargetBucket"] != nil {
                    self.targetBucket = dict["TargetBucket"] as! String
                }
                if dict.keys.contains("TargetClientId") && dict["TargetClientId"] != nil {
                    self.targetClientId = dict["TargetClientId"] as! String
                }
                if dict.keys.contains("TargetCreateTime") && dict["TargetCreateTime"] != nil {
                    self.targetCreateTime = dict["TargetCreateTime"] as! Int64
                }
                if dict.keys.contains("TargetDataSourceId") && dict["TargetDataSourceId"] != nil {
                    self.targetDataSourceId = dict["TargetDataSourceId"] as! String
                }
                if dict.keys.contains("TargetFileSystemId") && dict["TargetFileSystemId"] != nil {
                    self.targetFileSystemId = dict["TargetFileSystemId"] as! String
                }
                if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
                    self.targetInstanceId = dict["TargetInstanceId"] as! String
                }
                if dict.keys.contains("TargetInstanceName") && dict["TargetInstanceName"] != nil {
                    self.targetInstanceName = dict["TargetInstanceName"] as! String
                }
                if dict.keys.contains("TargetPath") && dict["TargetPath"] != nil {
                    self.targetPath = dict["TargetPath"] as! String
                }
                if dict.keys.contains("TargetPrefix") && dict["TargetPrefix"] != nil {
                    self.targetPrefix = dict["TargetPrefix"] as! String
                }
                if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
                    self.targetTableName = dict["TargetTableName"] as! String
                }
                if dict.keys.contains("TargetTime") && dict["TargetTime"] != nil {
                    self.targetTime = dict["TargetTime"] as! Int64
                }
                if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
                    self.udmDetail = dict["UdmDetail"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var restoreJob: [DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob]?

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
            if self.restoreJob != nil {
                var tmp : [Any] = []
                for k in self.restoreJob! {
                    tmp.append(k.toMap())
                }
                map["RestoreJob"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RestoreJob") && dict["RestoreJob"] != nil {
                var tmp : [DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob] = []
                for v in dict["RestoreJob"] as! [Any] {
                    var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.restoreJob = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var restoreJobs: DescribeRestoreJobs2ResponseBody.RestoreJobs?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreJobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreJobs != nil {
            map["RestoreJobs"] = self.restoreJobs?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreJobs") && dict["RestoreJobs"] != nil {
            var model = DescribeRestoreJobs2ResponseBody.RestoreJobs()
            model.fromMap(dict["RestoreJobs"] as! [String: Any])
            self.restoreJobs = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRestoreJobs2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreJobs2ResponseBody?

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
            var model = DescribeRestoreJobs2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTaskRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var taskId: String?

    public var token: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var completedTime: Int64?

    public var createdTime: Int64?

    public var description_: String?

    public var message: String?

    public var name: String?

    public var progress: Int32?

    public var requestId: String?

    public var result: String?

    public var success: Bool?

    public var updatedTime: Int64?

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
        if self.completedTime != nil {
            map["CompletedTime"] = self.completedTime!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updatedTime != nil {
            map["UpdatedTime"] = self.updatedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
            self.completedTime = dict["CompletedTime"] as! Int64
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
            self.updatedTime = dict["UpdatedTime"] as! Int64
        }
    }
}

public class DescribeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskResponseBody?

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
            var model = DescribeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUdmSnapshotsRequest : Tea.TeaModel {
    public var diskId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var jobId: String?

    public var snapshotIds: [String: Any]?

    public var sourceType: String?

    public var startTime: Int64?

    public var udmRegionId: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("SnapshotIds") && dict["SnapshotIds"] != nil {
            self.snapshotIds = dict["SnapshotIds"] as! [String: Any]
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
    }
}

public class DescribeUdmSnapshotsShrinkRequest : Tea.TeaModel {
    public var diskId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var jobId: String?

    public var snapshotIdsShrink: String?

    public var sourceType: String?

    public var startTime: Int64?

    public var udmRegionId: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.snapshotIdsShrink != nil {
            map["SnapshotIds"] = self.snapshotIdsShrink!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.udmRegionId != nil {
            map["UdmRegionId"] = self.udmRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("SnapshotIds") && dict["SnapshotIds"] != nil {
            self.snapshotIdsShrink = dict["SnapshotIds"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("UdmRegionId") && dict["UdmRegionId"] != nil {
            self.udmRegionId = dict["UdmRegionId"] as! String
        }
    }
}

public class DescribeUdmSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var consistentLevel: String?

            public var containOsDisk: Bool?

            public var diskCategory: String?

            public var diskDevName: String?

            public var diskHbrSnapshotIdWithDeviceMap: [String: Any]?

            public var diskIdList: [String]?

            public var downgradeReason: String?

            public var hostName: String?

            public var instanceIdWithDiskIdListMap: [String: Any]?

            public var instanceName: String?

            public var instanceType: String?

            public var instantAccess: Bool?

            public var nativeSnapshotIdList: [String]?

            public var osDiskId: String?

            public var osName: String?

            public var osNameEn: String?

            public var osType: String?

            public var performanceLevel: String?

            public var platform: String?

            public var snapshotGroupId: String?

            public var systemDisk: Bool?

            public var vmName: String?

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
                if self.consistentLevel != nil {
                    map["ConsistentLevel"] = self.consistentLevel!
                }
                if self.containOsDisk != nil {
                    map["ContainOsDisk"] = self.containOsDisk!
                }
                if self.diskCategory != nil {
                    map["DiskCategory"] = self.diskCategory!
                }
                if self.diskDevName != nil {
                    map["DiskDevName"] = self.diskDevName!
                }
                if self.diskHbrSnapshotIdWithDeviceMap != nil {
                    map["DiskHbrSnapshotIdWithDeviceMap"] = self.diskHbrSnapshotIdWithDeviceMap!
                }
                if self.diskIdList != nil {
                    map["DiskIdList"] = self.diskIdList!
                }
                if self.downgradeReason != nil {
                    map["DowngradeReason"] = self.downgradeReason!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.instanceIdWithDiskIdListMap != nil {
                    map["InstanceIdWithDiskIdListMap"] = self.instanceIdWithDiskIdListMap!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.instantAccess != nil {
                    map["InstantAccess"] = self.instantAccess!
                }
                if self.nativeSnapshotIdList != nil {
                    map["NativeSnapshotIdList"] = self.nativeSnapshotIdList!
                }
                if self.osDiskId != nil {
                    map["OsDiskId"] = self.osDiskId!
                }
                if self.osName != nil {
                    map["OsName"] = self.osName!
                }
                if self.osNameEn != nil {
                    map["OsNameEn"] = self.osNameEn!
                }
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.snapshotGroupId != nil {
                    map["SnapshotGroupId"] = self.snapshotGroupId!
                }
                if self.systemDisk != nil {
                    map["SystemDisk"] = self.systemDisk!
                }
                if self.vmName != nil {
                    map["VmName"] = self.vmName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsistentLevel") && dict["ConsistentLevel"] != nil {
                    self.consistentLevel = dict["ConsistentLevel"] as! String
                }
                if dict.keys.contains("ContainOsDisk") && dict["ContainOsDisk"] != nil {
                    self.containOsDisk = dict["ContainOsDisk"] as! Bool
                }
                if dict.keys.contains("DiskCategory") && dict["DiskCategory"] != nil {
                    self.diskCategory = dict["DiskCategory"] as! String
                }
                if dict.keys.contains("DiskDevName") && dict["DiskDevName"] != nil {
                    self.diskDevName = dict["DiskDevName"] as! String
                }
                if dict.keys.contains("DiskHbrSnapshotIdWithDeviceMap") && dict["DiskHbrSnapshotIdWithDeviceMap"] != nil {
                    self.diskHbrSnapshotIdWithDeviceMap = dict["DiskHbrSnapshotIdWithDeviceMap"] as! [String: Any]
                }
                if dict.keys.contains("DiskIdList") && dict["DiskIdList"] != nil {
                    self.diskIdList = dict["DiskIdList"] as! [String]
                }
                if dict.keys.contains("DowngradeReason") && dict["DowngradeReason"] != nil {
                    self.downgradeReason = dict["DowngradeReason"] as! String
                }
                if dict.keys.contains("HostName") && dict["HostName"] != nil {
                    self.hostName = dict["HostName"] as! String
                }
                if dict.keys.contains("InstanceIdWithDiskIdListMap") && dict["InstanceIdWithDiskIdListMap"] != nil {
                    self.instanceIdWithDiskIdListMap = dict["InstanceIdWithDiskIdListMap"] as! [String: Any]
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("InstantAccess") && dict["InstantAccess"] != nil {
                    self.instantAccess = dict["InstantAccess"] as! Bool
                }
                if dict.keys.contains("NativeSnapshotIdList") && dict["NativeSnapshotIdList"] != nil {
                    self.nativeSnapshotIdList = dict["NativeSnapshotIdList"] as! [String]
                }
                if dict.keys.contains("OsDiskId") && dict["OsDiskId"] != nil {
                    self.osDiskId = dict["OsDiskId"] as! String
                }
                if dict.keys.contains("OsName") && dict["OsName"] != nil {
                    self.osName = dict["OsName"] as! String
                }
                if dict.keys.contains("OsNameEn") && dict["OsNameEn"] != nil {
                    self.osNameEn = dict["OsNameEn"] as! String
                }
                if dict.keys.contains("OsType") && dict["OsType"] != nil {
                    self.osType = dict["OsType"] as! String
                }
                if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                    self.performanceLevel = dict["PerformanceLevel"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("SnapshotGroupId") && dict["SnapshotGroupId"] != nil {
                    self.snapshotGroupId = dict["SnapshotGroupId"] as! String
                }
                if dict.keys.contains("SystemDisk") && dict["SystemDisk"] != nil {
                    self.systemDisk = dict["SystemDisk"] as! Bool
                }
                if dict.keys.contains("VmName") && dict["VmName"] != nil {
                    self.vmName = dict["VmName"] as! String
                }
            }
        }
        public var actualBytes: String?

        public var advancedRetentionType: String?

        public var backupType: String?

        public var bytesTotal: Int64?

        public var completeTime: Int64?

        public var createTime: Int64?

        public var createdTime: Int64?

        public var detail: DescribeUdmSnapshotsResponseBody.Snapshots.Detail?

        public var diskId: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var jobId: String?

        public var nativeSnapshotId: String?

        public var nativeSnapshotInfo: String?

        public var parentSnapshotHash: String?

        public var prefix_: String?

        public var realSnapshotTime: Int64?

        public var retention: Int64?

        public var snapshotHash: String?

        public var snapshotId: String?

        public var sourceType: String?

        public var startTime: Int64?

        public var status: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualBytes != nil {
                map["ActualBytes"] = self.actualBytes!
            }
            if self.advancedRetentionType != nil {
                map["AdvancedRetentionType"] = self.advancedRetentionType!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.bytesTotal != nil {
                map["BytesTotal"] = self.bytesTotal!
            }
            if self.completeTime != nil {
                map["CompleteTime"] = self.completeTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.detail != nil {
                map["Detail"] = self.detail?.toMap()
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.nativeSnapshotId != nil {
                map["NativeSnapshotId"] = self.nativeSnapshotId!
            }
            if self.nativeSnapshotInfo != nil {
                map["NativeSnapshotInfo"] = self.nativeSnapshotInfo!
            }
            if self.parentSnapshotHash != nil {
                map["ParentSnapshotHash"] = self.parentSnapshotHash!
            }
            if self.prefix_ != nil {
                map["Prefix"] = self.prefix_!
            }
            if self.realSnapshotTime != nil {
                map["RealSnapshotTime"] = self.realSnapshotTime!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.snapshotHash != nil {
                map["SnapshotHash"] = self.snapshotHash!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualBytes") && dict["ActualBytes"] != nil {
                self.actualBytes = dict["ActualBytes"] as! String
            }
            if dict.keys.contains("AdvancedRetentionType") && dict["AdvancedRetentionType"] != nil {
                self.advancedRetentionType = dict["AdvancedRetentionType"] as! String
            }
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("BytesTotal") && dict["BytesTotal"] != nil {
                self.bytesTotal = dict["BytesTotal"] as! Int64
            }
            if dict.keys.contains("CompleteTime") && dict["CompleteTime"] != nil {
                self.completeTime = dict["CompleteTime"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                var model = DescribeUdmSnapshotsResponseBody.Snapshots.Detail()
                model.fromMap(dict["Detail"] as! [String: Any])
                self.detail = model
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("NativeSnapshotId") && dict["NativeSnapshotId"] != nil {
                self.nativeSnapshotId = dict["NativeSnapshotId"] as! String
            }
            if dict.keys.contains("NativeSnapshotInfo") && dict["NativeSnapshotInfo"] != nil {
                self.nativeSnapshotInfo = dict["NativeSnapshotInfo"] as! String
            }
            if dict.keys.contains("ParentSnapshotHash") && dict["ParentSnapshotHash"] != nil {
                self.parentSnapshotHash = dict["ParentSnapshotHash"] as! String
            }
            if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
                self.prefix_ = dict["Prefix"] as! String
            }
            if dict.keys.contains("RealSnapshotTime") && dict["RealSnapshotTime"] != nil {
                self.realSnapshotTime = dict["RealSnapshotTime"] as! Int64
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
                self.snapshotHash = dict["SnapshotHash"] as! String
            }
            if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var snapshots: [DescribeUdmSnapshotsResponseBody.Snapshots]?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") && dict["Snapshots"] != nil {
            var tmp : [DescribeUdmSnapshotsResponseBody.Snapshots] = []
            for v in dict["Snapshots"] as! [Any] {
                var model = DescribeUdmSnapshotsResponseBody.Snapshots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshots = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeUdmSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUdmSnapshotsResponseBody?

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
            var model = DescribeUdmSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVaultReplicationRegionsRequest : Tea.TeaModel {
    public var token: String?

    public var vaultId: String?

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
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DescribeVaultReplicationRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionId: [String]?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! [String]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var regions: DescribeVaultReplicationRegionsResponseBody.Regions?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeVaultReplicationRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeVaultReplicationRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVaultReplicationRegionsResponseBody?

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
            var model = DescribeVaultReplicationRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVaultsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [DescribeVaultsRequest.Tag]?

    public var vaultId: String?

    public var vaultRegionId: String?

    public var vaultType: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        if self.vaultRegionId != nil {
            map["VaultRegionId"] = self.vaultRegionId!
        }
        if self.vaultType != nil {
            map["VaultType"] = self.vaultType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeVaultsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeVaultsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
        if dict.keys.contains("VaultRegionId") && dict["VaultRegionId"] != nil {
            self.vaultRegionId = dict["VaultRegionId"] as! String
        }
        if dict.keys.contains("VaultType") && dict["VaultType"] != nil {
            self.vaultType = dict["VaultType"] as! String
        }
    }
}

public class DescribeVaultsResponseBody : Tea.TeaModel {
    public class Vaults : Tea.TeaModel {
        public class Vault : Tea.TeaModel {
            public class BackupPlanStatistics : Tea.TeaModel {
                public var commonNas: Int32?

                public var csg: Int32?

                public var ecsFile: Int32?

                public var ecsHana: Int32?

                public var isilon: Int32?

                public var localFile: Int32?

                public var localVm: Int32?

                public var mySql: Int32?

                public var nas: Int32?

                public var oracle: Int32?

                public var oss: Int32?

                public var ots: Int32?

                public var sqlServer: Int32?

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
                    if self.commonNas != nil {
                        map["CommonNas"] = self.commonNas!
                    }
                    if self.csg != nil {
                        map["Csg"] = self.csg!
                    }
                    if self.ecsFile != nil {
                        map["EcsFile"] = self.ecsFile!
                    }
                    if self.ecsHana != nil {
                        map["EcsHana"] = self.ecsHana!
                    }
                    if self.isilon != nil {
                        map["Isilon"] = self.isilon!
                    }
                    if self.localFile != nil {
                        map["LocalFile"] = self.localFile!
                    }
                    if self.localVm != nil {
                        map["LocalVm"] = self.localVm!
                    }
                    if self.mySql != nil {
                        map["MySql"] = self.mySql!
                    }
                    if self.nas != nil {
                        map["Nas"] = self.nas!
                    }
                    if self.oracle != nil {
                        map["Oracle"] = self.oracle!
                    }
                    if self.oss != nil {
                        map["Oss"] = self.oss!
                    }
                    if self.ots != nil {
                        map["Ots"] = self.ots!
                    }
                    if self.sqlServer != nil {
                        map["SqlServer"] = self.sqlServer!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CommonNas") && dict["CommonNas"] != nil {
                        self.commonNas = dict["CommonNas"] as! Int32
                    }
                    if dict.keys.contains("Csg") && dict["Csg"] != nil {
                        self.csg = dict["Csg"] as! Int32
                    }
                    if dict.keys.contains("EcsFile") && dict["EcsFile"] != nil {
                        self.ecsFile = dict["EcsFile"] as! Int32
                    }
                    if dict.keys.contains("EcsHana") && dict["EcsHana"] != nil {
                        self.ecsHana = dict["EcsHana"] as! Int32
                    }
                    if dict.keys.contains("Isilon") && dict["Isilon"] != nil {
                        self.isilon = dict["Isilon"] as! Int32
                    }
                    if dict.keys.contains("LocalFile") && dict["LocalFile"] != nil {
                        self.localFile = dict["LocalFile"] as! Int32
                    }
                    if dict.keys.contains("LocalVm") && dict["LocalVm"] != nil {
                        self.localVm = dict["LocalVm"] as! Int32
                    }
                    if dict.keys.contains("MySql") && dict["MySql"] != nil {
                        self.mySql = dict["MySql"] as! Int32
                    }
                    if dict.keys.contains("Nas") && dict["Nas"] != nil {
                        self.nas = dict["Nas"] as! Int32
                    }
                    if dict.keys.contains("Oracle") && dict["Oracle"] != nil {
                        self.oracle = dict["Oracle"] as! Int32
                    }
                    if dict.keys.contains("Oss") && dict["Oss"] != nil {
                        self.oss = dict["Oss"] as! Int32
                    }
                    if dict.keys.contains("Ots") && dict["Ots"] != nil {
                        self.ots = dict["Ots"] as! Int32
                    }
                    if dict.keys.contains("SqlServer") && dict["SqlServer"] != nil {
                        self.sqlServer = dict["SqlServer"] as! Int32
                    }
                }
            }
            public class ReplicationProgress : Tea.TeaModel {
                public var historicalReplicationProgress: Int32?

                public var newReplicationProgress: Int64?

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
                    if self.historicalReplicationProgress != nil {
                        map["HistoricalReplicationProgress"] = self.historicalReplicationProgress!
                    }
                    if self.newReplicationProgress != nil {
                        map["NewReplicationProgress"] = self.newReplicationProgress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HistoricalReplicationProgress") && dict["HistoricalReplicationProgress"] != nil {
                        self.historicalReplicationProgress = dict["HistoricalReplicationProgress"] as! Int32
                    }
                    if dict.keys.contains("NewReplicationProgress") && dict["NewReplicationProgress"] != nil {
                        self.newReplicationProgress = dict["NewReplicationProgress"] as! Int64
                    }
                }
            }
            public class SourceTypes : Tea.TeaModel {
                public var sourceType: [String]?

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
                    if self.sourceType != nil {
                        map["SourceType"] = self.sourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                        self.sourceType = dict["SourceType"] as! [String]
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var key: String?

                    public var value: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeVaultsResponseBody.Vaults.Vault.Tags.Tag]?

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
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeVaultsResponseBody.Vaults.Vault.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeVaultsResponseBody.Vaults.Vault.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public class TrialInfo : Tea.TeaModel {
                public var keepAfterTrialExpiration: Bool?

                public var trialExpireTime: Int64?

                public var trialStartTime: Int64?

                public var trialVaultReleaseTime: Int64?

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
                    if self.keepAfterTrialExpiration != nil {
                        map["KeepAfterTrialExpiration"] = self.keepAfterTrialExpiration!
                    }
                    if self.trialExpireTime != nil {
                        map["TrialExpireTime"] = self.trialExpireTime!
                    }
                    if self.trialStartTime != nil {
                        map["TrialStartTime"] = self.trialStartTime!
                    }
                    if self.trialVaultReleaseTime != nil {
                        map["TrialVaultReleaseTime"] = self.trialVaultReleaseTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KeepAfterTrialExpiration") && dict["KeepAfterTrialExpiration"] != nil {
                        self.keepAfterTrialExpiration = dict["KeepAfterTrialExpiration"] as! Bool
                    }
                    if dict.keys.contains("TrialExpireTime") && dict["TrialExpireTime"] != nil {
                        self.trialExpireTime = dict["TrialExpireTime"] as! Int64
                    }
                    if dict.keys.contains("TrialStartTime") && dict["TrialStartTime"] != nil {
                        self.trialStartTime = dict["TrialStartTime"] as! Int64
                    }
                    if dict.keys.contains("TrialVaultReleaseTime") && dict["TrialVaultReleaseTime"] != nil {
                        self.trialVaultReleaseTime = dict["TrialVaultReleaseTime"] as! Int64
                    }
                }
            }
            public var archiveBytesDone: Int64?

            public var archiveStorageSize: Int64?

            public var backupPlanStatistics: DescribeVaultsResponseBody.Vaults.Vault.BackupPlanStatistics?

            public var bucketName: String?

            public var bytesDone: Int64?

            public var chargeType: String?

            public var chargedStorageSize: Int64?

            public var compressionAlgorithm: String?

            public var createdTime: Int64?

            public var dedup: Bool?

            public var description_: String?

            public var encryptType: String?

            public var indexAvailable: Bool?

            public var indexLevel: String?

            public var indexUpdateTime: Int64?

            public var kmsKeyId: String?

            public var latestReplicationTime: Int64?

            public var redundancyType: String?

            public var replication: Bool?

            public var replicationProgress: DescribeVaultsResponseBody.Vaults.Vault.ReplicationProgress?

            public var replicationSourceRegionId: String?

            public var replicationSourceVault: Bool?

            public var replicationSourceVaultId: String?

            public var replicationTargetRegionId: String?

            public var resourceGroupId: String?

            public var retention: Int64?

            public var searchEnabled: Bool?

            public var snapshotCount: Int64?

            public var sourceTypes: DescribeVaultsResponseBody.Vaults.Vault.SourceTypes?

            public var status: String?

            public var storageSize: Int64?

            public var tags: DescribeVaultsResponseBody.Vaults.Vault.Tags?

            public var trialInfo: DescribeVaultsResponseBody.Vaults.Vault.TrialInfo?

            public var updatedTime: Int64?

            public var vaultId: String?

            public var vaultName: String?

            public var vaultRegionId: String?

            public var vaultStatusMessage: String?

            public var vaultStorageClass: String?

            public var vaultType: String?

            public var wormEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.backupPlanStatistics?.validate()
                try self.replicationProgress?.validate()
                try self.sourceTypes?.validate()
                try self.tags?.validate()
                try self.trialInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.archiveBytesDone != nil {
                    map["ArchiveBytesDone"] = self.archiveBytesDone!
                }
                if self.archiveStorageSize != nil {
                    map["ArchiveStorageSize"] = self.archiveStorageSize!
                }
                if self.backupPlanStatistics != nil {
                    map["BackupPlanStatistics"] = self.backupPlanStatistics?.toMap()
                }
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.bytesDone != nil {
                    map["BytesDone"] = self.bytesDone!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.chargedStorageSize != nil {
                    map["ChargedStorageSize"] = self.chargedStorageSize!
                }
                if self.compressionAlgorithm != nil {
                    map["CompressionAlgorithm"] = self.compressionAlgorithm!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dedup != nil {
                    map["Dedup"] = self.dedup!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.encryptType != nil {
                    map["EncryptType"] = self.encryptType!
                }
                if self.indexAvailable != nil {
                    map["IndexAvailable"] = self.indexAvailable!
                }
                if self.indexLevel != nil {
                    map["IndexLevel"] = self.indexLevel!
                }
                if self.indexUpdateTime != nil {
                    map["IndexUpdateTime"] = self.indexUpdateTime!
                }
                if self.kmsKeyId != nil {
                    map["KmsKeyId"] = self.kmsKeyId!
                }
                if self.latestReplicationTime != nil {
                    map["LatestReplicationTime"] = self.latestReplicationTime!
                }
                if self.redundancyType != nil {
                    map["RedundancyType"] = self.redundancyType!
                }
                if self.replication != nil {
                    map["Replication"] = self.replication!
                }
                if self.replicationProgress != nil {
                    map["ReplicationProgress"] = self.replicationProgress?.toMap()
                }
                if self.replicationSourceRegionId != nil {
                    map["ReplicationSourceRegionId"] = self.replicationSourceRegionId!
                }
                if self.replicationSourceVault != nil {
                    map["ReplicationSourceVault"] = self.replicationSourceVault!
                }
                if self.replicationSourceVaultId != nil {
                    map["ReplicationSourceVaultId"] = self.replicationSourceVaultId!
                }
                if self.replicationTargetRegionId != nil {
                    map["ReplicationTargetRegionId"] = self.replicationTargetRegionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.searchEnabled != nil {
                    map["SearchEnabled"] = self.searchEnabled!
                }
                if self.snapshotCount != nil {
                    map["SnapshotCount"] = self.snapshotCount!
                }
                if self.sourceTypes != nil {
                    map["SourceTypes"] = self.sourceTypes?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.trialInfo != nil {
                    map["TrialInfo"] = self.trialInfo?.toMap()
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                if self.vaultName != nil {
                    map["VaultName"] = self.vaultName!
                }
                if self.vaultRegionId != nil {
                    map["VaultRegionId"] = self.vaultRegionId!
                }
                if self.vaultStatusMessage != nil {
                    map["VaultStatusMessage"] = self.vaultStatusMessage!
                }
                if self.vaultStorageClass != nil {
                    map["VaultStorageClass"] = self.vaultStorageClass!
                }
                if self.vaultType != nil {
                    map["VaultType"] = self.vaultType!
                }
                if self.wormEnabled != nil {
                    map["WormEnabled"] = self.wormEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArchiveBytesDone") && dict["ArchiveBytesDone"] != nil {
                    self.archiveBytesDone = dict["ArchiveBytesDone"] as! Int64
                }
                if dict.keys.contains("ArchiveStorageSize") && dict["ArchiveStorageSize"] != nil {
                    self.archiveStorageSize = dict["ArchiveStorageSize"] as! Int64
                }
                if dict.keys.contains("BackupPlanStatistics") && dict["BackupPlanStatistics"] != nil {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.BackupPlanStatistics()
                    model.fromMap(dict["BackupPlanStatistics"] as! [String: Any])
                    self.backupPlanStatistics = model
                }
                if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                    self.bucketName = dict["BucketName"] as! String
                }
                if dict.keys.contains("BytesDone") && dict["BytesDone"] != nil {
                    self.bytesDone = dict["BytesDone"] as! Int64
                }
                if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("ChargedStorageSize") && dict["ChargedStorageSize"] != nil {
                    self.chargedStorageSize = dict["ChargedStorageSize"] as! Int64
                }
                if dict.keys.contains("CompressionAlgorithm") && dict["CompressionAlgorithm"] != nil {
                    self.compressionAlgorithm = dict["CompressionAlgorithm"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("Dedup") && dict["Dedup"] != nil {
                    self.dedup = dict["Dedup"] as! Bool
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EncryptType") && dict["EncryptType"] != nil {
                    self.encryptType = dict["EncryptType"] as! String
                }
                if dict.keys.contains("IndexAvailable") && dict["IndexAvailable"] != nil {
                    self.indexAvailable = dict["IndexAvailable"] as! Bool
                }
                if dict.keys.contains("IndexLevel") && dict["IndexLevel"] != nil {
                    self.indexLevel = dict["IndexLevel"] as! String
                }
                if dict.keys.contains("IndexUpdateTime") && dict["IndexUpdateTime"] != nil {
                    self.indexUpdateTime = dict["IndexUpdateTime"] as! Int64
                }
                if dict.keys.contains("KmsKeyId") && dict["KmsKeyId"] != nil {
                    self.kmsKeyId = dict["KmsKeyId"] as! String
                }
                if dict.keys.contains("LatestReplicationTime") && dict["LatestReplicationTime"] != nil {
                    self.latestReplicationTime = dict["LatestReplicationTime"] as! Int64
                }
                if dict.keys.contains("RedundancyType") && dict["RedundancyType"] != nil {
                    self.redundancyType = dict["RedundancyType"] as! String
                }
                if dict.keys.contains("Replication") && dict["Replication"] != nil {
                    self.replication = dict["Replication"] as! Bool
                }
                if dict.keys.contains("ReplicationProgress") && dict["ReplicationProgress"] != nil {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.ReplicationProgress()
                    model.fromMap(dict["ReplicationProgress"] as! [String: Any])
                    self.replicationProgress = model
                }
                if dict.keys.contains("ReplicationSourceRegionId") && dict["ReplicationSourceRegionId"] != nil {
                    self.replicationSourceRegionId = dict["ReplicationSourceRegionId"] as! String
                }
                if dict.keys.contains("ReplicationSourceVault") && dict["ReplicationSourceVault"] != nil {
                    self.replicationSourceVault = dict["ReplicationSourceVault"] as! Bool
                }
                if dict.keys.contains("ReplicationSourceVaultId") && dict["ReplicationSourceVaultId"] != nil {
                    self.replicationSourceVaultId = dict["ReplicationSourceVaultId"] as! String
                }
                if dict.keys.contains("ReplicationTargetRegionId") && dict["ReplicationTargetRegionId"] != nil {
                    self.replicationTargetRegionId = dict["ReplicationTargetRegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("SearchEnabled") && dict["SearchEnabled"] != nil {
                    self.searchEnabled = dict["SearchEnabled"] as! Bool
                }
                if dict.keys.contains("SnapshotCount") && dict["SnapshotCount"] != nil {
                    self.snapshotCount = dict["SnapshotCount"] as! Int64
                }
                if dict.keys.contains("SourceTypes") && dict["SourceTypes"] != nil {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.SourceTypes()
                    model.fromMap(dict["SourceTypes"] as! [String: Any])
                    self.sourceTypes = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                    self.storageSize = dict["StorageSize"] as! Int64
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("TrialInfo") && dict["TrialInfo"] != nil {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.TrialInfo()
                    model.fromMap(dict["TrialInfo"] as! [String: Any])
                    self.trialInfo = model
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
                if dict.keys.contains("VaultName") && dict["VaultName"] != nil {
                    self.vaultName = dict["VaultName"] as! String
                }
                if dict.keys.contains("VaultRegionId") && dict["VaultRegionId"] != nil {
                    self.vaultRegionId = dict["VaultRegionId"] as! String
                }
                if dict.keys.contains("VaultStatusMessage") && dict["VaultStatusMessage"] != nil {
                    self.vaultStatusMessage = dict["VaultStatusMessage"] as! String
                }
                if dict.keys.contains("VaultStorageClass") && dict["VaultStorageClass"] != nil {
                    self.vaultStorageClass = dict["VaultStorageClass"] as! String
                }
                if dict.keys.contains("VaultType") && dict["VaultType"] != nil {
                    self.vaultType = dict["VaultType"] as! String
                }
                if dict.keys.contains("WormEnabled") && dict["WormEnabled"] != nil {
                    self.wormEnabled = dict["WormEnabled"] as! Bool
                }
            }
        }
        public var vault: [DescribeVaultsResponseBody.Vaults.Vault]?

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
            if self.vault != nil {
                var tmp : [Any] = []
                for k in self.vault! {
                    tmp.append(k.toMap())
                }
                map["Vault"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Vault") && dict["Vault"] != nil {
                var tmp : [DescribeVaultsResponseBody.Vaults.Vault] = []
                for v in dict["Vault"] as! [Any] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vault = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var vaults: DescribeVaultsResponseBody.Vaults?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vaults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vaults != nil {
            map["Vaults"] = self.vaults?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Vaults") && dict["Vaults"] != nil {
            var model = DescribeVaultsResponseBody.Vaults()
            model.fromMap(dict["Vaults"] as! [String: Any])
            self.vaults = model
        }
    }
}

public class DescribeVaultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVaultsResponseBody?

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
            var model = DescribeVaultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachNasFileSystemRequest : Tea.TeaModel {
    public var createTime: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var fileSystemId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
    }
}

public class DetachNasFileSystemResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DetachNasFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachNasFileSystemResponseBody?

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
            var model = DetachNasFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableBackupPlanRequest : Tea.TeaModel {
    public var planId: String?

    public var sourceType: String?

    public var vaultId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DisableBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableBackupPlanResponseBody?

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
            var model = DisableBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableHanaBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var planId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class DisableHanaBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableHanaBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableHanaBackupPlanResponseBody?

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
            var model = DisableHanaBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableBackupPlanRequest : Tea.TeaModel {
    public var planId: String?

    public var sourceType: String?

    public var vaultId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class EnableBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableBackupPlanResponseBody?

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
            var model = EnableBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableHanaBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var planId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class EnableHanaBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableHanaBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableHanaBackupPlanResponseBody?

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
            var model = EnableHanaBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteBackupPlanRequest : Tea.TeaModel {
    public var planId: String?

    public var ruleId: String?

    public var sourceType: String?

    public var vaultId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class ExecuteBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var jobId: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExecuteBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteBackupPlanResponseBody?

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
            var model = ExecuteBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecutePolicyV2Request : Tea.TeaModel {
    public var dataSourceId: String?

    public var policyId: String?

    public var ruleId: String?

    public var sourceType: String?

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
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class ExecutePolicyV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var jobId: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExecutePolicyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecutePolicyV2ResponseBody?

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
            var model = ExecutePolicyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateRamPolicyRequest : Tea.TeaModel {
    public var actionType: String?

    public var requireBasePolicy: Bool?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.requireBasePolicy != nil {
            map["RequireBasePolicy"] = self.requireBasePolicy!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("RequireBasePolicy") && dict["RequireBasePolicy"] != nil {
            self.requireBasePolicy = dict["RequireBasePolicy"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class GenerateRamPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var policyDocument: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PolicyDocument") && dict["PolicyDocument"] != nil {
            self.policyDocument = dict["PolicyDocument"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateRamPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateRamPolicyResponseBody?

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
            var model = GenerateRamPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTempFileDownloadLinkRequest : Tea.TeaModel {
    public var tempFileKey: String?

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
        if self.tempFileKey != nil {
            map["TempFileKey"] = self.tempFileKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TempFileKey") && dict["TempFileKey"] != nil {
            self.tempFileKey = dict["TempFileKey"] as! String
        }
    }
}

public class GetTempFileDownloadLinkResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var url: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetTempFileDownloadLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTempFileDownloadLinkResponseBody?

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
            var model = GetTempFileDownloadLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallBackupClientsRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIds: [String: Any]?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
    }
}

public class InstallBackupClientsShrinkRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIdsShrink: String?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
    }
}

public class InstallBackupClientsResponseBody : Tea.TeaModel {
    public class InstanceStatuses : Tea.TeaModel {
        public var errorCode: String?

        public var instanceId: String?

        public var validInstance: Bool?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.validInstance != nil {
                map["ValidInstance"] = self.validInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ValidInstance") && dict["ValidInstance"] != nil {
                self.validInstance = dict["ValidInstance"] as! Bool
            }
        }
    }
    public var code: String?

    public var instanceStatuses: [InstallBackupClientsResponseBody.InstanceStatuses]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceStatuses != nil {
            var tmp : [Any] = []
            for k in self.instanceStatuses! {
                tmp.append(k.toMap())
            }
            map["InstanceStatuses"] = tmp
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceStatuses") && dict["InstanceStatuses"] != nil {
            var tmp : [InstallBackupClientsResponseBody.InstanceStatuses] = []
            for v in dict["InstanceStatuses"] as! [Any] {
                var model = InstallBackupClientsResponseBody.InstanceStatuses()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceStatuses = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class InstallBackupClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallBackupClientsResponseBody?

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
            var model = InstallBackupClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenHbrServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var requestId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenHbrServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenHbrServiceResponseBody?

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
            var model = OpenHbrServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchHistoricalSnapshotsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var order: String?

    public var query: [Any]?

    public var sortBy: String?

    public var sourceType: String?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! [Any]
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class SearchHistoricalSnapshotsShrinkRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public var order: String?

    public var queryShrink: String?

    public var sortBy: String?

    public var sourceType: String?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class SearchHistoricalSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public class Snapshot : Tea.TeaModel {
            public class Paths : Tea.TeaModel {
                public var path: [String]?

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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") && dict["Path"] != nil {
                        self.path = dict["Path"] as! [String]
                    }
                }
            }
            public var actualBytes: Int64?

            public var actualItems: Int64?

            public var archiveTime: Int64?

            public var backupType: String?

            public var bucket: String?

            public var bytesDone: Int64?

            public var bytesTotal: Int64?

            public var clientId: String?

            public var completeTime: Int64?

            public var createTime: Int64?

            public var createdTime: Int64?

            public var errorFile: String?

            public var exclude: String?

            public var expireTime: Int64?

            public var fileSystemId: String?

            public var include: String?

            public var instanceId: String?

            public var instanceName: String?

            public var itemsDone: Int64?

            public var itemsTotal: Int64?

            public var jobId: String?

            public var parentSnapshotHash: String?

            public var path: String?

            public var paths: SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot.Paths?

            public var prefix_: String?

            public var rangeEnd: Int64?

            public var rangeStart: Int64?

            public var retention: Int64?

            public var snapshotHash: String?

            public var snapshotId: String?

            public var sourceParentSnapshotHash: String?

            public var sourceSnapshotHash: String?

            public var sourceType: String?

            public var startTime: Int64?

            public var status: String?

            public var storageClass: String?

            public var tableName: String?

            public var updatedTime: Int64?

            public var useCommonNas: Bool?

            public var vaultId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.paths?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualBytes != nil {
                    map["ActualBytes"] = self.actualBytes!
                }
                if self.actualItems != nil {
                    map["ActualItems"] = self.actualItems!
                }
                if self.archiveTime != nil {
                    map["ArchiveTime"] = self.archiveTime!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.bucket != nil {
                    map["Bucket"] = self.bucket!
                }
                if self.bytesDone != nil {
                    map["BytesDone"] = self.bytesDone!
                }
                if self.bytesTotal != nil {
                    map["BytesTotal"] = self.bytesTotal!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.completeTime != nil {
                    map["CompleteTime"] = self.completeTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.errorFile != nil {
                    map["ErrorFile"] = self.errorFile!
                }
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.include != nil {
                    map["Include"] = self.include!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.itemsDone != nil {
                    map["ItemsDone"] = self.itemsDone!
                }
                if self.itemsTotal != nil {
                    map["ItemsTotal"] = self.itemsTotal!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.parentSnapshotHash != nil {
                    map["ParentSnapshotHash"] = self.parentSnapshotHash!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.paths != nil {
                    map["Paths"] = self.paths?.toMap()
                }
                if self.prefix_ != nil {
                    map["Prefix"] = self.prefix_!
                }
                if self.rangeEnd != nil {
                    map["RangeEnd"] = self.rangeEnd!
                }
                if self.rangeStart != nil {
                    map["RangeStart"] = self.rangeStart!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.snapshotHash != nil {
                    map["SnapshotHash"] = self.snapshotHash!
                }
                if self.snapshotId != nil {
                    map["SnapshotId"] = self.snapshotId!
                }
                if self.sourceParentSnapshotHash != nil {
                    map["SourceParentSnapshotHash"] = self.sourceParentSnapshotHash!
                }
                if self.sourceSnapshotHash != nil {
                    map["SourceSnapshotHash"] = self.sourceSnapshotHash!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClass != nil {
                    map["StorageClass"] = self.storageClass!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.useCommonNas != nil {
                    map["UseCommonNas"] = self.useCommonNas!
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActualBytes") && dict["ActualBytes"] != nil {
                    self.actualBytes = dict["ActualBytes"] as! Int64
                }
                if dict.keys.contains("ActualItems") && dict["ActualItems"] != nil {
                    self.actualItems = dict["ActualItems"] as! Int64
                }
                if dict.keys.contains("ArchiveTime") && dict["ArchiveTime"] != nil {
                    self.archiveTime = dict["ArchiveTime"] as! Int64
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                    self.bucket = dict["Bucket"] as! String
                }
                if dict.keys.contains("BytesDone") && dict["BytesDone"] != nil {
                    self.bytesDone = dict["BytesDone"] as! Int64
                }
                if dict.keys.contains("BytesTotal") && dict["BytesTotal"] != nil {
                    self.bytesTotal = dict["BytesTotal"] as! Int64
                }
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("CompleteTime") && dict["CompleteTime"] != nil {
                    self.completeTime = dict["CompleteTime"] as! Int64
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("ErrorFile") && dict["ErrorFile"] != nil {
                    self.errorFile = dict["ErrorFile"] as! String
                }
                if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
                    self.exclude = dict["Exclude"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                    self.fileSystemId = dict["FileSystemId"] as! String
                }
                if dict.keys.contains("Include") && dict["Include"] != nil {
                    self.include = dict["Include"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("ItemsDone") && dict["ItemsDone"] != nil {
                    self.itemsDone = dict["ItemsDone"] as! Int64
                }
                if dict.keys.contains("ItemsTotal") && dict["ItemsTotal"] != nil {
                    self.itemsTotal = dict["ItemsTotal"] as! Int64
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ParentSnapshotHash") && dict["ParentSnapshotHash"] != nil {
                    self.parentSnapshotHash = dict["ParentSnapshotHash"] as! String
                }
                if dict.keys.contains("Path") && dict["Path"] != nil {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Paths") && dict["Paths"] != nil {
                    var model = SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot.Paths()
                    model.fromMap(dict["Paths"] as! [String: Any])
                    self.paths = model
                }
                if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
                    self.prefix_ = dict["Prefix"] as! String
                }
                if dict.keys.contains("RangeEnd") && dict["RangeEnd"] != nil {
                    self.rangeEnd = dict["RangeEnd"] as! Int64
                }
                if dict.keys.contains("RangeStart") && dict["RangeStart"] != nil {
                    self.rangeStart = dict["RangeStart"] as! Int64
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("SnapshotHash") && dict["SnapshotHash"] != nil {
                    self.snapshotHash = dict["SnapshotHash"] as! String
                }
                if dict.keys.contains("SnapshotId") && dict["SnapshotId"] != nil {
                    self.snapshotId = dict["SnapshotId"] as! String
                }
                if dict.keys.contains("SourceParentSnapshotHash") && dict["SourceParentSnapshotHash"] != nil {
                    self.sourceParentSnapshotHash = dict["SourceParentSnapshotHash"] as! String
                }
                if dict.keys.contains("SourceSnapshotHash") && dict["SourceSnapshotHash"] != nil {
                    self.sourceSnapshotHash = dict["SourceSnapshotHash"] as! String
                }
                if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClass") && dict["StorageClass"] != nil {
                    self.storageClass = dict["StorageClass"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
                if dict.keys.contains("UseCommonNas") && dict["UseCommonNas"] != nil {
                    self.useCommonNas = dict["UseCommonNas"] as! Bool
                }
                if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
                    self.vaultId = dict["VaultId"] as! String
                }
            }
        }
        public var snapshot: [SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot]?

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
            if self.snapshot != nil {
                var tmp : [Any] = []
                for k in self.snapshot! {
                    tmp.append(k.toMap())
                }
                map["Snapshot"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Snapshot") && dict["Snapshot"] != nil {
                var tmp : [SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot] = []
                for v in dict["Snapshot"] as! [Any] {
                    var model = SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.snapshot = tmp
            }
        }
    }
    public var code: String?

    public var limit: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var snapshots: SearchHistoricalSnapshotsResponseBody.Snapshots?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.snapshots?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshots != nil {
            map["Snapshots"] = self.snapshots?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") && dict["Snapshots"] != nil {
            var model = SearchHistoricalSnapshotsResponseBody.Snapshots()
            model.fromMap(dict["Snapshots"] as! [String: Any])
            self.snapshots = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class SearchHistoricalSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchHistoricalSnapshotsResponseBody?

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
            var model = SearchHistoricalSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartHanaDatabaseAsyncRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class StartHanaDatabaseAsyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StartHanaDatabaseAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartHanaDatabaseAsyncResponseBody?

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
            var model = StartHanaDatabaseAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopHanaDatabaseAsyncRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class StopHanaDatabaseAsyncResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopHanaDatabaseAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopHanaDatabaseAsyncResponseBody?

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
            var model = StopHanaDatabaseAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallBackupClientsRequest : Tea.TeaModel {
    public var clientIds: [String: Any]?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIds: [String: Any]?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String: Any]
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
    }
}

public class UninstallBackupClientsShrinkRequest : Tea.TeaModel {
    public var clientIdsShrink: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIdsShrink: String?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
    }
}

public class UninstallBackupClientsResponseBody : Tea.TeaModel {
    public class InstanceStatuses : Tea.TeaModel {
        public var errorCode: String?

        public var instanceId: String?

        public var validInstance: Bool?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.validInstance != nil {
                map["ValidInstance"] = self.validInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ValidInstance") && dict["ValidInstance"] != nil {
                self.validInstance = dict["ValidInstance"] as! Bool
            }
        }
    }
    public var code: String?

    public var instanceStatuses: [UninstallBackupClientsResponseBody.InstanceStatuses]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceStatuses != nil {
            var tmp : [Any] = []
            for k in self.instanceStatuses! {
                tmp.append(k.toMap())
            }
            map["InstanceStatuses"] = tmp
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceStatuses") && dict["InstanceStatuses"] != nil {
            var tmp : [UninstallBackupClientsResponseBody.InstanceStatuses] = []
            for v in dict["InstanceStatuses"] as! [Any] {
                var model = UninstallBackupClientsResponseBody.InstanceStatuses()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceStatuses = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UninstallBackupClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallBackupClientsResponseBody?

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
            var model = UninstallBackupClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallClientRequest : Tea.TeaModel {
    public var clientId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UninstallClientResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UninstallClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallClientResponseBody?

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
            var model = UninstallClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBackupPlanRequest : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public var backupType: String?

        public var destinationRegionId: String?

        public var destinationRetention: Int64?

        public var disabled: Bool?

        public var doCopy: Bool?

        public var retention: Int64?

        public var ruleName: String?

        public var schedule: String?

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
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationRetention != nil {
                map["DestinationRetention"] = self.destinationRetention!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.doCopy != nil {
                map["DoCopy"] = self.doCopy!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                self.destinationRetention = dict["DestinationRetention"] as! Int64
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                self.doCopy = dict["DoCopy"] as! Bool
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var changeListPath: String?

    public var detail: [String: Any]?

    public var exclude: String?

    public var include: String?

    public var keepLatestSnapshots: Int64?

    public var options: String?

    public var otsDetail: OtsDetail?

    public var path: [String]?

    public var planId: String?

    public var planName: String?

    public var prefix_: String?

    public var retention: Int64?

    public var rule: [UpdateBackupPlanRequest.Rule]?

    public var schedule: String?

    public var sourceType: String?

    public var speedLimit: String?

    public var updatePaths: Bool?

    public var vaultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.otsDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeListPath != nil {
            map["ChangeListPath"] = self.changeListPath!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.keepLatestSnapshots != nil {
            map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetail != nil {
            map["OtsDetail"] = self.otsDetail?.toMap()
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rule != nil {
            var tmp : [Any] = []
            for k in self.rule! {
                tmp.append(k.toMap())
            }
            map["Rule"] = tmp
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.updatePaths != nil {
            map["UpdatePaths"] = self.updatePaths!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
            self.changeListPath = dict["ChangeListPath"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
            self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            var model = OtsDetail()
            model.fromMap(dict["OtsDetail"] as! [String: Any])
            self.otsDetail = model
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! [String]
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var tmp : [UpdateBackupPlanRequest.Rule] = []
            for v in dict["Rule"] as! [Any] {
                var model = UpdateBackupPlanRequest.Rule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rule = tmp
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("UpdatePaths") && dict["UpdatePaths"] != nil {
            self.updatePaths = dict["UpdatePaths"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateBackupPlanShrinkRequest : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public var backupType: String?

        public var destinationRegionId: String?

        public var destinationRetention: Int64?

        public var disabled: Bool?

        public var doCopy: Bool?

        public var retention: Int64?

        public var ruleName: String?

        public var schedule: String?

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
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationRetention != nil {
                map["DestinationRetention"] = self.destinationRetention!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.doCopy != nil {
                map["DoCopy"] = self.doCopy!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationRetention") && dict["DestinationRetention"] != nil {
                self.destinationRetention = dict["DestinationRetention"] as! Int64
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("DoCopy") && dict["DoCopy"] != nil {
                self.doCopy = dict["DoCopy"] as! Bool
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var changeListPath: String?

    public var detailShrink: String?

    public var exclude: String?

    public var include: String?

    public var keepLatestSnapshots: Int64?

    public var options: String?

    public var otsDetailShrink: String?

    public var path: [String]?

    public var planId: String?

    public var planName: String?

    public var prefix_: String?

    public var retention: Int64?

    public var rule: [UpdateBackupPlanShrinkRequest.Rule]?

    public var schedule: String?

    public var sourceType: String?

    public var speedLimit: String?

    public var updatePaths: Bool?

    public var vaultId: String?

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
        if self.changeListPath != nil {
            map["ChangeListPath"] = self.changeListPath!
        }
        if self.detailShrink != nil {
            map["Detail"] = self.detailShrink!
        }
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.keepLatestSnapshots != nil {
            map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.otsDetailShrink != nil {
            map["OtsDetail"] = self.otsDetailShrink!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rule != nil {
            var tmp : [Any] = []
            for k in self.rule! {
                tmp.append(k.toMap())
            }
            map["Rule"] = tmp
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        if self.updatePaths != nil {
            map["UpdatePaths"] = self.updatePaths!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeListPath") && dict["ChangeListPath"] != nil {
            self.changeListPath = dict["ChangeListPath"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detailShrink = dict["Detail"] as! String
        }
        if dict.keys.contains("Exclude") && dict["Exclude"] != nil {
            self.exclude = dict["Exclude"] as! String
        }
        if dict.keys.contains("Include") && dict["Include"] != nil {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
            self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OtsDetail") && dict["OtsDetail"] != nil {
            self.otsDetailShrink = dict["OtsDetail"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! [String]
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("Retention") && dict["Retention"] != nil {
            self.retention = dict["Retention"] as! Int64
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var tmp : [UpdateBackupPlanShrinkRequest.Rule] = []
            for v in dict["Rule"] as! [Any] {
                var model = UpdateBackupPlanShrinkRequest.Rule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rule = tmp
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SpeedLimit") && dict["SpeedLimit"] != nil {
            self.speedLimit = dict["SpeedLimit"] as! String
        }
        if dict.keys.contains("UpdatePaths") && dict["UpdatePaths"] != nil {
            self.updatePaths = dict["UpdatePaths"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBackupPlanResponseBody?

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
            var model = UpdateBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClientSettingsRequest : Tea.TeaModel {
    public var alertOnPartialComplete: Bool?

    public var clientId: String?

    public var dataNetworkType: String?

    public var dataProxySetting: String?

    public var maxCpuCore: Int32?

    public var maxMemory: Int64?

    public var maxWorker: Int32?

    public var proxyHost: String?

    public var proxyPassword: String?

    public var proxyPort: Int32?

    public var proxyUser: String?

    public var resourceGroupId: String?

    public var useHttps: Bool?

    public var vaultId: String?

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
        if self.alertOnPartialComplete != nil {
            map["AlertOnPartialComplete"] = self.alertOnPartialComplete!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.dataNetworkType != nil {
            map["DataNetworkType"] = self.dataNetworkType!
        }
        if self.dataProxySetting != nil {
            map["DataProxySetting"] = self.dataProxySetting!
        }
        if self.maxCpuCore != nil {
            map["MaxCpuCore"] = self.maxCpuCore!
        }
        if self.maxMemory != nil {
            map["MaxMemory"] = self.maxMemory!
        }
        if self.maxWorker != nil {
            map["MaxWorker"] = self.maxWorker!
        }
        if self.proxyHost != nil {
            map["ProxyHost"] = self.proxyHost!
        }
        if self.proxyPassword != nil {
            map["ProxyPassword"] = self.proxyPassword!
        }
        if self.proxyPort != nil {
            map["ProxyPort"] = self.proxyPort!
        }
        if self.proxyUser != nil {
            map["ProxyUser"] = self.proxyUser!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.useHttps != nil {
            map["UseHttps"] = self.useHttps!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertOnPartialComplete") && dict["AlertOnPartialComplete"] != nil {
            self.alertOnPartialComplete = dict["AlertOnPartialComplete"] as! Bool
        }
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DataNetworkType") && dict["DataNetworkType"] != nil {
            self.dataNetworkType = dict["DataNetworkType"] as! String
        }
        if dict.keys.contains("DataProxySetting") && dict["DataProxySetting"] != nil {
            self.dataProxySetting = dict["DataProxySetting"] as! String
        }
        if dict.keys.contains("MaxCpuCore") && dict["MaxCpuCore"] != nil {
            self.maxCpuCore = dict["MaxCpuCore"] as! Int32
        }
        if dict.keys.contains("MaxMemory") && dict["MaxMemory"] != nil {
            self.maxMemory = dict["MaxMemory"] as! Int64
        }
        if dict.keys.contains("MaxWorker") && dict["MaxWorker"] != nil {
            self.maxWorker = dict["MaxWorker"] as! Int32
        }
        if dict.keys.contains("ProxyHost") && dict["ProxyHost"] != nil {
            self.proxyHost = dict["ProxyHost"] as! String
        }
        if dict.keys.contains("ProxyPassword") && dict["ProxyPassword"] != nil {
            self.proxyPassword = dict["ProxyPassword"] as! String
        }
        if dict.keys.contains("ProxyPort") && dict["ProxyPort"] != nil {
            self.proxyPort = dict["ProxyPort"] as! Int32
        }
        if dict.keys.contains("ProxyUser") && dict["ProxyUser"] != nil {
            self.proxyUser = dict["ProxyUser"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("UseHttps") && dict["UseHttps"] != nil {
            self.useHttps = dict["UseHttps"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateClientSettingsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateClientSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClientSettingsResponseBody?

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
            var model = UpdateClientSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateContainerClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var description_: String?

    public var name: String?

    public var networkType: String?

    public var renewToken: Bool?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.renewToken != nil {
            map["RenewToken"] = self.renewToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("RenewToken") && dict["RenewToken"] != nil {
            self.renewToken = dict["RenewToken"] as! Bool
        }
    }
}

public class UpdateContainerClusterResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var token: String?

    public var tokenUpdated: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.tokenUpdated != nil {
            map["TokenUpdated"] = self.tokenUpdated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("TokenUpdated") && dict["TokenUpdated"] != nil {
            self.tokenUpdated = dict["TokenUpdated"] as! Bool
        }
    }
}

public class UpdateContainerClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContainerClusterResponseBody?

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
            var model = UpdateContainerClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHanaBackupPlanRequest : Tea.TeaModel {
    public var backupPrefix: String?

    public var clusterId: String?

    public var planId: String?

    public var planName: String?

    public var resourceGroupId: String?

    public var schedule: String?

    public var vaultId: String?

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
        if self.backupPrefix != nil {
            map["BackupPrefix"] = self.backupPrefix!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPrefix") && dict["BackupPrefix"] != nil {
            self.backupPrefix = dict["BackupPrefix"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PlanId") && dict["PlanId"] != nil {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanName") && dict["PlanName"] != nil {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateHanaBackupPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateHanaBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHanaBackupPlanResponseBody?

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
            var model = UpdateHanaBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHanaBackupSettingRequest : Tea.TeaModel {
    public var catalogBackupParameterFile: String?

    public var catalogBackupUsingBackint: Bool?

    public var clusterId: String?

    public var dataBackupParameterFile: String?

    public var databaseName: String?

    public var enableAutoLogBackup: Bool?

    public var logBackupParameterFile: String?

    public var logBackupTimeout: Int64?

    public var logBackupUsingBackint: Bool?

    public var vaultId: String?

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
        if self.catalogBackupParameterFile != nil {
            map["CatalogBackupParameterFile"] = self.catalogBackupParameterFile!
        }
        if self.catalogBackupUsingBackint != nil {
            map["CatalogBackupUsingBackint"] = self.catalogBackupUsingBackint!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataBackupParameterFile != nil {
            map["DataBackupParameterFile"] = self.dataBackupParameterFile!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.enableAutoLogBackup != nil {
            map["EnableAutoLogBackup"] = self.enableAutoLogBackup!
        }
        if self.logBackupParameterFile != nil {
            map["LogBackupParameterFile"] = self.logBackupParameterFile!
        }
        if self.logBackupTimeout != nil {
            map["LogBackupTimeout"] = self.logBackupTimeout!
        }
        if self.logBackupUsingBackint != nil {
            map["LogBackupUsingBackint"] = self.logBackupUsingBackint!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CatalogBackupParameterFile") && dict["CatalogBackupParameterFile"] != nil {
            self.catalogBackupParameterFile = dict["CatalogBackupParameterFile"] as! String
        }
        if dict.keys.contains("CatalogBackupUsingBackint") && dict["CatalogBackupUsingBackint"] != nil {
            self.catalogBackupUsingBackint = dict["CatalogBackupUsingBackint"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataBackupParameterFile") && dict["DataBackupParameterFile"] != nil {
            self.dataBackupParameterFile = dict["DataBackupParameterFile"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("EnableAutoLogBackup") && dict["EnableAutoLogBackup"] != nil {
            self.enableAutoLogBackup = dict["EnableAutoLogBackup"] as! Bool
        }
        if dict.keys.contains("LogBackupParameterFile") && dict["LogBackupParameterFile"] != nil {
            self.logBackupParameterFile = dict["LogBackupParameterFile"] as! String
        }
        if dict.keys.contains("LogBackupTimeout") && dict["LogBackupTimeout"] != nil {
            self.logBackupTimeout = dict["LogBackupTimeout"] as! Int64
        }
        if dict.keys.contains("LogBackupUsingBackint") && dict["LogBackupUsingBackint"] != nil {
            self.logBackupUsingBackint = dict["LogBackupUsingBackint"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateHanaBackupSettingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateHanaBackupSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHanaBackupSettingResponseBody?

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
            var model = UpdateHanaBackupSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHanaInstanceRequest : Tea.TeaModel {
    public var alertSetting: String?

    public var clusterId: String?

    public var hanaName: String?

    public var host: String?

    public var instanceNumber: Int32?

    public var password: String?

    public var resourceGroupId: String?

    public var useSsl: Bool?

    public var userName: String?

    public var validateCertificate: Bool?

    public var vaultId: String?

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
        if self.alertSetting != nil {
            map["AlertSetting"] = self.alertSetting!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.hanaName != nil {
            map["HanaName"] = self.hanaName!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceNumber != nil {
            map["InstanceNumber"] = self.instanceNumber!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.useSsl != nil {
            map["UseSsl"] = self.useSsl!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.validateCertificate != nil {
            map["ValidateCertificate"] = self.validateCertificate!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertSetting") && dict["AlertSetting"] != nil {
            self.alertSetting = dict["AlertSetting"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HanaName") && dict["HanaName"] != nil {
            self.hanaName = dict["HanaName"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
            self.instanceNumber = dict["InstanceNumber"] as! Int32
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("UseSsl") && dict["UseSsl"] != nil {
            self.useSsl = dict["UseSsl"] as! Bool
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("ValidateCertificate") && dict["ValidateCertificate"] != nil {
            self.validateCertificate = dict["ValidateCertificate"] as! Bool
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateHanaInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateHanaInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHanaInstanceResponseBody?

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
            var model = UpdateHanaInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHanaRetentionSettingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var databaseName: String?

    public var disabled: Bool?

    public var retentionDays: Int64?

    public var schedule: String?

    public var vaultId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("RetentionDays") && dict["RetentionDays"] != nil {
            self.retentionDays = dict["RetentionDays"] as! Int64
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.schedule = dict["Schedule"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpdateHanaRetentionSettingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateHanaRetentionSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHanaRetentionSettingResponseBody?

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
            var model = UpdateHanaRetentionSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePolicyBindingRequest : Tea.TeaModel {
    public class AdvancedOptions : Tea.TeaModel {
        public class CommonFileSystemDetail : Tea.TeaModel {
            public var fetchSliceSize: Int64?

            public var fullOnIncrementFail: Bool?

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
                if self.fetchSliceSize != nil {
                    map["FetchSliceSize"] = self.fetchSliceSize!
                }
                if self.fullOnIncrementFail != nil {
                    map["FullOnIncrementFail"] = self.fullOnIncrementFail!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FetchSliceSize") && dict["FetchSliceSize"] != nil {
                    self.fetchSliceSize = dict["FetchSliceSize"] as! Int64
                }
                if dict.keys.contains("FullOnIncrementFail") && dict["FullOnIncrementFail"] != nil {
                    self.fullOnIncrementFail = dict["FullOnIncrementFail"] as! Bool
                }
            }
        }
        public class OssDetail : Tea.TeaModel {
            public var inventoryCleanupPolicy: String?

            public var inventoryId: String?

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
                if self.inventoryCleanupPolicy != nil {
                    map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                }
                if self.inventoryId != nil {
                    map["InventoryId"] = self.inventoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InventoryCleanupPolicy") && dict["InventoryCleanupPolicy"] != nil {
                    self.inventoryCleanupPolicy = dict["InventoryCleanupPolicy"] as! String
                }
                if dict.keys.contains("InventoryId") && dict["InventoryId"] != nil {
                    self.inventoryId = dict["InventoryId"] as! String
                }
            }
        }
        public class UdmDetail : Tea.TeaModel {
            public var appConsistent: Bool?

            public var diskIdList: [String]?

            public var enableFsFreeze: Bool?

            public var enableWriters: Bool?

            public var excludeDiskIdList: [String]?

            public var postScriptPath: String?

            public var preScriptPath: String?

            public var ramRoleName: String?

            public var snapshotGroup: Bool?

            public var timeoutInSeconds: Int64?

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
                if self.appConsistent != nil {
                    map["AppConsistent"] = self.appConsistent!
                }
                if self.diskIdList != nil {
                    map["DiskIdList"] = self.diskIdList!
                }
                if self.enableFsFreeze != nil {
                    map["EnableFsFreeze"] = self.enableFsFreeze!
                }
                if self.enableWriters != nil {
                    map["EnableWriters"] = self.enableWriters!
                }
                if self.excludeDiskIdList != nil {
                    map["ExcludeDiskIdList"] = self.excludeDiskIdList!
                }
                if self.postScriptPath != nil {
                    map["PostScriptPath"] = self.postScriptPath!
                }
                if self.preScriptPath != nil {
                    map["PreScriptPath"] = self.preScriptPath!
                }
                if self.ramRoleName != nil {
                    map["RamRoleName"] = self.ramRoleName!
                }
                if self.snapshotGroup != nil {
                    map["SnapshotGroup"] = self.snapshotGroup!
                }
                if self.timeoutInSeconds != nil {
                    map["TimeoutInSeconds"] = self.timeoutInSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppConsistent") && dict["AppConsistent"] != nil {
                    self.appConsistent = dict["AppConsistent"] as! Bool
                }
                if dict.keys.contains("DiskIdList") && dict["DiskIdList"] != nil {
                    self.diskIdList = dict["DiskIdList"] as! [String]
                }
                if dict.keys.contains("EnableFsFreeze") && dict["EnableFsFreeze"] != nil {
                    self.enableFsFreeze = dict["EnableFsFreeze"] as! Bool
                }
                if dict.keys.contains("EnableWriters") && dict["EnableWriters"] != nil {
                    self.enableWriters = dict["EnableWriters"] as! Bool
                }
                if dict.keys.contains("ExcludeDiskIdList") && dict["ExcludeDiskIdList"] != nil {
                    self.excludeDiskIdList = dict["ExcludeDiskIdList"] as! [String]
                }
                if dict.keys.contains("PostScriptPath") && dict["PostScriptPath"] != nil {
                    self.postScriptPath = dict["PostScriptPath"] as! String
                }
                if dict.keys.contains("PreScriptPath") && dict["PreScriptPath"] != nil {
                    self.preScriptPath = dict["PreScriptPath"] as! String
                }
                if dict.keys.contains("RamRoleName") && dict["RamRoleName"] != nil {
                    self.ramRoleName = dict["RamRoleName"] as! String
                }
                if dict.keys.contains("SnapshotGroup") && dict["SnapshotGroup"] != nil {
                    self.snapshotGroup = dict["SnapshotGroup"] as! Bool
                }
                if dict.keys.contains("TimeoutInSeconds") && dict["TimeoutInSeconds"] != nil {
                    self.timeoutInSeconds = dict["TimeoutInSeconds"] as! Int64
                }
            }
        }
        public var commonFileSystemDetail: UpdatePolicyBindingRequest.AdvancedOptions.CommonFileSystemDetail?

        public var ossDetail: UpdatePolicyBindingRequest.AdvancedOptions.OssDetail?

        public var udmDetail: UpdatePolicyBindingRequest.AdvancedOptions.UdmDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commonFileSystemDetail?.validate()
            try self.ossDetail?.validate()
            try self.udmDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commonFileSystemDetail != nil {
                map["CommonFileSystemDetail"] = self.commonFileSystemDetail?.toMap()
            }
            if self.ossDetail != nil {
                map["OssDetail"] = self.ossDetail?.toMap()
            }
            if self.udmDetail != nil {
                map["UdmDetail"] = self.udmDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommonFileSystemDetail") && dict["CommonFileSystemDetail"] != nil {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.CommonFileSystemDetail()
                model.fromMap(dict["CommonFileSystemDetail"] as! [String: Any])
                self.commonFileSystemDetail = model
            }
            if dict.keys.contains("OssDetail") && dict["OssDetail"] != nil {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.OssDetail()
                model.fromMap(dict["OssDetail"] as! [String: Any])
                self.ossDetail = model
            }
            if dict.keys.contains("UdmDetail") && dict["UdmDetail"] != nil {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.UdmDetail()
                model.fromMap(dict["UdmDetail"] as! [String: Any])
                self.udmDetail = model
            }
        }
    }
    public var advancedOptions: UpdatePolicyBindingRequest.AdvancedOptions?

    public var dataSourceId: String?

    public var disabled: Bool?

    public var policyBindingDescription: String?

    public var policyId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.advancedOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedOptions != nil {
            map["AdvancedOptions"] = self.advancedOptions?.toMap()
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.policyBindingDescription != nil {
            map["PolicyBindingDescription"] = self.policyBindingDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedOptions") && dict["AdvancedOptions"] != nil {
            var model = UpdatePolicyBindingRequest.AdvancedOptions()
            model.fromMap(dict["AdvancedOptions"] as! [String: Any])
            self.advancedOptions = model
        }
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("PolicyBindingDescription") && dict["PolicyBindingDescription"] != nil {
            self.policyBindingDescription = dict["PolicyBindingDescription"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class UpdatePolicyBindingShrinkRequest : Tea.TeaModel {
    public var advancedOptionsShrink: String?

    public var dataSourceId: String?

    public var disabled: Bool?

    public var policyBindingDescription: String?

    public var policyId: String?

    public var sourceType: String?

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
        if self.advancedOptionsShrink != nil {
            map["AdvancedOptions"] = self.advancedOptionsShrink!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.policyBindingDescription != nil {
            map["PolicyBindingDescription"] = self.policyBindingDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedOptions") && dict["AdvancedOptions"] != nil {
            self.advancedOptionsShrink = dict["AdvancedOptions"] as! String
        }
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("PolicyBindingDescription") && dict["PolicyBindingDescription"] != nil {
            self.policyBindingDescription = dict["PolicyBindingDescription"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class UpdatePolicyBindingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdatePolicyBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyBindingResponseBody?

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
            var model = UpdatePolicyBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePolicyV2Request : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RetentionRules : Tea.TeaModel {
            public var advancedRetentionType: String?

            public var retention: Int64?

            public var whichSnapshot: Int64?

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
                if self.advancedRetentionType != nil {
                    map["AdvancedRetentionType"] = self.advancedRetentionType!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.whichSnapshot != nil {
                    map["WhichSnapshot"] = self.whichSnapshot!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdvancedRetentionType") && dict["AdvancedRetentionType"] != nil {
                    self.advancedRetentionType = dict["AdvancedRetentionType"] as! String
                }
                if dict.keys.contains("Retention") && dict["Retention"] != nil {
                    self.retention = dict["Retention"] as! Int64
                }
                if dict.keys.contains("WhichSnapshot") && dict["WhichSnapshot"] != nil {
                    self.whichSnapshot = dict["WhichSnapshot"] as! Int64
                }
            }
        }
        public var archiveDays: Int64?

        public var backupType: String?

        public var coldArchiveDays: Int64?

        public var keepLatestSnapshots: Int64?

        public var replicationRegionId: String?

        public var retention: Int64?

        public var retentionRules: [UpdatePolicyV2Request.Rules.RetentionRules]?

        public var ruleId: String?

        public var ruleType: String?

        public var schedule: String?

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
            if self.archiveDays != nil {
                map["ArchiveDays"] = self.archiveDays!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.coldArchiveDays != nil {
                map["ColdArchiveDays"] = self.coldArchiveDays!
            }
            if self.keepLatestSnapshots != nil {
                map["KeepLatestSnapshots"] = self.keepLatestSnapshots!
            }
            if self.replicationRegionId != nil {
                map["ReplicationRegionId"] = self.replicationRegionId!
            }
            if self.retention != nil {
                map["Retention"] = self.retention!
            }
            if self.retentionRules != nil {
                var tmp : [Any] = []
                for k in self.retentionRules! {
                    tmp.append(k.toMap())
                }
                map["RetentionRules"] = tmp
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArchiveDays") && dict["ArchiveDays"] != nil {
                self.archiveDays = dict["ArchiveDays"] as! Int64
            }
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("ColdArchiveDays") && dict["ColdArchiveDays"] != nil {
                self.coldArchiveDays = dict["ColdArchiveDays"] as! Int64
            }
            if dict.keys.contains("KeepLatestSnapshots") && dict["KeepLatestSnapshots"] != nil {
                self.keepLatestSnapshots = dict["KeepLatestSnapshots"] as! Int64
            }
            if dict.keys.contains("ReplicationRegionId") && dict["ReplicationRegionId"] != nil {
                self.replicationRegionId = dict["ReplicationRegionId"] as! String
            }
            if dict.keys.contains("Retention") && dict["Retention"] != nil {
                self.retention = dict["Retention"] as! Int64
            }
            if dict.keys.contains("RetentionRules") && dict["RetentionRules"] != nil {
                var tmp : [UpdatePolicyV2Request.Rules.RetentionRules] = []
                for v in dict["RetentionRules"] as! [Any] {
                    var model = UpdatePolicyV2Request.Rules.RetentionRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.retentionRules = tmp
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                self.schedule = dict["Schedule"] as! String
            }
        }
    }
    public var policyDescription: String?

    public var policyId: String?

    public var policyName: String?

    public var rules: [UpdatePolicyV2Request.Rules]?

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
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [UpdatePolicyV2Request.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = UpdatePolicyV2Request.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
    }
}

public class UpdatePolicyV2ShrinkRequest : Tea.TeaModel {
    public var policyDescription: String?

    public var policyId: String?

    public var policyName: String?

    public var rulesShrink: String?

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
        if self.policyDescription != nil {
            map["PolicyDescription"] = self.policyDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyDescription") && dict["PolicyDescription"] != nil {
            self.policyDescription = dict["PolicyDescription"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rulesShrink = dict["Rules"] as! String
        }
    }
}

public class UpdatePolicyV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdatePolicyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyV2ResponseBody?

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
            var model = UpdatePolicyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var resourceGroupId: String?

    public var vaultId: String?

    public var vaultName: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        if self.vaultName != nil {
            map["VaultName"] = self.vaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
        if dict.keys.contains("VaultName") && dict["VaultName"] != nil {
            self.vaultName = dict["VaultName"] as! String
        }
    }
}

public class UpdateVaultResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVaultResponseBody?

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
            var model = UpdateVaultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeBackupClientsRequest : Tea.TeaModel {
    public var clientIds: [String: Any]?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIds: [String: Any]?

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
        if self.clientIds != nil {
            map["ClientIds"] = self.clientIds!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIds = dict["ClientIds"] as! [String: Any]
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
    }
}

public class UpgradeBackupClientsShrinkRequest : Tea.TeaModel {
    public var clientIdsShrink: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var instanceIdsShrink: String?

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
        if self.clientIdsShrink != nil {
            map["ClientIds"] = self.clientIdsShrink!
        }
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
            self.clientIdsShrink = dict["ClientIds"] as! String
        }
        if dict.keys.contains("CrossAccountRoleName") && dict["CrossAccountRoleName"] != nil {
            self.crossAccountRoleName = dict["CrossAccountRoleName"] as! String
        }
        if dict.keys.contains("CrossAccountType") && dict["CrossAccountType"] != nil {
            self.crossAccountType = dict["CrossAccountType"] as! String
        }
        if dict.keys.contains("CrossAccountUserId") && dict["CrossAccountUserId"] != nil {
            self.crossAccountUserId = dict["CrossAccountUserId"] as! Int64
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
    }
}

public class UpgradeBackupClientsResponseBody : Tea.TeaModel {
    public class InstanceStatuses : Tea.TeaModel {
        public var errorCode: String?

        public var instanceId: String?

        public var validInstance: Bool?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.validInstance != nil {
                map["ValidInstance"] = self.validInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ValidInstance") && dict["ValidInstance"] != nil {
                self.validInstance = dict["ValidInstance"] as! Bool
            }
        }
    }
    public var code: String?

    public var instanceStatuses: [UpgradeBackupClientsResponseBody.InstanceStatuses]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceStatuses != nil {
            var tmp : [Any] = []
            for k in self.instanceStatuses! {
                tmp.append(k.toMap())
            }
            map["InstanceStatuses"] = tmp
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceStatuses") && dict["InstanceStatuses"] != nil {
            var tmp : [UpgradeBackupClientsResponseBody.InstanceStatuses] = []
            for v in dict["InstanceStatuses"] as! [Any] {
                var model = UpgradeBackupClientsResponseBody.InstanceStatuses()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceStatuses = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpgradeBackupClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeBackupClientsResponseBody?

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
            var model = UpgradeBackupClientsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeClientRequest : Tea.TeaModel {
    public var clientId: String?

    public var resourceGroupId: String?

    public var vaultId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VaultId") && dict["VaultId"] != nil {
            self.vaultId = dict["VaultId"] as! String
        }
    }
}

public class UpgradeClientResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpgradeClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClientResponseBody?

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
            var model = UpgradeClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
