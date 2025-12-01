import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfigureBackupPlanRequest : Tea.TeaModel {
    public var autoStartBackup: Bool?

    public var backupGatewayId: Int64?

    public var backupLogIntervalSeconds: Int32?

    public var backupObjects: String?

    public var backupPeriod: String?

    public var backupPlanId: String?

    public var backupPlanName: String?

    public var backupRateLimit: Int64?

    public var backupRetentionPeriod: Int32?

    public var backupSpeedLimit: Int64?

    public var backupStartTime: String?

    public var backupStorageType: String?

    public var backupStrategyType: String?

    public var clientToken: String?

    public var crossAliyunId: String?

    public var crossRoleName: String?

    public var duplicationArchivePeriod: Int32?

    public var duplicationInfrequentAccessPeriod: Int32?

    public var enableBackupLog: Bool?

    public var OSSBucketName: String?

    public var ownerId: String?

    public var resourceGroupId: String?

    public var sourceEndpointDatabaseName: String?

    public var sourceEndpointIP: String?

    public var sourceEndpointInstanceID: String?

    public var sourceEndpointInstanceType: String?

    public var sourceEndpointOracleSID: String?

    public var sourceEndpointPassword: String?

    public var sourceEndpointPort: Int32?

    public var sourceEndpointRegion: String?

    public var sourceEndpointUserName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoStartBackup != nil {
            map["AutoStartBackup"] = self.autoStartBackup!
        }
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.backupLogIntervalSeconds != nil {
            map["BackupLogIntervalSeconds"] = self.backupLogIntervalSeconds!
        }
        if self.backupObjects != nil {
            map["BackupObjects"] = self.backupObjects!
        }
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupPlanName != nil {
            map["BackupPlanName"] = self.backupPlanName!
        }
        if self.backupRateLimit != nil {
            map["BackupRateLimit"] = self.backupRateLimit!
        }
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.backupSpeedLimit != nil {
            map["BackupSpeedLimit"] = self.backupSpeedLimit!
        }
        if self.backupStartTime != nil {
            map["BackupStartTime"] = self.backupStartTime!
        }
        if self.backupStorageType != nil {
            map["BackupStorageType"] = self.backupStorageType!
        }
        if self.backupStrategyType != nil {
            map["BackupStrategyType"] = self.backupStrategyType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossAliyunId != nil {
            map["CrossAliyunId"] = self.crossAliyunId!
        }
        if self.crossRoleName != nil {
            map["CrossRoleName"] = self.crossRoleName!
        }
        if self.duplicationArchivePeriod != nil {
            map["DuplicationArchivePeriod"] = self.duplicationArchivePeriod!
        }
        if self.duplicationInfrequentAccessPeriod != nil {
            map["DuplicationInfrequentAccessPeriod"] = self.duplicationInfrequentAccessPeriod!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.OSSBucketName != nil {
            map["OSSBucketName"] = self.OSSBucketName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceEndpointDatabaseName != nil {
            map["SourceEndpointDatabaseName"] = self.sourceEndpointDatabaseName!
        }
        if self.sourceEndpointIP != nil {
            map["SourceEndpointIP"] = self.sourceEndpointIP!
        }
        if self.sourceEndpointInstanceID != nil {
            map["SourceEndpointInstanceID"] = self.sourceEndpointInstanceID!
        }
        if self.sourceEndpointInstanceType != nil {
            map["SourceEndpointInstanceType"] = self.sourceEndpointInstanceType!
        }
        if self.sourceEndpointOracleSID != nil {
            map["SourceEndpointOracleSID"] = self.sourceEndpointOracleSID!
        }
        if self.sourceEndpointPassword != nil {
            map["SourceEndpointPassword"] = self.sourceEndpointPassword!
        }
        if self.sourceEndpointPort != nil {
            map["SourceEndpointPort"] = self.sourceEndpointPort!
        }
        if self.sourceEndpointRegion != nil {
            map["SourceEndpointRegion"] = self.sourceEndpointRegion!
        }
        if self.sourceEndpointUserName != nil {
            map["SourceEndpointUserName"] = self.sourceEndpointUserName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoStartBackup"] as? Bool {
            self.autoStartBackup = value
        }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["BackupLogIntervalSeconds"] as? Int32 {
            self.backupLogIntervalSeconds = value
        }
        if let value = dict["BackupObjects"] as? String {
            self.backupObjects = value
        }
        if let value = dict["BackupPeriod"] as? String {
            self.backupPeriod = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupPlanName"] as? String {
            self.backupPlanName = value
        }
        if let value = dict["BackupRateLimit"] as? Int64 {
            self.backupRateLimit = value
        }
        if let value = dict["BackupRetentionPeriod"] as? Int32 {
            self.backupRetentionPeriod = value
        }
        if let value = dict["BackupSpeedLimit"] as? Int64 {
            self.backupSpeedLimit = value
        }
        if let value = dict["BackupStartTime"] as? String {
            self.backupStartTime = value
        }
        if let value = dict["BackupStorageType"] as? String {
            self.backupStorageType = value
        }
        if let value = dict["BackupStrategyType"] as? String {
            self.backupStrategyType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossAliyunId"] as? String {
            self.crossAliyunId = value
        }
        if let value = dict["CrossRoleName"] as? String {
            self.crossRoleName = value
        }
        if let value = dict["DuplicationArchivePeriod"] as? Int32 {
            self.duplicationArchivePeriod = value
        }
        if let value = dict["DuplicationInfrequentAccessPeriod"] as? Int32 {
            self.duplicationInfrequentAccessPeriod = value
        }
        if let value = dict["EnableBackupLog"] as? Bool {
            self.enableBackupLog = value
        }
        if let value = dict["OSSBucketName"] as? String {
            self.OSSBucketName = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceEndpointDatabaseName"] as? String {
            self.sourceEndpointDatabaseName = value
        }
        if let value = dict["SourceEndpointIP"] as? String {
            self.sourceEndpointIP = value
        }
        if let value = dict["SourceEndpointInstanceID"] as? String {
            self.sourceEndpointInstanceID = value
        }
        if let value = dict["SourceEndpointInstanceType"] as? String {
            self.sourceEndpointInstanceType = value
        }
        if let value = dict["SourceEndpointOracleSID"] as? String {
            self.sourceEndpointOracleSID = value
        }
        if let value = dict["SourceEndpointPassword"] as? String {
            self.sourceEndpointPassword = value
        }
        if let value = dict["SourceEndpointPort"] as? Int32 {
            self.sourceEndpointPort = value
        }
        if let value = dict["SourceEndpointRegion"] as? String {
            self.sourceEndpointRegion = value
        }
        if let value = dict["SourceEndpointUserName"] as? String {
            self.sourceEndpointUserName = value
        }
    }
}

public class ConfigureBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ConfigureBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureBackupPlanResponseBody?

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
            var model = ConfigureBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAndStartBackupPlanRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var backupLogIntervalSeconds: Int32?

    public var backupMethod: String?

    public var backupObjects: String?

    public var backupPeriod: String?

    public var backupPlanId: String?

    public var backupPlanName: String?

    public var backupRateLimit: Int64?

    public var backupRetentionPeriod: Int32?

    public var backupSpeedLimit: Int64?

    public var backupStartTime: String?

    public var backupStorageType: String?

    public var backupStrategyType: String?

    public var clientToken: String?

    public var crossAliyunId: String?

    public var crossRoleName: String?

    public var databaseRegion: String?

    public var databaseType: String?

    public var duplicationArchivePeriod: Int32?

    public var duplicationInfrequentAccessPeriod: Int32?

    public var enableBackupLog: Bool?

    public var fromApp: String?

    public var instanceClass: String?

    public var instanceType: String?

    public var OSSBucketName: String?

    public var ownerId: String?

    public var payType: String?

    public var period: String?

    public var region: String?

    public var resourceGroupId: String?

    public var sourceEndpointDatabaseName: String?

    public var sourceEndpointIP: String?

    public var sourceEndpointInstanceID: String?

    public var sourceEndpointInstanceType: String?

    public var sourceEndpointOracleSID: String?

    public var sourceEndpointPassword: String?

    public var sourceEndpointPort: Int32?

    public var sourceEndpointRegion: String?

    public var sourceEndpointUserName: String?

    public var storageRegion: String?

    public var storageType: String?

    public var usedTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.backupLogIntervalSeconds != nil {
            map["BackupLogIntervalSeconds"] = self.backupLogIntervalSeconds!
        }
        if self.backupMethod != nil {
            map["BackupMethod"] = self.backupMethod!
        }
        if self.backupObjects != nil {
            map["BackupObjects"] = self.backupObjects!
        }
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupPlanName != nil {
            map["BackupPlanName"] = self.backupPlanName!
        }
        if self.backupRateLimit != nil {
            map["BackupRateLimit"] = self.backupRateLimit!
        }
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.backupSpeedLimit != nil {
            map["BackupSpeedLimit"] = self.backupSpeedLimit!
        }
        if self.backupStartTime != nil {
            map["BackupStartTime"] = self.backupStartTime!
        }
        if self.backupStorageType != nil {
            map["BackupStorageType"] = self.backupStorageType!
        }
        if self.backupStrategyType != nil {
            map["BackupStrategyType"] = self.backupStrategyType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossAliyunId != nil {
            map["CrossAliyunId"] = self.crossAliyunId!
        }
        if self.crossRoleName != nil {
            map["CrossRoleName"] = self.crossRoleName!
        }
        if self.databaseRegion != nil {
            map["DatabaseRegion"] = self.databaseRegion!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.duplicationArchivePeriod != nil {
            map["DuplicationArchivePeriod"] = self.duplicationArchivePeriod!
        }
        if self.duplicationInfrequentAccessPeriod != nil {
            map["DuplicationInfrequentAccessPeriod"] = self.duplicationInfrequentAccessPeriod!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.OSSBucketName != nil {
            map["OSSBucketName"] = self.OSSBucketName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceEndpointDatabaseName != nil {
            map["SourceEndpointDatabaseName"] = self.sourceEndpointDatabaseName!
        }
        if self.sourceEndpointIP != nil {
            map["SourceEndpointIP"] = self.sourceEndpointIP!
        }
        if self.sourceEndpointInstanceID != nil {
            map["SourceEndpointInstanceID"] = self.sourceEndpointInstanceID!
        }
        if self.sourceEndpointInstanceType != nil {
            map["SourceEndpointInstanceType"] = self.sourceEndpointInstanceType!
        }
        if self.sourceEndpointOracleSID != nil {
            map["SourceEndpointOracleSID"] = self.sourceEndpointOracleSID!
        }
        if self.sourceEndpointPassword != nil {
            map["SourceEndpointPassword"] = self.sourceEndpointPassword!
        }
        if self.sourceEndpointPort != nil {
            map["SourceEndpointPort"] = self.sourceEndpointPort!
        }
        if self.sourceEndpointRegion != nil {
            map["SourceEndpointRegion"] = self.sourceEndpointRegion!
        }
        if self.sourceEndpointUserName != nil {
            map["SourceEndpointUserName"] = self.sourceEndpointUserName!
        }
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["BackupLogIntervalSeconds"] as? Int32 {
            self.backupLogIntervalSeconds = value
        }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["BackupObjects"] as? String {
            self.backupObjects = value
        }
        if let value = dict["BackupPeriod"] as? String {
            self.backupPeriod = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupPlanName"] as? String {
            self.backupPlanName = value
        }
        if let value = dict["BackupRateLimit"] as? Int64 {
            self.backupRateLimit = value
        }
        if let value = dict["BackupRetentionPeriod"] as? Int32 {
            self.backupRetentionPeriod = value
        }
        if let value = dict["BackupSpeedLimit"] as? Int64 {
            self.backupSpeedLimit = value
        }
        if let value = dict["BackupStartTime"] as? String {
            self.backupStartTime = value
        }
        if let value = dict["BackupStorageType"] as? String {
            self.backupStorageType = value
        }
        if let value = dict["BackupStrategyType"] as? String {
            self.backupStrategyType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossAliyunId"] as? String {
            self.crossAliyunId = value
        }
        if let value = dict["CrossRoleName"] as? String {
            self.crossRoleName = value
        }
        if let value = dict["DatabaseRegion"] as? String {
            self.databaseRegion = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["DuplicationArchivePeriod"] as? Int32 {
            self.duplicationArchivePeriod = value
        }
        if let value = dict["DuplicationInfrequentAccessPeriod"] as? Int32 {
            self.duplicationInfrequentAccessPeriod = value
        }
        if let value = dict["EnableBackupLog"] as? Bool {
            self.enableBackupLog = value
        }
        if let value = dict["FromApp"] as? String {
            self.fromApp = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["OSSBucketName"] as? String {
            self.OSSBucketName = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceEndpointDatabaseName"] as? String {
            self.sourceEndpointDatabaseName = value
        }
        if let value = dict["SourceEndpointIP"] as? String {
            self.sourceEndpointIP = value
        }
        if let value = dict["SourceEndpointInstanceID"] as? String {
            self.sourceEndpointInstanceID = value
        }
        if let value = dict["SourceEndpointInstanceType"] as? String {
            self.sourceEndpointInstanceType = value
        }
        if let value = dict["SourceEndpointOracleSID"] as? String {
            self.sourceEndpointOracleSID = value
        }
        if let value = dict["SourceEndpointPassword"] as? String {
            self.sourceEndpointPassword = value
        }
        if let value = dict["SourceEndpointPort"] as? Int32 {
            self.sourceEndpointPort = value
        }
        if let value = dict["SourceEndpointRegion"] as? String {
            self.sourceEndpointRegion = value
        }
        if let value = dict["SourceEndpointUserName"] as? String {
            self.sourceEndpointUserName = value
        }
        if let value = dict["StorageRegion"] as? String {
            self.storageRegion = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
    }
}

public class CreateAndStartBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var createBackupSet: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var orderId: String?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.createBackupSet != nil {
            map["CreateBackupSet"] = self.createBackupSet!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["CreateBackupSet"] as? Bool {
            self.createBackupSet = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAndStartBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndStartBackupPlanResponseBody?

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
            var model = CreateAndStartBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackupPlanRequest : Tea.TeaModel {
    public var backupMethod: String?

    public var clientToken: String?

    public var databaseRegion: String?

    public var databaseType: String?

    public var fromApp: String?

    public var instanceClass: String?

    public var instanceType: String?

    public var ownerId: String?

    public var payType: String?

    public var period: String?

    public var region: String?

    public var resourceGroupId: String?

    public var storageRegion: String?

    public var storageType: String?

    public var usedTime: Int32?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseRegion != nil {
            map["DatabaseRegion"] = self.databaseRegion!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupMethod"] as? String {
            self.backupMethod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseRegion"] as? String {
            self.databaseRegion = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["FromApp"] as? String {
            self.fromApp = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StorageRegion"] as? String {
            self.storageRegion = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
    }
}

public class CreateBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var orderId: String?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
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

public class CreateFullBackupSetDownloadRequest : Tea.TeaModel {
    public var backupSetDataFormat: String?

    public var backupSetId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSetDataFormat != nil {
            map["BackupSetDataFormat"] = self.backupSetDataFormat!
        }
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetDataFormat"] as? String {
            self.backupSetDataFormat = value
        }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class CreateFullBackupSetDownloadResponseBody : Tea.TeaModel {
    public var backupSetDownloadTaskId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupSetDownloadTaskId != nil {
            map["BackupSetDownloadTaskId"] = self.backupSetDownloadTaskId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupSetDownloadTaskId"] as? String {
            self.backupSetDownloadTaskId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateFullBackupSetDownloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFullBackupSetDownloadResponseBody?

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
            var model = CreateFullBackupSetDownloadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGetDBListFromAgentTaskRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var clientToken: String?

    public var databaseType: String?

    public var ownerId: String?

    public var sourceEndpointIP: String?

    public var sourceEndpointPort: Int32?

    public var sourceEndpointRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceEndpointIP != nil {
            map["SourceEndpointIP"] = self.sourceEndpointIP!
        }
        if self.sourceEndpointPort != nil {
            map["SourceEndpointPort"] = self.sourceEndpointPort!
        }
        if self.sourceEndpointRegion != nil {
            map["SourceEndpointRegion"] = self.sourceEndpointRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceEndpointIP"] as? String {
            self.sourceEndpointIP = value
        }
        if let value = dict["SourceEndpointPort"] as? Int32 {
            self.sourceEndpointPort = value
        }
        if let value = dict["SourceEndpointRegion"] as? String {
            self.sourceEndpointRegion = value
        }
    }
}

public class CreateGetDBListFromAgentTaskResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class CreateGetDBListFromAgentTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGetDBListFromAgentTaskResponseBody?

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
            var model = CreateGetDBListFromAgentTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIncrementBackupSetDownloadRequest : Tea.TeaModel {
    public var backupSetDataFormat: String?

    public var backupSetId: String?

    public var backupSetName: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSetDataFormat != nil {
            map["BackupSetDataFormat"] = self.backupSetDataFormat!
        }
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.backupSetName != nil {
            map["BackupSetName"] = self.backupSetName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetDataFormat"] as? String {
            self.backupSetDataFormat = value
        }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["BackupSetName"] as? String {
            self.backupSetName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class CreateIncrementBackupSetDownloadResponseBody : Tea.TeaModel {
    public var backupSetDownloadTaskId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupSetDownloadTaskId != nil {
            map["BackupSetDownloadTaskId"] = self.backupSetDownloadTaskId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupSetDownloadTaskId"] as? String {
            self.backupSetDownloadTaskId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateIncrementBackupSetDownloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIncrementBackupSetDownloadResponseBody?

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
            var model = CreateIncrementBackupSetDownloadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRestoreTaskRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var backupPlanId: String?

    public var backupSetId: String?

    public var clientToken: String?

    public var crossAliyunId: String?

    public var crossRoleName: String?

    public var destinationEndpointDatabaseName: String?

    public var destinationEndpointIP: String?

    public var destinationEndpointInstanceID: String?

    public var destinationEndpointInstanceType: String?

    public var destinationEndpointOracleSID: String?

    public var destinationEndpointPassword: String?

    public var destinationEndpointPort: Int32?

    public var destinationEndpointRegion: String?

    public var destinationEndpointUserName: String?

    public var duplicateConflict: String?

    public var ownerId: String?

    public var restoreDir: String?

    public var restoreHome: String?

    public var restoreObjects: String?

    public var restoreTaskName: String?

    public var restoreTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossAliyunId != nil {
            map["CrossAliyunId"] = self.crossAliyunId!
        }
        if self.crossRoleName != nil {
            map["CrossRoleName"] = self.crossRoleName!
        }
        if self.destinationEndpointDatabaseName != nil {
            map["DestinationEndpointDatabaseName"] = self.destinationEndpointDatabaseName!
        }
        if self.destinationEndpointIP != nil {
            map["DestinationEndpointIP"] = self.destinationEndpointIP!
        }
        if self.destinationEndpointInstanceID != nil {
            map["DestinationEndpointInstanceID"] = self.destinationEndpointInstanceID!
        }
        if self.destinationEndpointInstanceType != nil {
            map["DestinationEndpointInstanceType"] = self.destinationEndpointInstanceType!
        }
        if self.destinationEndpointOracleSID != nil {
            map["DestinationEndpointOracleSID"] = self.destinationEndpointOracleSID!
        }
        if self.destinationEndpointPassword != nil {
            map["DestinationEndpointPassword"] = self.destinationEndpointPassword!
        }
        if self.destinationEndpointPort != nil {
            map["DestinationEndpointPort"] = self.destinationEndpointPort!
        }
        if self.destinationEndpointRegion != nil {
            map["DestinationEndpointRegion"] = self.destinationEndpointRegion!
        }
        if self.destinationEndpointUserName != nil {
            map["DestinationEndpointUserName"] = self.destinationEndpointUserName!
        }
        if self.duplicateConflict != nil {
            map["DuplicateConflict"] = self.duplicateConflict!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.restoreDir != nil {
            map["RestoreDir"] = self.restoreDir!
        }
        if self.restoreHome != nil {
            map["RestoreHome"] = self.restoreHome!
        }
        if self.restoreObjects != nil {
            map["RestoreObjects"] = self.restoreObjects!
        }
        if self.restoreTaskName != nil {
            map["RestoreTaskName"] = self.restoreTaskName!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossAliyunId"] as? String {
            self.crossAliyunId = value
        }
        if let value = dict["CrossRoleName"] as? String {
            self.crossRoleName = value
        }
        if let value = dict["DestinationEndpointDatabaseName"] as? String {
            self.destinationEndpointDatabaseName = value
        }
        if let value = dict["DestinationEndpointIP"] as? String {
            self.destinationEndpointIP = value
        }
        if let value = dict["DestinationEndpointInstanceID"] as? String {
            self.destinationEndpointInstanceID = value
        }
        if let value = dict["DestinationEndpointInstanceType"] as? String {
            self.destinationEndpointInstanceType = value
        }
        if let value = dict["DestinationEndpointOracleSID"] as? String {
            self.destinationEndpointOracleSID = value
        }
        if let value = dict["DestinationEndpointPassword"] as? String {
            self.destinationEndpointPassword = value
        }
        if let value = dict["DestinationEndpointPort"] as? Int32 {
            self.destinationEndpointPort = value
        }
        if let value = dict["DestinationEndpointRegion"] as? String {
            self.destinationEndpointRegion = value
        }
        if let value = dict["DestinationEndpointUserName"] as? String {
            self.destinationEndpointUserName = value
        }
        if let value = dict["DuplicateConflict"] as? String {
            self.duplicateConflict = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RestoreDir"] as? String {
            self.restoreDir = value
        }
        if let value = dict["RestoreHome"] as? String {
            self.restoreHome = value
        }
        if let value = dict["RestoreObjects"] as? String {
            self.restoreObjects = value
        }
        if let value = dict["RestoreTaskName"] as? String {
            self.restoreTaskName = value
        }
        if let value = dict["RestoreTime"] as? Int64 {
            self.restoreTime = value
        }
    }
}

public class CreateRestoreTaskResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var restoreTaskId: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateRestoreTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRestoreTaskResponseBody?

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
            var model = CreateRestoreTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupGatewayListRequest : Tea.TeaModel {
    public var clientToken: String?

    public var identifier: String?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var region: String?

    public override init() {
        super.init()
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
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
    }
}

public class DescribeBackupGatewayListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class BackupGateway : Tea.TeaModel {
            public var backupGatewayCreateTime: Int64?

            public var backupGatewayId: String?

            public var backupGatewayStatus: String?

            public var displayName: String?

            public var identifier: String?

            public var lastHeartbeatTime: Int64?

            public var region: String?

            public var sourceEndpointHostname: String?

            public var sourceEndpointInternetIP: String?

            public var sourceEndpointIntranetIP: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupGatewayCreateTime != nil {
                    map["BackupGatewayCreateTime"] = self.backupGatewayCreateTime!
                }
                if self.backupGatewayId != nil {
                    map["BackupGatewayId"] = self.backupGatewayId!
                }
                if self.backupGatewayStatus != nil {
                    map["BackupGatewayStatus"] = self.backupGatewayStatus!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.identifier != nil {
                    map["Identifier"] = self.identifier!
                }
                if self.lastHeartbeatTime != nil {
                    map["LastHeartbeatTime"] = self.lastHeartbeatTime!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.sourceEndpointHostname != nil {
                    map["SourceEndpointHostname"] = self.sourceEndpointHostname!
                }
                if self.sourceEndpointInternetIP != nil {
                    map["SourceEndpointInternetIP"] = self.sourceEndpointInternetIP!
                }
                if self.sourceEndpointIntranetIP != nil {
                    map["SourceEndpointIntranetIP"] = self.sourceEndpointIntranetIP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupGatewayCreateTime"] as? Int64 {
                    self.backupGatewayCreateTime = value
                }
                if let value = dict["BackupGatewayId"] as? String {
                    self.backupGatewayId = value
                }
                if let value = dict["BackupGatewayStatus"] as? String {
                    self.backupGatewayStatus = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Identifier"] as? String {
                    self.identifier = value
                }
                if let value = dict["LastHeartbeatTime"] as? Int64 {
                    self.lastHeartbeatTime = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
                if let value = dict["SourceEndpointHostname"] as? String {
                    self.sourceEndpointHostname = value
                }
                if let value = dict["SourceEndpointInternetIP"] as? String {
                    self.sourceEndpointInternetIP = value
                }
                if let value = dict["SourceEndpointIntranetIP"] as? String {
                    self.sourceEndpointIntranetIP = value
                }
            }
        }
        public var backupGateway: [DescribeBackupGatewayListResponseBody.Items.BackupGateway]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupGateway != nil {
                var tmp : [Any] = []
                for k in self.backupGateway! {
                    tmp.append(k.toMap())
                }
                map["BackupGateway"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupGateway"] as? [Any?] {
                var tmp : [DescribeBackupGatewayListResponseBody.Items.BackupGateway] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupGatewayListResponseBody.Items.BackupGateway()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backupGateway = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeBackupGatewayListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeBackupGatewayListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeBackupGatewayListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupGatewayListResponseBody?

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
            var model = DescribeBackupGatewayListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPlanBillingRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public var showStorageType: Bool?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.showStorageType != nil {
            map["ShowStorageType"] = self.showStorageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ShowStorageType"] as? Bool {
            self.showStorageType = value
        }
    }
}

public class DescribeBackupPlanBillingResponseBody : Tea.TeaModel {
    public class Item : Tea.TeaModel {
        public var buyChargeType: String?

        public var buyCreateTimestamp: Int64?

        public var buyExpiredTimestamp: Int64?

        public var buySpec: String?

        public var contStorageSize: Int64?

        public var fullStorageSize: Int64?

        public var isExpired: Bool?

        public var isFreeBytesUnlimited: Bool?

        public var paiedBytes: Int64?

        public var quotaEndTimestamp: Int64?

        public var quotaStartTimestamp: Int64?

        public var totalFreeBytes: Int64?

        public var usedFullBytes: Int64?

        public var usedIncrementBytes: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buyChargeType != nil {
                map["BuyChargeType"] = self.buyChargeType!
            }
            if self.buyCreateTimestamp != nil {
                map["BuyCreateTimestamp"] = self.buyCreateTimestamp!
            }
            if self.buyExpiredTimestamp != nil {
                map["BuyExpiredTimestamp"] = self.buyExpiredTimestamp!
            }
            if self.buySpec != nil {
                map["BuySpec"] = self.buySpec!
            }
            if self.contStorageSize != nil {
                map["ContStorageSize"] = self.contStorageSize!
            }
            if self.fullStorageSize != nil {
                map["FullStorageSize"] = self.fullStorageSize!
            }
            if self.isExpired != nil {
                map["IsExpired"] = self.isExpired!
            }
            if self.isFreeBytesUnlimited != nil {
                map["IsFreeBytesUnlimited"] = self.isFreeBytesUnlimited!
            }
            if self.paiedBytes != nil {
                map["PaiedBytes"] = self.paiedBytes!
            }
            if self.quotaEndTimestamp != nil {
                map["QuotaEndTimestamp"] = self.quotaEndTimestamp!
            }
            if self.quotaStartTimestamp != nil {
                map["QuotaStartTimestamp"] = self.quotaStartTimestamp!
            }
            if self.totalFreeBytes != nil {
                map["TotalFreeBytes"] = self.totalFreeBytes!
            }
            if self.usedFullBytes != nil {
                map["UsedFullBytes"] = self.usedFullBytes!
            }
            if self.usedIncrementBytes != nil {
                map["UsedIncrementBytes"] = self.usedIncrementBytes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuyChargeType"] as? String {
                self.buyChargeType = value
            }
            if let value = dict["BuyCreateTimestamp"] as? Int64 {
                self.buyCreateTimestamp = value
            }
            if let value = dict["BuyExpiredTimestamp"] as? Int64 {
                self.buyExpiredTimestamp = value
            }
            if let value = dict["BuySpec"] as? String {
                self.buySpec = value
            }
            if let value = dict["ContStorageSize"] as? Int64 {
                self.contStorageSize = value
            }
            if let value = dict["FullStorageSize"] as? Int64 {
                self.fullStorageSize = value
            }
            if let value = dict["IsExpired"] as? Bool {
                self.isExpired = value
            }
            if let value = dict["IsFreeBytesUnlimited"] as? Bool {
                self.isFreeBytesUnlimited = value
            }
            if let value = dict["PaiedBytes"] as? Int64 {
                self.paiedBytes = value
            }
            if let value = dict["QuotaEndTimestamp"] as? Int64 {
                self.quotaEndTimestamp = value
            }
            if let value = dict["QuotaStartTimestamp"] as? Int64 {
                self.quotaStartTimestamp = value
            }
            if let value = dict["TotalFreeBytes"] as? Int64 {
                self.totalFreeBytes = value
            }
            if let value = dict["UsedFullBytes"] as? Int64 {
                self.usedFullBytes = value
            }
            if let value = dict["UsedIncrementBytes"] as? Int64 {
                self.usedIncrementBytes = value
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var item: DescribeBackupPlanBillingResponseBody.Item?

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
        try self.item?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.item != nil {
            map["Item"] = self.item?.toMap()
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Item"] as? [String: Any?] {
            var model = DescribeBackupPlanBillingResponseBody.Item()
            model.fromMap(value)
            self.item = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupPlanBillingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPlanBillingResponseBody?

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
            var model = DescribeBackupPlanBillingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPlanListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupPlanName: String?

    public var backupPlanStatus: String?

    public var clientToken: String?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.backupPlanName != nil {
            map["BackupPlanName"] = self.backupPlanName!
        }
        if self.backupPlanStatus != nil {
            map["BackupPlanStatus"] = self.backupPlanStatus!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupPlanName"] as? String {
            self.backupPlanName = value
        }
        if let value = dict["BackupPlanStatus"] as? String {
            self.backupPlanStatus = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeBackupPlanListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class BackupPlanDetail : Tea.TeaModel {
            public var backupGatewayId: Int64?

            public var backupMethod: String?

            public var backupObjects: String?

            public var backupPeriod: String?

            public var backupPlanCreateTime: Int64?

            public var backupPlanId: String?

            public var backupPlanName: String?

            public var backupPlanStatus: String?

            public var backupRetentionPeriod: Int32?

            public var backupSetDownloadDir: String?

            public var backupSetDownloadFullDataFormat: String?

            public var backupSetDownloadGatewayId: Int64?

            public var backupSetDownloadIncrementDataFormat: String?

            public var backupSetDownloadTargetType: String?

            public var backupStartTime: String?

            public var backupStorageType: String?

            public var beginTimestampForRestore: Int64?

            public var crossAliyunId: String?

            public var crossRoleName: String?

            public var databaseType: String?

            public var duplicationArchivePeriod: Int32?

            public var duplicationInfrequentAccessPeriod: Int32?

            public var enableBackupLog: Bool?

            public var endTimestampForRestore: Int64?

            public var errMessage: String?

            public var instanceClass: String?

            public var OSSBucketName: String?

            public var OSSBucketRegion: String?

            public var openBackupSetAutoDownload: Bool?

            public var resourceGroupId: String?

            public var sourceEndpointDatabaseName: String?

            public var sourceEndpointInstanceID: String?

            public var sourceEndpointInstanceType: String?

            public var sourceEndpointIpPort: String?

            public var sourceEndpointOracleSID: String?

            public var sourceEndpointRegion: String?

            public var sourceEndpointUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupGatewayId != nil {
                    map["BackupGatewayId"] = self.backupGatewayId!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupObjects != nil {
                    map["BackupObjects"] = self.backupObjects!
                }
                if self.backupPeriod != nil {
                    map["BackupPeriod"] = self.backupPeriod!
                }
                if self.backupPlanCreateTime != nil {
                    map["BackupPlanCreateTime"] = self.backupPlanCreateTime!
                }
                if self.backupPlanId != nil {
                    map["BackupPlanId"] = self.backupPlanId!
                }
                if self.backupPlanName != nil {
                    map["BackupPlanName"] = self.backupPlanName!
                }
                if self.backupPlanStatus != nil {
                    map["BackupPlanStatus"] = self.backupPlanStatus!
                }
                if self.backupRetentionPeriod != nil {
                    map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
                }
                if self.backupSetDownloadDir != nil {
                    map["BackupSetDownloadDir"] = self.backupSetDownloadDir!
                }
                if self.backupSetDownloadFullDataFormat != nil {
                    map["BackupSetDownloadFullDataFormat"] = self.backupSetDownloadFullDataFormat!
                }
                if self.backupSetDownloadGatewayId != nil {
                    map["BackupSetDownloadGatewayId"] = self.backupSetDownloadGatewayId!
                }
                if self.backupSetDownloadIncrementDataFormat != nil {
                    map["BackupSetDownloadIncrementDataFormat"] = self.backupSetDownloadIncrementDataFormat!
                }
                if self.backupSetDownloadTargetType != nil {
                    map["BackupSetDownloadTargetType"] = self.backupSetDownloadTargetType!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupStorageType != nil {
                    map["BackupStorageType"] = self.backupStorageType!
                }
                if self.beginTimestampForRestore != nil {
                    map["BeginTimestampForRestore"] = self.beginTimestampForRestore!
                }
                if self.crossAliyunId != nil {
                    map["CrossAliyunId"] = self.crossAliyunId!
                }
                if self.crossRoleName != nil {
                    map["CrossRoleName"] = self.crossRoleName!
                }
                if self.databaseType != nil {
                    map["DatabaseType"] = self.databaseType!
                }
                if self.duplicationArchivePeriod != nil {
                    map["DuplicationArchivePeriod"] = self.duplicationArchivePeriod!
                }
                if self.duplicationInfrequentAccessPeriod != nil {
                    map["DuplicationInfrequentAccessPeriod"] = self.duplicationInfrequentAccessPeriod!
                }
                if self.enableBackupLog != nil {
                    map["EnableBackupLog"] = self.enableBackupLog!
                }
                if self.endTimestampForRestore != nil {
                    map["EndTimestampForRestore"] = self.endTimestampForRestore!
                }
                if self.errMessage != nil {
                    map["ErrMessage"] = self.errMessage!
                }
                if self.instanceClass != nil {
                    map["InstanceClass"] = self.instanceClass!
                }
                if self.OSSBucketName != nil {
                    map["OSSBucketName"] = self.OSSBucketName!
                }
                if self.OSSBucketRegion != nil {
                    map["OSSBucketRegion"] = self.OSSBucketRegion!
                }
                if self.openBackupSetAutoDownload != nil {
                    map["OpenBackupSetAutoDownload"] = self.openBackupSetAutoDownload!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.sourceEndpointDatabaseName != nil {
                    map["SourceEndpointDatabaseName"] = self.sourceEndpointDatabaseName!
                }
                if self.sourceEndpointInstanceID != nil {
                    map["SourceEndpointInstanceID"] = self.sourceEndpointInstanceID!
                }
                if self.sourceEndpointInstanceType != nil {
                    map["SourceEndpointInstanceType"] = self.sourceEndpointInstanceType!
                }
                if self.sourceEndpointIpPort != nil {
                    map["SourceEndpointIpPort"] = self.sourceEndpointIpPort!
                }
                if self.sourceEndpointOracleSID != nil {
                    map["SourceEndpointOracleSID"] = self.sourceEndpointOracleSID!
                }
                if self.sourceEndpointRegion != nil {
                    map["SourceEndpointRegion"] = self.sourceEndpointRegion!
                }
                if self.sourceEndpointUserName != nil {
                    map["SourceEndpointUserName"] = self.sourceEndpointUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupGatewayId"] as? Int64 {
                    self.backupGatewayId = value
                }
                if let value = dict["BackupMethod"] as? String {
                    self.backupMethod = value
                }
                if let value = dict["BackupObjects"] as? String {
                    self.backupObjects = value
                }
                if let value = dict["BackupPeriod"] as? String {
                    self.backupPeriod = value
                }
                if let value = dict["BackupPlanCreateTime"] as? Int64 {
                    self.backupPlanCreateTime = value
                }
                if let value = dict["BackupPlanId"] as? String {
                    self.backupPlanId = value
                }
                if let value = dict["BackupPlanName"] as? String {
                    self.backupPlanName = value
                }
                if let value = dict["BackupPlanStatus"] as? String {
                    self.backupPlanStatus = value
                }
                if let value = dict["BackupRetentionPeriod"] as? Int32 {
                    self.backupRetentionPeriod = value
                }
                if let value = dict["BackupSetDownloadDir"] as? String {
                    self.backupSetDownloadDir = value
                }
                if let value = dict["BackupSetDownloadFullDataFormat"] as? String {
                    self.backupSetDownloadFullDataFormat = value
                }
                if let value = dict["BackupSetDownloadGatewayId"] as? Int64 {
                    self.backupSetDownloadGatewayId = value
                }
                if let value = dict["BackupSetDownloadIncrementDataFormat"] as? String {
                    self.backupSetDownloadIncrementDataFormat = value
                }
                if let value = dict["BackupSetDownloadTargetType"] as? String {
                    self.backupSetDownloadTargetType = value
                }
                if let value = dict["BackupStartTime"] as? String {
                    self.backupStartTime = value
                }
                if let value = dict["BackupStorageType"] as? String {
                    self.backupStorageType = value
                }
                if let value = dict["BeginTimestampForRestore"] as? Int64 {
                    self.beginTimestampForRestore = value
                }
                if let value = dict["CrossAliyunId"] as? String {
                    self.crossAliyunId = value
                }
                if let value = dict["CrossRoleName"] as? String {
                    self.crossRoleName = value
                }
                if let value = dict["DatabaseType"] as? String {
                    self.databaseType = value
                }
                if let value = dict["DuplicationArchivePeriod"] as? Int32 {
                    self.duplicationArchivePeriod = value
                }
                if let value = dict["DuplicationInfrequentAccessPeriod"] as? Int32 {
                    self.duplicationInfrequentAccessPeriod = value
                }
                if let value = dict["EnableBackupLog"] as? Bool {
                    self.enableBackupLog = value
                }
                if let value = dict["EndTimestampForRestore"] as? Int64 {
                    self.endTimestampForRestore = value
                }
                if let value = dict["ErrMessage"] as? String {
                    self.errMessage = value
                }
                if let value = dict["InstanceClass"] as? String {
                    self.instanceClass = value
                }
                if let value = dict["OSSBucketName"] as? String {
                    self.OSSBucketName = value
                }
                if let value = dict["OSSBucketRegion"] as? String {
                    self.OSSBucketRegion = value
                }
                if let value = dict["OpenBackupSetAutoDownload"] as? Bool {
                    self.openBackupSetAutoDownload = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SourceEndpointDatabaseName"] as? String {
                    self.sourceEndpointDatabaseName = value
                }
                if let value = dict["SourceEndpointInstanceID"] as? String {
                    self.sourceEndpointInstanceID = value
                }
                if let value = dict["SourceEndpointInstanceType"] as? String {
                    self.sourceEndpointInstanceType = value
                }
                if let value = dict["SourceEndpointIpPort"] as? String {
                    self.sourceEndpointIpPort = value
                }
                if let value = dict["SourceEndpointOracleSID"] as? String {
                    self.sourceEndpointOracleSID = value
                }
                if let value = dict["SourceEndpointRegion"] as? String {
                    self.sourceEndpointRegion = value
                }
                if let value = dict["SourceEndpointUserName"] as? String {
                    self.sourceEndpointUserName = value
                }
            }
        }
        public var backupPlanDetail: [DescribeBackupPlanListResponseBody.Items.BackupPlanDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupPlanDetail != nil {
                var tmp : [Any] = []
                for k in self.backupPlanDetail! {
                    tmp.append(k.toMap())
                }
                map["BackupPlanDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupPlanDetail"] as? [Any?] {
                var tmp : [DescribeBackupPlanListResponseBody.Items.BackupPlanDetail] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupPlanListResponseBody.Items.BackupPlanDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backupPlanDetail = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeBackupPlanListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeBackupPlanListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeBackupPlanListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPlanListResponseBody?

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
            var model = DescribeBackupPlanListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupSetDownloadTaskListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupSetDownloadTaskId: String?

    public var clientToken: String?

    public var ownerId: String?

    public var pageNum: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupSetDownloadTaskId != nil {
            map["BackupSetDownloadTaskId"] = self.backupSetDownloadTaskId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["BackupSetDownloadTaskId"] as? String {
            self.backupSetDownloadTaskId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeBackupSetDownloadTaskListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class BackupSetDownloadTaskDetail : Tea.TeaModel {
            public var backupGatewayId: Int64?

            public var backupPlanId: String?

            public var backupSetCode: String?

            public var backupSetDataFormat: String?

            public var backupSetDataSize: Int64?

            public var backupSetDbType: String?

            public var backupSetDownloadCreateTime: Int64?

            public var backupSetDownloadDir: String?

            public var backupSetDownloadFinishTime: Int64?

            public var backupSetDownloadInternetUrl: String?

            public var backupSetDownloadIntranetUrl: String?

            public var backupSetDownloadStatus: String?

            public var backupSetDownloadTargetType: String?

            public var backupSetDownloadTaskId: String?

            public var backupSetDownloadTaskName: String?

            public var backupSetDownloadWay: String?

            public var backupSetId: String?

            public var backupSetJobType: String?

            public var errMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupGatewayId != nil {
                    map["BackupGatewayId"] = self.backupGatewayId!
                }
                if self.backupPlanId != nil {
                    map["BackupPlanId"] = self.backupPlanId!
                }
                if self.backupSetCode != nil {
                    map["BackupSetCode"] = self.backupSetCode!
                }
                if self.backupSetDataFormat != nil {
                    map["BackupSetDataFormat"] = self.backupSetDataFormat!
                }
                if self.backupSetDataSize != nil {
                    map["BackupSetDataSize"] = self.backupSetDataSize!
                }
                if self.backupSetDbType != nil {
                    map["BackupSetDbType"] = self.backupSetDbType!
                }
                if self.backupSetDownloadCreateTime != nil {
                    map["BackupSetDownloadCreateTime"] = self.backupSetDownloadCreateTime!
                }
                if self.backupSetDownloadDir != nil {
                    map["BackupSetDownloadDir"] = self.backupSetDownloadDir!
                }
                if self.backupSetDownloadFinishTime != nil {
                    map["BackupSetDownloadFinishTime"] = self.backupSetDownloadFinishTime!
                }
                if self.backupSetDownloadInternetUrl != nil {
                    map["BackupSetDownloadInternetUrl"] = self.backupSetDownloadInternetUrl!
                }
                if self.backupSetDownloadIntranetUrl != nil {
                    map["BackupSetDownloadIntranetUrl"] = self.backupSetDownloadIntranetUrl!
                }
                if self.backupSetDownloadStatus != nil {
                    map["BackupSetDownloadStatus"] = self.backupSetDownloadStatus!
                }
                if self.backupSetDownloadTargetType != nil {
                    map["BackupSetDownloadTargetType"] = self.backupSetDownloadTargetType!
                }
                if self.backupSetDownloadTaskId != nil {
                    map["BackupSetDownloadTaskId"] = self.backupSetDownloadTaskId!
                }
                if self.backupSetDownloadTaskName != nil {
                    map["BackupSetDownloadTaskName"] = self.backupSetDownloadTaskName!
                }
                if self.backupSetDownloadWay != nil {
                    map["BackupSetDownloadWay"] = self.backupSetDownloadWay!
                }
                if self.backupSetId != nil {
                    map["BackupSetId"] = self.backupSetId!
                }
                if self.backupSetJobType != nil {
                    map["BackupSetJobType"] = self.backupSetJobType!
                }
                if self.errMessage != nil {
                    map["ErrMessage"] = self.errMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupGatewayId"] as? Int64 {
                    self.backupGatewayId = value
                }
                if let value = dict["BackupPlanId"] as? String {
                    self.backupPlanId = value
                }
                if let value = dict["BackupSetCode"] as? String {
                    self.backupSetCode = value
                }
                if let value = dict["BackupSetDataFormat"] as? String {
                    self.backupSetDataFormat = value
                }
                if let value = dict["BackupSetDataSize"] as? Int64 {
                    self.backupSetDataSize = value
                }
                if let value = dict["BackupSetDbType"] as? String {
                    self.backupSetDbType = value
                }
                if let value = dict["BackupSetDownloadCreateTime"] as? Int64 {
                    self.backupSetDownloadCreateTime = value
                }
                if let value = dict["BackupSetDownloadDir"] as? String {
                    self.backupSetDownloadDir = value
                }
                if let value = dict["BackupSetDownloadFinishTime"] as? Int64 {
                    self.backupSetDownloadFinishTime = value
                }
                if let value = dict["BackupSetDownloadInternetUrl"] as? String {
                    self.backupSetDownloadInternetUrl = value
                }
                if let value = dict["BackupSetDownloadIntranetUrl"] as? String {
                    self.backupSetDownloadIntranetUrl = value
                }
                if let value = dict["BackupSetDownloadStatus"] as? String {
                    self.backupSetDownloadStatus = value
                }
                if let value = dict["BackupSetDownloadTargetType"] as? String {
                    self.backupSetDownloadTargetType = value
                }
                if let value = dict["BackupSetDownloadTaskId"] as? String {
                    self.backupSetDownloadTaskId = value
                }
                if let value = dict["BackupSetDownloadTaskName"] as? String {
                    self.backupSetDownloadTaskName = value
                }
                if let value = dict["BackupSetDownloadWay"] as? String {
                    self.backupSetDownloadWay = value
                }
                if let value = dict["BackupSetId"] as? String {
                    self.backupSetId = value
                }
                if let value = dict["BackupSetJobType"] as? String {
                    self.backupSetJobType = value
                }
                if let value = dict["ErrMessage"] as? String {
                    self.errMessage = value
                }
            }
        }
        public var backupSetDownloadTaskDetail: [DescribeBackupSetDownloadTaskListResponseBody.Items.BackupSetDownloadTaskDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupSetDownloadTaskDetail != nil {
                var tmp : [Any] = []
                for k in self.backupSetDownloadTaskDetail! {
                    tmp.append(k.toMap())
                }
                map["BackupSetDownloadTaskDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupSetDownloadTaskDetail"] as? [Any?] {
                var tmp : [DescribeBackupSetDownloadTaskListResponseBody.Items.BackupSetDownloadTaskDetail] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupSetDownloadTaskListResponseBody.Items.BackupSetDownloadTaskDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backupSetDownloadTaskDetail = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeBackupSetDownloadTaskListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeBackupSetDownloadTaskListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeBackupSetDownloadTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupSetDownloadTaskListResponseBody?

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
            var model = DescribeBackupSetDownloadTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDLAServiceRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class DescribeDLAServiceResponseBody : Tea.TeaModel {
    public var autoAdd: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var haveJobFailed: Bool?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var state: String?

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
        if self.autoAdd != nil {
            map["AutoAdd"] = self.autoAdd!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.haveJobFailed != nil {
            map["HaveJobFailed"] = self.haveJobFailed!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoAdd"] as? Bool {
            self.autoAdd = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HaveJobFailed"] as? Bool {
            self.haveJobFailed = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDLAServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDLAServiceResponseBody?

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
            var model = DescribeDLAServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFullBackupListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupSetId: String?

    public var clientToken: String?

    public var endTimestamp: Int64?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var showStorageType: Bool?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.showStorageType != nil {
            map["ShowStorageType"] = self.showStorageType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ShowStorageType"] as? Bool {
            self.showStorageType = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class DescribeFullBackupListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class FullBackupFile : Tea.TeaModel {
            public var backupObjects: String?

            public var backupSetExpiredTime: Int64?

            public var backupSetId: String?

            public var backupSize: Int64?

            public var backupStatus: String?

            public var createTime: Int64?

            public var endTime: Int64?

            public var errMessage: String?

            public var finishTime: Int64?

            public var sourceEndpointIpPort: String?

            public var startTime: Int64?

            public var storageMethod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupObjects != nil {
                    map["BackupObjects"] = self.backupObjects!
                }
                if self.backupSetExpiredTime != nil {
                    map["BackupSetExpiredTime"] = self.backupSetExpiredTime!
                }
                if self.backupSetId != nil {
                    map["BackupSetId"] = self.backupSetId!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.errMessage != nil {
                    map["ErrMessage"] = self.errMessage!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.sourceEndpointIpPort != nil {
                    map["SourceEndpointIpPort"] = self.sourceEndpointIpPort!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.storageMethod != nil {
                    map["StorageMethod"] = self.storageMethod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupObjects"] as? String {
                    self.backupObjects = value
                }
                if let value = dict["BackupSetExpiredTime"] as? Int64 {
                    self.backupSetExpiredTime = value
                }
                if let value = dict["BackupSetId"] as? String {
                    self.backupSetId = value
                }
                if let value = dict["BackupSize"] as? Int64 {
                    self.backupSize = value
                }
                if let value = dict["BackupStatus"] as? String {
                    self.backupStatus = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["ErrMessage"] as? String {
                    self.errMessage = value
                }
                if let value = dict["FinishTime"] as? Int64 {
                    self.finishTime = value
                }
                if let value = dict["SourceEndpointIpPort"] as? String {
                    self.sourceEndpointIpPort = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["StorageMethod"] as? String {
                    self.storageMethod = value
                }
            }
        }
        public var fullBackupFile: [DescribeFullBackupListResponseBody.Items.FullBackupFile]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fullBackupFile != nil {
                var tmp : [Any] = []
                for k in self.fullBackupFile! {
                    tmp.append(k.toMap())
                }
                map["FullBackupFile"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FullBackupFile"] as? [Any?] {
                var tmp : [DescribeFullBackupListResponseBody.Items.FullBackupFile] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFullBackupListResponseBody.Items.FullBackupFile()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fullBackupFile = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeFullBackupListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeFullBackupListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeFullBackupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFullBackupListResponseBody?

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
            var model = DescribeFullBackupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIncrementBackupListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var endTimestamp: Int64?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var showStorageType: Bool?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.showStorageType != nil {
            map["ShowStorageType"] = self.showStorageType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ShowStorageType"] as? Bool {
            self.showStorageType = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class DescribeIncrementBackupListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class IncrementBackupFile : Tea.TeaModel {
            public var backupSetExpiredTime: Int64?

            public var backupSetId: String?

            public var backupSetJobId: String?

            public var backupSize: Int64?

            public var backupStatus: String?

            public var endTime: Int64?

            public var sourceEndpointIpPort: String?

            public var startTime: Int64?

            public var storageMethod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupSetExpiredTime != nil {
                    map["BackupSetExpiredTime"] = self.backupSetExpiredTime!
                }
                if self.backupSetId != nil {
                    map["BackupSetId"] = self.backupSetId!
                }
                if self.backupSetJobId != nil {
                    map["BackupSetJobId"] = self.backupSetJobId!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.sourceEndpointIpPort != nil {
                    map["SourceEndpointIpPort"] = self.sourceEndpointIpPort!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.storageMethod != nil {
                    map["StorageMethod"] = self.storageMethod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupSetExpiredTime"] as? Int64 {
                    self.backupSetExpiredTime = value
                }
                if let value = dict["BackupSetId"] as? String {
                    self.backupSetId = value
                }
                if let value = dict["BackupSetJobId"] as? String {
                    self.backupSetJobId = value
                }
                if let value = dict["BackupSize"] as? Int64 {
                    self.backupSize = value
                }
                if let value = dict["BackupStatus"] as? String {
                    self.backupStatus = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["SourceEndpointIpPort"] as? String {
                    self.sourceEndpointIpPort = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["StorageMethod"] as? String {
                    self.storageMethod = value
                }
            }
        }
        public var incrementBackupFile: [DescribeIncrementBackupListResponseBody.Items.IncrementBackupFile]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.incrementBackupFile != nil {
                var tmp : [Any] = []
                for k in self.incrementBackupFile! {
                    tmp.append(k.toMap())
                }
                map["IncrementBackupFile"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IncrementBackupFile"] as? [Any?] {
                var tmp : [DescribeIncrementBackupListResponseBody.Items.IncrementBackupFile] = []
                for v in value {
                    if v != nil {
                        var model = DescribeIncrementBackupListResponseBody.Items.IncrementBackupFile()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.incrementBackupFile = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeIncrementBackupListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeIncrementBackupListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeIncrementBackupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIncrementBackupListResponseBody?

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
            var model = DescribeIncrementBackupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeJobErrorCodeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var language: String?

    public var ownerId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribeJobErrorCodeResponseBody : Tea.TeaModel {
    public class Item : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var jobState: String?

        public var jobType: String?

        public var language: String?

        public override init() {
            super.init()
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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobState != nil {
                map["JobState"] = self.jobState!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobState"] as? String {
                self.jobState = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var item: DescribeJobErrorCodeResponseBody.Item?

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
        try self.item?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.item != nil {
            map["Item"] = self.item?.toMap()
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Item"] as? [String: Any?] {
            var model = DescribeJobErrorCodeResponseBody.Item()
            model.fromMap(value)
            self.item = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeJobErrorCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobErrorCodeResponseBody?

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
            var model = DescribeJobErrorCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNodeCidrListRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var region: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
    }
}

public class DescribeNodeCidrListResponseBody : Tea.TeaModel {
    public class InternetIPs : Tea.TeaModel {
        public var internetIP: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.internetIP != nil {
                map["InternetIP"] = self.internetIP!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InternetIP"] as? [String] {
                self.internetIP = value
            }
        }
    }
    public class IntranetIPs : Tea.TeaModel {
        public var intranetIP: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intranetIP != nil {
                map["IntranetIP"] = self.intranetIP!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntranetIP"] as? [String] {
                self.intranetIP = value
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var internetIPs: DescribeNodeCidrListResponseBody.InternetIPs?

    public var intranetIPs: DescribeNodeCidrListResponseBody.IntranetIPs?

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
        try self.internetIPs?.validate()
        try self.intranetIPs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.internetIPs != nil {
            map["InternetIPs"] = self.internetIPs?.toMap()
        }
        if self.intranetIPs != nil {
            map["IntranetIPs"] = self.intranetIPs?.toMap()
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InternetIPs"] as? [String: Any?] {
            var model = DescribeNodeCidrListResponseBody.InternetIPs()
            model.fromMap(value)
            self.internetIPs = model
        }
        if let value = dict["IntranetIPs"] as? [String: Any?] {
            var model = DescribeNodeCidrListResponseBody.IntranetIPs()
            model.fromMap(value)
            self.intranetIPs = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeNodeCidrListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeCidrListResponseBody?

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
            var model = DescribeNodeCidrListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePreCheckProgressListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public var restoreTaskId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
    }
}

public class DescribePreCheckProgressListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class PreCheckProgressDetail : Tea.TeaModel {
            public var bootTime: Int64?

            public var errMsg: String?

            public var finishTime: Int64?

            public var item: String?

            public var jobId: String?

            public var names: String?

            public var orderNum: String?

            public var state: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bootTime != nil {
                    map["BootTime"] = self.bootTime!
                }
                if self.errMsg != nil {
                    map["ErrMsg"] = self.errMsg!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.names != nil {
                    map["Names"] = self.names!
                }
                if self.orderNum != nil {
                    map["OrderNum"] = self.orderNum!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BootTime"] as? Int64 {
                    self.bootTime = value
                }
                if let value = dict["ErrMsg"] as? String {
                    self.errMsg = value
                }
                if let value = dict["FinishTime"] as? Int64 {
                    self.finishTime = value
                }
                if let value = dict["Item"] as? String {
                    self.item = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["Names"] as? String {
                    self.names = value
                }
                if let value = dict["OrderNum"] as? String {
                    self.orderNum = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var preCheckProgressDetail: [DescribePreCheckProgressListResponseBody.Items.PreCheckProgressDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.preCheckProgressDetail != nil {
                var tmp : [Any] = []
                for k in self.preCheckProgressDetail! {
                    tmp.append(k.toMap())
                }
                map["PreCheckProgressDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PreCheckProgressDetail"] as? [Any?] {
                var tmp : [DescribePreCheckProgressListResponseBody.Items.PreCheckProgressDetail] = []
                for v in value {
                    if v != nil {
                        var model = DescribePreCheckProgressListResponseBody.Items.PreCheckProgressDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preCheckProgressDetail = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribePreCheckProgressListResponseBody.Items?

    public var progress: Int32?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribePreCheckProgressListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribePreCheckProgressListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePreCheckProgressListResponseBody?

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
            var model = DescribePreCheckProgressListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionCode: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionCode != nil {
                map["RegionCode"] = self.regionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionCode"] as? [String] {
                self.regionCode = value
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DescribeRestoreRangeInfoRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var beginTimestampForRestore: Int64?

    public var clientToken: String?

    public var endTimestampForRestore: Int64?

    public var ownerId: String?

    public var recentlyRestore: Bool?

    public override init() {
        super.init()
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
        if self.beginTimestampForRestore != nil {
            map["BeginTimestampForRestore"] = self.beginTimestampForRestore!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endTimestampForRestore != nil {
            map["EndTimestampForRestore"] = self.endTimestampForRestore!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.recentlyRestore != nil {
            map["RecentlyRestore"] = self.recentlyRestore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BeginTimestampForRestore"] as? Int64 {
            self.beginTimestampForRestore = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EndTimestampForRestore"] as? Int64 {
            self.endTimestampForRestore = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RecentlyRestore"] as? Bool {
            self.recentlyRestore = value
        }
    }
}

public class DescribeRestoreRangeInfoResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBSRecoverRange : Tea.TeaModel {
            public class FullBackupList : Tea.TeaModel {
                public class FullBackupDetail : Tea.TeaModel {
                    public var backupSetId: String?

                    public var endTime: Int64?

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
                        if self.backupSetId != nil {
                            map["BackupSetId"] = self.backupSetId!
                        }
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BackupSetId"] as? String {
                            self.backupSetId = value
                        }
                        if let value = dict["EndTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["StartTime"] as? Int64 {
                            self.startTime = value
                        }
                    }
                }
                public var fullBackupDetail: [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList.FullBackupDetail]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fullBackupDetail != nil {
                        var tmp : [Any] = []
                        for k in self.fullBackupDetail! {
                            tmp.append(k.toMap())
                        }
                        map["FullBackupDetail"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FullBackupDetail"] as? [Any?] {
                        var tmp : [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList.FullBackupDetail] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList.FullBackupDetail()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.fullBackupDetail = tmp
                    }
                }
            }
            public var beginTimestampForRestore: Int64?

            public var endTimestampForRestore: Int64?

            public var fullBackupList: DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList?

            public var rangeType: String?

            public var sourceEndpointInstanceID: String?

            public var sourceEndpointInstanceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fullBackupList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginTimestampForRestore != nil {
                    map["BeginTimestampForRestore"] = self.beginTimestampForRestore!
                }
                if self.endTimestampForRestore != nil {
                    map["EndTimestampForRestore"] = self.endTimestampForRestore!
                }
                if self.fullBackupList != nil {
                    map["FullBackupList"] = self.fullBackupList?.toMap()
                }
                if self.rangeType != nil {
                    map["RangeType"] = self.rangeType!
                }
                if self.sourceEndpointInstanceID != nil {
                    map["SourceEndpointInstanceID"] = self.sourceEndpointInstanceID!
                }
                if self.sourceEndpointInstanceType != nil {
                    map["SourceEndpointInstanceType"] = self.sourceEndpointInstanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTimestampForRestore"] as? Int64 {
                    self.beginTimestampForRestore = value
                }
                if let value = dict["EndTimestampForRestore"] as? Int64 {
                    self.endTimestampForRestore = value
                }
                if let value = dict["FullBackupList"] as? [String: Any?] {
                    var model = DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList()
                    model.fromMap(value)
                    self.fullBackupList = model
                }
                if let value = dict["RangeType"] as? String {
                    self.rangeType = value
                }
                if let value = dict["SourceEndpointInstanceID"] as? String {
                    self.sourceEndpointInstanceID = value
                }
                if let value = dict["SourceEndpointInstanceType"] as? String {
                    self.sourceEndpointInstanceType = value
                }
            }
        }
        public var DBSRecoverRange: [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBSRecoverRange != nil {
                var tmp : [Any] = []
                for k in self.DBSRecoverRange! {
                    tmp.append(k.toMap())
                }
                map["DBSRecoverRange"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBSRecoverRange"] as? [Any?] {
                var tmp : [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBSRecoverRange = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeRestoreRangeInfoResponseBody.Items?

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
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeRestoreRangeInfoResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRestoreRangeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreRangeInfoResponseBody?

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
            var model = DescribeRestoreRangeInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreTaskListRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var endTimestamp: Int64?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var restoreTaskId: String?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class DescribeRestoreTaskListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class RestoreTaskDetail : Tea.TeaModel {
            public var backupGatewayId: Int64?

            public var backupPlanId: String?

            public var backupSetId: String?

            public var continuousRestoreProgress: Int32?

            public var crossAliyunId: String?

            public var crossRoleName: String?

            public var destinationEndpointDatabaseName: String?

            public var destinationEndpointInstanceID: String?

            public var destinationEndpointInstanceType: String?

            public var destinationEndpointIpPort: String?

            public var destinationEndpointOracleSID: String?

            public var destinationEndpointRegion: String?

            public var destinationEndpointUserName: String?

            public var errMessage: String?

            public var fullDataRestoreProgress: Int32?

            public var fullStruAfterRestoreProgress: Int32?

            public var fullStruforeRestoreProgress: Int32?

            public var restoreDir: String?

            public var restoreObjects: String?

            public var restoreStatus: String?

            public var restoreTaskCreateTime: Int64?

            public var restoreTaskFinishTime: Int64?

            public var restoreTaskId: String?

            public var restoreTaskName: String?

            public var restoreTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupGatewayId != nil {
                    map["BackupGatewayId"] = self.backupGatewayId!
                }
                if self.backupPlanId != nil {
                    map["BackupPlanId"] = self.backupPlanId!
                }
                if self.backupSetId != nil {
                    map["BackupSetId"] = self.backupSetId!
                }
                if self.continuousRestoreProgress != nil {
                    map["ContinuousRestoreProgress"] = self.continuousRestoreProgress!
                }
                if self.crossAliyunId != nil {
                    map["CrossAliyunId"] = self.crossAliyunId!
                }
                if self.crossRoleName != nil {
                    map["CrossRoleName"] = self.crossRoleName!
                }
                if self.destinationEndpointDatabaseName != nil {
                    map["DestinationEndpointDatabaseName"] = self.destinationEndpointDatabaseName!
                }
                if self.destinationEndpointInstanceID != nil {
                    map["DestinationEndpointInstanceID"] = self.destinationEndpointInstanceID!
                }
                if self.destinationEndpointInstanceType != nil {
                    map["DestinationEndpointInstanceType"] = self.destinationEndpointInstanceType!
                }
                if self.destinationEndpointIpPort != nil {
                    map["DestinationEndpointIpPort"] = self.destinationEndpointIpPort!
                }
                if self.destinationEndpointOracleSID != nil {
                    map["DestinationEndpointOracleSID"] = self.destinationEndpointOracleSID!
                }
                if self.destinationEndpointRegion != nil {
                    map["DestinationEndpointRegion"] = self.destinationEndpointRegion!
                }
                if self.destinationEndpointUserName != nil {
                    map["DestinationEndpointUserName"] = self.destinationEndpointUserName!
                }
                if self.errMessage != nil {
                    map["ErrMessage"] = self.errMessage!
                }
                if self.fullDataRestoreProgress != nil {
                    map["FullDataRestoreProgress"] = self.fullDataRestoreProgress!
                }
                if self.fullStruAfterRestoreProgress != nil {
                    map["FullStruAfterRestoreProgress"] = self.fullStruAfterRestoreProgress!
                }
                if self.fullStruforeRestoreProgress != nil {
                    map["FullStruforeRestoreProgress"] = self.fullStruforeRestoreProgress!
                }
                if self.restoreDir != nil {
                    map["RestoreDir"] = self.restoreDir!
                }
                if self.restoreObjects != nil {
                    map["RestoreObjects"] = self.restoreObjects!
                }
                if self.restoreStatus != nil {
                    map["RestoreStatus"] = self.restoreStatus!
                }
                if self.restoreTaskCreateTime != nil {
                    map["RestoreTaskCreateTime"] = self.restoreTaskCreateTime!
                }
                if self.restoreTaskFinishTime != nil {
                    map["RestoreTaskFinishTime"] = self.restoreTaskFinishTime!
                }
                if self.restoreTaskId != nil {
                    map["RestoreTaskId"] = self.restoreTaskId!
                }
                if self.restoreTaskName != nil {
                    map["RestoreTaskName"] = self.restoreTaskName!
                }
                if self.restoreTime != nil {
                    map["RestoreTime"] = self.restoreTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupGatewayId"] as? Int64 {
                    self.backupGatewayId = value
                }
                if let value = dict["BackupPlanId"] as? String {
                    self.backupPlanId = value
                }
                if let value = dict["BackupSetId"] as? String {
                    self.backupSetId = value
                }
                if let value = dict["ContinuousRestoreProgress"] as? Int32 {
                    self.continuousRestoreProgress = value
                }
                if let value = dict["CrossAliyunId"] as? String {
                    self.crossAliyunId = value
                }
                if let value = dict["CrossRoleName"] as? String {
                    self.crossRoleName = value
                }
                if let value = dict["DestinationEndpointDatabaseName"] as? String {
                    self.destinationEndpointDatabaseName = value
                }
                if let value = dict["DestinationEndpointInstanceID"] as? String {
                    self.destinationEndpointInstanceID = value
                }
                if let value = dict["DestinationEndpointInstanceType"] as? String {
                    self.destinationEndpointInstanceType = value
                }
                if let value = dict["DestinationEndpointIpPort"] as? String {
                    self.destinationEndpointIpPort = value
                }
                if let value = dict["DestinationEndpointOracleSID"] as? String {
                    self.destinationEndpointOracleSID = value
                }
                if let value = dict["DestinationEndpointRegion"] as? String {
                    self.destinationEndpointRegion = value
                }
                if let value = dict["DestinationEndpointUserName"] as? String {
                    self.destinationEndpointUserName = value
                }
                if let value = dict["ErrMessage"] as? String {
                    self.errMessage = value
                }
                if let value = dict["FullDataRestoreProgress"] as? Int32 {
                    self.fullDataRestoreProgress = value
                }
                if let value = dict["FullStruAfterRestoreProgress"] as? Int32 {
                    self.fullStruAfterRestoreProgress = value
                }
                if let value = dict["FullStruforeRestoreProgress"] as? Int32 {
                    self.fullStruforeRestoreProgress = value
                }
                if let value = dict["RestoreDir"] as? String {
                    self.restoreDir = value
                }
                if let value = dict["RestoreObjects"] as? String {
                    self.restoreObjects = value
                }
                if let value = dict["RestoreStatus"] as? String {
                    self.restoreStatus = value
                }
                if let value = dict["RestoreTaskCreateTime"] as? Int64 {
                    self.restoreTaskCreateTime = value
                }
                if let value = dict["RestoreTaskFinishTime"] as? Int64 {
                    self.restoreTaskFinishTime = value
                }
                if let value = dict["RestoreTaskId"] as? String {
                    self.restoreTaskId = value
                }
                if let value = dict["RestoreTaskName"] as? String {
                    self.restoreTaskName = value
                }
                if let value = dict["RestoreTime"] as? Int64 {
                    self.restoreTime = value
                }
            }
        }
        public var restoreTaskDetail: [DescribeRestoreTaskListResponseBody.Items.RestoreTaskDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.restoreTaskDetail != nil {
                var tmp : [Any] = []
                for k in self.restoreTaskDetail! {
                    tmp.append(k.toMap())
                }
                map["RestoreTaskDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RestoreTaskDetail"] as? [Any?] {
                var tmp : [DescribeRestoreTaskListResponseBody.Items.RestoreTaskDetail] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRestoreTaskListResponseBody.Items.RestoreTaskDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.restoreTaskDetail = tmp
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var items: DescribeRestoreTaskListResponseBody.Items?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalElements: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
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
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeRestoreTaskListResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
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
        if let value = dict["TotalElements"] as? Int32 {
            self.totalElements = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeRestoreTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreTaskListResponseBody?

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
            var model = DescribeRestoreTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableBackupLogRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class DisableBackupLogResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableBackupLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableBackupLogResponseBody?

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
            var model = DisableBackupLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableBackupLogRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class EnableBackupLogResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableBackupLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableBackupLogResponseBody?

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
            var model = EnableBackupLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDBListFromAgentRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var clientToken: String?

    public var ownerId: String?

    public var sourceEndpointRegion: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceEndpointRegion != nil {
            map["SourceEndpointRegion"] = self.sourceEndpointRegion!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceEndpointRegion"] as? String {
            self.sourceEndpointRegion = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetDBListFromAgentResponseBody : Tea.TeaModel {
    public class DbList : Tea.TeaModel {
        public var dbName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["dbName"] = self.dbName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dbName"] as? [String] {
                self.dbName = value
            }
        }
    }
    public var dbList: GetDBListFromAgentResponseBody.DbList?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        try self.dbList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbList != nil {
            map["DbList"] = self.dbList?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["DbList"] as? [String: Any?] {
            var model = GetDBListFromAgentResponseBody.DbList()
            model.fromMap(value)
            self.dbList = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDBListFromAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDBListFromAgentResponseBody?

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
            var model = GetDBListFromAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitializeDbsServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var data: String?

    public var errMessage: String?

    public var errorCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class InitializeDbsServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeDbsServiceLinkedRoleResponseBody?

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
            var model = InitializeDbsServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupObjectsRequest : Tea.TeaModel {
    public var backupObjects: String?

    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupObjects != nil {
            map["BackupObjects"] = self.backupObjects!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupObjects"] as? String {
            self.backupObjects = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ModifyBackupObjectsResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyBackupObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupObjectsResponseBody?

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
            var model = ModifyBackupObjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupPlanNameRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupPlanName: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.backupPlanName != nil {
            map["BackupPlanName"] = self.backupPlanName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupPlanName"] as? String {
            self.backupPlanName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ModifyBackupPlanNameResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyBackupPlanNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPlanNameResponseBody?

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
            var model = ModifyBackupPlanNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupSetDownloadRulesRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var backupPlanId: String?

    public var backupSetDownloadDir: String?

    public var backupSetDownloadTargetType: String?

    public var backupSetDownloadTargetTypeLocation: String?

    public var clientToken: String?

    public var fullDataFormat: String?

    public var incrementDataFormat: String?

    public var openAutoDownload: Bool?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupSetDownloadDir != nil {
            map["BackupSetDownloadDir"] = self.backupSetDownloadDir!
        }
        if self.backupSetDownloadTargetType != nil {
            map["BackupSetDownloadTargetType"] = self.backupSetDownloadTargetType!
        }
        if self.backupSetDownloadTargetTypeLocation != nil {
            map["BackupSetDownloadTargetTypeLocation"] = self.backupSetDownloadTargetTypeLocation!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.fullDataFormat != nil {
            map["FullDataFormat"] = self.fullDataFormat!
        }
        if self.incrementDataFormat != nil {
            map["IncrementDataFormat"] = self.incrementDataFormat!
        }
        if self.openAutoDownload != nil {
            map["OpenAutoDownload"] = self.openAutoDownload!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupSetDownloadDir"] as? String {
            self.backupSetDownloadDir = value
        }
        if let value = dict["BackupSetDownloadTargetType"] as? String {
            self.backupSetDownloadTargetType = value
        }
        if let value = dict["BackupSetDownloadTargetTypeLocation"] as? String {
            self.backupSetDownloadTargetTypeLocation = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FullDataFormat"] as? String {
            self.fullDataFormat = value
        }
        if let value = dict["IncrementDataFormat"] as? String {
            self.incrementDataFormat = value
        }
        if let value = dict["OpenAutoDownload"] as? Bool {
            self.openAutoDownload = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ModifyBackupSetDownloadRulesResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyBackupSetDownloadRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupSetDownloadRulesResponseBody?

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
            var model = ModifyBackupSetDownloadRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupSourceEndpointRequest : Tea.TeaModel {
    public var backupGatewayId: Int64?

    public var backupObjects: String?

    public var backupPlanId: String?

    public var clientToken: String?

    public var crossAliyunId: String?

    public var crossRoleName: String?

    public var ownerId: String?

    public var sourceEndpointDatabaseName: String?

    public var sourceEndpointIP: String?

    public var sourceEndpointInstanceID: String?

    public var sourceEndpointInstanceType: String?

    public var sourceEndpointOracleSID: String?

    public var sourceEndpointPassword: String?

    public var sourceEndpointPort: Int32?

    public var sourceEndpointRegion: String?

    public var sourceEndpointUserName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupGatewayId != nil {
            map["BackupGatewayId"] = self.backupGatewayId!
        }
        if self.backupObjects != nil {
            map["BackupObjects"] = self.backupObjects!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossAliyunId != nil {
            map["CrossAliyunId"] = self.crossAliyunId!
        }
        if self.crossRoleName != nil {
            map["CrossRoleName"] = self.crossRoleName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceEndpointDatabaseName != nil {
            map["SourceEndpointDatabaseName"] = self.sourceEndpointDatabaseName!
        }
        if self.sourceEndpointIP != nil {
            map["SourceEndpointIP"] = self.sourceEndpointIP!
        }
        if self.sourceEndpointInstanceID != nil {
            map["SourceEndpointInstanceID"] = self.sourceEndpointInstanceID!
        }
        if self.sourceEndpointInstanceType != nil {
            map["SourceEndpointInstanceType"] = self.sourceEndpointInstanceType!
        }
        if self.sourceEndpointOracleSID != nil {
            map["SourceEndpointOracleSID"] = self.sourceEndpointOracleSID!
        }
        if self.sourceEndpointPassword != nil {
            map["SourceEndpointPassword"] = self.sourceEndpointPassword!
        }
        if self.sourceEndpointPort != nil {
            map["SourceEndpointPort"] = self.sourceEndpointPort!
        }
        if self.sourceEndpointRegion != nil {
            map["SourceEndpointRegion"] = self.sourceEndpointRegion!
        }
        if self.sourceEndpointUserName != nil {
            map["SourceEndpointUserName"] = self.sourceEndpointUserName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupGatewayId"] as? Int64 {
            self.backupGatewayId = value
        }
        if let value = dict["BackupObjects"] as? String {
            self.backupObjects = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CrossAliyunId"] as? String {
            self.crossAliyunId = value
        }
        if let value = dict["CrossRoleName"] as? String {
            self.crossRoleName = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceEndpointDatabaseName"] as? String {
            self.sourceEndpointDatabaseName = value
        }
        if let value = dict["SourceEndpointIP"] as? String {
            self.sourceEndpointIP = value
        }
        if let value = dict["SourceEndpointInstanceID"] as? String {
            self.sourceEndpointInstanceID = value
        }
        if let value = dict["SourceEndpointInstanceType"] as? String {
            self.sourceEndpointInstanceType = value
        }
        if let value = dict["SourceEndpointOracleSID"] as? String {
            self.sourceEndpointOracleSID = value
        }
        if let value = dict["SourceEndpointPassword"] as? String {
            self.sourceEndpointPassword = value
        }
        if let value = dict["SourceEndpointPort"] as? Int32 {
            self.sourceEndpointPort = value
        }
        if let value = dict["SourceEndpointRegion"] as? String {
            self.sourceEndpointRegion = value
        }
        if let value = dict["SourceEndpointUserName"] as? String {
            self.sourceEndpointUserName = value
        }
    }
}

public class ModifyBackupSourceEndpointResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyBackupSourceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupSourceEndpointResponseBody?

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
            var model = ModifyBackupSourceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupStrategyRequest : Tea.TeaModel {
    public var backupLogIntervalSeconds: Int32?

    public var backupPeriod: String?

    public var backupPlanId: String?

    public var backupStartTime: String?

    public var backupStrategyType: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupLogIntervalSeconds != nil {
            map["BackupLogIntervalSeconds"] = self.backupLogIntervalSeconds!
        }
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.backupStartTime != nil {
            map["BackupStartTime"] = self.backupStartTime!
        }
        if self.backupStrategyType != nil {
            map["BackupStrategyType"] = self.backupStrategyType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupLogIntervalSeconds"] as? Int32 {
            self.backupLogIntervalSeconds = value
        }
        if let value = dict["BackupPeriod"] as? String {
            self.backupPeriod = value
        }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupStartTime"] as? String {
            self.backupStartTime = value
        }
        if let value = dict["BackupStrategyType"] as? String {
            self.backupStrategyType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ModifyBackupStrategyResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyBackupStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupStrategyResponseBody?

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
            var model = ModifyBackupStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyStorageStrategyRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var backupRetentionPeriod: Int32?

    public var clientToken: String?

    public var duplicationArchivePeriod: Int32?

    public var duplicationInfrequentAccessPeriod: Int32?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duplicationArchivePeriod != nil {
            map["DuplicationArchivePeriod"] = self.duplicationArchivePeriod!
        }
        if self.duplicationInfrequentAccessPeriod != nil {
            map["DuplicationInfrequentAccessPeriod"] = self.duplicationInfrequentAccessPeriod!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["BackupRetentionPeriod"] as? Int32 {
            self.backupRetentionPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DuplicationArchivePeriod"] as? Int32 {
            self.duplicationArchivePeriod = value
        }
        if let value = dict["DuplicationInfrequentAccessPeriod"] as? Int32 {
            self.duplicationInfrequentAccessPeriod = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ModifyStorageStrategyResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var needPrecheck: Bool?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.needPrecheck != nil {
            map["NeedPrecheck"] = self.needPrecheck!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NeedPrecheck"] as? Bool {
            self.needPrecheck = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyStorageStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyStorageStrategyResponseBody?

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
            var model = ModifyStorageStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseBackupPlanRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class ReleaseBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReleaseBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseBackupPlanResponseBody?

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
            var model = ReleaseBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewBackupPlanRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public var period: String?

    public var usedTime: Int32?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
    }
}

public class RenewBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var orderId: String?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RenewBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewBackupPlanResponseBody?

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
            var model = RenewBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartBackupPlanRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class StartBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var createdFullBackupsetId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.createdFullBackupsetId != nil {
            map["CreatedFullBackupsetId"] = self.createdFullBackupsetId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["CreatedFullBackupsetId"] as? String {
            self.createdFullBackupsetId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StartBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartBackupPlanResponseBody?

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
            var model = StartBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartRestoreTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var restoreTaskId: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
    }
}

public class StartRestoreTaskResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var restoreTaskId: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreTaskId != nil {
            map["RestoreTaskId"] = self.restoreTaskId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreTaskId"] as? String {
            self.restoreTaskId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StartRestoreTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRestoreTaskResponseBody?

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
            var model = StartRestoreTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopBackupPlanRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var ownerId: String?

    public var stopMethod: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.stopMethod != nil {
            map["StopMethod"] = self.stopMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["StopMethod"] as? String {
            self.stopMethod = value
        }
    }
}

public class StopBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopBackupPlanResponseBody?

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
            var model = StopBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeBackupPlanRequest : Tea.TeaModel {
    public var backupPlanId: String?

    public var clientToken: String?

    public var instanceClass: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
    }
}

public class UpgradeBackupPlanResponseBody : Tea.TeaModel {
    public var backupPlanId: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var orderId: String?

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
        if self.backupPlanId != nil {
            map["BackupPlanId"] = self.backupPlanId!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if let value = dict["BackupPlanId"] as? String {
            self.backupPlanId = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradeBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeBackupPlanResponseBody?

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
            var model = UpgradeBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
