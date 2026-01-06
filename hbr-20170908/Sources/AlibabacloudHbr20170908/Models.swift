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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TableNames"] as? [String] {
            self.tableNames = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchChannelCount"] as? Int32 {
            self.batchChannelCount = value
        }
        if let value = dict["IndexNameSuffix"] as? String {
            self.indexNameSuffix = value
        }
        if let value = dict["OverwriteExisting"] as? Bool {
            self.overwriteExisting = value
        }
        if let value = dict["ReGenerateAutoIncrementPK"] as? Bool {
            self.reGenerateAutoIncrementPK = value
        }
        if let value = dict["RestoreIndex"] as? Bool {
            self.restoreIndex = value
        }
        if let value = dict["RestoreSearchIndex"] as? Bool {
            self.restoreSearchIndex = value
        }
        if let value = dict["SearchIndexNameSuffix"] as? String {
            self.searchIndexNameSuffix = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedFiles"] as? String {
            self.failedFiles = value
        }
        if let value = dict["SkippedFiles"] as? String {
            self.skippedFiles = value
        }
        if let value = dict["SuccessFiles"] as? String {
            self.successFiles = value
        }
        if let value = dict["TotalFiles"] as? String {
            self.totalFiles = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["DestinationRegionId"] as? String {
            self.destinationRegionId = value
        }
        if let value = dict["DestinationRetention"] as? Int64 {
            self.destinationRetention = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["DoCopy"] as? Bool {
            self.doCopy = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddContainerClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelBackupJobRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelBackupJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelRestoreJobRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.restoreId != nil {
            map["RestoreId"] = self.restoreId!
        }
        if self.vaultId != nil {
            map["VaultId"] = self.vaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["RestoreId"] as? String {
            self.restoreId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelRestoreJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckRoleType"] as? String {
            self.checkRoleType = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ContainerClusterId"] as? String {
            self.containerClusterId = value
        }
        if let value = dict["ContainerResources"] as? String {
            self.containerResources = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Detail"] as? [String: Any] {
            self.detail = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InitiatedByAck"] as? Bool {
            self.initiatedByAck = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ContainerClusterId"] as? String {
            self.containerClusterId = value
        }
        if let value = dict["ContainerResources"] as? String {
            self.containerResources = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Detail"] as? String {
            self.detailShrink = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InitiatedByAck"] as? Bool {
            self.initiatedByAck = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBackupJobResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DestinationRegionId"] as? String {
                self.destinationRegionId = value
            }
            if let value = dict["DestinationRetention"] as? Int64 {
                self.destinationRetention = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["DoCopy"] as? Bool {
                self.doCopy = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
        }
    }
    public var backupType: String?

    public var bucket: String?

    public var changeListPath: String?

    public var clusterId: String?

    public var createTime: Int64?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var dataSourceId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ChangeListPath"] as? String {
            self.changeListPath = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DestDataSourceDetail"] as? [String: Any] {
            self.destDataSourceDetail = value
        }
        if let value = dict["DestDataSourceId"] as? String {
            self.destDataSourceId = value
        }
        if let value = dict["DestSourceType"] as? String {
            self.destSourceType = value
        }
        if let value = dict["Detail"] as? [String: Any] {
            self.detail = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["KeepLatestSnapshots"] as? Int64 {
            self.keepLatestSnapshots = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? [String: Any?] {
            var model = OtsDetail()
            model.fromMap(value)
            self.otsDetail = model
        }
        if let value = dict["Path"] as? [String] {
            self.path = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["Rule"] as? [Any?] {
            var tmp : [CreateBackupPlanRequest.Rule] = []
            for v in value {
                if v != nil {
                    var model = CreateBackupPlanRequest.Rule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rule = tmp
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DestinationRegionId"] as? String {
                self.destinationRegionId = value
            }
            if let value = dict["DestinationRetention"] as? Int64 {
                self.destinationRetention = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["DoCopy"] as? Bool {
                self.doCopy = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
        }
    }
    public var backupType: String?

    public var bucket: String?

    public var changeListPath: String?

    public var clusterId: String?

    public var createTime: Int64?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var dataSourceId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ChangeListPath"] as? String {
            self.changeListPath = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DestDataSourceDetail"] as? String {
            self.destDataSourceDetailShrink = value
        }
        if let value = dict["DestDataSourceId"] as? String {
            self.destDataSourceId = value
        }
        if let value = dict["DestSourceType"] as? String {
            self.destSourceType = value
        }
        if let value = dict["Detail"] as? String {
            self.detailShrink = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["KeepLatestSnapshots"] as? Int64 {
            self.keepLatestSnapshots = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? String {
            self.otsDetailShrink = value
        }
        if let value = dict["Path"] as? [String] {
            self.path = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["Rule"] as? [Any?] {
            var tmp : [CreateBackupPlanShrinkRequest.Rule] = []
            for v in value {
                if v != nil {
                    var model = CreateBackupPlanShrinkRequest.Rule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rule = tmp
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClientsRequest : Tea.TeaModel {
    public var alertSetting: String?

    public var clientInfo: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertSetting"] as? String {
            self.alertSetting = value
        }
        if let value = dict["ClientInfo"] as? String {
            self.clientInfo = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["UseHttps"] as? Bool {
            self.useHttps = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ValidInstance"] as? Bool {
                    self.validInstance = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceStatus"] as? [Any?] {
                var tmp : [CreateClientsResponseBody.InstanceStatuses.InstanceStatus] = []
                for v in value {
                    if v != nil {
                        var model = CreateClientsResponseBody.InstanceStatuses.InstanceStatus()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceStatuses"] as? [String: Any?] {
            var model = CreateClientsResponseBody.InstanceStatuses()
            model.fromMap(value)
            self.instanceStatuses = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateClientsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPrefix"] as? String {
            self.backupPrefix = value
        }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHanaBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHanaInstanceRequest : Tea.TeaModel {
    public var alertSetting: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

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
        if self.crossAccountRoleName != nil {
            map["CrossAccountRoleName"] = self.crossAccountRoleName!
        }
        if self.crossAccountType != nil {
            map["CrossAccountType"] = self.crossAccountType!
        }
        if self.crossAccountUserId != nil {
            map["CrossAccountUserId"] = self.crossAccountUserId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertSetting"] as? String {
            self.alertSetting = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
        }
        if let value = dict["HanaName"] as? String {
            self.hanaName = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceNumber"] as? Int32 {
            self.instanceNumber = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sid"] as? String {
            self.sid = value
        }
        if let value = dict["UseSsl"] as? Bool {
            self.useSsl = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["ValidateCertificate"] as? Bool {
            self.validateCertificate = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHanaInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? Int64 {
            self.backupId = value
        }
        if let value = dict["BackupPrefix"] as? String {
            self.backupPrefix = value
        }
        if let value = dict["CheckAccess"] as? Bool {
            self.checkAccess = value
        }
        if let value = dict["ClearLog"] as? Bool {
            self.clearLog = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LogPosition"] as? Int64 {
            self.logPosition = value
        }
        if let value = dict["MasterClientId"] as? String {
            self.masterClientId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RecoveryPointInTime"] as? Int64 {
            self.recoveryPointInTime = value
        }
        if let value = dict["SidAdmin"] as? String {
            self.sidAdmin = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceClusterId"] as? String {
            self.sourceClusterId = value
        }
        if let value = dict["SystemCopy"] as? Bool {
            self.systemCopy = value
        }
        if let value = dict["UseCatalog"] as? Bool {
            self.useCatalog = value
        }
        if let value = dict["UseDelta"] as? Bool {
            self.useDelta = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
        if let value = dict["VolumeId"] as? Int32 {
            self.volumeId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreId"] as? String {
            self.restoreId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHanaRestoreResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FetchSliceSize"] as? Int64 {
                        self.fetchSliceSize = value
                    }
                    if let value = dict["FullOnIncrementFail"] as? Bool {
                        self.fullOnIncrementFail = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["FetchSliceSize"] as? Int64 {
                        self.fetchSliceSize = value
                    }
                    if let value = dict["FullOnIncrementFail"] as? Bool {
                        self.fullOnIncrementFail = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AdvPolicy"] as? Bool {
                        self.advPolicy = value
                    }
                    if let value = dict["UseVSS"] as? Bool {
                        self.useVSS = value
                    }
                }
            }
            public class OssDetail : Tea.TeaModel {
                public var ignoreArchiveObject: Bool?

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
                    if self.ignoreArchiveObject != nil {
                        map["IgnoreArchiveObject"] = self.ignoreArchiveObject!
                    }
                    if self.inventoryCleanupPolicy != nil {
                        map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                    }
                    if self.inventoryId != nil {
                        map["InventoryId"] = self.inventoryId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IgnoreArchiveObject"] as? Bool {
                        self.ignoreArchiveObject = value
                    }
                    if let value = dict["InventoryCleanupPolicy"] as? String {
                        self.inventoryCleanupPolicy = value
                    }
                    if let value = dict["InventoryId"] as? String {
                        self.inventoryId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppConsistent"] as? Bool {
                        self.appConsistent = value
                    }
                    if let value = dict["DiskIdList"] as? [String] {
                        self.diskIdList = value
                    }
                    if let value = dict["EnableFsFreeze"] as? Bool {
                        self.enableFsFreeze = value
                    }
                    if let value = dict["EnableWriters"] as? Bool {
                        self.enableWriters = value
                    }
                    if let value = dict["ExcludeDiskIdList"] as? [String] {
                        self.excludeDiskIdList = value
                    }
                    if let value = dict["PostScriptPath"] as? String {
                        self.postScriptPath = value
                    }
                    if let value = dict["PreScriptPath"] as? String {
                        self.preScriptPath = value
                    }
                    if let value = dict["RamRoleName"] as? String {
                        self.ramRoleName = value
                    }
                    if let value = dict["SnapshotGroup"] as? Bool {
                        self.snapshotGroup = value
                    }
                    if let value = dict["TimeoutInSeconds"] as? Int64 {
                        self.timeoutInSeconds = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommonFileSystemDetail"] as? [String: Any?] {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonFileSystemDetail()
                    model.fromMap(value)
                    self.commonFileSystemDetail = model
                }
                if let value = dict["CommonNasDetail"] as? [String: Any?] {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.CommonNasDetail()
                    model.fromMap(value)
                    self.commonNasDetail = model
                }
                if let value = dict["FileDetail"] as? [String: Any?] {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.FileDetail()
                    model.fromMap(value)
                    self.fileDetail = model
                }
                if let value = dict["OssDetail"] as? [String: Any?] {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.OssDetail()
                    model.fromMap(value)
                    self.ossDetail = model
                }
                if let value = dict["UdmDetail"] as? [String: Any?] {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions.UdmDetail()
                    model.fromMap(value)
                    self.udmDetail = model
                }
            }
        }
        public var advancedOptions: CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions?

        public var crossAccountRoleName: String?

        public var crossAccountType: String?

        public var crossAccountUserId: Int64?

        public var dataSourceId: String?

        public var disabled: String?

        public var exclude: String?

        public var include: String?

        public var policyBindingDescription: String?

        public var source: String?

        public var sourceType: String?

        public var speedLimit: String?

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
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.exclude != nil {
                map["Exclude"] = self.exclude!
            }
            if self.include != nil {
                map["Include"] = self.include!
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
            if self.speedLimit != nil {
                map["SpeedLimit"] = self.speedLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvancedOptions"] as? [String: Any?] {
                var model = CreatePolicyBindingsRequest.PolicyBindingList.AdvancedOptions()
                model.fromMap(value)
                self.advancedOptions = model
            }
            if let value = dict["CrossAccountRoleName"] as? String {
                self.crossAccountRoleName = value
            }
            if let value = dict["CrossAccountType"] as? String {
                self.crossAccountType = value
            }
            if let value = dict["CrossAccountUserId"] as? Int64 {
                self.crossAccountUserId = value
            }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["Disabled"] as? String {
                self.disabled = value
            }
            if let value = dict["Exclude"] as? String {
                self.exclude = value
            }
            if let value = dict["Include"] as? String {
                self.include = value
            }
            if let value = dict["PolicyBindingDescription"] as? String {
                self.policyBindingDescription = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["SpeedLimit"] as? String {
                self.speedLimit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyBindingList"] as? [Any?] {
            var tmp : [CreatePolicyBindingsRequest.PolicyBindingList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyBindingsRequest.PolicyBindingList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyBindingList = tmp
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyBindingList"] as? String {
            self.policyBindingListShrink = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyBindingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyV2Request : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class DataSourceFilters : Tea.TeaModel {
            public var dataSourceIds: [String]?

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
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataSourceIds"] as? [String] {
                    self.dataSourceIds = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdvancedRetentionType"] as? String {
                    self.advancedRetentionType = value
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["WhichSnapshot"] as? Int64 {
                    self.whichSnapshot = value
                }
            }
        }
        public class TagFilters : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var backupType: String?

        public var dataSourceFilters: [CreatePolicyV2Request.Rules.DataSourceFilters]?

        public var immutable: Bool?

        public var keepLatestSnapshots: Int64?

        public var replicationRegionId: String?

        public var retention: Int64?

        public var retentionRules: [CreatePolicyV2Request.Rules.RetentionRules]?

        public var ruleType: String?

        public var schedule: String?

        public var tagFilters: [CreatePolicyV2Request.Rules.TagFilters]?

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
            if self.dataSourceFilters != nil {
                var tmp : [Any] = []
                for k in self.dataSourceFilters! {
                    tmp.append(k.toMap())
                }
                map["DataSourceFilters"] = tmp
            }
            if self.immutable != nil {
                map["Immutable"] = self.immutable!
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
            if self.tagFilters != nil {
                var tmp : [Any] = []
                for k in self.tagFilters! {
                    tmp.append(k.toMap())
                }
                map["TagFilters"] = tmp
            }
            if self.vaultId != nil {
                map["VaultId"] = self.vaultId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DataSourceFilters"] as? [Any?] {
                var tmp : [CreatePolicyV2Request.Rules.DataSourceFilters] = []
                for v in value {
                    if v != nil {
                        var model = CreatePolicyV2Request.Rules.DataSourceFilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceFilters = tmp
            }
            if let value = dict["Immutable"] as? Bool {
                self.immutable = value
            }
            if let value = dict["KeepLatestSnapshots"] as? Int64 {
                self.keepLatestSnapshots = value
            }
            if let value = dict["ReplicationRegionId"] as? String {
                self.replicationRegionId = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RetentionRules"] as? [Any?] {
                var tmp : [CreatePolicyV2Request.Rules.RetentionRules] = []
                for v in value {
                    if v != nil {
                        var model = CreatePolicyV2Request.Rules.RetentionRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.retentionRules = tmp
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
            if let value = dict["TagFilters"] as? [Any?] {
                var tmp : [CreatePolicyV2Request.Rules.TagFilters] = []
                for v in value {
                    if v != nil {
                        var model = CreatePolicyV2Request.Rules.TagFilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagFilters = tmp
            }
            if let value = dict["VaultId"] as? String {
                self.vaultId = value
            }
        }
    }
    public var policyDescription: String?

    public var policyName: String?

    public var policyType: String?

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
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [CreatePolicyV2Request.Rules] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyV2Request.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class CreatePolicyV2ShrinkRequest : Tea.TeaModel {
    public var policyDescription: String?

    public var policyName: String?

    public var policyType: String?

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
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.rulesShrink != nil {
            map["Rules"] = self.rulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["Rules"] as? String {
            self.rulesShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateReplicationVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptType: String?

    public var kmsKeyId: String?

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
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["RedundancyType"] as? String {
            self.redundancyType = value
        }
        if let value = dict["ReplicationSourceRegionId"] as? String {
            self.replicationSourceRegionId = value
        }
        if let value = dict["ReplicationSourceVaultId"] as? String {
            self.replicationSourceVaultId = value
        }
        if let value = dict["VaultName"] as? String {
            self.vaultName = value
        }
        if let value = dict["VaultRegionId"] as? String {
            self.vaultRegionId = value
        }
        if let value = dict["VaultStorageClass"] as? String {
            self.vaultStorageClass = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateReplicationVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRestoreJobRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["FailbackDetail"] as? [String: Any] {
            self.failbackDetail = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InitiatedByAck"] as? Bool {
            self.initiatedByAck = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? [String: Any?] {
            var model = OtsTableRestoreDetail()
            model.fromMap(value)
            self.otsDetail = model
        }
        if let value = dict["RestoreType"] as? String {
            self.restoreType = value
        }
        if let value = dict["SnapshotHash"] as? String {
            self.snapshotHash = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TargetBucket"] as? String {
            self.targetBucket = value
        }
        if let value = dict["TargetContainer"] as? String {
            self.targetContainer = value
        }
        if let value = dict["TargetContainerClusterId"] as? String {
            self.targetContainerClusterId = value
        }
        if let value = dict["TargetCreateTime"] as? Int64 {
            self.targetCreateTime = value
        }
        if let value = dict["TargetFileSystemId"] as? String {
            self.targetFileSystemId = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
        if let value = dict["TargetInstanceName"] as? String {
            self.targetInstanceName = value
        }
        if let value = dict["TargetPath"] as? String {
            self.targetPath = value
        }
        if let value = dict["TargetPrefix"] as? String {
            self.targetPrefix = value
        }
        if let value = dict["TargetTableName"] as? String {
            self.targetTableName = value
        }
        if let value = dict["TargetTime"] as? Int64 {
            self.targetTime = value
        }
        if let value = dict["UdmDetail"] as? [String: Any] {
            self.udmDetail = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
    }
}

public class CreateRestoreJobShrinkRequest : Tea.TeaModel {
    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["FailbackDetail"] as? String {
            self.failbackDetailShrink = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["InitiatedByAck"] as? Bool {
            self.initiatedByAck = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? String {
            self.otsDetailShrink = value
        }
        if let value = dict["RestoreType"] as? String {
            self.restoreType = value
        }
        if let value = dict["SnapshotHash"] as? String {
            self.snapshotHash = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TargetBucket"] as? String {
            self.targetBucket = value
        }
        if let value = dict["TargetContainer"] as? String {
            self.targetContainer = value
        }
        if let value = dict["TargetContainerClusterId"] as? String {
            self.targetContainerClusterId = value
        }
        if let value = dict["TargetCreateTime"] as? Int64 {
            self.targetCreateTime = value
        }
        if let value = dict["TargetFileSystemId"] as? String {
            self.targetFileSystemId = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
        if let value = dict["TargetInstanceName"] as? String {
            self.targetInstanceName = value
        }
        if let value = dict["TargetPath"] as? String {
            self.targetPath = value
        }
        if let value = dict["TargetPrefix"] as? String {
            self.targetPrefix = value
        }
        if let value = dict["TargetTableName"] as? String {
            self.targetTableName = value
        }
        if let value = dict["TargetTime"] as? Int64 {
            self.targetTime = value
        }
        if let value = dict["UdmDetail"] as? String {
            self.udmDetailShrink = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreId"] as? String {
            self.restoreId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRestoreJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OssAccessKeyId"] as? String {
            self.ossAccessKeyId = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TempFileKey"] as? String {
            self.tempFileKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTempFileUploadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptType: String?

    public var kmsKeyId: String?

    public var replication: Bool?

    public var vaultName: String?

    public var vaultRegionId: String?

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
        if self.replication != nil {
            map["Replication"] = self.replication!
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
        if self.wormEnabled != nil {
            map["WormEnabled"] = self.wormEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["Replication"] as? Bool {
            self.replication = value
        }
        if let value = dict["VaultName"] as? String {
            self.vaultName = value
        }
        if let value = dict["VaultRegionId"] as? String {
            self.vaultRegionId = value
        }
        if let value = dict["VaultStorageClass"] as? String {
            self.vaultStorageClass = value
        }
        if let value = dict["VaultType"] as? String {
            self.vaultType = value
        }
        if let value = dict["WormEnabled"] as? Bool {
            self.wormEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVaultReplicationRequest : Tea.TeaModel {
    public var replicationSourceRegionId: String?

    public var replicationSourceVaultId: String?

    public var replicationTargetVaultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.replicationSourceRegionId != nil {
            map["ReplicationSourceRegionId"] = self.replicationSourceRegionId!
        }
        if self.replicationSourceVaultId != nil {
            map["ReplicationSourceVaultId"] = self.replicationSourceVaultId!
        }
        if self.replicationTargetVaultId != nil {
            map["ReplicationTargetVaultId"] = self.replicationTargetVaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReplicationSourceRegionId"] as? String {
            self.replicationSourceRegionId = value
        }
        if let value = dict["ReplicationSourceVaultId"] as? String {
            self.replicationSourceVaultId = value
        }
        if let value = dict["ReplicationTargetVaultId"] as? String {
            self.replicationTargetVaultId = value
        }
    }
}

public class CreateVaultReplicationResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateVaultReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVaultReplicationResponseBody?

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
            var model = CreateVaultReplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAirEcsInstanceRequest : Tea.TeaModel {
    public var ecsInstanceId: String?

    public var uninstallClientSourceTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        if self.uninstallClientSourceTypes != nil {
            map["UninstallClientSourceTypes"] = self.uninstallClientSourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
        }
        if let value = dict["UninstallClientSourceTypes"] as? [String] {
            self.uninstallClientSourceTypes = value
        }
    }
}

public class DeleteAirEcsInstanceShrinkRequest : Tea.TeaModel {
    public var ecsInstanceId: String?

    public var uninstallClientSourceTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        if self.uninstallClientSourceTypesShrink != nil {
            map["UninstallClientSourceTypes"] = self.uninstallClientSourceTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
        }
        if let value = dict["UninstallClientSourceTypes"] as? String {
            self.uninstallClientSourceTypesShrink = value
        }
    }
}

public class DeleteAirEcsInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteAirEcsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAirEcsInstanceResponseBody?

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
            var model = DeleteAirEcsInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBackupClientResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? [String: Any] {
            self.clientIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBackupClientResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupPlanRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RequireNoRunningJobs"] as? Bool {
            self.requireNoRunningJobs = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteClientResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHanaBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sid"] as? String {
            self.sid = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHanaInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceIds"] as? [String] {
            self.dataSourceIds = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceIds"] as? String {
            self.dataSourceIdsShrink = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyBindingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyV2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUdmDiskRequest : Tea.TeaModel {
    public var diskId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
    }
}

public class DeleteUdmDiskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUdmDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUdmDiskResponseBody?

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
            var model = DeleteUdmDiskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUdmEcsInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteUdmEcsInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUdmEcsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUdmEcsInstanceResponseBody?

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
            var model = DeleteUdmEcsInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVaultReplicationRequest : Tea.TeaModel {
    public var replicationSourceRegionId: String?

    public var replicationSourceVaultId: String?

    public var replicationTargetVaultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.replicationSourceRegionId != nil {
            map["ReplicationSourceRegionId"] = self.replicationSourceRegionId!
        }
        if self.replicationSourceVaultId != nil {
            map["ReplicationSourceVaultId"] = self.replicationSourceVaultId!
        }
        if self.replicationTargetVaultId != nil {
            map["ReplicationTargetVaultId"] = self.replicationTargetVaultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReplicationSourceRegionId"] as? String {
            self.replicationSourceRegionId = value
        }
        if let value = dict["ReplicationSourceVaultId"] as? String {
            self.replicationSourceVaultId = value
        }
        if let value = dict["ReplicationTargetVaultId"] as? String {
            self.replicationTargetVaultId = value
        }
    }
}

public class DeleteVaultReplicationResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteVaultReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVaultReplicationResponseBody?

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
            var model = DeleteVaultReplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupClientsRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientIds: [String]?

    public var clientType: String?

    public var clusterId: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var filters: [DescribeBackupClientsRequest.Filters]?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? [String] {
            self.clientIds = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeBackupClientsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupClientsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeBackupClientsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupClientsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class DescribeBackupClientsShrinkRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientIdsShrink: String?

    public var clientType: String?

    public var clusterId: String?

    public var crossAccountRoleName: String?

    public var crossAccountType: String?

    public var crossAccountUserId: Int64?

    public var filters: [DescribeBackupClientsShrinkRequest.Filters]?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIdsShrink = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeBackupClientsShrinkRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupClientsShrinkRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeBackupClientsShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupClientsShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertOnPartialComplete"] as? Bool {
                    self.alertOnPartialComplete = value
                }
                if let value = dict["DataNetworkType"] as? String {
                    self.dataNetworkType = value
                }
                if let value = dict["DataProxySetting"] as? String {
                    self.dataProxySetting = value
                }
                if let value = dict["MaxCpuCore"] as? String {
                    self.maxCpuCore = value
                }
                if let value = dict["MaxMemory"] as? Int64 {
                    self.maxMemory = value
                }
                if let value = dict["MaxWorker"] as? String {
                    self.maxWorker = value
                }
                if let value = dict["ProxyHost"] as? String {
                    self.proxyHost = value
                }
                if let value = dict["ProxyPassword"] as? String {
                    self.proxyPassword = value
                }
                if let value = dict["ProxyPort"] as? Int32 {
                    self.proxyPort = value
                }
                if let value = dict["ProxyUser"] as? String {
                    self.proxyUser = value
                }
                if let value = dict["UseHttps"] as? String {
                    self.useHttps = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Appliance"] as? Bool {
                self.appliance = value
            }
            if let value = dict["ArchType"] as? String {
                self.archType = value
            }
            if let value = dict["BackupStatus"] as? String {
                self.backupStatus = value
            }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientType"] as? String {
                self.clientType = value
            }
            if let value = dict["ClientVersion"] as? String {
                self.clientVersion = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["LastHeartBeatTime"] as? Int64 {
                self.lastHeartBeatTime = value
            }
            if let value = dict["MaxClientVersion"] as? String {
                self.maxClientVersion = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["PrivateIpV4"] as? String {
                self.privateIpV4 = value
            }
            if let value = dict["Settings"] as? [String: Any?] {
                var model = DescribeBackupClientsResponseBody.Clients.Settings()
                model.fromMap(value)
                self.settings = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeBackupClientsResponseBody.Clients.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupClientsResponseBody.Clients.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clients"] as? [Any?] {
            var tmp : [DescribeBackupClientsResponseBody.Clients] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupClientsResponseBody.Clients()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clients = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupClientsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeBackupJobs2Request.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupJobs2Request.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortDirection"] as? String {
            self.sortDirection = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiskNativeSnapshotId"] as? [String] {
                            self.diskNativeSnapshotId = value
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

                public var instanceInfos: [String: Any]?

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
                    if self.instanceInfos != nil {
                        map["InstanceInfos"] = self.instanceInfos!
                    }
                    if self.nativeSnapshotId != nil {
                        map["NativeSnapshotId"] = self.nativeSnapshotId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DestinationNativeSnapshotErrorMessage"] as? String {
                        self.destinationNativeSnapshotErrorMessage = value
                    }
                    if let value = dict["DestinationNativeSnapshotId"] as? String {
                        self.destinationNativeSnapshotId = value
                    }
                    if let value = dict["DestinationNativeSnapshotProgress"] as? Int32 {
                        self.destinationNativeSnapshotProgress = value
                    }
                    if let value = dict["DestinationNativeSnapshotStatus"] as? String {
                        self.destinationNativeSnapshotStatus = value
                    }
                    if let value = dict["DestinationRetention"] as? Int64 {
                        self.destinationRetention = value
                    }
                    if let value = dict["DestinationSnapshotId"] as? String {
                        self.destinationSnapshotId = value
                    }
                    if let value = dict["DiskNativeSnapshotIdList"] as? [String: Any?] {
                        var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail.DiskNativeSnapshotIdList()
                        model.fromMap(value)
                        self.diskNativeSnapshotIdList = model
                    }
                    if let value = dict["DoCopy"] as? Bool {
                        self.doCopy = value
                    }
                    if let value = dict["InstanceInfos"] as? [String: Any] {
                        self.instanceInfos = value
                    }
                    if let value = dict["NativeSnapshotId"] as? String {
                        self.nativeSnapshotId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TableName"] as? [String] {
                            self.tableName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TableNames"] as? [String: Any?] {
                        var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail.TableNames()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? [String] {
                        self.path = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FailedFiles"] as? String {
                        self.failedFiles = value
                    }
                    if let value = dict["ReportTaskStatus"] as? String {
                        self.reportTaskStatus = value
                    }
                    if let value = dict["SkippedFiles"] as? String {
                        self.skippedFiles = value
                    }
                    if let value = dict["SuccessFiles"] as? String {
                        self.successFiles = value
                    }
                    if let value = dict["TotalFiles"] as? String {
                        self.totalFiles = value
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

            public var report: DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Report?

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
                try self.report?.validate()
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
                if self.report != nil {
                    map["Report"] = self.report?.toMap()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualBytes"] as? Int64 {
                    self.actualBytes = value
                }
                if let value = dict["ActualFiles"] as? Int64 {
                    self.actualFiles = value
                }
                if let value = dict["ActualItems"] as? Int64 {
                    self.actualItems = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["Bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["BytesDone"] as? Int64 {
                    self.bytesDone = value
                }
                if let value = dict["BytesTotal"] as? Int64 {
                    self.bytesTotal = value
                }
                if let value = dict["ChangeListPath"] as? String {
                    self.changeListPath = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["CompleteTime"] as? Int64 {
                    self.completeTime = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["CrossAccountRoleName"] as? String {
                    self.crossAccountRoleName = value
                }
                if let value = dict["CrossAccountType"] as? String {
                    self.crossAccountType = value
                }
                if let value = dict["CrossAccountUserId"] as? Int64 {
                    self.crossAccountUserId = value
                }
                if let value = dict["DestDataSourceDetail"] as? String {
                    self.destDataSourceDetail = value
                }
                if let value = dict["DestDataSourceId"] as? String {
                    self.destDataSourceId = value
                }
                if let value = dict["DestSourceType"] as? String {
                    self.destSourceType = value
                }
                if let value = dict["Detail"] as? [String: Any?] {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Detail()
                    model.fromMap(value)
                    self.detail = model
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["Exclude"] as? String {
                    self.exclude = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["FilesDone"] as? Int64 {
                    self.filesDone = value
                }
                if let value = dict["FilesTotal"] as? Int64 {
                    self.filesTotal = value
                }
                if let value = dict["Identifier"] as? String {
                    self.identifier = value
                }
                if let value = dict["Include"] as? String {
                    self.include = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["ItemsDone"] as? Int64 {
                    self.itemsDone = value
                }
                if let value = dict["ItemsTotal"] as? Int64 {
                    self.itemsTotal = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
                if let value = dict["OtsDetail"] as? [String: Any?] {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.OtsDetail()
                    model.fromMap(value)
                    self.otsDetail = model
                }
                if let value = dict["Paths"] as? [String: Any?] {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Paths()
                    model.fromMap(value)
                    self.paths = model
                }
                if let value = dict["PlanId"] as? String {
                    self.planId = value
                }
                if let value = dict["Prefix"] as? String {
                    self.prefix_ = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["Report"] as? [String: Any?] {
                    var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob.Report()
                    model.fromMap(value)
                    self.report = model
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["Speed"] as? Int64 {
                    self.speed = value
                }
                if let value = dict["SpeedLimit"] as? String {
                    self.speedLimit = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupJob"] as? [Any?] {
                var tmp : [DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupJobs2ResponseBody.BackupJobs.BackupJob()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupJobs"] as? [String: Any?] {
            var model = DescribeBackupJobs2ResponseBody.BackupJobs()
            model.fromMap(value)
            self.backupJobs = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupJobs2ResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeBackupPlansRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupPlansRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class DescribeBackupPlansResponseBody : Tea.TeaModel {
    public class BackupPlans : Tea.TeaModel {
        public class BackupPlan : Tea.TeaModel {
            public class HitTags : Tea.TeaModel {
                public class HitTag : Tea.TeaModel {
                    public var key: String?

                    public var operator_: String?

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
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var hitTag: [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.HitTags.HitTag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hitTag != nil {
                        var tmp : [Any] = []
                        for k in self.hitTag! {
                            tmp.append(k.toMap())
                        }
                        map["HitTag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HitTag"] as? [Any?] {
                        var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.HitTags.HitTag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.HitTags.HitTag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.hitTag = tmp
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TableName"] as? [String] {
                            self.tableName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TableNames"] as? [String: Any?] {
                        var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail.TableNames()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? [String] {
                        self.path = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Extra"] as? String {
                            self.extra = value
                        }
                        if let value = dict["ResourceId"] as? String {
                            self.resourceId = value
                        }
                        if let value = dict["SourceType"] as? String {
                            self.sourceType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Resource"] as? [Any?] {
                        var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources.Resource] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources.Resource()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BackupType"] as? String {
                            self.backupType = value
                        }
                        if let value = dict["DestinationRegionId"] as? String {
                            self.destinationRegionId = value
                        }
                        if let value = dict["DestinationRetention"] as? Int64 {
                            self.destinationRetention = value
                        }
                        if let value = dict["Disabled"] as? Bool {
                            self.disabled = value
                        }
                        if let value = dict["DoCopy"] as? Bool {
                            self.doCopy = value
                        }
                        if let value = dict["Retention"] as? Int64 {
                            self.retention = value
                        }
                        if let value = dict["RuleId"] as? String {
                            self.ruleId = value
                        }
                        if let value = dict["RuleName"] as? String {
                            self.ruleName = value
                        }
                        if let value = dict["Schedule"] as? String {
                            self.schedule = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Rule"] as? [Any?] {
                        var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules.Rule] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules.Rule()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["KeepAfterTrialExpiration"] as? Bool {
                        self.keepAfterTrialExpiration = value
                    }
                    if let value = dict["TrialExpireTime"] as? Int64 {
                        self.trialExpireTime = value
                    }
                    if let value = dict["TrialStartTime"] as? Int64 {
                        self.trialStartTime = value
                    }
                    if let value = dict["TrialVaultReleaseTime"] as? Int64 {
                        self.trialVaultReleaseTime = value
                    }
                }
            }
            public var backupSourceGroupId: String?

            public var backupType: String?

            public var bucket: String?

            public var businessStatus: String?

            public var changeListPath: String?

            public var clientId: String?

            public var clusterId: String?

            public var createTime: Int64?

            public var createdByTag: Bool?

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

            public var hitTags: DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.HitTags?

            public var include: String?

            public var instanceGroupId: String?

            public var instanceId: String?

            public var instanceName: String?

            public var keepLatestSnapshots: Int64?

            public var latestExecuteJobId: String?

            public var latestFinishJobId: String?

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
                try self.hitTags?.validate()
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
                if self.businessStatus != nil {
                    map["BusinessStatus"] = self.businessStatus!
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
                if self.createdByTag != nil {
                    map["CreatedByTag"] = self.createdByTag!
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
                if self.hitTags != nil {
                    map["HitTags"] = self.hitTags?.toMap()
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
                if self.latestFinishJobId != nil {
                    map["LatestFinishJobId"] = self.latestFinishJobId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupSourceGroupId"] as? String {
                    self.backupSourceGroupId = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["Bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["BusinessStatus"] as? String {
                    self.businessStatus = value
                }
                if let value = dict["ChangeListPath"] as? String {
                    self.changeListPath = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["CreatedByTag"] as? Bool {
                    self.createdByTag = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["CrossAccountRoleName"] as? String {
                    self.crossAccountRoleName = value
                }
                if let value = dict["CrossAccountType"] as? String {
                    self.crossAccountType = value
                }
                if let value = dict["CrossAccountUserId"] as? Int64 {
                    self.crossAccountUserId = value
                }
                if let value = dict["DataSourceId"] as? String {
                    self.dataSourceId = value
                }
                if let value = dict["DestDataSourceDetail"] as? String {
                    self.destDataSourceDetail = value
                }
                if let value = dict["DestDataSourceId"] as? String {
                    self.destDataSourceId = value
                }
                if let value = dict["DestSourceType"] as? String {
                    self.destSourceType = value
                }
                if let value = dict["Detail"] as? String {
                    self.detail = value
                }
                if let value = dict["Disabled"] as? Bool {
                    self.disabled = value
                }
                if let value = dict["Exclude"] as? String {
                    self.exclude = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["HitTags"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.HitTags()
                    model.fromMap(value)
                    self.hitTags = model
                }
                if let value = dict["Include"] as? String {
                    self.include = value
                }
                if let value = dict["InstanceGroupId"] as? String {
                    self.instanceGroupId = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["KeepLatestSnapshots"] as? Int64 {
                    self.keepLatestSnapshots = value
                }
                if let value = dict["LatestExecuteJobId"] as? String {
                    self.latestExecuteJobId = value
                }
                if let value = dict["LatestFinishJobId"] as? String {
                    self.latestFinishJobId = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
                if let value = dict["OtsDetail"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.OtsDetail()
                    model.fromMap(value)
                    self.otsDetail = model
                }
                if let value = dict["Paths"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Paths()
                    model.fromMap(value)
                    self.paths = model
                }
                if let value = dict["PlanId"] as? String {
                    self.planId = value
                }
                if let value = dict["PlanName"] as? String {
                    self.planName = value
                }
                if let value = dict["Prefix"] as? String {
                    self.prefix_ = value
                }
                if let value = dict["Resources"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Resources()
                    model.fromMap(value)
                    self.resources = model
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["Rules"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.Rules()
                    model.fromMap(value)
                    self.rules = model
                }
                if let value = dict["Schedule"] as? String {
                    self.schedule = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["SpeedLimit"] as? String {
                    self.speedLimit = value
                }
                if let value = dict["TrialInfo"] as? [String: Any?] {
                    var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan.TrialInfo()
                    model.fromMap(value)
                    self.trialInfo = model
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupPlan"] as? [Any?] {
                var tmp : [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupPlansResponseBody.BackupPlans.BackupPlan()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlans"] as? [String: Any?] {
            var model = DescribeBackupPlansResponseBody.BackupPlans()
            model.fromMap(value)
            self.backupPlans = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupPlansResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

            public var heartBeatTime: Int64?

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
                if self.heartBeatTime != nil {
                    map["HeartBeatTime"] = self.heartBeatTime!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertSetting"] as? String {
                    self.alertSetting = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["ClientName"] as? String {
                    self.clientName = value
                }
                if let value = dict["ClientType"] as? String {
                    self.clientType = value
                }
                if let value = dict["ClientVersion"] as? String {
                    self.clientVersion = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["HeartBeatTime"] as? Int64 {
                    self.heartBeatTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["MaxVersion"] as? String {
                    self.maxVersion = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusMessage"] as? String {
                    self.statusMessage = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["UseHttps"] as? Bool {
                    self.useHttps = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Client"] as? [Any?] {
                var tmp : [DescribeClientsResponseBody.Clients.Client] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClientsResponseBody.Clients.Client()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clients"] as? [String: Any?] {
            var model = DescribeClientsResponseBody.Clients()
            model.fromMap(value)
            self.clients = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeClientsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentStatus"] as? String {
                self.agentStatus = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [DescribeContainerClusterResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerClusterResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeContainerClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeCrossAccountsResponseBody : Tea.TeaModel {
    public class CrossAccounts : Tea.TeaModel {
        public class CrossAccount : Tea.TeaModel {
            public var alias: String?

            public var createdTime: Int64?

            public var crossAccountRoleName: String?

            public var crossAccountType: String?

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
                if self.crossAccountType != nil {
                    map["CrossAccountType"] = self.crossAccountType!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Alias"] as? String {
                    self.alias = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["CrossAccountRoleName"] as? String {
                    self.crossAccountRoleName = value
                }
                if let value = dict["CrossAccountType"] as? String {
                    self.crossAccountType = value
                }
                if let value = dict["CrossAccountUserId"] as? Int64 {
                    self.crossAccountUserId = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["OwnerId"] as? Int64 {
                    self.ownerId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CrossAccount"] as? [Any?] {
                var tmp : [DescribeCrossAccountsResponseBody.CrossAccounts.CrossAccount] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCrossAccountsResponseBody.CrossAccounts.CrossAccount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CrossAccounts"] as? [String: Any?] {
            var model = DescribeCrossAccountsResponseBody.CrossAccounts()
            model.fromMap(value)
            self.crossAccounts = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCrossAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
    }
}

public class DescribeHanaBackupPlansResponseBody : Tea.TeaModel {
    public class HanaBackupPlans : Tea.TeaModel {
        public class HanaBackupPlan : Tea.TeaModel {
            public var backupPrefix: String?

            public var backupType: String?

            public var businessStatus: String?

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
                if self.businessStatus != nil {
                    map["BusinessStatus"] = self.businessStatus!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupPrefix"] as? String {
                    self.backupPrefix = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["BusinessStatus"] as? String {
                    self.businessStatus = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["DatabaseName"] as? String {
                    self.databaseName = value
                }
                if let value = dict["Disabled"] as? Bool {
                    self.disabled = value
                }
                if let value = dict["PlanId"] as? String {
                    self.planId = value
                }
                if let value = dict["PlanName"] as? String {
                    self.planName = value
                }
                if let value = dict["Schedule"] as? String {
                    self.schedule = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HanaBackupPlan"] as? [Any?] {
                var tmp : [DescribeHanaBackupPlansResponseBody.HanaBackupPlans.HanaBackupPlan] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHanaBackupPlansResponseBody.HanaBackupPlans.HanaBackupPlan()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HanaBackupPlans"] as? [String: Any?] {
            var model = DescribeHanaBackupPlansResponseBody.HanaBackupPlans()
            model.fromMap(value)
            self.hanaBackupPlans = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaBackupPlansResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CatalogBackupParameterFile"] as? String {
                self.catalogBackupParameterFile = value
            }
            if let value = dict["CatalogBackupUsingBackint"] as? Bool {
                self.catalogBackupUsingBackint = value
            }
            if let value = dict["DataBackupParameterFile"] as? String {
                self.dataBackupParameterFile = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["EnableAutoLogBackup"] as? Bool {
                self.enableAutoLogBackup = value
            }
            if let value = dict["LogBackupParameterFile"] as? String {
                self.logBackupParameterFile = value
            }
            if let value = dict["LogBackupTimeout"] as? Int64 {
                self.logBackupTimeout = value
            }
            if let value = dict["LogBackupUsingBackint"] as? Bool {
                self.logBackupUsingBackint = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HanaBackupSetting"] as? [String: Any?] {
            var model = DescribeHanaBackupSettingResponseBody.HanaBackupSetting()
            model.fromMap(value)
            self.hanaBackupSetting = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaBackupSettingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IncludeDifferential"] as? Bool {
            self.includeDifferential = value
        }
        if let value = dict["IncludeIncremental"] as? Bool {
            self.includeIncremental = value
        }
        if let value = dict["IncludeLog"] as? Bool {
            self.includeLog = value
        }
        if let value = dict["LogPosition"] as? Int64 {
            self.logPosition = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RecoveryPointInTime"] as? Int64 {
            self.recoveryPointInTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceClusterId"] as? String {
            self.sourceClusterId = value
        }
        if let value = dict["SystemCopy"] as? Bool {
            self.systemCopy = value
        }
        if let value = dict["UseBackint"] as? Bool {
            self.useBackint = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
        if let value = dict["VolumeId"] as? Int32 {
            self.volumeId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaBackupsAsyncResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActiveStatus"] as? String {
                    self.activeStatus = value
                }
                if let value = dict["DatabaseName"] as? String {
                    self.databaseName = value
                }
                if let value = dict["Detail"] as? String {
                    self.detail = value
                }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
                if let value = dict["SqlPort"] as? Int32 {
                    self.sqlPort = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HanaDatabase"] as? [Any?] {
                var tmp : [DescribeHanaDatabasesResponseBody.HanaDatabases.HanaDatabase] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHanaDatabasesResponseBody.HanaDatabases.HanaDatabase()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HanaDatabases"] as? [String: Any?] {
            var model = DescribeHanaDatabasesResponseBody.HanaDatabases()
            model.fromMap(value)
            self.hanaDatabases = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaDatabasesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeHanaInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeHanaInstancesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeHanaInstancesResponseBody.Hanas.Hana.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeHanaInstancesResponseBody.Hanas.Hana.Tags.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var alertSetting: String?

            public var clusterId: String?

            public var crossAccountRoleName: String?

            public var crossAccountType: String?

            public var crossAccountUserId: Int64?

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
                if self.crossAccountRoleName != nil {
                    map["CrossAccountRoleName"] = self.crossAccountRoleName!
                }
                if self.crossAccountType != nil {
                    map["CrossAccountType"] = self.crossAccountType!
                }
                if self.crossAccountUserId != nil {
                    map["CrossAccountUserId"] = self.crossAccountUserId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertSetting"] as? String {
                    self.alertSetting = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["CrossAccountRoleName"] as? String {
                    self.crossAccountRoleName = value
                }
                if let value = dict["CrossAccountType"] as? String {
                    self.crossAccountType = value
                }
                if let value = dict["CrossAccountUserId"] as? Int64 {
                    self.crossAccountUserId = value
                }
                if let value = dict["HanaName"] as? String {
                    self.hanaName = value
                }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["InstanceNumber"] as? Int32 {
                    self.instanceNumber = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
                if let value = dict["StatusMessage"] as? String {
                    self.statusMessage = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeHanaInstancesResponseBody.Hanas.Hana.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UseSsl"] as? Bool {
                    self.useSsl = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
                }
                if let value = dict["ValidateCertificate"] as? Bool {
                    self.validateCertificate = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hana"] as? [Any?] {
                var tmp : [DescribeHanaInstancesResponseBody.Hanas.Hana] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHanaInstancesResponseBody.Hanas.Hana()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Hanas"] as? [String: Any?] {
            var model = DescribeHanaInstancesResponseBody.Hanas()
            model.fromMap(value)
            self.hanas = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? Int64 {
            self.backupId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RestoreId"] as? String {
            self.restoreId = value
        }
        if let value = dict["RestoreStatus"] as? String {
            self.restoreStatus = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupID"] as? Int64 {
                    self.backupID = value
                }
                if let value = dict["BackupPrefix"] as? String {
                    self.backupPrefix = value
                }
                if let value = dict["CheckAccess"] as? Bool {
                    self.checkAccess = value
                }
                if let value = dict["ClearLog"] as? Bool {
                    self.clearLog = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["CurrentPhase"] as? Int32 {
                    self.currentPhase = value
                }
                if let value = dict["CurrentProgress"] as? Int64 {
                    self.currentProgress = value
                }
                if let value = dict["DatabaseName"] as? String {
                    self.databaseName = value
                }
                if let value = dict["DatabaseRestoreId"] as? Int64 {
                    self.databaseRestoreId = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["LogPosition"] as? Int64 {
                    self.logPosition = value
                }
                if let value = dict["MaxPhase"] as? Int32 {
                    self.maxPhase = value
                }
                if let value = dict["MaxProgress"] as? Int64 {
                    self.maxProgress = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Phase"] as? String {
                    self.phase = value
                }
                if let value = dict["ReachedTime"] as? Int64 {
                    self.reachedTime = value
                }
                if let value = dict["RecoveryPointInTime"] as? Int64 {
                    self.recoveryPointInTime = value
                }
                if let value = dict["RestoreId"] as? String {
                    self.restoreId = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SourceClusterId"] as? String {
                    self.sourceClusterId = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SystemCopy"] as? Bool {
                    self.systemCopy = value
                }
                if let value = dict["UseCatalog"] as? Bool {
                    self.useCatalog = value
                }
                if let value = dict["UseDelta"] as? Bool {
                    self.useDelta = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
                }
                if let value = dict["VolumeId"] as? Int32 {
                    self.volumeId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HanaRestores"] as? [Any?] {
                var tmp : [DescribeHanaRestoresResponseBody.HanaRestore.HanaRestores] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHanaRestoresResponseBody.HanaRestore.HanaRestores()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HanaRestore"] as? [String: Any?] {
            var model = DescribeHanaRestoresResponseBody.HanaRestore()
            model.fromMap(value)
            self.hanaRestore = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaRestoresResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RetentionDays"] as? Int64 {
            self.retentionDays = value
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHanaRetentionSettingResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["TableNames"] as? [String] {
                self.tableNames = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OtsInstances"] as? [Any?] {
            var tmp : [DescribeOtsTableSnapshotsRequest.OtsInstances] = []
            for v in value {
                if v != nil {
                    var model = DescribeOtsTableSnapshotsRequest.OtsInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.otsInstances = tmp
        }
        if let value = dict["SnapshotIds"] as? [String] {
            self.snapshotIds = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualBytes"] as? String {
                self.actualBytes = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["BytesTotal"] as? Int64 {
                self.bytesTotal = value
            }
            if let value = dict["CompleteTime"] as? Int64 {
                self.completeTime = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["ParentSnapshotHash"] as? String {
                self.parentSnapshotHash = value
            }
            if let value = dict["RangeEnd"] as? Int64 {
                self.rangeEnd = value
            }
            if let value = dict["RangeStart"] as? Int64 {
                self.rangeStart = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["SnapshotHash"] as? String {
                self.snapshotHash = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
            if let value = dict["VaultId"] as? String {
                self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [DescribeOtsTableSnapshotsResponseBody.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = DescribeOtsTableSnapshotsResponseBody.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOtsTableSnapshotsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DescribePoliciesV2ResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public class DataSourceFilters : Tea.TeaModel {
                public var dataSourceIds: [String]?

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
                    if self.sourceType != nil {
                        map["SourceType"] = self.sourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DataSourceIds"] as? [String] {
                        self.dataSourceIds = value
                    }
                    if let value = dict["SourceType"] as? String {
                        self.sourceType = value
                    }
                }
            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AdvancedRetentionType"] as? String {
                        self.advancedRetentionType = value
                    }
                    if let value = dict["Retention"] as? Int64 {
                        self.retention = value
                    }
                    if let value = dict["WhichSnapshot"] as? Int64 {
                        self.whichSnapshot = value
                    }
                }
            }
            public class TagFilters : Tea.TeaModel {
                public var key: String?

                public var operator_: String?

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
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Operator"] as? String {
                        self.operator_ = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var archiveDays: Int64?

            public var backupType: String?

            public var dataSourceFilters: [DescribePoliciesV2ResponseBody.Policies.Rules.DataSourceFilters]?

            public var immutable: Bool?

            public var keepLatestSnapshots: Int64?

            public var replicationRegionId: String?

            public var retention: Int64?

            public var retentionRules: [DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules]?

            public var ruleId: String?

            public var ruleType: String?

            public var schedule: String?

            public var tagFilters: [DescribePoliciesV2ResponseBody.Policies.Rules.TagFilters]?

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
                if self.dataSourceFilters != nil {
                    var tmp : [Any] = []
                    for k in self.dataSourceFilters! {
                        tmp.append(k.toMap())
                    }
                    map["DataSourceFilters"] = tmp
                }
                if self.immutable != nil {
                    map["Immutable"] = self.immutable!
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
                if self.tagFilters != nil {
                    var tmp : [Any] = []
                    for k in self.tagFilters! {
                        tmp.append(k.toMap())
                    }
                    map["TagFilters"] = tmp
                }
                if self.vaultId != nil {
                    map["VaultId"] = self.vaultId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveDays"] as? Int64 {
                    self.archiveDays = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["DataSourceFilters"] as? [Any?] {
                    var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules.DataSourceFilters] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePoliciesV2ResponseBody.Policies.Rules.DataSourceFilters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataSourceFilters = tmp
                }
                if let value = dict["Immutable"] as? Bool {
                    self.immutable = value
                }
                if let value = dict["KeepLatestSnapshots"] as? Int64 {
                    self.keepLatestSnapshots = value
                }
                if let value = dict["ReplicationRegionId"] as? String {
                    self.replicationRegionId = value
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["RetentionRules"] as? [Any?] {
                    var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePoliciesV2ResponseBody.Policies.Rules.RetentionRules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.retentionRules = tmp
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["Schedule"] as? String {
                    self.schedule = value
                }
                if let value = dict["TagFilters"] as? [Any?] {
                    var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules.TagFilters] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePoliciesV2ResponseBody.Policies.Rules.TagFilters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tagFilters = tmp
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
                }
            }
        }
        public var businessStatus: String?

        public var createdTime: Int64?

        public var policyBindingCount: Int64?

        public var policyDescription: String?

        public var policyId: String?

        public var policyName: String?

        public var policyType: String?

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
            if self.businessStatus != nil {
                map["BusinessStatus"] = self.businessStatus!
            }
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
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessStatus"] as? String {
                self.businessStatus = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["PolicyBindingCount"] as? Int64 {
                self.policyBindingCount = value
            }
            if let value = dict["PolicyDescription"] as? String {
                self.policyDescription = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [DescribePoliciesV2ResponseBody.Policies.Rules] = []
                for v in value {
                    if v != nil {
                        var model = DescribePoliciesV2ResponseBody.Policies.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [DescribePoliciesV2ResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = DescribePoliciesV2ResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePoliciesV2ResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceIds"] as? [String] {
            self.dataSourceIds = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribePolicyBindingsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribePolicyBindingsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceIds"] as? String {
            self.dataSourceIdsShrink = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribePolicyBindingsShrinkRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribePolicyBindingsShrinkRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FetchSliceSize"] as? Int64 {
                        self.fetchSliceSize = value
                    }
                    if let value = dict["FullOnIncrementFail"] as? Bool {
                        self.fullOnIncrementFail = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["FetchSliceSize"] as? Int64 {
                        self.fetchSliceSize = value
                    }
                    if let value = dict["FullOnIncrementFail"] as? Bool {
                        self.fullOnIncrementFail = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AdvPolicy"] as? Bool {
                        self.advPolicy = value
                    }
                    if let value = dict["UseVSS"] as? Bool {
                        self.useVSS = value
                    }
                }
            }
            public class OssDetail : Tea.TeaModel {
                public var ignoreArchiveObject: Bool?

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
                    if self.ignoreArchiveObject != nil {
                        map["IgnoreArchiveObject"] = self.ignoreArchiveObject!
                    }
                    if self.inventoryCleanupPolicy != nil {
                        map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                    }
                    if self.inventoryId != nil {
                        map["InventoryId"] = self.inventoryId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IgnoreArchiveObject"] as? Bool {
                        self.ignoreArchiveObject = value
                    }
                    if let value = dict["InventoryCleanupPolicy"] as? String {
                        self.inventoryCleanupPolicy = value
                    }
                    if let value = dict["InventoryId"] as? String {
                        self.inventoryId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppConsistent"] as? Bool {
                        self.appConsistent = value
                    }
                    if let value = dict["DestinationKmsKeyId"] as? String {
                        self.destinationKmsKeyId = value
                    }
                    if let value = dict["DiskIdList"] as? [String] {
                        self.diskIdList = value
                    }
                    if let value = dict["EnableFsFreeze"] as? Bool {
                        self.enableFsFreeze = value
                    }
                    if let value = dict["EnableWriters"] as? Bool {
                        self.enableWriters = value
                    }
                    if let value = dict["ExcludeDiskIdList"] as? [String] {
                        self.excludeDiskIdList = value
                    }
                    if let value = dict["PostScriptPath"] as? String {
                        self.postScriptPath = value
                    }
                    if let value = dict["PreScriptPath"] as? String {
                        self.preScriptPath = value
                    }
                    if let value = dict["RamRoleName"] as? String {
                        self.ramRoleName = value
                    }
                    if let value = dict["SnapshotGroup"] as? Bool {
                        self.snapshotGroup = value
                    }
                    if let value = dict["TimeoutInSeconds"] as? Int64 {
                        self.timeoutInSeconds = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommonFileSystemDetail"] as? [String: Any?] {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonFileSystemDetail()
                    model.fromMap(value)
                    self.commonFileSystemDetail = model
                }
                if let value = dict["CommonNasDetail"] as? [String: Any?] {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.CommonNasDetail()
                    model.fromMap(value)
                    self.commonNasDetail = model
                }
                if let value = dict["FileDetail"] as? [String: Any?] {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.FileDetail()
                    model.fromMap(value)
                    self.fileDetail = model
                }
                if let value = dict["OssDetail"] as? [String: Any?] {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.OssDetail()
                    model.fromMap(value)
                    self.ossDetail = model
                }
                if let value = dict["UdmDetail"] as? [String: Any?] {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions.UdmDetail()
                    model.fromMap(value)
                    self.udmDetail = model
                }
            }
        }
        public class HitTags : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var advancedOptions: DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions?

        public var createdByTag: Bool?

        public var createdTime: Int64?

        public var crossAccountRoleName: String?

        public var crossAccountType: String?

        public var crossAccountUserId: Int64?

        public var dataSourceId: String?

        public var disabled: Bool?

        public var exclude: String?

        public var hitTags: [DescribePolicyBindingsResponseBody.PolicyBindings.HitTags]?

        public var include: String?

        public var policyBindingDescription: String?

        public var policyBindingId: String?

        public var policyId: String?

        public var source: String?

        public var sourceType: String?

        public var speedLimit: String?

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
            if self.createdByTag != nil {
                map["CreatedByTag"] = self.createdByTag!
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
            if self.exclude != nil {
                map["Exclude"] = self.exclude!
            }
            if self.hitTags != nil {
                var tmp : [Any] = []
                for k in self.hitTags! {
                    tmp.append(k.toMap())
                }
                map["HitTags"] = tmp
            }
            if self.include != nil {
                map["Include"] = self.include!
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
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.speedLimit != nil {
                map["SpeedLimit"] = self.speedLimit!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvancedOptions"] as? [String: Any?] {
                var model = DescribePolicyBindingsResponseBody.PolicyBindings.AdvancedOptions()
                model.fromMap(value)
                self.advancedOptions = model
            }
            if let value = dict["CreatedByTag"] as? Bool {
                self.createdByTag = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["CrossAccountRoleName"] as? String {
                self.crossAccountRoleName = value
            }
            if let value = dict["CrossAccountType"] as? String {
                self.crossAccountType = value
            }
            if let value = dict["CrossAccountUserId"] as? Int64 {
                self.crossAccountUserId = value
            }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["Exclude"] as? String {
                self.exclude = value
            }
            if let value = dict["HitTags"] as? [Any?] {
                var tmp : [DescribePolicyBindingsResponseBody.PolicyBindings.HitTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribePolicyBindingsResponseBody.PolicyBindings.HitTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitTags = tmp
            }
            if let value = dict["Include"] as? String {
                self.include = value
            }
            if let value = dict["PolicyBindingDescription"] as? String {
                self.policyBindingDescription = value
            }
            if let value = dict["PolicyBindingId"] as? String {
                self.policyBindingId = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["SpeedLimit"] as? String {
                self.speedLimit = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyBindings"] as? [Any?] {
            var tmp : [DescribePolicyBindingsResponseBody.PolicyBindings] = []
            for v in value {
                if v != nil {
                    var model = DescribePolicyBindingsResponseBody.PolicyBindings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyBindings = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePolicyBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["TableNames"] as? [String] {
                self.tableNames = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OtsInstances"] as? [Any?] {
            var tmp : [DescribeRecoverableOtsInstancesResponseBody.OtsInstances] = []
            for v in value {
                if v != nil {
                    var model = DescribeRecoverableOtsInstancesResponseBody.OtsInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.otsInstances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRecoverableOtsInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

            public var regionId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [DescribeRestoreJobs2Request.Filters] = []
            for v in value {
                if v != nil {
                    var model = DescribeRestoreJobs2Request.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RestoreType"] as? String {
            self.restoreType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BatchChannelCount"] as? Int32 {
                        self.batchChannelCount = value
                    }
                    if let value = dict["OverwriteExisting"] as? Bool {
                        self.overwriteExisting = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FailedFiles"] as? String {
                        self.failedFiles = value
                    }
                    if let value = dict["ReportTaskStatus"] as? String {
                        self.reportTaskStatus = value
                    }
                    if let value = dict["SkippedFiles"] as? String {
                        self.skippedFiles = value
                    }
                    if let value = dict["SuccessFiles"] as? String {
                        self.successFiles = value
                    }
                    if let value = dict["TotalFiles"] as? String {
                        self.totalFiles = value
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

            public var sourceInstanceId: String?

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
                if self.sourceInstanceId != nil {
                    map["SourceInstanceId"] = self.sourceInstanceId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualBytes"] as? Int64 {
                    self.actualBytes = value
                }
                if let value = dict["ActualItems"] as? Int64 {
                    self.actualItems = value
                }
                if let value = dict["BytesDone"] as? Int64 {
                    self.bytesDone = value
                }
                if let value = dict["BytesTotal"] as? Int64 {
                    self.bytesTotal = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["CompleteTime"] as? Int64 {
                    self.completeTime = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["CrossAccountRoleName"] as? String {
                    self.crossAccountRoleName = value
                }
                if let value = dict["CrossAccountType"] as? String {
                    self.crossAccountType = value
                }
                if let value = dict["CrossAccountUserId"] as? Int64 {
                    self.crossAccountUserId = value
                }
                if let value = dict["ErrorFile"] as? String {
                    self.errorFile = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["Exclude"] as? String {
                    self.exclude = value
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["FailbackDetail"] as? String {
                    self.failbackDetail = value
                }
                if let value = dict["Include"] as? String {
                    self.include = value
                }
                if let value = dict["ItemsDone"] as? Int64 {
                    self.itemsDone = value
                }
                if let value = dict["ItemsTotal"] as? Int64 {
                    self.itemsTotal = value
                }
                if let value = dict["MeteringBytesDone"] as? Int64 {
                    self.meteringBytesDone = value
                }
                if let value = dict["MeteringBytesTotal"] as? Int64 {
                    self.meteringBytesTotal = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
                if let value = dict["OtsDetail"] as? [String: Any?] {
                    var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.OtsDetail()
                    model.fromMap(value)
                    self.otsDetail = model
                }
                if let value = dict["ParentId"] as? String {
                    self.parentId = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["Report"] as? [String: Any?] {
                    var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob.Report()
                    model.fromMap(value)
                    self.report = model
                }
                if let value = dict["RestoreId"] as? String {
                    self.restoreId = value
                }
                if let value = dict["RestoreType"] as? String {
                    self.restoreType = value
                }
                if let value = dict["SnapshotHash"] as? String {
                    self.snapshotHash = value
                }
                if let value = dict["SnapshotId"] as? String {
                    self.snapshotId = value
                }
                if let value = dict["SourceInstanceId"] as? String {
                    self.sourceInstanceId = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["Speed"] as? Int64 {
                    self.speed = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
                if let value = dict["TargetBucket"] as? String {
                    self.targetBucket = value
                }
                if let value = dict["TargetClientId"] as? String {
                    self.targetClientId = value
                }
                if let value = dict["TargetCreateTime"] as? Int64 {
                    self.targetCreateTime = value
                }
                if let value = dict["TargetDataSourceId"] as? String {
                    self.targetDataSourceId = value
                }
                if let value = dict["TargetFileSystemId"] as? String {
                    self.targetFileSystemId = value
                }
                if let value = dict["TargetInstanceId"] as? String {
                    self.targetInstanceId = value
                }
                if let value = dict["TargetInstanceName"] as? String {
                    self.targetInstanceName = value
                }
                if let value = dict["TargetPath"] as? String {
                    self.targetPath = value
                }
                if let value = dict["TargetPrefix"] as? String {
                    self.targetPrefix = value
                }
                if let value = dict["TargetTableName"] as? String {
                    self.targetTableName = value
                }
                if let value = dict["TargetTime"] as? Int64 {
                    self.targetTime = value
                }
                if let value = dict["UdmDetail"] as? String {
                    self.udmDetail = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RestoreJob"] as? [Any?] {
                var tmp : [DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRestoreJobs2ResponseBody.RestoreJobs.RestoreJob()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreJobs"] as? [String: Any?] {
            var model = DescribeRestoreJobs2ResponseBody.RestoreJobs()
            model.fromMap(value)
            self.restoreJobs = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreJobs2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CompletedTime"] as? Int64 {
            self.completedTime = value
        }
        if let value = dict["CreatedTime"] as? Int64 {
            self.createdTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdatedTime"] as? Int64 {
            self.updatedTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["SnapshotIds"] as? [String: Any] {
            self.snapshotIds = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["SnapshotIds"] as? String {
            self.snapshotIdsShrink = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["UdmRegionId"] as? String {
            self.udmRegionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConsistentLevel"] as? String {
                    self.consistentLevel = value
                }
                if let value = dict["ContainOsDisk"] as? Bool {
                    self.containOsDisk = value
                }
                if let value = dict["DiskCategory"] as? String {
                    self.diskCategory = value
                }
                if let value = dict["DiskDevName"] as? String {
                    self.diskDevName = value
                }
                if let value = dict["DiskHbrSnapshotIdWithDeviceMap"] as? [String: Any] {
                    self.diskHbrSnapshotIdWithDeviceMap = value
                }
                if let value = dict["DiskIdList"] as? [String] {
                    self.diskIdList = value
                }
                if let value = dict["DowngradeReason"] as? String {
                    self.downgradeReason = value
                }
                if let value = dict["HostName"] as? String {
                    self.hostName = value
                }
                if let value = dict["InstanceIdWithDiskIdListMap"] as? [String: Any] {
                    self.instanceIdWithDiskIdListMap = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["InstantAccess"] as? Bool {
                    self.instantAccess = value
                }
                if let value = dict["NativeSnapshotIdList"] as? [String] {
                    self.nativeSnapshotIdList = value
                }
                if let value = dict["OsDiskId"] as? String {
                    self.osDiskId = value
                }
                if let value = dict["OsName"] as? String {
                    self.osName = value
                }
                if let value = dict["OsNameEn"] as? String {
                    self.osNameEn = value
                }
                if let value = dict["OsType"] as? String {
                    self.osType = value
                }
                if let value = dict["PerformanceLevel"] as? String {
                    self.performanceLevel = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["SnapshotGroupId"] as? String {
                    self.snapshotGroupId = value
                }
                if let value = dict["SystemDisk"] as? Bool {
                    self.systemDisk = value
                }
                if let value = dict["VmName"] as? String {
                    self.vmName = value
                }
            }
        }
        public var actualBytes: String?

        public var advancedRetentionType: String?

        public var archiveErrorMessage: String?

        public var archiveStatus: String?

        public var archiveTriggerTime: Int64?

        public var backupType: String?

        public var bytesTotal: Int64?

        public var canBeDeleted: Bool?

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
            if self.archiveErrorMessage != nil {
                map["ArchiveErrorMessage"] = self.archiveErrorMessage!
            }
            if self.archiveStatus != nil {
                map["ArchiveStatus"] = self.archiveStatus!
            }
            if self.archiveTriggerTime != nil {
                map["ArchiveTriggerTime"] = self.archiveTriggerTime!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.bytesTotal != nil {
                map["BytesTotal"] = self.bytesTotal!
            }
            if self.canBeDeleted != nil {
                map["CanBeDeleted"] = self.canBeDeleted!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualBytes"] as? String {
                self.actualBytes = value
            }
            if let value = dict["AdvancedRetentionType"] as? String {
                self.advancedRetentionType = value
            }
            if let value = dict["ArchiveErrorMessage"] as? String {
                self.archiveErrorMessage = value
            }
            if let value = dict["ArchiveStatus"] as? String {
                self.archiveStatus = value
            }
            if let value = dict["ArchiveTriggerTime"] as? Int64 {
                self.archiveTriggerTime = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["BytesTotal"] as? Int64 {
                self.bytesTotal = value
            }
            if let value = dict["CanBeDeleted"] as? Bool {
                self.canBeDeleted = value
            }
            if let value = dict["CompleteTime"] as? Int64 {
                self.completeTime = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Detail"] as? [String: Any?] {
                var model = DescribeUdmSnapshotsResponseBody.Snapshots.Detail()
                model.fromMap(value)
                self.detail = model
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["NativeSnapshotId"] as? String {
                self.nativeSnapshotId = value
            }
            if let value = dict["NativeSnapshotInfo"] as? String {
                self.nativeSnapshotInfo = value
            }
            if let value = dict["ParentSnapshotHash"] as? String {
                self.parentSnapshotHash = value
            }
            if let value = dict["Prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["RealSnapshotTime"] as? Int64 {
                self.realSnapshotTime = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["SnapshotHash"] as? String {
                self.snapshotHash = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [DescribeUdmSnapshotsResponseBody.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = DescribeUdmSnapshotsResponseBody.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUdmSnapshotsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? [String] {
                self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeVaultReplicationRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVaultReplicationRegionsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replication: Bool?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [DescribeVaultsRequest.Tag]?

    public var vaultId: String?

    public var vaultName: String?

    public var vaultOwnerId: Int64?

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
        if self.replication != nil {
            map["Replication"] = self.replication!
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
        if self.vaultName != nil {
            map["VaultName"] = self.vaultName!
        }
        if self.vaultOwnerId != nil {
            map["VaultOwnerId"] = self.vaultOwnerId!
        }
        if self.vaultRegionId != nil {
            map["VaultRegionId"] = self.vaultRegionId!
        }
        if self.vaultType != nil {
            map["VaultType"] = self.vaultType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Replication"] as? Bool {
            self.replication = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeVaultsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeVaultsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
        if let value = dict["VaultName"] as? String {
            self.vaultName = value
        }
        if let value = dict["VaultOwnerId"] as? Int64 {
            self.vaultOwnerId = value
        }
        if let value = dict["VaultRegionId"] as? String {
            self.vaultRegionId = value
        }
        if let value = dict["VaultType"] as? String {
            self.vaultType = value
        }
    }
}

public class DescribeVaultsResponseBody : Tea.TeaModel {
    public class Vaults : Tea.TeaModel {
        public class Vault : Tea.TeaModel {
            public class BackupPlanStatistics : Tea.TeaModel {
                public var archive: Int32?

                public var commonFileSystem: Int32?

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
                    if self.archive != nil {
                        map["Archive"] = self.archive!
                    }
                    if self.commonFileSystem != nil {
                        map["CommonFileSystem"] = self.commonFileSystem!
                    }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Archive"] as? Int32 {
                        self.archive = value
                    }
                    if let value = dict["CommonFileSystem"] as? Int32 {
                        self.commonFileSystem = value
                    }
                    if let value = dict["CommonNas"] as? Int32 {
                        self.commonNas = value
                    }
                    if let value = dict["Csg"] as? Int32 {
                        self.csg = value
                    }
                    if let value = dict["EcsFile"] as? Int32 {
                        self.ecsFile = value
                    }
                    if let value = dict["EcsHana"] as? Int32 {
                        self.ecsHana = value
                    }
                    if let value = dict["Isilon"] as? Int32 {
                        self.isilon = value
                    }
                    if let value = dict["LocalFile"] as? Int32 {
                        self.localFile = value
                    }
                    if let value = dict["LocalVm"] as? Int32 {
                        self.localVm = value
                    }
                    if let value = dict["MySql"] as? Int32 {
                        self.mySql = value
                    }
                    if let value = dict["Nas"] as? Int32 {
                        self.nas = value
                    }
                    if let value = dict["Oracle"] as? Int32 {
                        self.oracle = value
                    }
                    if let value = dict["Oss"] as? Int32 {
                        self.oss = value
                    }
                    if let value = dict["Ots"] as? Int32 {
                        self.ots = value
                    }
                    if let value = dict["SqlServer"] as? Int32 {
                        self.sqlServer = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HistoricalReplicationProgress"] as? Int32 {
                        self.historicalReplicationProgress = value
                    }
                    if let value = dict["NewReplicationProgress"] as? Int64 {
                        self.newReplicationProgress = value
                    }
                }
            }
            public class RsTargetAccountIds : Tea.TeaModel {
                public var rsTargetAccountId: [Int64]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rsTargetAccountId != nil {
                        map["RsTargetAccountId"] = self.rsTargetAccountId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RsTargetAccountId"] as? [Int64] {
                        self.rsTargetAccountId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SourceType"] as? [String] {
                        self.sourceType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeVaultsResponseBody.Vaults.Vault.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVaultsResponseBody.Vaults.Vault.Tags.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["KeepAfterTrialExpiration"] as? Bool {
                        self.keepAfterTrialExpiration = value
                    }
                    if let value = dict["TrialExpireTime"] as? Int64 {
                        self.trialExpireTime = value
                    }
                    if let value = dict["TrialStartTime"] as? Int64 {
                        self.trialStartTime = value
                    }
                    if let value = dict["TrialVaultReleaseTime"] as? Int64 {
                        self.trialVaultReleaseTime = value
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

            public var replicationSourceOwnerId: Int64?

            public var replicationSourceRegionId: String?

            public var replicationSourceVault: Bool?

            public var replicationSourceVaultId: String?

            public var replicationStatus: String?

            public var replicationTargetOwnerId: Int64?

            public var replicationTargetRegionId: String?

            public var replicationTargetVaultId: String?

            public var resourceGroupId: String?

            public var retention: Int64?

            public var rsTargetAccountIds: DescribeVaultsResponseBody.Vaults.Vault.RsTargetAccountIds?

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

            public var vaultOwnerId: Int64?

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
                try self.rsTargetAccountIds?.validate()
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
                if self.replicationSourceOwnerId != nil {
                    map["ReplicationSourceOwnerId"] = self.replicationSourceOwnerId!
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
                if self.replicationStatus != nil {
                    map["ReplicationStatus"] = self.replicationStatus!
                }
                if self.replicationTargetOwnerId != nil {
                    map["ReplicationTargetOwnerId"] = self.replicationTargetOwnerId!
                }
                if self.replicationTargetRegionId != nil {
                    map["ReplicationTargetRegionId"] = self.replicationTargetRegionId!
                }
                if self.replicationTargetVaultId != nil {
                    map["ReplicationTargetVaultId"] = self.replicationTargetVaultId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.retention != nil {
                    map["Retention"] = self.retention!
                }
                if self.rsTargetAccountIds != nil {
                    map["RsTargetAccountIds"] = self.rsTargetAccountIds?.toMap()
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
                if self.vaultOwnerId != nil {
                    map["VaultOwnerId"] = self.vaultOwnerId!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveBytesDone"] as? Int64 {
                    self.archiveBytesDone = value
                }
                if let value = dict["ArchiveStorageSize"] as? Int64 {
                    self.archiveStorageSize = value
                }
                if let value = dict["BackupPlanStatistics"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.BackupPlanStatistics()
                    model.fromMap(value)
                    self.backupPlanStatistics = model
                }
                if let value = dict["BucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["BytesDone"] as? Int64 {
                    self.bytesDone = value
                }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["ChargedStorageSize"] as? Int64 {
                    self.chargedStorageSize = value
                }
                if let value = dict["CompressionAlgorithm"] as? String {
                    self.compressionAlgorithm = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Dedup"] as? Bool {
                    self.dedup = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EncryptType"] as? String {
                    self.encryptType = value
                }
                if let value = dict["IndexAvailable"] as? Bool {
                    self.indexAvailable = value
                }
                if let value = dict["IndexLevel"] as? String {
                    self.indexLevel = value
                }
                if let value = dict["IndexUpdateTime"] as? Int64 {
                    self.indexUpdateTime = value
                }
                if let value = dict["KmsKeyId"] as? String {
                    self.kmsKeyId = value
                }
                if let value = dict["LatestReplicationTime"] as? Int64 {
                    self.latestReplicationTime = value
                }
                if let value = dict["RedundancyType"] as? String {
                    self.redundancyType = value
                }
                if let value = dict["Replication"] as? Bool {
                    self.replication = value
                }
                if let value = dict["ReplicationProgress"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.ReplicationProgress()
                    model.fromMap(value)
                    self.replicationProgress = model
                }
                if let value = dict["ReplicationSourceOwnerId"] as? Int64 {
                    self.replicationSourceOwnerId = value
                }
                if let value = dict["ReplicationSourceRegionId"] as? String {
                    self.replicationSourceRegionId = value
                }
                if let value = dict["ReplicationSourceVault"] as? Bool {
                    self.replicationSourceVault = value
                }
                if let value = dict["ReplicationSourceVaultId"] as? String {
                    self.replicationSourceVaultId = value
                }
                if let value = dict["ReplicationStatus"] as? String {
                    self.replicationStatus = value
                }
                if let value = dict["ReplicationTargetOwnerId"] as? Int64 {
                    self.replicationTargetOwnerId = value
                }
                if let value = dict["ReplicationTargetRegionId"] as? String {
                    self.replicationTargetRegionId = value
                }
                if let value = dict["ReplicationTargetVaultId"] as? String {
                    self.replicationTargetVaultId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["RsTargetAccountIds"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.RsTargetAccountIds()
                    model.fromMap(value)
                    self.rsTargetAccountIds = model
                }
                if let value = dict["SearchEnabled"] as? Bool {
                    self.searchEnabled = value
                }
                if let value = dict["SnapshotCount"] as? Int64 {
                    self.snapshotCount = value
                }
                if let value = dict["SourceTypes"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.SourceTypes()
                    model.fromMap(value)
                    self.sourceTypes = model
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageSize"] as? Int64 {
                    self.storageSize = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["TrialInfo"] as? [String: Any?] {
                    var model = DescribeVaultsResponseBody.Vaults.Vault.TrialInfo()
                    model.fromMap(value)
                    self.trialInfo = model
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
                }
                if let value = dict["VaultName"] as? String {
                    self.vaultName = value
                }
                if let value = dict["VaultOwnerId"] as? Int64 {
                    self.vaultOwnerId = value
                }
                if let value = dict["VaultRegionId"] as? String {
                    self.vaultRegionId = value
                }
                if let value = dict["VaultStatusMessage"] as? String {
                    self.vaultStatusMessage = value
                }
                if let value = dict["VaultStorageClass"] as? String {
                    self.vaultStorageClass = value
                }
                if let value = dict["VaultType"] as? String {
                    self.vaultType = value
                }
                if let value = dict["WormEnabled"] as? Bool {
                    self.wormEnabled = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Vault"] as? [Any?] {
                var tmp : [DescribeVaultsResponseBody.Vaults.Vault] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVaultsResponseBody.Vaults.Vault()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Vaults"] as? [String: Any?] {
            var model = DescribeVaultsResponseBody.Vaults()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVaultsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachNasFileSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableBackupPlanRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableHanaBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableBackupPlanRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableHanaBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteBackupPlanRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecutePolicyV2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["RequireBasePolicy"] as? Bool {
            self.requireBasePolicy = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateRamPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TempFileKey"] as? String {
            self.tempFileKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTempFileDownloadLinkResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? [String: Any] {
            self.instanceIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ValidInstance"] as? Bool {
                self.validInstance = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceStatuses"] as? [Any?] {
            var tmp : [InstallBackupClientsResponseBody.InstanceStatuses] = []
            for v in value {
                if v != nil {
                    var model = InstallBackupClientsResponseBody.InstanceStatuses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatuses = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InstallBackupClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProtectedResourcesRequest : Tea.TeaModel {
    public var createdByProduct: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var skip: Int32?

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
        if self.createdByProduct != nil {
            map["CreatedByProduct"] = self.createdByProduct!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedByProduct"] as? String {
            self.createdByProduct = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ListProtectedResourcesResponseBody : Tea.TeaModel {
    public class ProtectedResources : Tea.TeaModel {
        public var createdByProduct: String?

        public var protectedDataSize: Int64?

        public var protectedResourceId: String?

        public var resourceId: String?

        public var resourceOwnerId: Int64?

        public var snapshotCount: Int64?

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
            if self.createdByProduct != nil {
                map["CreatedByProduct"] = self.createdByProduct!
            }
            if self.protectedDataSize != nil {
                map["ProtectedDataSize"] = self.protectedDataSize!
            }
            if self.protectedResourceId != nil {
                map["ProtectedResourceId"] = self.protectedResourceId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceOwnerId != nil {
                map["ResourceOwnerId"] = self.resourceOwnerId!
            }
            if self.snapshotCount != nil {
                map["SnapshotCount"] = self.snapshotCount!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedByProduct"] as? String {
                self.createdByProduct = value
            }
            if let value = dict["ProtectedDataSize"] as? Int64 {
                self.protectedDataSize = value
            }
            if let value = dict["ProtectedResourceId"] as? String {
                self.protectedResourceId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceOwnerId"] as? Int64 {
                self.resourceOwnerId = value
            }
            if let value = dict["SnapshotCount"] as? Int64 {
                self.snapshotCount = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var protectedResources: [ListProtectedResourcesResponseBody.ProtectedResources]?

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
        if self.protectedResources != nil {
            var tmp : [Any] = []
            for k in self.protectedResources! {
                tmp.append(k.toMap())
            }
            map["ProtectedResources"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProtectedResources"] as? [Any?] {
            var tmp : [ListProtectedResourcesResponseBody.ProtectedResources] = []
            for v in value {
                if v != nil {
                    var model = ListProtectedResourcesResponseBody.ProtectedResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protectedResources = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProtectedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProtectedResourcesResponseBody?

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
            var model = ListProtectedResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenHbrServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchHistoricalSnapshotsRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Query"] as? [Any] {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SearchHistoricalSnapshotsShrinkRequest : Tea.TeaModel {
    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? [String] {
                        self.path = value
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

            public var protectedDataSize: Int64?

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
                if self.protectedDataSize != nil {
                    map["ProtectedDataSize"] = self.protectedDataSize!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualBytes"] as? Int64 {
                    self.actualBytes = value
                }
                if let value = dict["ActualItems"] as? Int64 {
                    self.actualItems = value
                }
                if let value = dict["ArchiveTime"] as? Int64 {
                    self.archiveTime = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["Bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["BytesDone"] as? Int64 {
                    self.bytesDone = value
                }
                if let value = dict["BytesTotal"] as? Int64 {
                    self.bytesTotal = value
                }
                if let value = dict["ClientId"] as? String {
                    self.clientId = value
                }
                if let value = dict["CompleteTime"] as? Int64 {
                    self.completeTime = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["ErrorFile"] as? String {
                    self.errorFile = value
                }
                if let value = dict["Exclude"] as? String {
                    self.exclude = value
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["Include"] as? String {
                    self.include = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["ItemsDone"] as? Int64 {
                    self.itemsDone = value
                }
                if let value = dict["ItemsTotal"] as? Int64 {
                    self.itemsTotal = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["ParentSnapshotHash"] as? String {
                    self.parentSnapshotHash = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Paths"] as? [String: Any?] {
                    var model = SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot.Paths()
                    model.fromMap(value)
                    self.paths = model
                }
                if let value = dict["Prefix"] as? String {
                    self.prefix_ = value
                }
                if let value = dict["ProtectedDataSize"] as? Int64 {
                    self.protectedDataSize = value
                }
                if let value = dict["RangeEnd"] as? Int64 {
                    self.rangeEnd = value
                }
                if let value = dict["RangeStart"] as? Int64 {
                    self.rangeStart = value
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["SnapshotHash"] as? String {
                    self.snapshotHash = value
                }
                if let value = dict["SnapshotId"] as? String {
                    self.snapshotId = value
                }
                if let value = dict["SourceParentSnapshotHash"] as? String {
                    self.sourceParentSnapshotHash = value
                }
                if let value = dict["SourceSnapshotHash"] as? String {
                    self.sourceSnapshotHash = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageClass"] as? String {
                    self.storageClass = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["UseCommonNas"] as? Bool {
                    self.useCommonNas = value
                }
                if let value = dict["VaultId"] as? String {
                    self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Snapshot"] as? [Any?] {
                var tmp : [SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot] = []
                for v in value {
                    if v != nil {
                        var model = SearchHistoricalSnapshotsResponseBody.Snapshots.Snapshot()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [String: Any?] {
            var model = SearchHistoricalSnapshotsResponseBody.Snapshots()
            model.fromMap(value)
            self.snapshots = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchHistoricalSnapshotsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartHanaDatabaseAsyncResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopHanaDatabaseAsyncResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? [String: Any] {
            self.clientIds = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? [String: Any] {
            self.instanceIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIdsShrink = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ValidInstance"] as? Bool {
                self.validInstance = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceStatuses"] as? [Any?] {
            var tmp : [UninstallBackupClientsResponseBody.InstanceStatuses] = []
            for v in value {
                if v != nil {
                    var model = UninstallBackupClientsResponseBody.InstanceStatuses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatuses = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UninstallBackupClientsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UninstallClientResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DestinationRegionId"] as? String {
                self.destinationRegionId = value
            }
            if let value = dict["DestinationRetention"] as? Int64 {
                self.destinationRetention = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["DoCopy"] as? Bool {
                self.doCopy = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
        }
    }
    public var changeListPath: String?

    public var detail: [String: Any]?

    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeListPath"] as? String {
            self.changeListPath = value
        }
        if let value = dict["Detail"] as? [String: Any] {
            self.detail = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["KeepLatestSnapshots"] as? Int64 {
            self.keepLatestSnapshots = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? [String: Any?] {
            var model = OtsDetail()
            model.fromMap(value)
            self.otsDetail = model
        }
        if let value = dict["Path"] as? [String] {
            self.path = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["Rule"] as? [Any?] {
            var tmp : [UpdateBackupPlanRequest.Rule] = []
            for v in value {
                if v != nil {
                    var model = UpdateBackupPlanRequest.Rule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rule = tmp
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["UpdatePaths"] as? Bool {
            self.updatePaths = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DestinationRegionId"] as? String {
                self.destinationRegionId = value
            }
            if let value = dict["DestinationRetention"] as? Int64 {
                self.destinationRetention = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["DoCopy"] as? Bool {
                self.doCopy = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
        }
    }
    public var changeListPath: String?

    public var detailShrink: String?

    public var edition: String?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeListPath"] as? String {
            self.changeListPath = value
        }
        if let value = dict["Detail"] as? String {
            self.detailShrink = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["KeepLatestSnapshots"] as? Int64 {
            self.keepLatestSnapshots = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OtsDetail"] as? String {
            self.otsDetailShrink = value
        }
        if let value = dict["Path"] as? [String] {
            self.path = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Retention"] as? Int64 {
            self.retention = value
        }
        if let value = dict["Rule"] as? [Any?] {
            var tmp : [UpdateBackupPlanShrinkRequest.Rule] = []
            for v in value {
                if v != nil {
                    var model = UpdateBackupPlanShrinkRequest.Rule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rule = tmp
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
        if let value = dict["UpdatePaths"] as? Bool {
            self.updatePaths = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertOnPartialComplete"] as? Bool {
            self.alertOnPartialComplete = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DataNetworkType"] as? String {
            self.dataNetworkType = value
        }
        if let value = dict["DataProxySetting"] as? String {
            self.dataProxySetting = value
        }
        if let value = dict["MaxCpuCore"] as? Int32 {
            self.maxCpuCore = value
        }
        if let value = dict["MaxMemory"] as? Int64 {
            self.maxMemory = value
        }
        if let value = dict["MaxWorker"] as? Int32 {
            self.maxWorker = value
        }
        if let value = dict["ProxyHost"] as? String {
            self.proxyHost = value
        }
        if let value = dict["ProxyPassword"] as? String {
            self.proxyPassword = value
        }
        if let value = dict["ProxyPort"] as? Int32 {
            self.proxyPort = value
        }
        if let value = dict["ProxyUser"] as? String {
            self.proxyUser = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["UseHttps"] as? Bool {
            self.useHttps = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateClientSettingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["RenewToken"] as? Bool {
            self.renewToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["TokenUpdated"] as? Bool {
            self.tokenUpdated = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateContainerClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPrefix"] as? String {
            self.backupPrefix = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["PlanName"] as? String {
            self.planName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHanaBackupPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogBackupParameterFile"] as? String {
            self.catalogBackupParameterFile = value
        }
        if let value = dict["CatalogBackupUsingBackint"] as? Bool {
            self.catalogBackupUsingBackint = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DataBackupParameterFile"] as? String {
            self.dataBackupParameterFile = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["EnableAutoLogBackup"] as? Bool {
            self.enableAutoLogBackup = value
        }
        if let value = dict["LogBackupParameterFile"] as? String {
            self.logBackupParameterFile = value
        }
        if let value = dict["LogBackupTimeout"] as? Int64 {
            self.logBackupTimeout = value
        }
        if let value = dict["LogBackupUsingBackint"] as? Bool {
            self.logBackupUsingBackint = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHanaBackupSettingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertSetting"] as? String {
            self.alertSetting = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["HanaName"] as? String {
            self.hanaName = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceNumber"] as? Int32 {
            self.instanceNumber = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["UseSsl"] as? Bool {
            self.useSsl = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["ValidateCertificate"] as? Bool {
            self.validateCertificate = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHanaInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["RetentionDays"] as? Int64 {
            self.retentionDays = value
        }
        if let value = dict["Schedule"] as? String {
            self.schedule = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateHanaRetentionSettingResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FetchSliceSize"] as? Int64 {
                    self.fetchSliceSize = value
                }
                if let value = dict["FullOnIncrementFail"] as? Bool {
                    self.fullOnIncrementFail = value
                }
            }
        }
        public class OssDetail : Tea.TeaModel {
            public var ignoreArchiveObject: Bool?

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
                if self.ignoreArchiveObject != nil {
                    map["IgnoreArchiveObject"] = self.ignoreArchiveObject!
                }
                if self.inventoryCleanupPolicy != nil {
                    map["InventoryCleanupPolicy"] = self.inventoryCleanupPolicy!
                }
                if self.inventoryId != nil {
                    map["InventoryId"] = self.inventoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IgnoreArchiveObject"] as? Bool {
                    self.ignoreArchiveObject = value
                }
                if let value = dict["InventoryCleanupPolicy"] as? String {
                    self.inventoryCleanupPolicy = value
                }
                if let value = dict["InventoryId"] as? String {
                    self.inventoryId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppConsistent"] as? Bool {
                    self.appConsistent = value
                }
                if let value = dict["DiskIdList"] as? [String] {
                    self.diskIdList = value
                }
                if let value = dict["EnableFsFreeze"] as? Bool {
                    self.enableFsFreeze = value
                }
                if let value = dict["EnableWriters"] as? Bool {
                    self.enableWriters = value
                }
                if let value = dict["ExcludeDiskIdList"] as? [String] {
                    self.excludeDiskIdList = value
                }
                if let value = dict["PostScriptPath"] as? String {
                    self.postScriptPath = value
                }
                if let value = dict["PreScriptPath"] as? String {
                    self.preScriptPath = value
                }
                if let value = dict["RamRoleName"] as? String {
                    self.ramRoleName = value
                }
                if let value = dict["SnapshotGroup"] as? Bool {
                    self.snapshotGroup = value
                }
                if let value = dict["TimeoutInSeconds"] as? Int64 {
                    self.timeoutInSeconds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommonFileSystemDetail"] as? [String: Any?] {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.CommonFileSystemDetail()
                model.fromMap(value)
                self.commonFileSystemDetail = model
            }
            if let value = dict["OssDetail"] as? [String: Any?] {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.OssDetail()
                model.fromMap(value)
                self.ossDetail = model
            }
            if let value = dict["UdmDetail"] as? [String: Any?] {
                var model = UpdatePolicyBindingRequest.AdvancedOptions.UdmDetail()
                model.fromMap(value)
                self.udmDetail = model
            }
        }
    }
    public var advancedOptions: UpdatePolicyBindingRequest.AdvancedOptions?

    public var dataSourceId: String?

    public var disabled: Bool?

    public var exclude: String?

    public var include: String?

    public var policyBindingDescription: String?

    public var policyId: String?

    public var source: String?

    public var sourceType: String?

    public var speedLimit: String?

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
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.policyBindingDescription != nil {
            map["PolicyBindingDescription"] = self.policyBindingDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvancedOptions"] as? [String: Any?] {
            var model = UpdatePolicyBindingRequest.AdvancedOptions()
            model.fromMap(value)
            self.advancedOptions = model
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["PolicyBindingDescription"] as? String {
            self.policyBindingDescription = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
        }
    }
}

public class UpdatePolicyBindingShrinkRequest : Tea.TeaModel {
    public var advancedOptionsShrink: String?

    public var dataSourceId: String?

    public var disabled: Bool?

    public var exclude: String?

    public var include: String?

    public var policyBindingDescription: String?

    public var policyId: String?

    public var source: String?

    public var sourceType: String?

    public var speedLimit: String?

    public override init() {
        super.init()
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
        if self.exclude != nil {
            map["Exclude"] = self.exclude!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.policyBindingDescription != nil {
            map["PolicyBindingDescription"] = self.policyBindingDescription!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.speedLimit != nil {
            map["SpeedLimit"] = self.speedLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvancedOptions"] as? String {
            self.advancedOptionsShrink = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Exclude"] as? String {
            self.exclude = value
        }
        if let value = dict["Include"] as? String {
            self.include = value
        }
        if let value = dict["PolicyBindingDescription"] as? String {
            self.policyBindingDescription = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SpeedLimit"] as? String {
            self.speedLimit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePolicyBindingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolicyV2Request : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class DataSourceFilters : Tea.TeaModel {
            public var dataSourceIds: [String]?

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
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataSourceIds"] as? [String] {
                    self.dataSourceIds = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdvancedRetentionType"] as? String {
                    self.advancedRetentionType = value
                }
                if let value = dict["Retention"] as? Int64 {
                    self.retention = value
                }
                if let value = dict["WhichSnapshot"] as? Int64 {
                    self.whichSnapshot = value
                }
            }
        }
        public class TagFilters : Tea.TeaModel {
            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var archiveDays: Int64?

        public var backupType: String?

        public var coldArchiveDays: Int64?

        public var dataSourceFilters: [UpdatePolicyV2Request.Rules.DataSourceFilters]?

        public var immutable: Bool?

        public var keepLatestSnapshots: Int64?

        public var replicationRegionId: String?

        public var retention: Int64?

        public var retentionRules: [UpdatePolicyV2Request.Rules.RetentionRules]?

        public var ruleId: String?

        public var ruleType: String?

        public var schedule: String?

        public var tagFilters: [UpdatePolicyV2Request.Rules.TagFilters]?

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
            if self.coldArchiveDays != nil {
                map["ColdArchiveDays"] = self.coldArchiveDays!
            }
            if self.dataSourceFilters != nil {
                var tmp : [Any] = []
                for k in self.dataSourceFilters! {
                    tmp.append(k.toMap())
                }
                map["DataSourceFilters"] = tmp
            }
            if self.immutable != nil {
                map["Immutable"] = self.immutable!
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
            if self.tagFilters != nil {
                var tmp : [Any] = []
                for k in self.tagFilters! {
                    tmp.append(k.toMap())
                }
                map["TagFilters"] = tmp
            }
            if self.vaultId != nil {
                map["VaultId"] = self.vaultId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchiveDays"] as? Int64 {
                self.archiveDays = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["ColdArchiveDays"] as? Int64 {
                self.coldArchiveDays = value
            }
            if let value = dict["DataSourceFilters"] as? [Any?] {
                var tmp : [UpdatePolicyV2Request.Rules.DataSourceFilters] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePolicyV2Request.Rules.DataSourceFilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceFilters = tmp
            }
            if let value = dict["Immutable"] as? Bool {
                self.immutable = value
            }
            if let value = dict["KeepLatestSnapshots"] as? Int64 {
                self.keepLatestSnapshots = value
            }
            if let value = dict["ReplicationRegionId"] as? String {
                self.replicationRegionId = value
            }
            if let value = dict["Retention"] as? Int64 {
                self.retention = value
            }
            if let value = dict["RetentionRules"] as? [Any?] {
                var tmp : [UpdatePolicyV2Request.Rules.RetentionRules] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePolicyV2Request.Rules.RetentionRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.retentionRules = tmp
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
            if let value = dict["TagFilters"] as? [Any?] {
                var tmp : [UpdatePolicyV2Request.Rules.TagFilters] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePolicyV2Request.Rules.TagFilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagFilters = tmp
            }
            if let value = dict["VaultId"] as? String {
                self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [UpdatePolicyV2Request.Rules] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyV2Request.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDescription"] as? String {
            self.policyDescription = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Rules"] as? String {
            self.rulesShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePolicyV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var resourceGroupId: String?

    public var vaultId: String?

    public var vaultName: String?

    public var wormEnabled: Bool?

    public override init() {
        super.init()
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
        if self.wormEnabled != nil {
            map["WormEnabled"] = self.wormEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
        }
        if let value = dict["VaultName"] as? String {
            self.vaultName = value
        }
        if let value = dict["WormEnabled"] as? Bool {
            self.wormEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateVaultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? [String: Any] {
            self.clientIds = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? [String: Any] {
            self.instanceIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIds"] as? String {
            self.clientIdsShrink = value
        }
        if let value = dict["CrossAccountRoleName"] as? String {
            self.crossAccountRoleName = value
        }
        if let value = dict["CrossAccountType"] as? String {
            self.crossAccountType = value
        }
        if let value = dict["CrossAccountUserId"] as? Int64 {
            self.crossAccountUserId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ValidInstance"] as? Bool {
                self.validInstance = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceStatuses"] as? [Any?] {
            var tmp : [UpgradeBackupClientsResponseBody.InstanceStatuses] = []
            for v in value {
                if v != nil {
                    var model = UpgradeBackupClientsResponseBody.InstanceStatuses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatuses = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeBackupClientsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VaultId"] as? String {
            self.vaultId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
