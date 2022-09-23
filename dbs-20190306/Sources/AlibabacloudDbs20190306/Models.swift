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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoStartBackup") {
            self.autoStartBackup = dict["AutoStartBackup"] as! Bool
        }
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("BackupLogIntervalSeconds") {
            self.backupLogIntervalSeconds = dict["BackupLogIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("BackupObjects") {
            self.backupObjects = dict["BackupObjects"] as! String
        }
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupPlanName") {
            self.backupPlanName = dict["BackupPlanName"] as! String
        }
        if dict.keys.contains("BackupRateLimit") {
            self.backupRateLimit = dict["BackupRateLimit"] as! Int64
        }
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("BackupSpeedLimit") {
            self.backupSpeedLimit = dict["BackupSpeedLimit"] as! Int64
        }
        if dict.keys.contains("BackupStartTime") {
            self.backupStartTime = dict["BackupStartTime"] as! String
        }
        if dict.keys.contains("BackupStorageType") {
            self.backupStorageType = dict["BackupStorageType"] as! String
        }
        if dict.keys.contains("BackupStrategyType") {
            self.backupStrategyType = dict["BackupStrategyType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossAliyunId") {
            self.crossAliyunId = dict["CrossAliyunId"] as! String
        }
        if dict.keys.contains("CrossRoleName") {
            self.crossRoleName = dict["CrossRoleName"] as! String
        }
        if dict.keys.contains("DuplicationArchivePeriod") {
            self.duplicationArchivePeriod = dict["DuplicationArchivePeriod"] as! Int32
        }
        if dict.keys.contains("DuplicationInfrequentAccessPeriod") {
            self.duplicationInfrequentAccessPeriod = dict["DuplicationInfrequentAccessPeriod"] as! Int32
        }
        if dict.keys.contains("EnableBackupLog") {
            self.enableBackupLog = dict["EnableBackupLog"] as! Bool
        }
        if dict.keys.contains("OSSBucketName") {
            self.OSSBucketName = dict["OSSBucketName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceEndpointDatabaseName") {
            self.sourceEndpointDatabaseName = dict["SourceEndpointDatabaseName"] as! String
        }
        if dict.keys.contains("SourceEndpointIP") {
            self.sourceEndpointIP = dict["SourceEndpointIP"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceID") {
            self.sourceEndpointInstanceID = dict["SourceEndpointInstanceID"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceType") {
            self.sourceEndpointInstanceType = dict["SourceEndpointInstanceType"] as! String
        }
        if dict.keys.contains("SourceEndpointOracleSID") {
            self.sourceEndpointOracleSID = dict["SourceEndpointOracleSID"] as! String
        }
        if dict.keys.contains("SourceEndpointPassword") {
            self.sourceEndpointPassword = dict["SourceEndpointPassword"] as! String
        }
        if dict.keys.contains("SourceEndpointPort") {
            self.sourceEndpointPort = dict["SourceEndpointPort"] as! Int32
        }
        if dict.keys.contains("SourceEndpointRegion") {
            self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
        }
        if dict.keys.contains("SourceEndpointUserName") {
            self.sourceEndpointUserName = dict["SourceEndpointUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfigureBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("BackupLogIntervalSeconds") {
            self.backupLogIntervalSeconds = dict["BackupLogIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("BackupMethod") {
            self.backupMethod = dict["BackupMethod"] as! String
        }
        if dict.keys.contains("BackupObjects") {
            self.backupObjects = dict["BackupObjects"] as! String
        }
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupPlanName") {
            self.backupPlanName = dict["BackupPlanName"] as! String
        }
        if dict.keys.contains("BackupRateLimit") {
            self.backupRateLimit = dict["BackupRateLimit"] as! Int64
        }
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("BackupSpeedLimit") {
            self.backupSpeedLimit = dict["BackupSpeedLimit"] as! Int64
        }
        if dict.keys.contains("BackupStartTime") {
            self.backupStartTime = dict["BackupStartTime"] as! String
        }
        if dict.keys.contains("BackupStorageType") {
            self.backupStorageType = dict["BackupStorageType"] as! String
        }
        if dict.keys.contains("BackupStrategyType") {
            self.backupStrategyType = dict["BackupStrategyType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossAliyunId") {
            self.crossAliyunId = dict["CrossAliyunId"] as! String
        }
        if dict.keys.contains("CrossRoleName") {
            self.crossRoleName = dict["CrossRoleName"] as! String
        }
        if dict.keys.contains("DatabaseRegion") {
            self.databaseRegion = dict["DatabaseRegion"] as! String
        }
        if dict.keys.contains("DatabaseType") {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("DuplicationArchivePeriod") {
            self.duplicationArchivePeriod = dict["DuplicationArchivePeriod"] as! Int32
        }
        if dict.keys.contains("DuplicationInfrequentAccessPeriod") {
            self.duplicationInfrequentAccessPeriod = dict["DuplicationInfrequentAccessPeriod"] as! Int32
        }
        if dict.keys.contains("EnableBackupLog") {
            self.enableBackupLog = dict["EnableBackupLog"] as! Bool
        }
        if dict.keys.contains("FromApp") {
            self.fromApp = dict["FromApp"] as! String
        }
        if dict.keys.contains("InstanceClass") {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OSSBucketName") {
            self.OSSBucketName = dict["OSSBucketName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceEndpointDatabaseName") {
            self.sourceEndpointDatabaseName = dict["SourceEndpointDatabaseName"] as! String
        }
        if dict.keys.contains("SourceEndpointIP") {
            self.sourceEndpointIP = dict["SourceEndpointIP"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceID") {
            self.sourceEndpointInstanceID = dict["SourceEndpointInstanceID"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceType") {
            self.sourceEndpointInstanceType = dict["SourceEndpointInstanceType"] as! String
        }
        if dict.keys.contains("SourceEndpointOracleSID") {
            self.sourceEndpointOracleSID = dict["SourceEndpointOracleSID"] as! String
        }
        if dict.keys.contains("SourceEndpointPassword") {
            self.sourceEndpointPassword = dict["SourceEndpointPassword"] as! String
        }
        if dict.keys.contains("SourceEndpointPort") {
            self.sourceEndpointPort = dict["SourceEndpointPort"] as! Int32
        }
        if dict.keys.contains("SourceEndpointRegion") {
            self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
        }
        if dict.keys.contains("SourceEndpointUserName") {
            self.sourceEndpointUserName = dict["SourceEndpointUserName"] as! String
        }
        if dict.keys.contains("StorageRegion") {
            self.storageRegion = dict["StorageRegion"] as! String
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("CreateBackupSet") {
            self.createBackupSet = dict["CreateBackupSet"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAndStartBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupMethod") {
            self.backupMethod = dict["BackupMethod"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DatabaseRegion") {
            self.databaseRegion = dict["DatabaseRegion"] as! String
        }
        if dict.keys.contains("DatabaseType") {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("FromApp") {
            self.fromApp = dict["FromApp"] as! String
        }
        if dict.keys.contains("InstanceClass") {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StorageRegion") {
            self.storageRegion = dict["StorageRegion"] as! String
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetDataFormat") {
            self.backupSetDataFormat = dict["BackupSetDataFormat"] as! String
        }
        if dict.keys.contains("BackupSetId") {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetDownloadTaskId") {
            self.backupSetDownloadTaskId = dict["BackupSetDownloadTaskId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFullBackupSetDownloadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DatabaseType") {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SourceEndpointIP") {
            self.sourceEndpointIP = dict["SourceEndpointIP"] as! String
        }
        if dict.keys.contains("SourceEndpointPort") {
            self.sourceEndpointPort = dict["SourceEndpointPort"] as! Int32
        }
        if dict.keys.contains("SourceEndpointRegion") {
            self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGetDBListFromAgentTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetDataFormat") {
            self.backupSetDataFormat = dict["BackupSetDataFormat"] as! String
        }
        if dict.keys.contains("BackupSetId") {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("BackupSetName") {
            self.backupSetName = dict["BackupSetName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetDownloadTaskId") {
            self.backupSetDownloadTaskId = dict["BackupSetDownloadTaskId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIncrementBackupSetDownloadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupSetId") {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossAliyunId") {
            self.crossAliyunId = dict["CrossAliyunId"] as! String
        }
        if dict.keys.contains("CrossRoleName") {
            self.crossRoleName = dict["CrossRoleName"] as! String
        }
        if dict.keys.contains("DestinationEndpointDatabaseName") {
            self.destinationEndpointDatabaseName = dict["DestinationEndpointDatabaseName"] as! String
        }
        if dict.keys.contains("DestinationEndpointIP") {
            self.destinationEndpointIP = dict["DestinationEndpointIP"] as! String
        }
        if dict.keys.contains("DestinationEndpointInstanceID") {
            self.destinationEndpointInstanceID = dict["DestinationEndpointInstanceID"] as! String
        }
        if dict.keys.contains("DestinationEndpointInstanceType") {
            self.destinationEndpointInstanceType = dict["DestinationEndpointInstanceType"] as! String
        }
        if dict.keys.contains("DestinationEndpointOracleSID") {
            self.destinationEndpointOracleSID = dict["DestinationEndpointOracleSID"] as! String
        }
        if dict.keys.contains("DestinationEndpointPassword") {
            self.destinationEndpointPassword = dict["DestinationEndpointPassword"] as! String
        }
        if dict.keys.contains("DestinationEndpointPort") {
            self.destinationEndpointPort = dict["DestinationEndpointPort"] as! Int32
        }
        if dict.keys.contains("DestinationEndpointRegion") {
            self.destinationEndpointRegion = dict["DestinationEndpointRegion"] as! String
        }
        if dict.keys.contains("DestinationEndpointUserName") {
            self.destinationEndpointUserName = dict["DestinationEndpointUserName"] as! String
        }
        if dict.keys.contains("DuplicateConflict") {
            self.duplicateConflict = dict["DuplicateConflict"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RestoreDir") {
            self.restoreDir = dict["RestoreDir"] as! String
        }
        if dict.keys.contains("RestoreHome") {
            self.restoreHome = dict["RestoreHome"] as! String
        }
        if dict.keys.contains("RestoreObjects") {
            self.restoreObjects = dict["RestoreObjects"] as! String
        }
        if dict.keys.contains("RestoreTaskName") {
            self.restoreTaskName = dict["RestoreTaskName"] as! String
        }
        if dict.keys.contains("RestoreTime") {
            self.restoreTime = dict["RestoreTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreTaskId") {
            self.restoreTaskId = dict["RestoreTaskId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRestoreTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupGatewayCreateTime") {
                    self.backupGatewayCreateTime = dict["BackupGatewayCreateTime"] as! Int64
                }
                if dict.keys.contains("BackupGatewayId") {
                    self.backupGatewayId = dict["BackupGatewayId"] as! String
                }
                if dict.keys.contains("BackupGatewayStatus") {
                    self.backupGatewayStatus = dict["BackupGatewayStatus"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Identifier") {
                    self.identifier = dict["Identifier"] as! String
                }
                if dict.keys.contains("LastHeartbeatTime") {
                    self.lastHeartbeatTime = dict["LastHeartbeatTime"] as! Int64
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("SourceEndpointHostname") {
                    self.sourceEndpointHostname = dict["SourceEndpointHostname"] as! String
                }
                if dict.keys.contains("SourceEndpointInternetIP") {
                    self.sourceEndpointInternetIP = dict["SourceEndpointInternetIP"] as! String
                }
                if dict.keys.contains("SourceEndpointIntranetIP") {
                    self.sourceEndpointIntranetIP = dict["SourceEndpointIntranetIP"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupGateway") {
                self.backupGateway = dict["BackupGateway"] as! [DescribeBackupGatewayListResponseBody.Items.BackupGateway]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeBackupGatewayListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupGatewayListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("ShowStorageType") {
            self.showStorageType = dict["ShowStorageType"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuyChargeType") {
                self.buyChargeType = dict["BuyChargeType"] as! String
            }
            if dict.keys.contains("BuyCreateTimestamp") {
                self.buyCreateTimestamp = dict["BuyCreateTimestamp"] as! Int64
            }
            if dict.keys.contains("BuyExpiredTimestamp") {
                self.buyExpiredTimestamp = dict["BuyExpiredTimestamp"] as! Int64
            }
            if dict.keys.contains("BuySpec") {
                self.buySpec = dict["BuySpec"] as! String
            }
            if dict.keys.contains("ContStorageSize") {
                self.contStorageSize = dict["ContStorageSize"] as! Int64
            }
            if dict.keys.contains("FullStorageSize") {
                self.fullStorageSize = dict["FullStorageSize"] as! Int64
            }
            if dict.keys.contains("IsExpired") {
                self.isExpired = dict["IsExpired"] as! Bool
            }
            if dict.keys.contains("IsFreeBytesUnlimited") {
                self.isFreeBytesUnlimited = dict["IsFreeBytesUnlimited"] as! Bool
            }
            if dict.keys.contains("PaiedBytes") {
                self.paiedBytes = dict["PaiedBytes"] as! Int64
            }
            if dict.keys.contains("QuotaEndTimestamp") {
                self.quotaEndTimestamp = dict["QuotaEndTimestamp"] as! Int64
            }
            if dict.keys.contains("QuotaStartTimestamp") {
                self.quotaStartTimestamp = dict["QuotaStartTimestamp"] as! Int64
            }
            if dict.keys.contains("TotalFreeBytes") {
                self.totalFreeBytes = dict["TotalFreeBytes"] as! Int64
            }
            if dict.keys.contains("UsedFullBytes") {
                self.usedFullBytes = dict["UsedFullBytes"] as! Int64
            }
            if dict.keys.contains("UsedIncrementBytes") {
                self.usedIncrementBytes = dict["UsedIncrementBytes"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Item") {
            var model = DescribeBackupPlanBillingResponseBody.Item()
            model.fromMap(dict["Item"] as! [String: Any])
            self.item = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupPlanBillingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupPlanName") {
            self.backupPlanName = dict["BackupPlanName"] as! String
        }
        if dict.keys.contains("BackupPlanStatus") {
            self.backupPlanStatus = dict["BackupPlanStatus"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupGatewayId") {
                    self.backupGatewayId = dict["BackupGatewayId"] as! Int64
                }
                if dict.keys.contains("BackupMethod") {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupObjects") {
                    self.backupObjects = dict["BackupObjects"] as! String
                }
                if dict.keys.contains("BackupPeriod") {
                    self.backupPeriod = dict["BackupPeriod"] as! String
                }
                if dict.keys.contains("BackupPlanCreateTime") {
                    self.backupPlanCreateTime = dict["BackupPlanCreateTime"] as! Int64
                }
                if dict.keys.contains("BackupPlanId") {
                    self.backupPlanId = dict["BackupPlanId"] as! String
                }
                if dict.keys.contains("BackupPlanName") {
                    self.backupPlanName = dict["BackupPlanName"] as! String
                }
                if dict.keys.contains("BackupPlanStatus") {
                    self.backupPlanStatus = dict["BackupPlanStatus"] as! String
                }
                if dict.keys.contains("BackupRetentionPeriod") {
                    self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
                }
                if dict.keys.contains("BackupSetDownloadDir") {
                    self.backupSetDownloadDir = dict["BackupSetDownloadDir"] as! String
                }
                if dict.keys.contains("BackupSetDownloadFullDataFormat") {
                    self.backupSetDownloadFullDataFormat = dict["BackupSetDownloadFullDataFormat"] as! String
                }
                if dict.keys.contains("BackupSetDownloadGatewayId") {
                    self.backupSetDownloadGatewayId = dict["BackupSetDownloadGatewayId"] as! Int64
                }
                if dict.keys.contains("BackupSetDownloadIncrementDataFormat") {
                    self.backupSetDownloadIncrementDataFormat = dict["BackupSetDownloadIncrementDataFormat"] as! String
                }
                if dict.keys.contains("BackupSetDownloadTargetType") {
                    self.backupSetDownloadTargetType = dict["BackupSetDownloadTargetType"] as! String
                }
                if dict.keys.contains("BackupStartTime") {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupStorageType") {
                    self.backupStorageType = dict["BackupStorageType"] as! String
                }
                if dict.keys.contains("BeginTimestampForRestore") {
                    self.beginTimestampForRestore = dict["BeginTimestampForRestore"] as! Int64
                }
                if dict.keys.contains("CrossAliyunId") {
                    self.crossAliyunId = dict["CrossAliyunId"] as! String
                }
                if dict.keys.contains("CrossRoleName") {
                    self.crossRoleName = dict["CrossRoleName"] as! String
                }
                if dict.keys.contains("DatabaseType") {
                    self.databaseType = dict["DatabaseType"] as! String
                }
                if dict.keys.contains("DuplicationArchivePeriod") {
                    self.duplicationArchivePeriod = dict["DuplicationArchivePeriod"] as! Int32
                }
                if dict.keys.contains("DuplicationInfrequentAccessPeriod") {
                    self.duplicationInfrequentAccessPeriod = dict["DuplicationInfrequentAccessPeriod"] as! Int32
                }
                if dict.keys.contains("EnableBackupLog") {
                    self.enableBackupLog = dict["EnableBackupLog"] as! Bool
                }
                if dict.keys.contains("EndTimestampForRestore") {
                    self.endTimestampForRestore = dict["EndTimestampForRestore"] as! Int64
                }
                if dict.keys.contains("ErrMessage") {
                    self.errMessage = dict["ErrMessage"] as! String
                }
                if dict.keys.contains("InstanceClass") {
                    self.instanceClass = dict["InstanceClass"] as! String
                }
                if dict.keys.contains("OSSBucketName") {
                    self.OSSBucketName = dict["OSSBucketName"] as! String
                }
                if dict.keys.contains("OSSBucketRegion") {
                    self.OSSBucketRegion = dict["OSSBucketRegion"] as! String
                }
                if dict.keys.contains("OpenBackupSetAutoDownload") {
                    self.openBackupSetAutoDownload = dict["OpenBackupSetAutoDownload"] as! Bool
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SourceEndpointDatabaseName") {
                    self.sourceEndpointDatabaseName = dict["SourceEndpointDatabaseName"] as! String
                }
                if dict.keys.contains("SourceEndpointInstanceID") {
                    self.sourceEndpointInstanceID = dict["SourceEndpointInstanceID"] as! String
                }
                if dict.keys.contains("SourceEndpointInstanceType") {
                    self.sourceEndpointInstanceType = dict["SourceEndpointInstanceType"] as! String
                }
                if dict.keys.contains("SourceEndpointIpPort") {
                    self.sourceEndpointIpPort = dict["SourceEndpointIpPort"] as! String
                }
                if dict.keys.contains("SourceEndpointOracleSID") {
                    self.sourceEndpointOracleSID = dict["SourceEndpointOracleSID"] as! String
                }
                if dict.keys.contains("SourceEndpointRegion") {
                    self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
                }
                if dict.keys.contains("SourceEndpointUserName") {
                    self.sourceEndpointUserName = dict["SourceEndpointUserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPlanDetail") {
                self.backupPlanDetail = dict["BackupPlanDetail"] as! [DescribeBackupPlanListResponseBody.Items.BackupPlanDetail]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeBackupPlanListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupPlanListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupSetDownloadTaskId") {
            self.backupSetDownloadTaskId = dict["BackupSetDownloadTaskId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupGatewayId") {
                    self.backupGatewayId = dict["BackupGatewayId"] as! Int64
                }
                if dict.keys.contains("BackupPlanId") {
                    self.backupPlanId = dict["BackupPlanId"] as! String
                }
                if dict.keys.contains("BackupSetCode") {
                    self.backupSetCode = dict["BackupSetCode"] as! String
                }
                if dict.keys.contains("BackupSetDataFormat") {
                    self.backupSetDataFormat = dict["BackupSetDataFormat"] as! String
                }
                if dict.keys.contains("BackupSetDataSize") {
                    self.backupSetDataSize = dict["BackupSetDataSize"] as! Int64
                }
                if dict.keys.contains("BackupSetDbType") {
                    self.backupSetDbType = dict["BackupSetDbType"] as! String
                }
                if dict.keys.contains("BackupSetDownloadCreateTime") {
                    self.backupSetDownloadCreateTime = dict["BackupSetDownloadCreateTime"] as! Int64
                }
                if dict.keys.contains("BackupSetDownloadDir") {
                    self.backupSetDownloadDir = dict["BackupSetDownloadDir"] as! String
                }
                if dict.keys.contains("BackupSetDownloadFinishTime") {
                    self.backupSetDownloadFinishTime = dict["BackupSetDownloadFinishTime"] as! Int64
                }
                if dict.keys.contains("BackupSetDownloadInternetUrl") {
                    self.backupSetDownloadInternetUrl = dict["BackupSetDownloadInternetUrl"] as! String
                }
                if dict.keys.contains("BackupSetDownloadIntranetUrl") {
                    self.backupSetDownloadIntranetUrl = dict["BackupSetDownloadIntranetUrl"] as! String
                }
                if dict.keys.contains("BackupSetDownloadStatus") {
                    self.backupSetDownloadStatus = dict["BackupSetDownloadStatus"] as! String
                }
                if dict.keys.contains("BackupSetDownloadTargetType") {
                    self.backupSetDownloadTargetType = dict["BackupSetDownloadTargetType"] as! String
                }
                if dict.keys.contains("BackupSetDownloadTaskId") {
                    self.backupSetDownloadTaskId = dict["BackupSetDownloadTaskId"] as! String
                }
                if dict.keys.contains("BackupSetDownloadTaskName") {
                    self.backupSetDownloadTaskName = dict["BackupSetDownloadTaskName"] as! String
                }
                if dict.keys.contains("BackupSetDownloadWay") {
                    self.backupSetDownloadWay = dict["BackupSetDownloadWay"] as! String
                }
                if dict.keys.contains("BackupSetId") {
                    self.backupSetId = dict["BackupSetId"] as! String
                }
                if dict.keys.contains("BackupSetJobType") {
                    self.backupSetJobType = dict["BackupSetJobType"] as! String
                }
                if dict.keys.contains("ErrMessage") {
                    self.errMessage = dict["ErrMessage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupSetDownloadTaskDetail") {
                self.backupSetDownloadTaskDetail = dict["BackupSetDownloadTaskDetail"] as! [DescribeBackupSetDownloadTaskListResponseBody.Items.BackupSetDownloadTaskDetail]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeBackupSetDownloadTaskListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupSetDownloadTaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAdd") {
            self.autoAdd = dict["AutoAdd"] as! Bool
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HaveJobFailed") {
            self.haveJobFailed = dict["HaveJobFailed"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDLAServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupSetId") {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ShowStorageType") {
            self.showStorageType = dict["ShowStorageType"] as! Bool
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupObjects") {
                    self.backupObjects = dict["BackupObjects"] as! String
                }
                if dict.keys.contains("BackupSetExpiredTime") {
                    self.backupSetExpiredTime = dict["BackupSetExpiredTime"] as! Int64
                }
                if dict.keys.contains("BackupSetId") {
                    self.backupSetId = dict["BackupSetId"] as! String
                }
                if dict.keys.contains("BackupSize") {
                    self.backupSize = dict["BackupSize"] as! Int64
                }
                if dict.keys.contains("BackupStatus") {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("ErrMessage") {
                    self.errMessage = dict["ErrMessage"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! Int64
                }
                if dict.keys.contains("SourceEndpointIpPort") {
                    self.sourceEndpointIpPort = dict["SourceEndpointIpPort"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("StorageMethod") {
                    self.storageMethod = dict["StorageMethod"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FullBackupFile") {
                self.fullBackupFile = dict["FullBackupFile"] as! [DescribeFullBackupListResponseBody.Items.FullBackupFile]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeFullBackupListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFullBackupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ShowStorageType") {
            self.showStorageType = dict["ShowStorageType"] as! Bool
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupSetExpiredTime") {
                    self.backupSetExpiredTime = dict["BackupSetExpiredTime"] as! Int64
                }
                if dict.keys.contains("BackupSetId") {
                    self.backupSetId = dict["BackupSetId"] as! String
                }
                if dict.keys.contains("BackupSetJobId") {
                    self.backupSetJobId = dict["BackupSetJobId"] as! String
                }
                if dict.keys.contains("BackupSize") {
                    self.backupSize = dict["BackupSize"] as! Int64
                }
                if dict.keys.contains("BackupStatus") {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("SourceEndpointIpPort") {
                    self.sourceEndpointIpPort = dict["SourceEndpointIpPort"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("StorageMethod") {
                    self.storageMethod = dict["StorageMethod"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IncrementBackupFile") {
                self.incrementBackupFile = dict["IncrementBackupFile"] as! [DescribeIncrementBackupListResponseBody.Items.IncrementBackupFile]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeIncrementBackupListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIncrementBackupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobState") {
                self.jobState = dict["JobState"] as! String
            }
            if dict.keys.contains("JobType") {
                self.jobType = dict["JobType"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Item") {
            var model = DescribeJobErrorCodeResponseBody.Item()
            model.fromMap(dict["Item"] as! [String: Any])
            self.item = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeJobErrorCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InternetIP") {
                self.internetIP = dict["InternetIP"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntranetIP") {
                self.intranetIP = dict["IntranetIP"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InternetIPs") {
            var model = DescribeNodeCidrListResponseBody.InternetIPs()
            model.fromMap(dict["InternetIPs"] as! [String: Any])
            self.internetIPs = model
        }
        if dict.keys.contains("IntranetIPs") {
            var model = DescribeNodeCidrListResponseBody.IntranetIPs()
            model.fromMap(dict["IntranetIPs"] as! [String: Any])
            self.intranetIPs = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNodeCidrListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RestoreTaskId") {
            self.restoreTaskId = dict["RestoreTaskId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BootTime") {
                    self.bootTime = dict["BootTime"] as! Int64
                }
                if dict.keys.contains("ErrMsg") {
                    self.errMsg = dict["ErrMsg"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! Int64
                }
                if dict.keys.contains("Item") {
                    self.item = dict["Item"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("Names") {
                    self.names = dict["Names"] as! String
                }
                if dict.keys.contains("OrderNum") {
                    self.orderNum = dict["OrderNum"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PreCheckProgressDetail") {
                self.preCheckProgressDetail = dict["PreCheckProgressDetail"] as! [DescribePreCheckProgressListResponseBody.Items.PreCheckProgressDetail]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribePreCheckProgressListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePreCheckProgressListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionCode") {
                self.regionCode = dict["RegionCode"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BeginTimestampForRestore") {
            self.beginTimestampForRestore = dict["BeginTimestampForRestore"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndTimestampForRestore") {
            self.endTimestampForRestore = dict["EndTimestampForRestore"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RecentlyRestore") {
            self.recentlyRestore = dict["RecentlyRestore"] as! Bool
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BackupSetId") {
                            self.backupSetId = dict["BackupSetId"] as! String
                        }
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! Int64
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FullBackupDetail") {
                        self.fullBackupDetail = dict["FullBackupDetail"] as! [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList.FullBackupDetail]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTimestampForRestore") {
                    self.beginTimestampForRestore = dict["BeginTimestampForRestore"] as! Int64
                }
                if dict.keys.contains("EndTimestampForRestore") {
                    self.endTimestampForRestore = dict["EndTimestampForRestore"] as! Int64
                }
                if dict.keys.contains("FullBackupList") {
                    var model = DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange.FullBackupList()
                    model.fromMap(dict["FullBackupList"] as! [String: Any])
                    self.fullBackupList = model
                }
                if dict.keys.contains("RangeType") {
                    self.rangeType = dict["RangeType"] as! String
                }
                if dict.keys.contains("SourceEndpointInstanceID") {
                    self.sourceEndpointInstanceID = dict["SourceEndpointInstanceID"] as! String
                }
                if dict.keys.contains("SourceEndpointInstanceType") {
                    self.sourceEndpointInstanceType = dict["SourceEndpointInstanceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBSRecoverRange") {
                self.DBSRecoverRange = dict["DBSRecoverRange"] as! [DescribeRestoreRangeInfoResponseBody.Items.DBSRecoverRange]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeRestoreRangeInfoResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRestoreRangeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RestoreTaskId") {
            self.restoreTaskId = dict["RestoreTaskId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupGatewayId") {
                    self.backupGatewayId = dict["BackupGatewayId"] as! Int64
                }
                if dict.keys.contains("BackupPlanId") {
                    self.backupPlanId = dict["BackupPlanId"] as! String
                }
                if dict.keys.contains("BackupSetId") {
                    self.backupSetId = dict["BackupSetId"] as! String
                }
                if dict.keys.contains("ContinuousRestoreProgress") {
                    self.continuousRestoreProgress = dict["ContinuousRestoreProgress"] as! Int32
                }
                if dict.keys.contains("CrossAliyunId") {
                    self.crossAliyunId = dict["CrossAliyunId"] as! String
                }
                if dict.keys.contains("CrossRoleName") {
                    self.crossRoleName = dict["CrossRoleName"] as! String
                }
                if dict.keys.contains("DestinationEndpointDatabaseName") {
                    self.destinationEndpointDatabaseName = dict["DestinationEndpointDatabaseName"] as! String
                }
                if dict.keys.contains("DestinationEndpointInstanceID") {
                    self.destinationEndpointInstanceID = dict["DestinationEndpointInstanceID"] as! String
                }
                if dict.keys.contains("DestinationEndpointInstanceType") {
                    self.destinationEndpointInstanceType = dict["DestinationEndpointInstanceType"] as! String
                }
                if dict.keys.contains("DestinationEndpointIpPort") {
                    self.destinationEndpointIpPort = dict["DestinationEndpointIpPort"] as! String
                }
                if dict.keys.contains("DestinationEndpointOracleSID") {
                    self.destinationEndpointOracleSID = dict["DestinationEndpointOracleSID"] as! String
                }
                if dict.keys.contains("DestinationEndpointRegion") {
                    self.destinationEndpointRegion = dict["DestinationEndpointRegion"] as! String
                }
                if dict.keys.contains("DestinationEndpointUserName") {
                    self.destinationEndpointUserName = dict["DestinationEndpointUserName"] as! String
                }
                if dict.keys.contains("ErrMessage") {
                    self.errMessage = dict["ErrMessage"] as! String
                }
                if dict.keys.contains("FullDataRestoreProgress") {
                    self.fullDataRestoreProgress = dict["FullDataRestoreProgress"] as! Int32
                }
                if dict.keys.contains("FullStruAfterRestoreProgress") {
                    self.fullStruAfterRestoreProgress = dict["FullStruAfterRestoreProgress"] as! Int32
                }
                if dict.keys.contains("FullStruforeRestoreProgress") {
                    self.fullStruforeRestoreProgress = dict["FullStruforeRestoreProgress"] as! Int32
                }
                if dict.keys.contains("RestoreDir") {
                    self.restoreDir = dict["RestoreDir"] as! String
                }
                if dict.keys.contains("RestoreObjects") {
                    self.restoreObjects = dict["RestoreObjects"] as! String
                }
                if dict.keys.contains("RestoreStatus") {
                    self.restoreStatus = dict["RestoreStatus"] as! String
                }
                if dict.keys.contains("RestoreTaskCreateTime") {
                    self.restoreTaskCreateTime = dict["RestoreTaskCreateTime"] as! Int64
                }
                if dict.keys.contains("RestoreTaskFinishTime") {
                    self.restoreTaskFinishTime = dict["RestoreTaskFinishTime"] as! Int64
                }
                if dict.keys.contains("RestoreTaskId") {
                    self.restoreTaskId = dict["RestoreTaskId"] as! String
                }
                if dict.keys.contains("RestoreTaskName") {
                    self.restoreTaskName = dict["RestoreTaskName"] as! String
                }
                if dict.keys.contains("RestoreTime") {
                    self.restoreTime = dict["RestoreTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RestoreTaskDetail") {
                self.restoreTaskDetail = dict["RestoreTaskDetail"] as! [DescribeRestoreTaskListResponseBody.Items.RestoreTaskDetail]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var model = DescribeRestoreTaskListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRestoreTaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableBackupLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableBackupLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SourceEndpointRegion") {
            self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dbName") {
                self.dbName = dict["dbName"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbList") {
            var model = GetDBListFromAgentResponseBody.DbList()
            model.fromMap(dict["DbList"] as! [String: Any])
            self.dbList = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDBListFromAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InitializeDbsServiceLinkedRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupObjects") {
            self.backupObjects = dict["BackupObjects"] as! String
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBackupObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupPlanName") {
            self.backupPlanName = dict["BackupPlanName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBackupPlanNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupSetDownloadDir") {
            self.backupSetDownloadDir = dict["BackupSetDownloadDir"] as! String
        }
        if dict.keys.contains("BackupSetDownloadTargetType") {
            self.backupSetDownloadTargetType = dict["BackupSetDownloadTargetType"] as! String
        }
        if dict.keys.contains("BackupSetDownloadTargetTypeLocation") {
            self.backupSetDownloadTargetTypeLocation = dict["BackupSetDownloadTargetTypeLocation"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FullDataFormat") {
            self.fullDataFormat = dict["FullDataFormat"] as! String
        }
        if dict.keys.contains("IncrementDataFormat") {
            self.incrementDataFormat = dict["IncrementDataFormat"] as! String
        }
        if dict.keys.contains("OpenAutoDownload") {
            self.openAutoDownload = dict["OpenAutoDownload"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBackupSetDownloadRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupGatewayId") {
            self.backupGatewayId = dict["BackupGatewayId"] as! Int64
        }
        if dict.keys.contains("BackupObjects") {
            self.backupObjects = dict["BackupObjects"] as! String
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossAliyunId") {
            self.crossAliyunId = dict["CrossAliyunId"] as! String
        }
        if dict.keys.contains("CrossRoleName") {
            self.crossRoleName = dict["CrossRoleName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SourceEndpointDatabaseName") {
            self.sourceEndpointDatabaseName = dict["SourceEndpointDatabaseName"] as! String
        }
        if dict.keys.contains("SourceEndpointIP") {
            self.sourceEndpointIP = dict["SourceEndpointIP"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceID") {
            self.sourceEndpointInstanceID = dict["SourceEndpointInstanceID"] as! String
        }
        if dict.keys.contains("SourceEndpointInstanceType") {
            self.sourceEndpointInstanceType = dict["SourceEndpointInstanceType"] as! String
        }
        if dict.keys.contains("SourceEndpointOracleSID") {
            self.sourceEndpointOracleSID = dict["SourceEndpointOracleSID"] as! String
        }
        if dict.keys.contains("SourceEndpointPassword") {
            self.sourceEndpointPassword = dict["SourceEndpointPassword"] as! String
        }
        if dict.keys.contains("SourceEndpointPort") {
            self.sourceEndpointPort = dict["SourceEndpointPort"] as! Int32
        }
        if dict.keys.contains("SourceEndpointRegion") {
            self.sourceEndpointRegion = dict["SourceEndpointRegion"] as! String
        }
        if dict.keys.contains("SourceEndpointUserName") {
            self.sourceEndpointUserName = dict["SourceEndpointUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBackupSourceEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupLogIntervalSeconds") {
            self.backupLogIntervalSeconds = dict["BackupLogIntervalSeconds"] as! Int32
        }
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupStartTime") {
            self.backupStartTime = dict["BackupStartTime"] as! String
        }
        if dict.keys.contains("BackupStrategyType") {
            self.backupStrategyType = dict["BackupStrategyType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBackupStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DuplicationArchivePeriod") {
            self.duplicationArchivePeriod = dict["DuplicationArchivePeriod"] as! Int32
        }
        if dict.keys.contains("DuplicationInfrequentAccessPeriod") {
            self.duplicationInfrequentAccessPeriod = dict["DuplicationInfrequentAccessPeriod"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NeedPrecheck") {
            self.needPrecheck = dict["NeedPrecheck"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyStorageStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RenewBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("CreatedFullBackupsetId") {
            self.createdFullBackupsetId = dict["CreatedFullBackupsetId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RestoreTaskId") {
            self.restoreTaskId = dict["RestoreTaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreTaskId") {
            self.restoreTaskId = dict["RestoreTaskId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartRestoreTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("StopMethod") {
            self.stopMethod = dict["StopMethod"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceClass") {
            self.instanceClass = dict["InstanceClass"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlanId") {
            self.backupPlanId = dict["BackupPlanId"] as! String
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
