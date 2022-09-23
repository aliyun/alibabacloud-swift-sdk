import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocateClusterPublicConnectionRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AllocateClusterPublicConnectionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AllocateClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateClusterPublicConnectionResponseBody?

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
            var model = AllocateClusterPublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindDBResourceGroupWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupUser: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupUser != nil {
            map["GroupUser"] = self.groupUser!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUser") {
            self.groupUser = dict["GroupUser"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BindDBResourceGroupWithUserResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindDBResourceGroupWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindDBResourceGroupWithUserResponseBody?

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
            var model = BindDBResourceGroupWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindDBResourcePoolWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var poolUser: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.poolUser != nil {
            map["PoolUser"] = self.poolUser!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("PoolUser") {
            self.poolUser = dict["PoolUser"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class BindDBResourcePoolWithUserResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindDBResourcePoolWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindDBResourcePoolWithUserResponseBody?

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
            var model = BindDBResourcePoolWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var accountType: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class CreateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountResponseBody?

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
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBClusterRequest : Tea.TeaModel {
    public var backupSetID: String?

    public var clientToken: String?

    public var computeResource: String?

    public var DBClusterCategory: String?

    public var DBClusterClass: String?

    public var DBClusterDescription: String?

    public var DBClusterNetworkType: String?

    public var DBClusterVersion: String?

    public var DBNodeGroupCount: String?

    public var DBNodeStorage: String?

    public var elasticIOResource: String?

    public var executorCount: String?

    public var mode: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restoreTime: String?

    public var restoreType: String?

    public var sourceDBInstanceName: String?

    public var storageResource: String?

    public var storageType: String?

    public var usedTime: String?

    public var VPCId: String?

    public var vSwitchId: String?

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
        if self.backupSetID != nil {
            map["BackupSetID"] = self.backupSetID!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource!
        }
        if self.DBClusterCategory != nil {
            map["DBClusterCategory"] = self.DBClusterCategory!
        }
        if self.DBClusterClass != nil {
            map["DBClusterClass"] = self.DBClusterClass!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterNetworkType != nil {
            map["DBClusterNetworkType"] = self.DBClusterNetworkType!
        }
        if self.DBClusterVersion != nil {
            map["DBClusterVersion"] = self.DBClusterVersion!
        }
        if self.DBNodeGroupCount != nil {
            map["DBNodeGroupCount"] = self.DBNodeGroupCount!
        }
        if self.DBNodeStorage != nil {
            map["DBNodeStorage"] = self.DBNodeStorage!
        }
        if self.elasticIOResource != nil {
            map["ElasticIOResource"] = self.elasticIOResource!
        }
        if self.executorCount != nil {
            map["ExecutorCount"] = self.executorCount!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        if self.restoreType != nil {
            map["RestoreType"] = self.restoreType!
        }
        if self.sourceDBInstanceName != nil {
            map["SourceDBInstanceName"] = self.sourceDBInstanceName!
        }
        if self.storageResource != nil {
            map["StorageResource"] = self.storageResource!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetID") {
            self.backupSetID = dict["BackupSetID"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ComputeResource") {
            self.computeResource = dict["ComputeResource"] as! String
        }
        if dict.keys.contains("DBClusterCategory") {
            self.DBClusterCategory = dict["DBClusterCategory"] as! String
        }
        if dict.keys.contains("DBClusterClass") {
            self.DBClusterClass = dict["DBClusterClass"] as! String
        }
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterNetworkType") {
            self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
        }
        if dict.keys.contains("DBClusterVersion") {
            self.DBClusterVersion = dict["DBClusterVersion"] as! String
        }
        if dict.keys.contains("DBNodeGroupCount") {
            self.DBNodeGroupCount = dict["DBNodeGroupCount"] as! String
        }
        if dict.keys.contains("DBNodeStorage") {
            self.DBNodeStorage = dict["DBNodeStorage"] as! String
        }
        if dict.keys.contains("ElasticIOResource") {
            self.elasticIOResource = dict["ElasticIOResource"] as! String
        }
        if dict.keys.contains("ExecutorCount") {
            self.executorCount = dict["ExecutorCount"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RestoreTime") {
            self.restoreTime = dict["RestoreTime"] as! String
        }
        if dict.keys.contains("RestoreType") {
            self.restoreType = dict["RestoreType"] as! String
        }
        if dict.keys.contains("SourceDBInstanceName") {
            self.sourceDBInstanceName = dict["SourceDBInstanceName"] as! String
        }
        if dict.keys.contains("StorageResource") {
            self.storageResource = dict["StorageResource"] as! String
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! String
        }
        if dict.keys.contains("VPCId") {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var orderId: String?

    public var requestId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBClusterResponseBody?

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
            var model = CreateDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupType: String?

    public var nodeNum: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.nodeNum != nil {
            map["NodeNum"] = self.nodeNum!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("NodeNum") {
            self.nodeNum = dict["NodeNum"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateDBResourceGroupResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResourceGroupResponseBody?

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
            var model = CreateDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBResourcePoolRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var nodeNum: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var queryType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.nodeNum != nil {
            map["NodeNum"] = self.nodeNum!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("NodeNum") {
            self.nodeNum = dict["NodeNum"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateDBResourcePoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBResourcePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResourcePoolResponseBody?

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
            var model = CreateDBResourcePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanEnable: Bool?

    public var elasticPlanEndDay: String?

    public var elasticPlanName: String?

    public var elasticPlanNodeNum: Int32?

    public var elasticPlanStartDay: String?

    public var elasticPlanTimeEnd: String?

    public var elasticPlanTimeStart: String?

    public var elasticPlanWeeklyRepeat: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourcePoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanEnable != nil {
            map["ElasticPlanEnable"] = self.elasticPlanEnable!
        }
        if self.elasticPlanEndDay != nil {
            map["ElasticPlanEndDay"] = self.elasticPlanEndDay!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.elasticPlanNodeNum != nil {
            map["ElasticPlanNodeNum"] = self.elasticPlanNodeNum!
        }
        if self.elasticPlanStartDay != nil {
            map["ElasticPlanStartDay"] = self.elasticPlanStartDay!
        }
        if self.elasticPlanTimeEnd != nil {
            map["ElasticPlanTimeEnd"] = self.elasticPlanTimeEnd!
        }
        if self.elasticPlanTimeStart != nil {
            map["ElasticPlanTimeStart"] = self.elasticPlanTimeStart!
        }
        if self.elasticPlanWeeklyRepeat != nil {
            map["ElasticPlanWeeklyRepeat"] = self.elasticPlanWeeklyRepeat!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourcePoolName != nil {
            map["ResourcePoolName"] = self.resourcePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanEnable") {
            self.elasticPlanEnable = dict["ElasticPlanEnable"] as! Bool
        }
        if dict.keys.contains("ElasticPlanEndDay") {
            self.elasticPlanEndDay = dict["ElasticPlanEndDay"] as! String
        }
        if dict.keys.contains("ElasticPlanName") {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("ElasticPlanNodeNum") {
            self.elasticPlanNodeNum = dict["ElasticPlanNodeNum"] as! Int32
        }
        if dict.keys.contains("ElasticPlanStartDay") {
            self.elasticPlanStartDay = dict["ElasticPlanStartDay"] as! String
        }
        if dict.keys.contains("ElasticPlanTimeEnd") {
            self.elasticPlanTimeEnd = dict["ElasticPlanTimeEnd"] as! String
        }
        if dict.keys.contains("ElasticPlanTimeStart") {
            self.elasticPlanTimeStart = dict["ElasticPlanTimeStart"] as! String
        }
        if dict.keys.contains("ElasticPlanWeeklyRepeat") {
            self.elasticPlanWeeklyRepeat = dict["ElasticPlanWeeklyRepeat"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourcePoolName") {
            self.resourcePoolName = dict["ResourcePoolName"] as! String
        }
    }
}

public class CreateElasticPlanResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateElasticPlanResponseBody?

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
            var model = CreateElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountType: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

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
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class DeleteDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBClusterResponseBody?

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
            var model = DeleteDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteDBResourceGroupResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResourceGroupResponseBody?

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
            var model = DeleteDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBResourcePoolRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteDBResourcePoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBResourcePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResourcePoolResponseBody?

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
            var model = DeleteDBResourcePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanName") {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteElasticPlanResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteElasticPlanResponseBody?

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
            var model = DeleteElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountType: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class AccountList : Tea.TeaModel {
        public class DBAccount : Tea.TeaModel {
            public var accountDescription: String?

            public var accountName: String?

            public var accountStatus: String?

            public var accountType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountDescription != nil {
                    map["AccountDescription"] = self.accountDescription!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountDescription") {
                    self.accountDescription = dict["AccountDescription"] as! String
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountStatus") {
                    self.accountStatus = dict["AccountStatus"] as! String
                }
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
            }
        }
        public var DBAccount: [DescribeAccountsResponseBody.AccountList.DBAccount]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBAccount != nil {
                var tmp : [Any] = []
                for k in self.DBAccount! {
                    tmp.append(k.toMap())
                }
                map["DBAccount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBAccount") {
                self.DBAccount = dict["DBAccount"] as! [DescribeAccountsResponseBody.AccountList.DBAccount]
            }
        }
    }
    public var accountList: DescribeAccountsResponseBody.AccountList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountList != nil {
            map["AccountList"] = self.accountList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountList") {
            var model = DescribeAccountsResponseBody.AccountList()
            model.fromMap(dict["AccountList"] as! [String: Any])
            self.accountList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountsResponseBody?

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
            var model = DescribeAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAllAccountsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAllAccountsResponseBody : Tea.TeaModel {
    public class AccountList : Tea.TeaModel {
        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var accountList: [DescribeAllAccountsResponseBody.AccountList]?

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
        if self.accountList != nil {
            var tmp : [Any] = []
            for k in self.accountList! {
                tmp.append(k.toMap())
            }
            map["AccountList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountList") {
            self.accountList = dict["AccountList"] as! [DescribeAllAccountsResponseBody.AccountList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAllAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllAccountsResponseBody?

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
            var model = DescribeAllAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAllDataSourceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeAllDataSourceResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoIncrementColumn") {
                    self.autoIncrementColumn = dict["AutoIncrementColumn"] as! Bool
                }
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("PrimaryKey") {
                    self.primaryKey = dict["PrimaryKey"] as! Bool
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var column: [DescribeAllDataSourceResponseBody.Columns.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") {
                self.column = dict["Column"] as! [DescribeAllDataSourceResponseBody.Columns.Column]
            }
        }
    }
    public class Schemas : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
            }
        }
        public var schema: [DescribeAllDataSourceResponseBody.Schemas.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Schema") {
                self.schema = dict["Schema"] as! [DescribeAllDataSourceResponseBody.Schemas.Schema]
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var table: [DescribeAllDataSourceResponseBody.Tables.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") {
                self.table = dict["Table"] as! [DescribeAllDataSourceResponseBody.Tables.Table]
            }
        }
    }
    public var columns: DescribeAllDataSourceResponseBody.Columns?

    public var requestId: String?

    public var schemas: DescribeAllDataSourceResponseBody.Schemas?

    public var tables: DescribeAllDataSourceResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columns?.validate()
        try self.schemas?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["Columns"] = self.columns?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            map["Schemas"] = self.schemas?.toMap()
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Columns") {
            var model = DescribeAllDataSourceResponseBody.Columns()
            model.fromMap(dict["Columns"] as! [String: Any])
            self.columns = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") {
            var model = DescribeAllDataSourceResponseBody.Schemas()
            model.fromMap(dict["Schemas"] as! [String: Any])
            self.schemas = model
        }
        if dict.keys.contains("Tables") {
            var model = DescribeAllDataSourceResponseBody.Tables()
            model.fromMap(dict["Tables"] as! [String: Any])
            self.tables = model
        }
    }
}

public class DescribeAllDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllDataSourceResponseBody?

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
            var model = DescribeAllDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditLogConfigRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAuditLogConfigResponseBody : Tea.TeaModel {
    public var auditLogStatus: String?

    public var DBClusterId: String?

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
        if self.auditLogStatus != nil {
            map["AuditLogStatus"] = self.auditLogStatus!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditLogStatus") {
            self.auditLogStatus = dict["AuditLogStatus"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAuditLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditLogConfigResponseBody?

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
            var model = DescribeAuditLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditLogRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBName: String?

    public var endTime: String?

    public var hostAddress: String?

    public var order: String?

    public var orderType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryKeyword: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sqlType: String?

    public var startTime: String?

    public var succeed: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryKeyword != nil {
            map["QueryKeyword"] = self.queryKeyword!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sqlType != nil {
            map["SqlType"] = self.sqlType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.succeed != nil {
            map["Succeed"] = self.succeed!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HostAddress") {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryKeyword") {
            self.queryKeyword = dict["QueryKeyword"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SqlType") {
            self.sqlType = dict["SqlType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Succeed") {
            self.succeed = dict["Succeed"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeAuditLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var connId: String?

        public var DBName: String?

        public var executeTime: String?

        public var hostAddress: String?

        public var processID: String?

        public var SQLText: String?

        public var SQLType: String?

        public var succeed: String?

        public var totalTime: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connId != nil {
                map["ConnId"] = self.connId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.hostAddress != nil {
                map["HostAddress"] = self.hostAddress!
            }
            if self.processID != nil {
                map["ProcessID"] = self.processID!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.SQLType != nil {
                map["SQLType"] = self.SQLType!
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.totalTime != nil {
                map["TotalTime"] = self.totalTime!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnId") {
                self.connId = dict["ConnId"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("ExecuteTime") {
                self.executeTime = dict["ExecuteTime"] as! String
            }
            if dict.keys.contains("HostAddress") {
                self.hostAddress = dict["HostAddress"] as! String
            }
            if dict.keys.contains("ProcessID") {
                self.processID = dict["ProcessID"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SQLType") {
                self.SQLType = dict["SQLType"] as! String
            }
            if dict.keys.contains("Succeed") {
                self.succeed = dict["Succeed"] as! String
            }
            if dict.keys.contains("TotalTime") {
                self.totalTime = dict["TotalTime"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var items: [DescribeAuditLogRecordsResponseBody.Items]?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeAuditLogRecordsResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeAuditLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditLogRecordsResponseBody?

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
            var model = DescribeAuditLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAutoRenewAttributeRequest : Tea.TeaModel {
    public var DBClusterIds: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterIds") {
            self.DBClusterIds = dict["DBClusterIds"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAutoRenewAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class AutoRenewAttribute : Tea.TeaModel {
            public var autoRenewEnabled: Bool?

            public var DBClusterId: String?

            public var duration: Int32?

            public var periodUnit: String?

            public var regionId: String?

            public var renewalStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenewEnabled != nil {
                    map["AutoRenewEnabled"] = self.autoRenewEnabled!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.renewalStatus != nil {
                    map["RenewalStatus"] = self.renewalStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoRenewEnabled") {
                    self.autoRenewEnabled = dict["AutoRenewEnabled"] as! Bool
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("PeriodUnit") {
                    self.periodUnit = dict["PeriodUnit"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RenewalStatus") {
                    self.renewalStatus = dict["RenewalStatus"] as! String
                }
            }
        }
        public var autoRenewAttribute: [DescribeAutoRenewAttributeResponseBody.Items.AutoRenewAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenewAttribute != nil {
                var tmp : [Any] = []
                for k in self.autoRenewAttribute! {
                    tmp.append(k.toMap())
                }
                map["AutoRenewAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewAttribute") {
                self.autoRenewAttribute = dict["AutoRenewAttribute"] as! [DescribeAutoRenewAttributeResponseBody.Items.AutoRenewAttribute]
            }
        }
    }
    public var items: DescribeAutoRenewAttributeResponseBody.Items?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeAutoRenewAttributeResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class DescribeAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoRenewAttributeResponseBody?

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
            var model = DescribeAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableResourceRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var chargeType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableZoneList : Tea.TeaModel {
        public class SupportedMode : Tea.TeaModel {
            public class SupportedSerialList : Tea.TeaModel {
                public class SupportedFlexibleResource : Tea.TeaModel {
                    public class SupportedElasticIOResource : Tea.TeaModel {
                        public var maxCount: String?

                        public var minCount: String?

                        public var step: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.maxCount != nil {
                                map["MaxCount"] = self.maxCount!
                            }
                            if self.minCount != nil {
                                map["MinCount"] = self.minCount!
                            }
                            if self.step != nil {
                                map["Step"] = self.step!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("MaxCount") {
                                self.maxCount = dict["MaxCount"] as! String
                            }
                            if dict.keys.contains("MinCount") {
                                self.minCount = dict["MinCount"] as! String
                            }
                            if dict.keys.contains("Step") {
                                self.step = dict["Step"] as! String
                            }
                        }
                    }
                    public var storageType: String?

                    public var supportedComputeResource: [String]?

                    public var supportedElasticIOResource: DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedFlexibleResource.SupportedElasticIOResource?

                    public var supportedStorageResource: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportedElasticIOResource?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.storageType != nil {
                            map["StorageType"] = self.storageType!
                        }
                        if self.supportedComputeResource != nil {
                            map["SupportedComputeResource"] = self.supportedComputeResource!
                        }
                        if self.supportedElasticIOResource != nil {
                            map["SupportedElasticIOResource"] = self.supportedElasticIOResource?.toMap()
                        }
                        if self.supportedStorageResource != nil {
                            map["SupportedStorageResource"] = self.supportedStorageResource!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("StorageType") {
                            self.storageType = dict["StorageType"] as! String
                        }
                        if dict.keys.contains("SupportedComputeResource") {
                            self.supportedComputeResource = dict["SupportedComputeResource"] as! [String]
                        }
                        if dict.keys.contains("SupportedElasticIOResource") {
                            var model = DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedFlexibleResource.SupportedElasticIOResource()
                            model.fromMap(dict["SupportedElasticIOResource"] as! [String: Any])
                            self.supportedElasticIOResource = model
                        }
                        if dict.keys.contains("SupportedStorageResource") {
                            self.supportedStorageResource = dict["SupportedStorageResource"] as! [String]
                        }
                    }
                }
                public class SupportedInstanceClassList : Tea.TeaModel {
                    public class SupportedExecutorList : Tea.TeaModel {
                        public class NodeCount : Tea.TeaModel {
                            public var maxCount: String?

                            public var minCount: String?

                            public var step: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.maxCount != nil {
                                    map["MaxCount"] = self.maxCount!
                                }
                                if self.minCount != nil {
                                    map["MinCount"] = self.minCount!
                                }
                                if self.step != nil {
                                    map["Step"] = self.step!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("MaxCount") {
                                    self.maxCount = dict["MaxCount"] as! String
                                }
                                if dict.keys.contains("MinCount") {
                                    self.minCount = dict["MinCount"] as! String
                                }
                                if dict.keys.contains("Step") {
                                    self.step = dict["Step"] as! String
                                }
                            }
                        }
                        public var nodeCount: DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedExecutorList.NodeCount?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.nodeCount?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.nodeCount != nil {
                                map["NodeCount"] = self.nodeCount?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("NodeCount") {
                                var model = DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedExecutorList.NodeCount()
                                model.fromMap(dict["NodeCount"] as! [String: Any])
                                self.nodeCount = model
                            }
                        }
                    }
                    public class SupportedNodeCountList : Tea.TeaModel {
                        public class NodeCount : Tea.TeaModel {
                            public var maxCount: String?

                            public var minCount: String?

                            public var step: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.maxCount != nil {
                                    map["MaxCount"] = self.maxCount!
                                }
                                if self.minCount != nil {
                                    map["MinCount"] = self.minCount!
                                }
                                if self.step != nil {
                                    map["Step"] = self.step!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("MaxCount") {
                                    self.maxCount = dict["MaxCount"] as! String
                                }
                                if dict.keys.contains("MinCount") {
                                    self.minCount = dict["MinCount"] as! String
                                }
                                if dict.keys.contains("Step") {
                                    self.step = dict["Step"] as! String
                                }
                            }
                        }
                        public var nodeCount: DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedNodeCountList.NodeCount?

                        public var storageSize: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.nodeCount?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.nodeCount != nil {
                                map["NodeCount"] = self.nodeCount?.toMap()
                            }
                            if self.storageSize != nil {
                                map["StorageSize"] = self.storageSize!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("NodeCount") {
                                var model = DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedNodeCountList.NodeCount()
                                model.fromMap(dict["NodeCount"] as! [String: Any])
                                self.nodeCount = model
                            }
                            if dict.keys.contains("StorageSize") {
                                self.storageSize = dict["StorageSize"] as! [String]
                            }
                        }
                    }
                    public var instanceClass: String?

                    public var supportedExecutorList: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedExecutorList]?

                    public var supportedNodeCountList: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedNodeCountList]?

                    public var tips: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceClass != nil {
                            map["InstanceClass"] = self.instanceClass!
                        }
                        if self.supportedExecutorList != nil {
                            var tmp : [Any] = []
                            for k in self.supportedExecutorList! {
                                tmp.append(k.toMap())
                            }
                            map["SupportedExecutorList"] = tmp
                        }
                        if self.supportedNodeCountList != nil {
                            var tmp : [Any] = []
                            for k in self.supportedNodeCountList! {
                                tmp.append(k.toMap())
                            }
                            map["SupportedNodeCountList"] = tmp
                        }
                        if self.tips != nil {
                            map["Tips"] = self.tips!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceClass") {
                            self.instanceClass = dict["InstanceClass"] as! String
                        }
                        if dict.keys.contains("SupportedExecutorList") {
                            self.supportedExecutorList = dict["SupportedExecutorList"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedExecutorList]
                        }
                        if dict.keys.contains("SupportedNodeCountList") {
                            self.supportedNodeCountList = dict["SupportedNodeCountList"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList.SupportedNodeCountList]
                        }
                        if dict.keys.contains("Tips") {
                            self.tips = dict["Tips"] as! String
                        }
                    }
                }
                public var serial: String?

                public var supportedFlexibleResource: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedFlexibleResource]?

                public var supportedInstanceClassList: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serial != nil {
                        map["Serial"] = self.serial!
                    }
                    if self.supportedFlexibleResource != nil {
                        var tmp : [Any] = []
                        for k in self.supportedFlexibleResource! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedFlexibleResource"] = tmp
                    }
                    if self.supportedInstanceClassList != nil {
                        var tmp : [Any] = []
                        for k in self.supportedInstanceClassList! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedInstanceClassList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Serial") {
                        self.serial = dict["Serial"] as! String
                    }
                    if dict.keys.contains("SupportedFlexibleResource") {
                        self.supportedFlexibleResource = dict["SupportedFlexibleResource"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedFlexibleResource]
                    }
                    if dict.keys.contains("SupportedInstanceClassList") {
                        self.supportedInstanceClassList = dict["SupportedInstanceClassList"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList.SupportedInstanceClassList]
                    }
                }
            }
            public var mode: String?

            public var supportedSerialList: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.supportedSerialList != nil {
                    var tmp : [Any] = []
                    for k in self.supportedSerialList! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedSerialList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("SupportedSerialList") {
                    self.supportedSerialList = dict["SupportedSerialList"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode.SupportedSerialList]
                }
            }
        }
        public var supportedMode: [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode]?

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
            if self.supportedMode != nil {
                var tmp : [Any] = []
                for k in self.supportedMode! {
                    tmp.append(k.toMap())
                }
                map["SupportedMode"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedMode") {
                self.supportedMode = dict["SupportedMode"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList.SupportedMode]
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var availableZoneList: [DescribeAvailableResourceResponseBody.AvailableZoneList]?

    public var regionId: String?

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
        if self.availableZoneList != nil {
            var tmp : [Any] = []
            for k in self.availableZoneList! {
                tmp.append(k.toMap())
            }
            map["AvailableZoneList"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZoneList") {
            self.availableZoneList = dict["AvailableZoneList"] as! [DescribeAvailableResourceResponseBody.AvailableZoneList]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableResourceResponseBody?

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
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var enableBackupLog: String?

    public var logBackupRetentionPeriod: Int32?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("EnableBackupLog") {
            self.enableBackupLog = dict["EnableBackupLog"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("PreferredBackupPeriod") {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var DBClusterId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Backup : Tea.TeaModel {
            public var backupEndTime: String?

            public var backupId: String?

            public var backupMethod: String?

            public var backupSize: Int32?

            public var backupStartTime: String?

            public var backupType: String?

            public var DBClusterId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupEndTime") {
                    self.backupEndTime = dict["BackupEndTime"] as! String
                }
                if dict.keys.contains("BackupId") {
                    self.backupId = dict["BackupId"] as! String
                }
                if dict.keys.contains("BackupMethod") {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupSize") {
                    self.backupSize = dict["BackupSize"] as! Int32
                }
                if dict.keys.contains("BackupStartTime") {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupType") {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
            }
        }
        public var backup: [DescribeBackupsResponseBody.Items.Backup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backup != nil {
                var tmp : [Any] = []
                for k in self.backup! {
                    tmp.append(k.toMap())
                }
                map["Backup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backup") {
                self.backup = dict["Backup"] as! [DescribeBackupsResponseBody.Items.Backup]
            }
        }
    }
    public var items: DescribeBackupsResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeBackupsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupsResponseBody?

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
            var model = DescribeBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeColumnsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoIncrementColumn") {
                    self.autoIncrementColumn = dict["AutoIncrementColumn"] as! Bool
                }
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("PrimaryKey") {
                    self.primaryKey = dict["PrimaryKey"] as! Bool
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var column: [DescribeColumnsResponseBody.Items.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") {
                self.column = dict["Column"] as! [DescribeColumnsResponseBody.Items.Column]
            }
        }
    }
    public var items: DescribeColumnsResponseBody.Items?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeColumnsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColumnsResponseBody?

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
            var model = DescribeColumnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComputeResourceRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeComputeResourceResponseBody : Tea.TeaModel {
    public class ComputeResource : Tea.TeaModel {
        public var displayValue: String?

        public var realValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayValue != nil {
                map["DisplayValue"] = self.displayValue!
            }
            if self.realValue != nil {
                map["RealValue"] = self.realValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayValue") {
                self.displayValue = dict["DisplayValue"] as! String
            }
            if dict.keys.contains("RealValue") {
                self.realValue = dict["RealValue"] as! String
            }
        }
    }
    public var computeResource: [DescribeComputeResourceResponseBody.ComputeResource]?

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
        if self.computeResource != nil {
            var tmp : [Any] = []
            for k in self.computeResource! {
                tmp.append(k.toMap())
            }
            map["ComputeResource"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComputeResource") {
            self.computeResource = dict["ComputeResource"] as! [DescribeComputeResourceResponseBody.ComputeResource]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComputeResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComputeResourceResponseBody?

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
            var model = DescribeComputeResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConnectionCountRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeConnectionCountRecordsResponseBody : Tea.TeaModel {
    public class AccessIpRecords : Tea.TeaModel {
        public var accessIp: String?

        public var count: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIp != nil {
                map["AccessIp"] = self.accessIp!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessIp") {
                self.accessIp = dict["AccessIp"] as! String
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
        }
    }
    public class UserRecords : Tea.TeaModel {
        public var count: Int64?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var accessIpRecords: [DescribeConnectionCountRecordsResponseBody.AccessIpRecords]?

    public var DBClusterId: String?

    public var requestId: String?

    public var userRecords: [DescribeConnectionCountRecordsResponseBody.UserRecords]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessIpRecords != nil {
            var tmp : [Any] = []
            for k in self.accessIpRecords! {
                tmp.append(k.toMap())
            }
            map["AccessIpRecords"] = tmp
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userRecords != nil {
            var tmp : [Any] = []
            for k in self.userRecords! {
                tmp.append(k.toMap())
            }
            map["UserRecords"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessIpRecords") {
            self.accessIpRecords = dict["AccessIpRecords"] as! [DescribeConnectionCountRecordsResponseBody.AccessIpRecords]
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserRecords") {
            self.userRecords = dict["UserRecords"] as! [DescribeConnectionCountRecordsResponseBody.UserRecords]
        }
    }
}

public class DescribeConnectionCountRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConnectionCountRecordsResponseBody?

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
            var model = DescribeConnectionCountRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBClusterAccessWhiteListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class IPArray : Tea.TeaModel {
            public var DBClusterIPArrayAttribute: String?

            public var DBClusterIPArrayName: String?

            public var securityIPList: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterIPArrayAttribute != nil {
                    map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
                }
                if self.DBClusterIPArrayName != nil {
                    map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterIPArrayAttribute") {
                    self.DBClusterIPArrayAttribute = dict["DBClusterIPArrayAttribute"] as! String
                }
                if dict.keys.contains("DBClusterIPArrayName") {
                    self.DBClusterIPArrayName = dict["DBClusterIPArrayName"] as! String
                }
                if dict.keys.contains("SecurityIPList") {
                    self.securityIPList = dict["SecurityIPList"] as! String
                }
            }
        }
        public var IPArray: [DescribeDBClusterAccessWhiteListResponseBody.Items.IPArray]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IPArray != nil {
                var tmp : [Any] = []
                for k in self.IPArray! {
                    tmp.append(k.toMap())
                }
                map["IPArray"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IPArray") {
                self.IPArray = dict["IPArray"] as! [DescribeDBClusterAccessWhiteListResponseBody.Items.IPArray]
            }
        }
    }
    public var items: DescribeDBClusterAccessWhiteListResponseBody.Items?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeDBClusterAccessWhiteListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterAccessWhiteListResponseBody?

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
            var model = DescribeDBClusterAccessWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBClusterAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBCluster : Tea.TeaModel {
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! [DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags.Tag]
                    }
                }
            }
            public var category: String?

            public var commodityCode: String?

            public var computeResource: String?

            public var connectionString: String?

            public var creationTime: String?

            public var DBClusterDescription: String?

            public var DBClusterId: String?

            public var DBClusterNetworkType: String?

            public var DBClusterStatus: String?

            public var DBClusterType: String?

            public var DBNodeClass: String?

            public var DBNodeCount: Int64?

            public var DBNodeStorage: Int64?

            public var DBVersion: String?

            public var diskType: String?

            public var dtsJobId: String?

            public var elasticIOResource: Int32?

            public var enableAirflow: Bool?

            public var enableSpark: Bool?

            public var engine: String?

            public var engineVersion: String?

            public var executorCount: String?

            public var expireTime: String?

            public var expired: String?

            public var innerIp: String?

            public var innerPort: String?

            public var kmsId: String?

            public var lockMode: String?

            public var lockReason: String?

            public var maintainTime: String?

            public var mode: String?

            public var payType: String?

            public var port: Int32?

            public var rdsInstanceId: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var storageResource: String?

            public var tags: DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags?

            public var userENIStatus: Bool?

            public var VPCCloudInstanceId: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public var zoneId: String?

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
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.computeResource != nil {
                    map["ComputeResource"] = self.computeResource!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.DBClusterDescription != nil {
                    map["DBClusterDescription"] = self.DBClusterDescription!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.DBClusterNetworkType != nil {
                    map["DBClusterNetworkType"] = self.DBClusterNetworkType!
                }
                if self.DBClusterStatus != nil {
                    map["DBClusterStatus"] = self.DBClusterStatus!
                }
                if self.DBClusterType != nil {
                    map["DBClusterType"] = self.DBClusterType!
                }
                if self.DBNodeClass != nil {
                    map["DBNodeClass"] = self.DBNodeClass!
                }
                if self.DBNodeCount != nil {
                    map["DBNodeCount"] = self.DBNodeCount!
                }
                if self.DBNodeStorage != nil {
                    map["DBNodeStorage"] = self.DBNodeStorage!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.dtsJobId != nil {
                    map["DtsJobId"] = self.dtsJobId!
                }
                if self.elasticIOResource != nil {
                    map["ElasticIOResource"] = self.elasticIOResource!
                }
                if self.enableAirflow != nil {
                    map["EnableAirflow"] = self.enableAirflow!
                }
                if self.enableSpark != nil {
                    map["EnableSpark"] = self.enableSpark!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.executorCount != nil {
                    map["ExecutorCount"] = self.executorCount!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.innerIp != nil {
                    map["InnerIp"] = self.innerIp!
                }
                if self.innerPort != nil {
                    map["InnerPort"] = self.innerPort!
                }
                if self.kmsId != nil {
                    map["KmsId"] = self.kmsId!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainTime != nil {
                    map["MaintainTime"] = self.maintainTime!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.rdsInstanceId != nil {
                    map["RdsInstanceId"] = self.rdsInstanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.storageResource != nil {
                    map["StorageResource"] = self.storageResource!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.userENIStatus != nil {
                    map["UserENIStatus"] = self.userENIStatus!
                }
                if self.VPCCloudInstanceId != nil {
                    map["VPCCloudInstanceId"] = self.VPCCloudInstanceId!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("ComputeResource") {
                    self.computeResource = dict["ComputeResource"] as! String
                }
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DBClusterDescription") {
                    self.DBClusterDescription = dict["DBClusterDescription"] as! String
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("DBClusterNetworkType") {
                    self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
                }
                if dict.keys.contains("DBClusterStatus") {
                    self.DBClusterStatus = dict["DBClusterStatus"] as! String
                }
                if dict.keys.contains("DBClusterType") {
                    self.DBClusterType = dict["DBClusterType"] as! String
                }
                if dict.keys.contains("DBNodeClass") {
                    self.DBNodeClass = dict["DBNodeClass"] as! String
                }
                if dict.keys.contains("DBNodeCount") {
                    self.DBNodeCount = dict["DBNodeCount"] as! Int64
                }
                if dict.keys.contains("DBNodeStorage") {
                    self.DBNodeStorage = dict["DBNodeStorage"] as! Int64
                }
                if dict.keys.contains("DBVersion") {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("DtsJobId") {
                    self.dtsJobId = dict["DtsJobId"] as! String
                }
                if dict.keys.contains("ElasticIOResource") {
                    self.elasticIOResource = dict["ElasticIOResource"] as! Int32
                }
                if dict.keys.contains("EnableAirflow") {
                    self.enableAirflow = dict["EnableAirflow"] as! Bool
                }
                if dict.keys.contains("EnableSpark") {
                    self.enableSpark = dict["EnableSpark"] as! Bool
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExecutorCount") {
                    self.executorCount = dict["ExecutorCount"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! String
                }
                if dict.keys.contains("InnerIp") {
                    self.innerIp = dict["InnerIp"] as! String
                }
                if dict.keys.contains("InnerPort") {
                    self.innerPort = dict["InnerPort"] as! String
                }
                if dict.keys.contains("KmsId") {
                    self.kmsId = dict["KmsId"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MaintainTime") {
                    self.maintainTime = dict["MaintainTime"] as! String
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("RdsInstanceId") {
                    self.rdsInstanceId = dict["RdsInstanceId"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("StorageResource") {
                    self.storageResource = dict["StorageResource"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeDBClusterAttributeResponseBody.Items.DBCluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UserENIStatus") {
                    self.userENIStatus = dict["UserENIStatus"] as! Bool
                }
                if dict.keys.contains("VPCCloudInstanceId") {
                    self.VPCCloudInstanceId = dict["VPCCloudInstanceId"] as! String
                }
                if dict.keys.contains("VPCId") {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBCluster: [DescribeDBClusterAttributeResponseBody.Items.DBCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBCluster != nil {
                var tmp : [Any] = []
                for k in self.DBCluster! {
                    tmp.append(k.toMap())
                }
                map["DBCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBCluster") {
                self.DBCluster = dict["DBCluster"] as! [DescribeDBClusterAttributeResponseBody.Items.DBCluster]
            }
        }
    }
    public var items: DescribeDBClusterAttributeResponseBody.Items?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeDBClusterAttributeResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterAttributeResponseBody?

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
            var model = DescribeDBClusterAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterForecastRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var metricType: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("MetricType") {
            self.metricType = dict["MetricType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterForecastResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var name: String?

            public var values: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! String
                }
            }
        }
        public var key: String?

        public var series: [DescribeDBClusterForecastResponseBody.Performances.Series]?

        public var unit: String?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribeDBClusterForecastResponseBody.Performances.Series]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var performances: [DescribeDBClusterForecastResponseBody.Performances]?

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
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Performances") {
            self.performances = dict["Performances"] as! [DescribeDBClusterForecastResponseBody.Performances]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterForecastResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterForecastResponseBody?

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
            var model = DescribeDBClusterForecastResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterHealthReportRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterHealthReportResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var avg: String?

        public var key: String?

        public var max: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avg != nil {
                map["Avg"] = self.avg!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.max != nil {
                map["Max"] = self.max!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Avg") {
                self.avg = dict["Avg"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Max") {
                self.max = dict["Max"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var items: [DescribeDBClusterHealthReportResponseBody.Items]?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeDBClusterHealthReportResponseBody.Items]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterHealthReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterHealthReportResponseBody?

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
            var model = DescribeDBClusterHealthReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterHealthStatusRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDBClusterHealthStatusResponseBody : Tea.TeaModel {
    public class CS : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public class Executor : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public class Worker : Tea.TeaModel {
        public var activeCount: Int64?

        public var expectedCount: Int64?

        public var riskCount: Int64?

        public var status: String?

        public var unavailableCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeCount != nil {
                map["ActiveCount"] = self.activeCount!
            }
            if self.expectedCount != nil {
                map["ExpectedCount"] = self.expectedCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unavailableCount != nil {
                map["UnavailableCount"] = self.unavailableCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveCount") {
                self.activeCount = dict["ActiveCount"] as! Int64
            }
            if dict.keys.contains("ExpectedCount") {
                self.expectedCount = dict["ExpectedCount"] as! Int64
            }
            if dict.keys.contains("RiskCount") {
                self.riskCount = dict["RiskCount"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnavailableCount") {
                self.unavailableCount = dict["UnavailableCount"] as! Int64
            }
        }
    }
    public var CS: DescribeDBClusterHealthStatusResponseBody.CS?

    public var executor: DescribeDBClusterHealthStatusResponseBody.Executor?

    public var instanceStatus: String?

    public var requestId: String?

    public var worker: DescribeDBClusterHealthStatusResponseBody.Worker?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CS?.validate()
        try self.executor?.validate()
        try self.worker?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CS != nil {
            map["CS"] = self.CS?.toMap()
        }
        if self.executor != nil {
            map["Executor"] = self.executor?.toMap()
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.worker != nil {
            map["Worker"] = self.worker?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CS") {
            var model = DescribeDBClusterHealthStatusResponseBody.CS()
            model.fromMap(dict["CS"] as! [String: Any])
            self.CS = model
        }
        if dict.keys.contains("Executor") {
            var model = DescribeDBClusterHealthStatusResponseBody.Executor()
            model.fromMap(dict["Executor"] as! [String: Any])
            self.executor = model
        }
        if dict.keys.contains("InstanceStatus") {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Worker") {
            var model = DescribeDBClusterHealthStatusResponseBody.Worker()
            model.fromMap(dict["Worker"] as! [String: Any])
            self.worker = model
        }
    }
}

public class DescribeDBClusterHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterHealthStatusResponseBody?

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
            var model = DescribeDBClusterHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterNetInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBClusterNetInfoResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Address : Tea.TeaModel {
            public var connectionString: String?

            public var connectionStringPrefix: String?

            public var IPAddress: String?

            public var netType: String?

            public var port: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.connectionStringPrefix != nil {
                    map["ConnectionStringPrefix"] = self.connectionStringPrefix!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("ConnectionStringPrefix") {
                    self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
                }
                if dict.keys.contains("IPAddress") {
                    self.IPAddress = dict["IPAddress"] as! String
                }
                if dict.keys.contains("NetType") {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("VPCId") {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public var address: [DescribeDBClusterNetInfoResponseBody.Items.Address]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                var tmp : [Any] = []
                for k in self.address! {
                    tmp.append(k.toMap())
                }
                map["Address"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! [DescribeDBClusterNetInfoResponseBody.Items.Address]
            }
        }
    }
    public var clusterNetworkType: String?

    public var items: DescribeDBClusterNetInfoResponseBody.Items?

    public var requestId: String?

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
        if self.clusterNetworkType != nil {
            map["ClusterNetworkType"] = self.clusterNetworkType!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterNetworkType") {
            self.clusterNetworkType = dict["ClusterNetworkType"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeDBClusterNetInfoResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterNetInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterNetInfoResponseBody?

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
            var model = DescribeDBClusterNetInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var key: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var key: String?

        public var series: [DescribeDBClusterPerformanceResponseBody.Performances.Series]?

        public var unit: String?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribeDBClusterPerformanceResponseBody.Performances.Series]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performances: [DescribeDBClusterPerformanceResponseBody.Performances]?

    public var requestId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Performances") {
            self.performances = dict["Performances"] as! [DescribeDBClusterPerformanceResponseBody.Performances]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterPerformanceResponseBody?

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
            var model = DescribeDBClusterPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterResourcePoolPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var key: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourcePools: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourcePools != nil {
            map["ResourcePools"] = self.resourcePools!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourcePools") {
            self.resourcePools = dict["ResourcePools"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterResourcePoolPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class ResourcePoolPerformances : Tea.TeaModel {
            public class ResourcePoolSeries : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var resourcePoolName: String?

            public var resourcePoolSeries: [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances.ResourcePoolPerformances.ResourcePoolSeries]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourcePoolName != nil {
                    map["ResourcePoolName"] = self.resourcePoolName!
                }
                if self.resourcePoolSeries != nil {
                    var tmp : [Any] = []
                    for k in self.resourcePoolSeries! {
                        tmp.append(k.toMap())
                    }
                    map["ResourcePoolSeries"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourcePoolName") {
                    self.resourcePoolName = dict["ResourcePoolName"] as! String
                }
                if dict.keys.contains("ResourcePoolSeries") {
                    self.resourcePoolSeries = dict["ResourcePoolSeries"] as! [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances.ResourcePoolPerformances.ResourcePoolSeries]
                }
            }
        }
        public var key: String?

        public var resourcePoolPerformances: [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances.ResourcePoolPerformances]?

        public var unit: String?

        public override init() {
            super.init()
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
            if self.resourcePoolPerformances != nil {
                var tmp : [Any] = []
                for k in self.resourcePoolPerformances! {
                    tmp.append(k.toMap())
                }
                map["ResourcePoolPerformances"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("ResourcePoolPerformances") {
                self.resourcePoolPerformances = dict["ResourcePoolPerformances"] as! [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances.ResourcePoolPerformances]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performances: [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances]?

    public var requestId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Performances") {
            self.performances = dict["Performances"] as! [DescribeDBClusterResourcePoolPerformanceResponseBody.Performances]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterResourcePoolPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterResourcePoolPerformanceResponseBody?

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
            var model = DescribeDBClusterResourcePoolPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClustersRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var DBClusterDescription: String?

    public var DBClusterIds: String?

    public var DBClusterStatus: String?

    public var DBVersion: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeDBClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
        }
        if self.DBClusterStatus != nil {
            map["DBClusterStatus"] = self.DBClusterStatus!
        }
        if self.DBVersion != nil {
            map["DBVersion"] = self.DBVersion!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterIds") {
            self.DBClusterIds = dict["DBClusterIds"] as! String
        }
        if dict.keys.contains("DBClusterStatus") {
            self.DBClusterStatus = dict["DBClusterStatus"] as! String
        }
        if dict.keys.contains("DBVersion") {
            self.DBVersion = dict["DBVersion"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeDBClustersRequest.Tag]
        }
    }
}

public class DescribeDBClustersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBCluster : Tea.TeaModel {
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeDBClustersResponseBody.Items.DBCluster.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! [DescribeDBClustersResponseBody.Items.DBCluster.Tags.Tag]
                    }
                }
            }
            public var category: String?

            public var commodityCode: String?

            public var computeResource: String?

            public var connectionString: String?

            public var createTime: String?

            public var DBClusterDescription: String?

            public var DBClusterId: String?

            public var DBClusterNetworkType: String?

            public var DBClusterStatus: String?

            public var DBClusterType: String?

            public var DBNodeClass: String?

            public var DBNodeCount: Int64?

            public var DBNodeStorage: Int64?

            public var DBVersion: String?

            public var diskType: String?

            public var dtsJobId: String?

            public var elasticIOResource: Int32?

            public var engine: String?

            public var executorCount: String?

            public var expireTime: String?

            public var expired: String?

            public var innerIp: String?

            public var innerPort: String?

            public var lockMode: String?

            public var lockReason: String?

            public var mode: String?

            public var payType: String?

            public var port: String?

            public var rdsInstanceId: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var storageResource: String?

            public var tags: DescribeDBClustersResponseBody.Items.DBCluster.Tags?

            public var VPCCloudInstanceId: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public var zoneId: String?

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
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.computeResource != nil {
                    map["ComputeResource"] = self.computeResource!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBClusterDescription != nil {
                    map["DBClusterDescription"] = self.DBClusterDescription!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.DBClusterNetworkType != nil {
                    map["DBClusterNetworkType"] = self.DBClusterNetworkType!
                }
                if self.DBClusterStatus != nil {
                    map["DBClusterStatus"] = self.DBClusterStatus!
                }
                if self.DBClusterType != nil {
                    map["DBClusterType"] = self.DBClusterType!
                }
                if self.DBNodeClass != nil {
                    map["DBNodeClass"] = self.DBNodeClass!
                }
                if self.DBNodeCount != nil {
                    map["DBNodeCount"] = self.DBNodeCount!
                }
                if self.DBNodeStorage != nil {
                    map["DBNodeStorage"] = self.DBNodeStorage!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.dtsJobId != nil {
                    map["DtsJobId"] = self.dtsJobId!
                }
                if self.elasticIOResource != nil {
                    map["ElasticIOResource"] = self.elasticIOResource!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.executorCount != nil {
                    map["ExecutorCount"] = self.executorCount!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.innerIp != nil {
                    map["InnerIp"] = self.innerIp!
                }
                if self.innerPort != nil {
                    map["InnerPort"] = self.innerPort!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.rdsInstanceId != nil {
                    map["RdsInstanceId"] = self.rdsInstanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.storageResource != nil {
                    map["StorageResource"] = self.storageResource!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.VPCCloudInstanceId != nil {
                    map["VPCCloudInstanceId"] = self.VPCCloudInstanceId!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("ComputeResource") {
                    self.computeResource = dict["ComputeResource"] as! String
                }
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DBClusterDescription") {
                    self.DBClusterDescription = dict["DBClusterDescription"] as! String
                }
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("DBClusterNetworkType") {
                    self.DBClusterNetworkType = dict["DBClusterNetworkType"] as! String
                }
                if dict.keys.contains("DBClusterStatus") {
                    self.DBClusterStatus = dict["DBClusterStatus"] as! String
                }
                if dict.keys.contains("DBClusterType") {
                    self.DBClusterType = dict["DBClusterType"] as! String
                }
                if dict.keys.contains("DBNodeClass") {
                    self.DBNodeClass = dict["DBNodeClass"] as! String
                }
                if dict.keys.contains("DBNodeCount") {
                    self.DBNodeCount = dict["DBNodeCount"] as! Int64
                }
                if dict.keys.contains("DBNodeStorage") {
                    self.DBNodeStorage = dict["DBNodeStorage"] as! Int64
                }
                if dict.keys.contains("DBVersion") {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("DtsJobId") {
                    self.dtsJobId = dict["DtsJobId"] as! String
                }
                if dict.keys.contains("ElasticIOResource") {
                    self.elasticIOResource = dict["ElasticIOResource"] as! Int32
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("ExecutorCount") {
                    self.executorCount = dict["ExecutorCount"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! String
                }
                if dict.keys.contains("InnerIp") {
                    self.innerIp = dict["InnerIp"] as! String
                }
                if dict.keys.contains("InnerPort") {
                    self.innerPort = dict["InnerPort"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("RdsInstanceId") {
                    self.rdsInstanceId = dict["RdsInstanceId"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("StorageResource") {
                    self.storageResource = dict["StorageResource"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeDBClustersResponseBody.Items.DBCluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VPCCloudInstanceId") {
                    self.VPCCloudInstanceId = dict["VPCCloudInstanceId"] as! String
                }
                if dict.keys.contains("VPCId") {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBCluster: [DescribeDBClustersResponseBody.Items.DBCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBCluster != nil {
                var tmp : [Any] = []
                for k in self.DBCluster! {
                    tmp.append(k.toMap())
                }
                map["DBCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBCluster") {
                self.DBCluster = dict["DBCluster"] as! [DescribeDBClustersResponseBody.Items.DBCluster]
            }
        }
    }
    public var items: DescribeDBClustersResponseBody.Items?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeDBClustersResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClustersResponseBody?

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
            var model = DescribeDBClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBResourceGroupResponseBody : Tea.TeaModel {
    public class GroupsInfo : Tea.TeaModel {
        public var createTime: String?

        public var groupName: String?

        public var groupType: String?

        public var groupUsers: String?

        public var nodeNum: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupType != nil {
                map["GroupType"] = self.groupType!
            }
            if self.groupUsers != nil {
                map["GroupUsers"] = self.groupUsers!
            }
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("GroupUsers") {
                self.groupUsers = dict["GroupUsers"] as! String
            }
            if dict.keys.contains("NodeNum") {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var groupsInfo: [DescribeDBResourceGroupResponseBody.GroupsInfo]?

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
        if self.groupsInfo != nil {
            var tmp : [Any] = []
            for k in self.groupsInfo! {
                tmp.append(k.toMap())
            }
            map["GroupsInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupsInfo") {
            self.groupsInfo = dict["GroupsInfo"] as! [DescribeDBResourceGroupResponseBody.GroupsInfo]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBResourceGroupResponseBody?

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
            var model = DescribeDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBResourcePoolRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBResourcePoolResponseBody : Tea.TeaModel {
    public class PoolsInfo : Tea.TeaModel {
        public var createTime: String?

        public var nodeNum: Int32?

        public var poolName: String?

        public var poolUsers: String?

        public var queryType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.poolName != nil {
                map["PoolName"] = self.poolName!
            }
            if self.poolUsers != nil {
                map["PoolUsers"] = self.poolUsers!
            }
            if self.queryType != nil {
                map["QueryType"] = self.queryType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("NodeNum") {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("PoolName") {
                self.poolName = dict["PoolName"] as! String
            }
            if dict.keys.contains("PoolUsers") {
                self.poolUsers = dict["PoolUsers"] as! String
            }
            if dict.keys.contains("QueryType") {
                self.queryType = dict["QueryType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var poolsInfo: [DescribeDBResourcePoolResponseBody.PoolsInfo]?

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
        if self.poolsInfo != nil {
            var tmp : [Any] = []
            for k in self.poolsInfo! {
                tmp.append(k.toMap())
            }
            map["PoolsInfo"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PoolsInfo") {
            self.poolsInfo = dict["PoolsInfo"] as! [DescribeDBResourcePoolResponseBody.PoolsInfo]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBResourcePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBResourcePoolResponseBody?

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
            var model = DescribeDBResourcePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisDimensionsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var lang: String?

    public var queryCondition: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("QueryCondition") {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDiagnosisDimensionsResponseBody : Tea.TeaModel {
    public var clientIps: [String]?

    public var databases: [String]?

    public var requestId: String?

    public var resourceGroups: [String]?

    public var userNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIps != nil {
            map["ClientIps"] = self.clientIps!
        }
        if self.databases != nil {
            map["Databases"] = self.databases!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroups != nil {
            map["ResourceGroups"] = self.resourceGroups!
        }
        if self.userNames != nil {
            map["UserNames"] = self.userNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIps") {
            self.clientIps = dict["ClientIps"] as! [String]
        }
        if dict.keys.contains("Databases") {
            self.databases = dict["Databases"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroups") {
            self.resourceGroups = dict["ResourceGroups"] as! [String]
        }
        if dict.keys.contains("UserNames") {
            self.userNames = dict["UserNames"] as! [String]
        }
    }
}

public class DescribeDiagnosisDimensionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisDimensionsResponseBody?

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
            var model = DescribeDiagnosisDimensionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisRecordsRequest : Tea.TeaModel {
    public var clientIp: String?

    public var DBClusterId: String?

    public var database: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var maxPeakMemory: Int64?

    public var maxScanSize: Int64?

    public var minPeakMemory: Int64?

    public var minScanSize: Int64?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var patternId: Int64?

    public var queryCondition: String?

    public var regionId: String?

    public var resourceGroup: String?

    public var startTime: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxPeakMemory != nil {
            map["MaxPeakMemory"] = self.maxPeakMemory!
        }
        if self.maxScanSize != nil {
            map["MaxScanSize"] = self.maxScanSize!
        }
        if self.minPeakMemory != nil {
            map["MinPeakMemory"] = self.minPeakMemory!
        }
        if self.minScanSize != nil {
            map["MinScanSize"] = self.minScanSize!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.patternId != nil {
            map["PatternId"] = self.patternId!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxPeakMemory") {
            self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
        }
        if dict.keys.contains("MaxScanSize") {
            self.maxScanSize = dict["MaxScanSize"] as! Int64
        }
        if dict.keys.contains("MinPeakMemory") {
            self.minPeakMemory = dict["MinPeakMemory"] as! Int64
        }
        if dict.keys.contains("MinScanSize") {
            self.minScanSize = dict["MinScanSize"] as! Int64
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PatternId") {
            self.patternId = dict["PatternId"] as! Int64
        }
        if dict.keys.contains("QueryCondition") {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroup") {
            self.resourceGroup = dict["ResourceGroup"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeDiagnosisRecordsResponseBody : Tea.TeaModel {
    public class Querys : Tea.TeaModel {
        public var clientIp: String?

        public var cost: Int64?

        public var database: String?

        public var etlWriteRows: Int64?

        public var executionTime: Int64?

        public var outputDataSize: Int64?

        public var outputRows: Int64?

        public var peakMemory: Int64?

        public var processId: String?

        public var queueTime: Int64?

        public var rcHost: String?

        public var resourceCostRank: Int32?

        public var resourceGroup: String?

        public var SQL: String?

        public var SQLTruncated: Bool?

        public var SQLTruncatedThreshold: Int64?

        public var scanRows: Int64?

        public var scanSize: Int64?

        public var startTime: Int64?

        public var status: String?

        public var totalPlanningTime: Int64?

        public var totalStages: Int32?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.etlWriteRows != nil {
                map["EtlWriteRows"] = self.etlWriteRows!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.outputDataSize != nil {
                map["OutputDataSize"] = self.outputDataSize!
            }
            if self.outputRows != nil {
                map["OutputRows"] = self.outputRows!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.queueTime != nil {
                map["QueueTime"] = self.queueTime!
            }
            if self.rcHost != nil {
                map["RcHost"] = self.rcHost!
            }
            if self.resourceCostRank != nil {
                map["ResourceCostRank"] = self.resourceCostRank!
            }
            if self.resourceGroup != nil {
                map["ResourceGroup"] = self.resourceGroup!
            }
            if self.SQL != nil {
                map["SQL"] = self.SQL!
            }
            if self.SQLTruncated != nil {
                map["SQLTruncated"] = self.SQLTruncated!
            }
            if self.SQLTruncatedThreshold != nil {
                map["SQLTruncatedThreshold"] = self.SQLTruncatedThreshold!
            }
            if self.scanRows != nil {
                map["ScanRows"] = self.scanRows!
            }
            if self.scanSize != nil {
                map["ScanSize"] = self.scanSize!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalPlanningTime != nil {
                map["TotalPlanningTime"] = self.totalPlanningTime!
            }
            if self.totalStages != nil {
                map["TotalStages"] = self.totalStages!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("Cost") {
                self.cost = dict["Cost"] as! Int64
            }
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("EtlWriteRows") {
                self.etlWriteRows = dict["EtlWriteRows"] as! Int64
            }
            if dict.keys.contains("ExecutionTime") {
                self.executionTime = dict["ExecutionTime"] as! Int64
            }
            if dict.keys.contains("OutputDataSize") {
                self.outputDataSize = dict["OutputDataSize"] as! Int64
            }
            if dict.keys.contains("OutputRows") {
                self.outputRows = dict["OutputRows"] as! Int64
            }
            if dict.keys.contains("PeakMemory") {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("QueueTime") {
                self.queueTime = dict["QueueTime"] as! Int64
            }
            if dict.keys.contains("RcHost") {
                self.rcHost = dict["RcHost"] as! String
            }
            if dict.keys.contains("ResourceCostRank") {
                self.resourceCostRank = dict["ResourceCostRank"] as! Int32
            }
            if dict.keys.contains("ResourceGroup") {
                self.resourceGroup = dict["ResourceGroup"] as! String
            }
            if dict.keys.contains("SQL") {
                self.SQL = dict["SQL"] as! String
            }
            if dict.keys.contains("SQLTruncated") {
                self.SQLTruncated = dict["SQLTruncated"] as! Bool
            }
            if dict.keys.contains("SQLTruncatedThreshold") {
                self.SQLTruncatedThreshold = dict["SQLTruncatedThreshold"] as! Int64
            }
            if dict.keys.contains("ScanRows") {
                self.scanRows = dict["ScanRows"] as! Int64
            }
            if dict.keys.contains("ScanSize") {
                self.scanSize = dict["ScanSize"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalPlanningTime") {
                self.totalPlanningTime = dict["TotalPlanningTime"] as! Int64
            }
            if dict.keys.contains("TotalStages") {
                self.totalStages = dict["TotalStages"] as! Int32
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var querys: [DescribeDiagnosisRecordsResponseBody.Querys]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.querys != nil {
            var tmp : [Any] = []
            for k in self.querys! {
                tmp.append(k.toMap())
            }
            map["Querys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Querys") {
            self.querys = dict["Querys"] as! [DescribeDiagnosisRecordsResponseBody.Querys]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDiagnosisRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisRecordsResponseBody?

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
            var model = DescribeDiagnosisRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var lang: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDownloadRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var downloadId: Int64?

        public var exceptionMsg: String?

        public var fileName: String?

        public var status: String?

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
            if self.downloadId != nil {
                map["DownloadId"] = self.downloadId!
            }
            if self.exceptionMsg != nil {
                map["ExceptionMsg"] = self.exceptionMsg!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadId") {
                self.downloadId = dict["DownloadId"] as! Int64
            }
            if dict.keys.contains("ExceptionMsg") {
                self.exceptionMsg = dict["ExceptionMsg"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var records: [DescribeDownloadRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") {
            self.records = dict["Records"] as! [DescribeDownloadRecordsResponseBody.Records]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDownloadRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDownloadRecordsResponseBody?

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
            var model = DescribeDownloadRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEIURangeRequest : Tea.TeaModel {
    public var computeResource: String?

    public var DBClusterId: String?

    public var operation: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComputeResource") {
            self.computeResource = dict["ComputeResource"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeEIURangeResponseBody : Tea.TeaModel {
    public class EIUInfo : Tea.TeaModel {
        public var defaultValue: String?

        public var EIURange: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.EIURange != nil {
                map["EIURange"] = self.EIURange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("EIURange") {
                self.EIURange = dict["EIURange"] as! [Int64]
            }
        }
    }
    public var EIUInfo: DescribeEIURangeResponseBody.EIUInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.EIUInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.EIUInfo != nil {
            map["EIUInfo"] = self.EIUInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EIUInfo") {
            var model = DescribeEIURangeResponseBody.EIUInfo()
            model.fromMap(dict["EIUInfo"] as! [String: Any])
            self.EIUInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEIURangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEIURangeResponseBody?

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
            var model = DescribeEIURangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticDailyPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticDailyPlanDay: String?

    public var elasticDailyPlanStatusList: String?

    public var elasticPlanName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourcePoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticDailyPlanDay != nil {
            map["ElasticDailyPlanDay"] = self.elasticDailyPlanDay!
        }
        if self.elasticDailyPlanStatusList != nil {
            map["ElasticDailyPlanStatusList"] = self.elasticDailyPlanStatusList!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourcePoolName != nil {
            map["ResourcePoolName"] = self.resourcePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticDailyPlanDay") {
            self.elasticDailyPlanDay = dict["ElasticDailyPlanDay"] as! String
        }
        if dict.keys.contains("ElasticDailyPlanStatusList") {
            self.elasticDailyPlanStatusList = dict["ElasticDailyPlanStatusList"] as! String
        }
        if dict.keys.contains("ElasticPlanName") {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourcePoolName") {
            self.resourcePoolName = dict["ResourcePoolName"] as! String
        }
    }
}

public class DescribeElasticDailyPlanResponseBody : Tea.TeaModel {
    public class ElasticDailyPlanList : Tea.TeaModel {
        public var day: String?

        public var elasticNodeNum: Int32?

        public var endTs: String?

        public var planEndTs: String?

        public var planName: String?

        public var planStartTs: String?

        public var resourcePoolName: String?

        public var startTs: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.day != nil {
                map["Day"] = self.day!
            }
            if self.elasticNodeNum != nil {
                map["ElasticNodeNum"] = self.elasticNodeNum!
            }
            if self.endTs != nil {
                map["EndTs"] = self.endTs!
            }
            if self.planEndTs != nil {
                map["PlanEndTs"] = self.planEndTs!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.planStartTs != nil {
                map["PlanStartTs"] = self.planStartTs!
            }
            if self.resourcePoolName != nil {
                map["ResourcePoolName"] = self.resourcePoolName!
            }
            if self.startTs != nil {
                map["StartTs"] = self.startTs!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Day") {
                self.day = dict["Day"] as! String
            }
            if dict.keys.contains("ElasticNodeNum") {
                self.elasticNodeNum = dict["ElasticNodeNum"] as! Int32
            }
            if dict.keys.contains("EndTs") {
                self.endTs = dict["EndTs"] as! String
            }
            if dict.keys.contains("PlanEndTs") {
                self.planEndTs = dict["PlanEndTs"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("PlanStartTs") {
                self.planStartTs = dict["PlanStartTs"] as! String
            }
            if dict.keys.contains("ResourcePoolName") {
                self.resourcePoolName = dict["ResourcePoolName"] as! String
            }
            if dict.keys.contains("StartTs") {
                self.startTs = dict["StartTs"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var elasticDailyPlanList: [DescribeElasticDailyPlanResponseBody.ElasticDailyPlanList]?

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
        if self.elasticDailyPlanList != nil {
            var tmp : [Any] = []
            for k in self.elasticDailyPlanList! {
                tmp.append(k.toMap())
            }
            map["ElasticDailyPlanList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticDailyPlanList") {
            self.elasticDailyPlanList = dict["ElasticDailyPlanList"] as! [DescribeElasticDailyPlanResponseBody.ElasticDailyPlanList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeElasticDailyPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticDailyPlanResponseBody?

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
            var model = DescribeElasticDailyPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanEnable: Bool?

    public var elasticPlanName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourcePoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanEnable != nil {
            map["ElasticPlanEnable"] = self.elasticPlanEnable!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourcePoolName != nil {
            map["ResourcePoolName"] = self.resourcePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanEnable") {
            self.elasticPlanEnable = dict["ElasticPlanEnable"] as! Bool
        }
        if dict.keys.contains("ElasticPlanName") {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourcePoolName") {
            self.resourcePoolName = dict["ResourcePoolName"] as! String
        }
    }
}

public class DescribeElasticPlanResponseBody : Tea.TeaModel {
    public class ElasticPlanList : Tea.TeaModel {
        public var elasticNodeNum: Int32?

        public var enable: Bool?

        public var endDay: String?

        public var endTime: String?

        public var planName: String?

        public var resourcePoolName: String?

        public var startDay: String?

        public var startTime: String?

        public var weeklyRepeat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNodeNum != nil {
                map["ElasticNodeNum"] = self.elasticNodeNum!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.endDay != nil {
                map["EndDay"] = self.endDay!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.planName != nil {
                map["PlanName"] = self.planName!
            }
            if self.resourcePoolName != nil {
                map["ResourcePoolName"] = self.resourcePoolName!
            }
            if self.startDay != nil {
                map["StartDay"] = self.startDay!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.weeklyRepeat != nil {
                map["WeeklyRepeat"] = self.weeklyRepeat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ElasticNodeNum") {
                self.elasticNodeNum = dict["ElasticNodeNum"] as! Int32
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("EndDay") {
                self.endDay = dict["EndDay"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("PlanName") {
                self.planName = dict["PlanName"] as! String
            }
            if dict.keys.contains("ResourcePoolName") {
                self.resourcePoolName = dict["ResourcePoolName"] as! String
            }
            if dict.keys.contains("StartDay") {
                self.startDay = dict["StartDay"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("WeeklyRepeat") {
                self.weeklyRepeat = dict["WeeklyRepeat"] as! String
            }
        }
    }
    public var elasticPlanList: [DescribeElasticPlanResponseBody.ElasticPlanList]?

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
        if self.elasticPlanList != nil {
            var tmp : [Any] = []
            for k in self.elasticPlanList! {
                tmp.append(k.toMap())
            }
            map["ElasticPlanList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticPlanList") {
            self.elasticPlanList = dict["ElasticPlanList"] as! [DescribeElasticPlanResponseBody.ElasticPlanList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticPlanResponseBody?

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
            var model = DescribeElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInclinedTablesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TableType") {
            self.tableType = dict["TableType"] as! String
        }
    }
}

public class DescribeInclinedTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var isIncline: Bool?

            public var name: String?

            public var schema: String?

            public var size: Int64?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isIncline != nil {
                    map["IsIncline"] = self.isIncline!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsIncline") {
                    self.isIncline = dict["IsIncline"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Schema") {
                    self.schema = dict["Schema"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var table: [DescribeInclinedTablesResponseBody.Items.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") {
                self.table = dict["Table"] as! [DescribeInclinedTablesResponseBody.Items.Table]
            }
        }
    }
    public var items: DescribeInclinedTablesResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeInclinedTablesResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeInclinedTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInclinedTablesResponseBody?

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
            var model = DescribeInclinedTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadTasksRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBName: String?

    public var endTime: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DescribeLoadTasksRecordsResponseBody : Tea.TeaModel {
    public class LoadTasksRecords : Tea.TeaModel {
        public var createTime: String?

        public var DBName: String?

        public var jobName: String?

        public var processID: String?

        public var processRows: Int64?

        public var sql: String?

        public var state: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.processID != nil {
                map["ProcessID"] = self.processID!
            }
            if self.processRows != nil {
                map["ProcessRows"] = self.processRows!
            }
            if self.sql != nil {
                map["Sql"] = self.sql!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("ProcessID") {
                self.processID = dict["ProcessID"] as! String
            }
            if dict.keys.contains("ProcessRows") {
                self.processRows = dict["ProcessRows"] as! Int64
            }
            if dict.keys.contains("Sql") {
                self.sql = dict["Sql"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var loadTasksRecords: [DescribeLoadTasksRecordsResponseBody.LoadTasksRecords]?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.loadTasksRecords != nil {
            var tmp : [Any] = []
            for k in self.loadTasksRecords! {
                tmp.append(k.toMap())
            }
            map["LoadTasksRecords"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("LoadTasksRecords") {
            self.loadTasksRecords = dict["LoadTasksRecords"] as! [DescribeLoadTasksRecordsResponseBody.LoadTasksRecords]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeLoadTasksRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadTasksRecordsResponseBody?

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
            var model = DescribeLoadTasksRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMaintenanceActionRequest : Tea.TeaModel {
    public var isHistory: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.isHistory != nil {
            map["IsHistory"] = self.isHistory!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsHistory") {
            self.isHistory = dict["IsHistory"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class DescribeMaintenanceActionResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var createdTime: String?

        public var DBClusterId: String?

        public var DBType: String?

        public var DBVersion: String?

        public var deadline: String?

        public var id: Int32?

        public var modifiedTime: String?

        public var prepareInterval: String?

        public var region: String?

        public var resultInfo: String?

        public var startTime: String?

        public var status: String?

        public var switchTime: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.DBType != nil {
                map["DBType"] = self.DBType!
            }
            if self.DBVersion != nil {
                map["DBVersion"] = self.DBVersion!
            }
            if self.deadline != nil {
                map["Deadline"] = self.deadline!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.prepareInterval != nil {
                map["PrepareInterval"] = self.prepareInterval!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resultInfo != nil {
                map["ResultInfo"] = self.resultInfo!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.switchTime != nil {
                map["SwitchTime"] = self.switchTime!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("DBType") {
                self.DBType = dict["DBType"] as! String
            }
            if dict.keys.contains("DBVersion") {
                self.DBVersion = dict["DBVersion"] as! String
            }
            if dict.keys.contains("Deadline") {
                self.deadline = dict["Deadline"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PrepareInterval") {
                self.prepareInterval = dict["PrepareInterval"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResultInfo") {
                self.resultInfo = dict["ResultInfo"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SwitchTime") {
                self.switchTime = dict["SwitchTime"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var items: [DescribeMaintenanceActionResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeMaintenanceActionResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class DescribeMaintenanceActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMaintenanceActionResponseBody?

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
            var model = DescribeMaintenanceActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOperatorPermissionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeOperatorPermissionResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var DBClusterId: String?

    public var expiredTime: String?

    public var privileges: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("Privileges") {
            self.privileges = dict["Privileges"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOperatorPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOperatorPermissionResponseBody?

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
            var model = DescribeOperatorPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePatternPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var patternId: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.patternId != nil {
            map["PatternId"] = self.patternId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PatternId") {
            self.patternId = dict["PatternId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribePatternPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
                }
            }
        }
        public var key: String?

        public var series: [DescribePatternPerformanceResponseBody.Performances.Series]?

        public var unit: String?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribePatternPerformanceResponseBody.Performances.Series]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var endTime: String?

    public var performances: [DescribePatternPerformanceResponseBody.Performances]?

    public var requestId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Performances") {
            self.performances = dict["Performances"] as! [DescribePatternPerformanceResponseBody.Performances]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribePatternPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePatternPerformanceResponseBody?

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
            var model = DescribePatternPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProcessListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var keyword: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var runningTime: Int32?

    public var showFull: Bool?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.runningTime != nil {
            map["RunningTime"] = self.runningTime!
        }
        if self.showFull != nil {
            map["ShowFull"] = self.showFull!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RunningTime") {
            self.runningTime = dict["RunningTime"] as! Int32
        }
        if dict.keys.contains("ShowFull") {
            self.showFull = dict["ShowFull"] as! Bool
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeProcessListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Process : Tea.TeaModel {
            public var command: String?

            public var DB: String?

            public var host: String?

            public var id: Int32?

            public var info: String?

            public var processId: String?

            public var startTime: String?

            public var time: Int32?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.DB != nil {
                    map["DB"] = self.DB!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.info != nil {
                    map["Info"] = self.info!
                }
                if self.processId != nil {
                    map["ProcessId"] = self.processId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! String
                }
                if dict.keys.contains("DB") {
                    self.DB = dict["DB"] as! String
                }
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Info") {
                    self.info = dict["Info"] as! String
                }
                if dict.keys.contains("ProcessId") {
                    self.processId = dict["ProcessId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int32
                }
                if dict.keys.contains("User") {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var process: [DescribeProcessListResponseBody.Items.Process]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.process != nil {
                var tmp : [Any] = []
                for k in self.process! {
                    tmp.append(k.toMap())
                }
                map["Process"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Process") {
                self.process = dict["Process"] as! [DescribeProcessListResponseBody.Items.Process]
            }
        }
    }
    public var items: DescribeProcessListResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeProcessListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeProcessListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessListResponseBody?

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
            var model = DescribeProcessListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
                    public var localName: String?

                    public var vpcEnabled: Bool?

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
                        if self.localName != nil {
                            map["LocalName"] = self.localName!
                        }
                        if self.vpcEnabled != nil {
                            map["VpcEnabled"] = self.vpcEnabled!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("LocalName") {
                            self.localName = dict["LocalName"] as! String
                        }
                        if dict.keys.contains("VpcEnabled") {
                            self.vpcEnabled = dict["VpcEnabled"] as! Bool
                        }
                        if dict.keys.contains("ZoneId") {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var zone: [DescribeRegionsResponseBody.Regions.Region.Zones.Zone]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.zone != nil {
                        var tmp : [Any] = []
                        for k in self.zone! {
                            tmp.append(k.toMap())
                        }
                        map["Zone"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Zone") {
                        self.zone = dict["Zone"] as! [DescribeRegionsResponseBody.Regions.Region.Zones.Zone]
                    }
                }
            }
            public var localName: String?

            public var regionEndpoint: String?

            public var regionId: String?

            public var zones: DescribeRegionsResponseBody.Regions.Region.Zones?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zones != nil {
                    map["Zones"] = self.zones?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Zones") {
                    var model = DescribeRegionsResponseBody.Regions.Region.Zones()
                    model.fromMap(dict["Zones"] as! [String: Any])
                    self.zones = model
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
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! [DescribeRegionsResponseBody.Regions.Region]
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

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
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeSQLPatternAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var lang: String?

    public var patternId: Int64?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.patternId != nil {
            map["PatternId"] = self.patternId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PatternId") {
            self.patternId = dict["PatternId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSQLPatternAttributeResponseBody : Tea.TeaModel {
    public class PatternDetail : Tea.TeaModel {
        public var averageMemory: String?

        public var averageQueryTime: String?

        public var queryCount: Int64?

        public var SQLPattern: String?

        public var totalQueryTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.averageMemory != nil {
                map["AverageMemory"] = self.averageMemory!
            }
            if self.averageQueryTime != nil {
                map["AverageQueryTime"] = self.averageQueryTime!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.SQLPattern != nil {
                map["SQLPattern"] = self.SQLPattern!
            }
            if self.totalQueryTime != nil {
                map["TotalQueryTime"] = self.totalQueryTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AverageMemory") {
                self.averageMemory = dict["AverageMemory"] as! String
            }
            if dict.keys.contains("AverageQueryTime") {
                self.averageQueryTime = dict["AverageQueryTime"] as! String
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! Int64
            }
            if dict.keys.contains("SQLPattern") {
                self.SQLPattern = dict["SQLPattern"] as! String
            }
            if dict.keys.contains("TotalQueryTime") {
                self.totalQueryTime = dict["TotalQueryTime"] as! String
            }
        }
    }
    public var patternDetail: DescribeSQLPatternAttributeResponseBody.PatternDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patternDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patternDetail != nil {
            map["PatternDetail"] = self.patternDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatternDetail") {
            var model = DescribeSQLPatternAttributeResponseBody.PatternDetail()
            model.fromMap(dict["PatternDetail"] as! [String: Any])
            self.patternDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSQLPatternAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPatternAttributeResponseBody?

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
            var model = DescribeSQLPatternAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPatternsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSQLPatternsResponseBody : Tea.TeaModel {
    public class PatternDetails : Tea.TeaModel {
        public var accessIp: String?

        public var averageExecutionTime: Double?

        public var averagePeakMemory: Double?

        public var averageQueryTime: Double?

        public var averageScanSize: Double?

        public var blockable: Bool?

        public var failedCount: Int64?

        public var maxExecutionTime: Int64?

        public var maxPeakMemory: Int64?

        public var maxQueryTime: Int64?

        public var maxScanSize: Int64?

        public var patternCreationTime: String?

        public var patternId: String?

        public var queryCount: Int64?

        public var SQLPattern: String?

        public var tables: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIp != nil {
                map["AccessIp"] = self.accessIp!
            }
            if self.averageExecutionTime != nil {
                map["AverageExecutionTime"] = self.averageExecutionTime!
            }
            if self.averagePeakMemory != nil {
                map["AveragePeakMemory"] = self.averagePeakMemory!
            }
            if self.averageQueryTime != nil {
                map["AverageQueryTime"] = self.averageQueryTime!
            }
            if self.averageScanSize != nil {
                map["AverageScanSize"] = self.averageScanSize!
            }
            if self.blockable != nil {
                map["Blockable"] = self.blockable!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.maxExecutionTime != nil {
                map["MaxExecutionTime"] = self.maxExecutionTime!
            }
            if self.maxPeakMemory != nil {
                map["MaxPeakMemory"] = self.maxPeakMemory!
            }
            if self.maxQueryTime != nil {
                map["MaxQueryTime"] = self.maxQueryTime!
            }
            if self.maxScanSize != nil {
                map["MaxScanSize"] = self.maxScanSize!
            }
            if self.patternCreationTime != nil {
                map["PatternCreationTime"] = self.patternCreationTime!
            }
            if self.patternId != nil {
                map["PatternId"] = self.patternId!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.SQLPattern != nil {
                map["SQLPattern"] = self.SQLPattern!
            }
            if self.tables != nil {
                map["Tables"] = self.tables!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessIp") {
                self.accessIp = dict["AccessIp"] as! String
            }
            if dict.keys.contains("AverageExecutionTime") {
                self.averageExecutionTime = dict["AverageExecutionTime"] as! Double
            }
            if dict.keys.contains("AveragePeakMemory") {
                self.averagePeakMemory = dict["AveragePeakMemory"] as! Double
            }
            if dict.keys.contains("AverageQueryTime") {
                self.averageQueryTime = dict["AverageQueryTime"] as! Double
            }
            if dict.keys.contains("AverageScanSize") {
                self.averageScanSize = dict["AverageScanSize"] as! Double
            }
            if dict.keys.contains("Blockable") {
                self.blockable = dict["Blockable"] as! Bool
            }
            if dict.keys.contains("FailedCount") {
                self.failedCount = dict["FailedCount"] as! Int64
            }
            if dict.keys.contains("MaxExecutionTime") {
                self.maxExecutionTime = dict["MaxExecutionTime"] as! Int64
            }
            if dict.keys.contains("MaxPeakMemory") {
                self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
            }
            if dict.keys.contains("MaxQueryTime") {
                self.maxQueryTime = dict["MaxQueryTime"] as! Int64
            }
            if dict.keys.contains("MaxScanSize") {
                self.maxScanSize = dict["MaxScanSize"] as! Int64
            }
            if dict.keys.contains("PatternCreationTime") {
                self.patternCreationTime = dict["PatternCreationTime"] as! String
            }
            if dict.keys.contains("PatternId") {
                self.patternId = dict["PatternId"] as! String
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! Int64
            }
            if dict.keys.contains("SQLPattern") {
                self.SQLPattern = dict["SQLPattern"] as! String
            }
            if dict.keys.contains("Tables") {
                self.tables = dict["Tables"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var patternDetails: [DescribeSQLPatternsResponseBody.PatternDetails]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.patternDetails != nil {
            var tmp : [Any] = []
            for k in self.patternDetails! {
                tmp.append(k.toMap())
            }
            map["PatternDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PatternDetails") {
            self.patternDetails = dict["PatternDetails"] as! [DescribeSQLPatternsResponseBody.PatternDetails]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSQLPatternsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPatternsResponseBody?

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
            var model = DescribeSQLPatternsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var processId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeSQLPlanResponseBody : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public var CPUTime: Int64?

        public var clientIP: String?

        public var database: String?

        public var outputRows: Int64?

        public var outputSize: Int64?

        public var peakMemory: Int64?

        public var planningTime: Int64?

        public var queuedTime: Int64?

        public var SQL: String?

        public var startTime: String?

        public var state: String?

        public var totalStage: Int64?

        public var totalTask: Int64?

        public var totalTime: Int64?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPUTime != nil {
                map["CPUTime"] = self.CPUTime!
            }
            if self.clientIP != nil {
                map["ClientIP"] = self.clientIP!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.outputRows != nil {
                map["OutputRows"] = self.outputRows!
            }
            if self.outputSize != nil {
                map["OutputSize"] = self.outputSize!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.planningTime != nil {
                map["PlanningTime"] = self.planningTime!
            }
            if self.queuedTime != nil {
                map["QueuedTime"] = self.queuedTime!
            }
            if self.SQL != nil {
                map["SQL"] = self.SQL!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.totalStage != nil {
                map["TotalStage"] = self.totalStage!
            }
            if self.totalTask != nil {
                map["TotalTask"] = self.totalTask!
            }
            if self.totalTime != nil {
                map["TotalTime"] = self.totalTime!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPUTime") {
                self.CPUTime = dict["CPUTime"] as! Int64
            }
            if dict.keys.contains("ClientIP") {
                self.clientIP = dict["ClientIP"] as! String
            }
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("OutputRows") {
                self.outputRows = dict["OutputRows"] as! Int64
            }
            if dict.keys.contains("OutputSize") {
                self.outputSize = dict["OutputSize"] as! Int64
            }
            if dict.keys.contains("PeakMemory") {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("PlanningTime") {
                self.planningTime = dict["PlanningTime"] as! Int64
            }
            if dict.keys.contains("QueuedTime") {
                self.queuedTime = dict["QueuedTime"] as! Int64
            }
            if dict.keys.contains("SQL") {
                self.SQL = dict["SQL"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TotalStage") {
                self.totalStage = dict["TotalStage"] as! Int64
            }
            if dict.keys.contains("TotalTask") {
                self.totalTask = dict["TotalTask"] as! Int64
            }
            if dict.keys.contains("TotalTime") {
                self.totalTime = dict["TotalTime"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public class StageList : Tea.TeaModel {
        public var CPUTimeAvg: Int64?

        public var CPUTimeMax: Int64?

        public var CPUTimeMin: Int64?

        public var inputSizeAvg: Int64?

        public var inputSizeMax: Int64?

        public var inputSizeMin: Int64?

        public var operatorCost: Int64?

        public var peakMemory: Int64?

        public var scanSizeAvg: Int64?

        public var scanSizeMax: Int64?

        public var scanSizeMin: Int64?

        public var scanTimeAvg: Int64?

        public var scanTimeMax: Int64?

        public var scanTimeMin: Int64?

        public var stageId: Int32?

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
            if self.CPUTimeAvg != nil {
                map["CPUTimeAvg"] = self.CPUTimeAvg!
            }
            if self.CPUTimeMax != nil {
                map["CPUTimeMax"] = self.CPUTimeMax!
            }
            if self.CPUTimeMin != nil {
                map["CPUTimeMin"] = self.CPUTimeMin!
            }
            if self.inputSizeAvg != nil {
                map["InputSizeAvg"] = self.inputSizeAvg!
            }
            if self.inputSizeMax != nil {
                map["InputSizeMax"] = self.inputSizeMax!
            }
            if self.inputSizeMin != nil {
                map["InputSizeMin"] = self.inputSizeMin!
            }
            if self.operatorCost != nil {
                map["OperatorCost"] = self.operatorCost!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.scanSizeAvg != nil {
                map["ScanSizeAvg"] = self.scanSizeAvg!
            }
            if self.scanSizeMax != nil {
                map["ScanSizeMax"] = self.scanSizeMax!
            }
            if self.scanSizeMin != nil {
                map["ScanSizeMin"] = self.scanSizeMin!
            }
            if self.scanTimeAvg != nil {
                map["ScanTimeAvg"] = self.scanTimeAvg!
            }
            if self.scanTimeMax != nil {
                map["ScanTimeMax"] = self.scanTimeMax!
            }
            if self.scanTimeMin != nil {
                map["ScanTimeMin"] = self.scanTimeMin!
            }
            if self.stageId != nil {
                map["StageId"] = self.stageId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPUTimeAvg") {
                self.CPUTimeAvg = dict["CPUTimeAvg"] as! Int64
            }
            if dict.keys.contains("CPUTimeMax") {
                self.CPUTimeMax = dict["CPUTimeMax"] as! Int64
            }
            if dict.keys.contains("CPUTimeMin") {
                self.CPUTimeMin = dict["CPUTimeMin"] as! Int64
            }
            if dict.keys.contains("InputSizeAvg") {
                self.inputSizeAvg = dict["InputSizeAvg"] as! Int64
            }
            if dict.keys.contains("InputSizeMax") {
                self.inputSizeMax = dict["InputSizeMax"] as! Int64
            }
            if dict.keys.contains("InputSizeMin") {
                self.inputSizeMin = dict["InputSizeMin"] as! Int64
            }
            if dict.keys.contains("OperatorCost") {
                self.operatorCost = dict["OperatorCost"] as! Int64
            }
            if dict.keys.contains("PeakMemory") {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("ScanSizeAvg") {
                self.scanSizeAvg = dict["ScanSizeAvg"] as! Int64
            }
            if dict.keys.contains("ScanSizeMax") {
                self.scanSizeMax = dict["ScanSizeMax"] as! Int64
            }
            if dict.keys.contains("ScanSizeMin") {
                self.scanSizeMin = dict["ScanSizeMin"] as! Int64
            }
            if dict.keys.contains("ScanTimeAvg") {
                self.scanTimeAvg = dict["ScanTimeAvg"] as! Int64
            }
            if dict.keys.contains("ScanTimeMax") {
                self.scanTimeMax = dict["ScanTimeMax"] as! Int64
            }
            if dict.keys.contains("ScanTimeMin") {
                self.scanTimeMin = dict["ScanTimeMin"] as! Int64
            }
            if dict.keys.contains("StageId") {
                self.stageId = dict["StageId"] as! Int32
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var detail: DescribeSQLPlanResponseBody.Detail?

    public var originInfo: String?

    public var requestId: String?

    public var stageList: [DescribeSQLPlanResponseBody.StageList]?

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
        if self.detail != nil {
            map["Detail"] = self.detail?.toMap()
        }
        if self.originInfo != nil {
            map["OriginInfo"] = self.originInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stageList != nil {
            var tmp : [Any] = []
            for k in self.stageList! {
                tmp.append(k.toMap())
            }
            map["StageList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") {
            var model = DescribeSQLPlanResponseBody.Detail()
            model.fromMap(dict["Detail"] as! [String: Any])
            self.detail = model
        }
        if dict.keys.contains("OriginInfo") {
            self.originInfo = dict["OriginInfo"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StageList") {
            self.stageList = dict["StageList"] as! [DescribeSQLPlanResponseBody.StageList]
        }
    }
}

public class DescribeSQLPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPlanResponseBody?

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
            var model = DescribeSQLPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLPlanTaskRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var processId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var stageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StageId") {
            self.stageId = dict["StageId"] as! String
        }
    }
}

public class DescribeSQLPlanTaskResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var elapsedTime: Int64?

        public var inputRows: Int64?

        public var inputSize: Int64?

        public var operatorCost: Int64?

        public var outputRows: Int64?

        public var outputSize: Int64?

        public var peakMemory: Int64?

        public var scanCost: Int64?

        public var scanRows: Int64?

        public var scanSize: Int64?

        public var state: String?

        public var taskId: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elapsedTime != nil {
                map["ElapsedTime"] = self.elapsedTime!
            }
            if self.inputRows != nil {
                map["InputRows"] = self.inputRows!
            }
            if self.inputSize != nil {
                map["InputSize"] = self.inputSize!
            }
            if self.operatorCost != nil {
                map["OperatorCost"] = self.operatorCost!
            }
            if self.outputRows != nil {
                map["OutputRows"] = self.outputRows!
            }
            if self.outputSize != nil {
                map["OutputSize"] = self.outputSize!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.scanCost != nil {
                map["ScanCost"] = self.scanCost!
            }
            if self.scanRows != nil {
                map["ScanRows"] = self.scanRows!
            }
            if self.scanSize != nil {
                map["ScanSize"] = self.scanSize!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ElapsedTime") {
                self.elapsedTime = dict["ElapsedTime"] as! Int64
            }
            if dict.keys.contains("InputRows") {
                self.inputRows = dict["InputRows"] as! Int64
            }
            if dict.keys.contains("InputSize") {
                self.inputSize = dict["InputSize"] as! Int64
            }
            if dict.keys.contains("OperatorCost") {
                self.operatorCost = dict["OperatorCost"] as! Int64
            }
            if dict.keys.contains("OutputRows") {
                self.outputRows = dict["OutputRows"] as! Int64
            }
            if dict.keys.contains("OutputSize") {
                self.outputSize = dict["OutputSize"] as! Int64
            }
            if dict.keys.contains("PeakMemory") {
                self.peakMemory = dict["PeakMemory"] as! Int64
            }
            if dict.keys.contains("ScanCost") {
                self.scanCost = dict["ScanCost"] as! Int64
            }
            if dict.keys.contains("ScanRows") {
                self.scanRows = dict["ScanRows"] as! Int64
            }
            if dict.keys.contains("ScanSize") {
                self.scanSize = dict["ScanSize"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var taskList: [DescribeSQLPlanTaskResponseBody.TaskList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["TaskList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskList") {
            self.taskList = dict["TaskList"] as! [DescribeSQLPlanTaskResponseBody.TaskList]
        }
    }
}

public class DescribeSQLPlanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLPlanTaskResponseBody?

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
            var model = DescribeSQLPlanTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSchemasRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeSchemasResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
            }
        }
        public var schema: [DescribeSchemasResponseBody.Items.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Schema") {
                self.schema = dict["Schema"] as! [DescribeSchemasResponseBody.Items.Schema]
            }
        }
    }
    public var items: DescribeSchemasResponseBody.Items?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeSchemasResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSchemasResponseBody?

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
            var model = DescribeSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBName: String?

    public var endTime: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var processID: String?

    public var range: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.processID != nil {
            map["ProcessID"] = self.processID!
        }
        if self.range != nil {
            map["Range"] = self.range!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProcessID") {
            self.processID = dict["ProcessID"] as! String
        }
        if dict.keys.contains("Range") {
            self.range = dict["Range"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class SlowLogRecord : Tea.TeaModel {
            public var DBName: String?

            public var executionStartTime: String?

            public var hostAddress: String?

            public var outputSize: String?

            public var parseRowCounts: Int64?

            public var peakMemoryUsage: String?

            public var planningTime: Int64?

            public var processID: String?

            public var queryTime: Int64?

            public var queueTime: Int64?

            public var returnRowCounts: Int64?

            public var SQLText: String?

            public var scanRows: Int64?

            public var scanSize: String?

            public var scanTime: Int64?

            public var state: String?

            public var userName: String?

            public var wallTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBName != nil {
                    map["DBName"] = self.DBName!
                }
                if self.executionStartTime != nil {
                    map["ExecutionStartTime"] = self.executionStartTime!
                }
                if self.hostAddress != nil {
                    map["HostAddress"] = self.hostAddress!
                }
                if self.outputSize != nil {
                    map["OutputSize"] = self.outputSize!
                }
                if self.parseRowCounts != nil {
                    map["ParseRowCounts"] = self.parseRowCounts!
                }
                if self.peakMemoryUsage != nil {
                    map["PeakMemoryUsage"] = self.peakMemoryUsage!
                }
                if self.planningTime != nil {
                    map["PlanningTime"] = self.planningTime!
                }
                if self.processID != nil {
                    map["ProcessID"] = self.processID!
                }
                if self.queryTime != nil {
                    map["QueryTime"] = self.queryTime!
                }
                if self.queueTime != nil {
                    map["QueueTime"] = self.queueTime!
                }
                if self.returnRowCounts != nil {
                    map["ReturnRowCounts"] = self.returnRowCounts!
                }
                if self.SQLText != nil {
                    map["SQLText"] = self.SQLText!
                }
                if self.scanRows != nil {
                    map["ScanRows"] = self.scanRows!
                }
                if self.scanSize != nil {
                    map["ScanSize"] = self.scanSize!
                }
                if self.scanTime != nil {
                    map["ScanTime"] = self.scanTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.wallTime != nil {
                    map["WallTime"] = self.wallTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBName") {
                    self.DBName = dict["DBName"] as! String
                }
                if dict.keys.contains("ExecutionStartTime") {
                    self.executionStartTime = dict["ExecutionStartTime"] as! String
                }
                if dict.keys.contains("HostAddress") {
                    self.hostAddress = dict["HostAddress"] as! String
                }
                if dict.keys.contains("OutputSize") {
                    self.outputSize = dict["OutputSize"] as! String
                }
                if dict.keys.contains("ParseRowCounts") {
                    self.parseRowCounts = dict["ParseRowCounts"] as! Int64
                }
                if dict.keys.contains("PeakMemoryUsage") {
                    self.peakMemoryUsage = dict["PeakMemoryUsage"] as! String
                }
                if dict.keys.contains("PlanningTime") {
                    self.planningTime = dict["PlanningTime"] as! Int64
                }
                if dict.keys.contains("ProcessID") {
                    self.processID = dict["ProcessID"] as! String
                }
                if dict.keys.contains("QueryTime") {
                    self.queryTime = dict["QueryTime"] as! Int64
                }
                if dict.keys.contains("QueueTime") {
                    self.queueTime = dict["QueueTime"] as! Int64
                }
                if dict.keys.contains("ReturnRowCounts") {
                    self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
                }
                if dict.keys.contains("SQLText") {
                    self.SQLText = dict["SQLText"] as! String
                }
                if dict.keys.contains("ScanRows") {
                    self.scanRows = dict["ScanRows"] as! Int64
                }
                if dict.keys.contains("ScanSize") {
                    self.scanSize = dict["ScanSize"] as! String
                }
                if dict.keys.contains("ScanTime") {
                    self.scanTime = dict["ScanTime"] as! Int64
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("WallTime") {
                    self.wallTime = dict["WallTime"] as! Int64
                }
            }
        }
        public var slowLogRecord: [DescribeSlowLogRecordsResponseBody.Items.SlowLogRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slowLogRecord != nil {
                var tmp : [Any] = []
                for k in self.slowLogRecord! {
                    tmp.append(k.toMap())
                }
                map["SlowLogRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlowLogRecord") {
                self.slowLogRecord = dict["SlowLogRecord"] as! [DescribeSlowLogRecordsResponseBody.Items.SlowLogRecord]
            }
        }
    }
    public var DBClusterId: String?

    public var items: DescribeSlowLogRecordsResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeSlowLogRecordsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeSlowLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogRecordsResponseBody?

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
            var model = DescribeSlowLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowLogTrendRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBName: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSlowLogTrendResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class SlowLogTrendItem : Tea.TeaModel {
            public class Series : Tea.TeaModel {
                public class SeriesItem : Tea.TeaModel {
                    public var name: String?

                    public var values: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.values != nil {
                            map["Values"] = self.values!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Values") {
                            self.values = dict["Values"] as! String
                        }
                    }
                }
                public var seriesItem: [DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem.Series.SeriesItem]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.seriesItem != nil {
                        var tmp : [Any] = []
                        for k in self.seriesItem! {
                            tmp.append(k.toMap())
                        }
                        map["SeriesItem"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SeriesItem") {
                        self.seriesItem = dict["SeriesItem"] as! [DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem.Series.SeriesItem]
                    }
                }
            }
            public var key: String?

            public var series: DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem.Series?

            public var unit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.series?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.series != nil {
                    map["Series"] = self.series?.toMap()
                }
                if self.unit != nil {
                    map["Unit"] = self.unit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Series") {
                    var model = DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem.Series()
                    model.fromMap(dict["Series"] as! [String: Any])
                    self.series = model
                }
                if dict.keys.contains("Unit") {
                    self.unit = dict["Unit"] as! String
                }
            }
        }
        public var slowLogTrendItem: [DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slowLogTrendItem != nil {
                var tmp : [Any] = []
                for k in self.slowLogTrendItem! {
                    tmp.append(k.toMap())
                }
                map["SlowLogTrendItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlowLogTrendItem") {
                self.slowLogTrendItem = dict["SlowLogTrendItem"] as! [DescribeSlowLogTrendResponseBody.Items.SlowLogTrendItem]
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var items: DescribeSlowLogTrendResponseBody.Items?

    public var requestId: String?

    public var startTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeSlowLogTrendResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSlowLogTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogTrendResponseBody?

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
            var model = DescribeSlowLogTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSqlPatternRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sqlPattern: String?

    public var startTime: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sqlPattern != nil {
            map["SqlPattern"] = self.sqlPattern!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SqlPattern") {
            self.sqlPattern = dict["SqlPattern"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeSqlPatternResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accessIP: String?

        public var avgCpuTime: String?

        public var avgPeakMemory: String?

        public var avgScanSize: String?

        public var avgStageCount: String?

        public var avgTaskCount: String?

        public var instanceName: String?

        public var maxCpuTime: String?

        public var maxPeakMemory: String?

        public var maxScanSize: String?

        public var maxStageCount: String?

        public var maxTaskCount: String?

        public var pattern: String?

        public var queryCount: String?

        public var reportDate: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIP != nil {
                map["AccessIP"] = self.accessIP!
            }
            if self.avgCpuTime != nil {
                map["AvgCpuTime"] = self.avgCpuTime!
            }
            if self.avgPeakMemory != nil {
                map["AvgPeakMemory"] = self.avgPeakMemory!
            }
            if self.avgScanSize != nil {
                map["AvgScanSize"] = self.avgScanSize!
            }
            if self.avgStageCount != nil {
                map["AvgStageCount"] = self.avgStageCount!
            }
            if self.avgTaskCount != nil {
                map["AvgTaskCount"] = self.avgTaskCount!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maxCpuTime != nil {
                map["MaxCpuTime"] = self.maxCpuTime!
            }
            if self.maxPeakMemory != nil {
                map["MaxPeakMemory"] = self.maxPeakMemory!
            }
            if self.maxScanSize != nil {
                map["MaxScanSize"] = self.maxScanSize!
            }
            if self.maxStageCount != nil {
                map["MaxStageCount"] = self.maxStageCount!
            }
            if self.maxTaskCount != nil {
                map["MaxTaskCount"] = self.maxTaskCount!
            }
            if self.pattern != nil {
                map["Pattern"] = self.pattern!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.reportDate != nil {
                map["ReportDate"] = self.reportDate!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessIP") {
                self.accessIP = dict["AccessIP"] as! String
            }
            if dict.keys.contains("AvgCpuTime") {
                self.avgCpuTime = dict["AvgCpuTime"] as! String
            }
            if dict.keys.contains("AvgPeakMemory") {
                self.avgPeakMemory = dict["AvgPeakMemory"] as! String
            }
            if dict.keys.contains("AvgScanSize") {
                self.avgScanSize = dict["AvgScanSize"] as! String
            }
            if dict.keys.contains("AvgStageCount") {
                self.avgStageCount = dict["AvgStageCount"] as! String
            }
            if dict.keys.contains("AvgTaskCount") {
                self.avgTaskCount = dict["AvgTaskCount"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("MaxCpuTime") {
                self.maxCpuTime = dict["MaxCpuTime"] as! String
            }
            if dict.keys.contains("MaxPeakMemory") {
                self.maxPeakMemory = dict["MaxPeakMemory"] as! String
            }
            if dict.keys.contains("MaxScanSize") {
                self.maxScanSize = dict["MaxScanSize"] as! String
            }
            if dict.keys.contains("MaxStageCount") {
                self.maxStageCount = dict["MaxStageCount"] as! String
            }
            if dict.keys.contains("MaxTaskCount") {
                self.maxTaskCount = dict["MaxTaskCount"] as! String
            }
            if dict.keys.contains("Pattern") {
                self.pattern = dict["Pattern"] as! String
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! String
            }
            if dict.keys.contains("ReportDate") {
                self.reportDate = dict["ReportDate"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var items: [DescribeSqlPatternResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeSqlPatternResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSqlPatternResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSqlPatternResponseBody?

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
            var model = DescribeSqlPatternResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTableAccessCountRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeTableAccessCountResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accessCount: String?

        public var instanceName: String?

        public var reportDate: String?

        public var tableName: String?

        public var tableSchema: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessCount != nil {
                map["AccessCount"] = self.accessCount!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.reportDate != nil {
                map["ReportDate"] = self.reportDate!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.tableSchema != nil {
                map["TableSchema"] = self.tableSchema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessCount") {
                self.accessCount = dict["AccessCount"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ReportDate") {
                self.reportDate = dict["ReportDate"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TableSchema") {
                self.tableSchema = dict["TableSchema"] as! String
            }
        }
    }
    public var items: [DescribeTableAccessCountResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeTableAccessCountResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTableAccessCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableAccessCountResponseBody?

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
            var model = DescribeTableAccessCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTableDetailRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeTableDetailResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Shard : Tea.TeaModel {
            public var id: Int32?

            public var size: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
            }
        }
        public var shard: [DescribeTableDetailResponseBody.Items.Shard]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shard != nil {
                var tmp : [Any] = []
                for k in self.shard! {
                    tmp.append(k.toMap())
                }
                map["Shard"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Shard") {
                self.shard = dict["Shard"] as! [DescribeTableDetailResponseBody.Items.Shard]
            }
        }
    }
    public var avgSize: Int64?

    public var items: DescribeTableDetailResponseBody.Items?

    public var requestId: String?

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
        if self.avgSize != nil {
            map["AvgSize"] = self.avgSize!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvgSize") {
            self.avgSize = dict["AvgSize"] as! Int64
        }
        if dict.keys.contains("Items") {
            var model = DescribeTableDetailResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTableDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableDetailResponseBody?

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
            var model = DescribeTableDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTablePartitionDiagnoseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeTablePartitionDiagnoseResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var partitionDetail: String?

        public var partitionNumber: Int32?

        public var schemaName: String?

        public var tableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.partitionDetail != nil {
                map["PartitionDetail"] = self.partitionDetail!
            }
            if self.partitionNumber != nil {
                map["PartitionNumber"] = self.partitionNumber!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PartitionDetail") {
                self.partitionDetail = dict["PartitionDetail"] as! String
            }
            if dict.keys.contains("PartitionNumber") {
                self.partitionNumber = dict["PartitionNumber"] as! Int32
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var items: [DescribeTablePartitionDiagnoseResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var suggestMaxRecordsPerPartition: Int64?

    public var suggestMinRecordsPerPartition: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.suggestMaxRecordsPerPartition != nil {
            map["SuggestMaxRecordsPerPartition"] = self.suggestMaxRecordsPerPartition!
        }
        if self.suggestMinRecordsPerPartition != nil {
            map["SuggestMinRecordsPerPartition"] = self.suggestMinRecordsPerPartition!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeTablePartitionDiagnoseResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuggestMaxRecordsPerPartition") {
            self.suggestMaxRecordsPerPartition = dict["SuggestMaxRecordsPerPartition"] as! Int64
        }
        if dict.keys.contains("SuggestMinRecordsPerPartition") {
            self.suggestMinRecordsPerPartition = dict["SuggestMinRecordsPerPartition"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTablePartitionDiagnoseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablePartitionDiagnoseResponseBody?

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
            var model = DescribeTablePartitionDiagnoseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTableStatisticsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeTableStatisticsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class TableStatisticRecords : Tea.TeaModel {
            public var coldDataSize: Int64?

            public var dataSize: Int64?

            public var indexSize: Int64?

            public var partitionCount: Int64?

            public var primaryKeyIndexSize: Int64?

            public var rowCount: Int64?

            public var schemaName: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coldDataSize != nil {
                    map["ColdDataSize"] = self.coldDataSize!
                }
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.indexSize != nil {
                    map["IndexSize"] = self.indexSize!
                }
                if self.partitionCount != nil {
                    map["PartitionCount"] = self.partitionCount!
                }
                if self.primaryKeyIndexSize != nil {
                    map["PrimaryKeyIndexSize"] = self.primaryKeyIndexSize!
                }
                if self.rowCount != nil {
                    map["RowCount"] = self.rowCount!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColdDataSize") {
                    self.coldDataSize = dict["ColdDataSize"] as! Int64
                }
                if dict.keys.contains("DataSize") {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("IndexSize") {
                    self.indexSize = dict["IndexSize"] as! Int64
                }
                if dict.keys.contains("PartitionCount") {
                    self.partitionCount = dict["PartitionCount"] as! Int64
                }
                if dict.keys.contains("PrimaryKeyIndexSize") {
                    self.primaryKeyIndexSize = dict["PrimaryKeyIndexSize"] as! Int64
                }
                if dict.keys.contains("RowCount") {
                    self.rowCount = dict["RowCount"] as! Int64
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var tableStatisticRecords: [DescribeTableStatisticsResponseBody.Items.TableStatisticRecords]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tableStatisticRecords != nil {
                var tmp : [Any] = []
                for k in self.tableStatisticRecords! {
                    tmp.append(k.toMap())
                }
                map["TableStatisticRecords"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TableStatisticRecords") {
                self.tableStatisticRecords = dict["TableStatisticRecords"] as! [DescribeTableStatisticsResponseBody.Items.TableStatisticRecords]
            }
        }
    }
    public var DBClusterId: String?

    public var items: DescribeTableStatisticsResponseBody.Items?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeTableStatisticsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeTableStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableStatisticsResponseBody?

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
            var model = DescribeTableStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTablesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
    }
}

public class DescribeTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBClusterId") {
                    self.DBClusterId = dict["DBClusterId"] as! String
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var table: [DescribeTablesResponseBody.Items.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") {
                self.table = dict["Table"] as! [DescribeTablesResponseBody.Items.Table]
            }
        }
    }
    public var items: DescribeTablesResponseBody.Items?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var model = DescribeTablesResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablesResponseBody?

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
            var model = DescribeTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTaskInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class DescribeTaskInfoResponseBody : Tea.TeaModel {
    public class TaskInfo : Tea.TeaModel {
        public var beginTime: String?

        public var finishTime: String?

        public var progress: String?

        public var status: String?

        public var taskId: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var taskInfo: DescribeTaskInfoResponseBody.TaskInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskInfo != nil {
            map["TaskInfo"] = self.taskInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskInfo") {
            var model = DescribeTaskInfoResponseBody.TaskInfo()
            model.fromMap(dict["TaskInfo"] as! [String: Any])
            self.taskInfo = model
        }
    }
}

public class DescribeTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskInfoResponseBody?

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
            var model = DescribeTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadDiagnosisRecordsRequest : Tea.TeaModel {
    public var clientIp: String?

    public var DBClusterId: String?

    public var database: String?

    public var endTime: String?

    public var keyword: String?

    public var lang: String?

    public var maxPeakMemory: Int64?

    public var maxScanSize: Int64?

    public var minPeakMemory: Int64?

    public var minScanSize: Int64?

    public var queryCondition: String?

    public var regionId: String?

    public var resourceGroup: String?

    public var startTime: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxPeakMemory != nil {
            map["MaxPeakMemory"] = self.maxPeakMemory!
        }
        if self.maxScanSize != nil {
            map["MaxScanSize"] = self.maxScanSize!
        }
        if self.minPeakMemory != nil {
            map["MinPeakMemory"] = self.minPeakMemory!
        }
        if self.minScanSize != nil {
            map["MinScanSize"] = self.minScanSize!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxPeakMemory") {
            self.maxPeakMemory = dict["MaxPeakMemory"] as! Int64
        }
        if dict.keys.contains("MaxScanSize") {
            self.maxScanSize = dict["MaxScanSize"] as! Int64
        }
        if dict.keys.contains("MinPeakMemory") {
            self.minPeakMemory = dict["MinPeakMemory"] as! Int64
        }
        if dict.keys.contains("MinScanSize") {
            self.minScanSize = dict["MinScanSize"] as! Int64
        }
        if dict.keys.contains("QueryCondition") {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroup") {
            self.resourceGroup = dict["ResourceGroup"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DownloadDiagnosisRecordsResponseBody : Tea.TeaModel {
    public var downloadId: Int32?

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
        if self.downloadId != nil {
            map["DownloadId"] = self.downloadId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadId") {
            self.downloadId = dict["DownloadId"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DownloadDiagnosisRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadDiagnosisRecordsResponseBody?

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
            var model = DownloadDiagnosisRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantOperatorPermissionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var expiredTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var privileges: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Privileges") {
            self.privileges = dict["Privileges"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GrantOperatorPermissionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GrantOperatorPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantOperatorPermissionResponseBody?

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
            var model = GrantOperatorPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillProcessRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var processId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class KillProcessResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillProcessResponseBody?

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
            var model = KillProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                self.tagResource = dict["TagResource"] as! [ListTagResourcesResponseBody.TagResources.TagResource]
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAccountDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountDescriptionResponseBody?

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
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAuditLogConfigRequest : Tea.TeaModel {
    public var auditLogStatus: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditLogStatus != nil {
            map["AuditLogStatus"] = self.auditLogStatus!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditLogStatus") {
            self.auditLogStatus = dict["AuditLogStatus"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyAuditLogConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var updateSucceed: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateSucceed != nil {
            map["UpdateSucceed"] = self.updateSucceed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateSucceed") {
            self.updateSucceed = dict["UpdateSucceed"] as! Bool
        }
    }
}

public class ModifyAuditLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAuditLogConfigResponseBody?

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
            var model = ModifyAuditLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAutoRenewAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var duration: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var periodUnit: String?

    public var regionId: String?

    public var renewalStatus: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyAutoRenewAttributeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoRenewAttributeResponseBody?

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
            var model = ModifyAutoRenewAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBClusterId: String?

    public var enableBackupLog: String?

    public var logBackupRetentionPeriod: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableBackupLog") {
            self.enableBackupLog = dict["EnableBackupLog"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PreferredBackupPeriod") {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterConnectionStringRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var currentConnectionString: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var port: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.currentConnectionString != nil {
            map["CurrentConnectionString"] = self.currentConnectionString!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("CurrentConnectionString") {
            self.currentConnectionString = dict["CurrentConnectionString"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyClusterConnectionStringResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyClusterConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterConnectionStringResponseBody?

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
            var model = ModifyClusterConnectionStringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterRequest : Tea.TeaModel {
    public var computeResource: String?

    public var DBClusterCategory: String?

    public var DBClusterId: String?

    public var DBNodeClass: String?

    public var DBNodeGroupCount: String?

    public var DBNodeStorage: String?

    public var elasticIOResource: Int32?

    public var executorCount: String?

    public var mode: String?

    public var modifyType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var storageResource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeResource != nil {
            map["ComputeResource"] = self.computeResource!
        }
        if self.DBClusterCategory != nil {
            map["DBClusterCategory"] = self.DBClusterCategory!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBNodeClass != nil {
            map["DBNodeClass"] = self.DBNodeClass!
        }
        if self.DBNodeGroupCount != nil {
            map["DBNodeGroupCount"] = self.DBNodeGroupCount!
        }
        if self.DBNodeStorage != nil {
            map["DBNodeStorage"] = self.DBNodeStorage!
        }
        if self.elasticIOResource != nil {
            map["ElasticIOResource"] = self.elasticIOResource!
        }
        if self.executorCount != nil {
            map["ExecutorCount"] = self.executorCount!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.storageResource != nil {
            map["StorageResource"] = self.storageResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComputeResource") {
            self.computeResource = dict["ComputeResource"] as! String
        }
        if dict.keys.contains("DBClusterCategory") {
            self.DBClusterCategory = dict["DBClusterCategory"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBNodeClass") {
            self.DBNodeClass = dict["DBNodeClass"] as! String
        }
        if dict.keys.contains("DBNodeGroupCount") {
            self.DBNodeGroupCount = dict["DBNodeGroupCount"] as! String
        }
        if dict.keys.contains("DBNodeStorage") {
            self.DBNodeStorage = dict["DBNodeStorage"] as! String
        }
        if dict.keys.contains("ElasticIOResource") {
            self.elasticIOResource = dict["ElasticIOResource"] as! Int32
        }
        if dict.keys.contains("ExecutorCount") {
            self.executorCount = dict["ExecutorCount"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StorageResource") {
            self.storageResource = dict["StorageResource"] as! String
        }
    }
}

public class ModifyDBClusterResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterResponseBody?

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
            var model = ModifyDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterIPArrayAttribute: String?

    public var DBClusterIPArrayName: String?

    public var DBClusterId: String?

    public var modifyMode: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityIps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterIPArrayAttribute != nil {
            map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
        }
        if self.DBClusterIPArrayName != nil {
            map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterIPArrayAttribute") {
            self.DBClusterIPArrayAttribute = dict["DBClusterIPArrayAttribute"] as! String
        }
        if dict.keys.contains("DBClusterIPArrayName") {
            self.DBClusterIPArrayName = dict["DBClusterIPArrayName"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ModifyMode") {
            self.modifyMode = dict["ModifyMode"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIps") {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class ModifyDBClusterAccessWhiteListResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class ModifyDBClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterAccessWhiteListResponseBody?

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
            var model = ModifyDBClusterAccessWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterDescriptionRequest : Tea.TeaModel {
    public var DBClusterDescription: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBClusterDescriptionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterDescriptionResponseBody?

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
            var model = ModifyDBClusterDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterMaintainTimeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var maintainTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("MaintainTime") {
            self.maintainTime = dict["MaintainTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBClusterMaintainTimeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterMaintainTimeResponseBody?

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
            var model = ModifyDBClusterMaintainTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterPayTypeRequest : Tea.TeaModel {
    public var dbClusterId: String?

    public var payType: String?

    public var period: String?

    public var usedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
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
        if dict.keys.contains("DbClusterId") {
            self.dbClusterId = dict["DbClusterId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! String
        }
    }
}

public class ModifyDBClusterPayTypeResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var orderId: String?

    public var payType: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterPayTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterPayTypeResponseBody?

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
            var model = ModifyDBClusterPayTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var newResourceGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBClusterResourceGroupResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterResourceGroupResponseBody?

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
            var model = ModifyDBClusterResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBResourceGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupType: String?

    public var nodeNum: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.nodeNum != nil {
            map["NodeNum"] = self.nodeNum!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupType") {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("NodeNum") {
            self.nodeNum = dict["NodeNum"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBResourceGroupResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBResourceGroupResponseBody?

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
            var model = ModifyDBResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBResourcePoolRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var nodeNum: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var queryType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.nodeNum != nil {
            map["NodeNum"] = self.nodeNum!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("NodeNum") {
            self.nodeNum = dict["NodeNum"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBResourcePoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBResourcePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBResourcePoolResponseBody?

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
            var model = ModifyDBResourcePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyElasticPlanRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var elasticPlanEnable: Bool?

    public var elasticPlanEndDay: String?

    public var elasticPlanName: String?

    public var elasticPlanNodeNum: Int32?

    public var elasticPlanStartDay: String?

    public var elasticPlanTimeEnd: String?

    public var elasticPlanTimeStart: String?

    public var elasticPlanWeeklyRepeat: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourcePoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.elasticPlanEnable != nil {
            map["ElasticPlanEnable"] = self.elasticPlanEnable!
        }
        if self.elasticPlanEndDay != nil {
            map["ElasticPlanEndDay"] = self.elasticPlanEndDay!
        }
        if self.elasticPlanName != nil {
            map["ElasticPlanName"] = self.elasticPlanName!
        }
        if self.elasticPlanNodeNum != nil {
            map["ElasticPlanNodeNum"] = self.elasticPlanNodeNum!
        }
        if self.elasticPlanStartDay != nil {
            map["ElasticPlanStartDay"] = self.elasticPlanStartDay!
        }
        if self.elasticPlanTimeEnd != nil {
            map["ElasticPlanTimeEnd"] = self.elasticPlanTimeEnd!
        }
        if self.elasticPlanTimeStart != nil {
            map["ElasticPlanTimeStart"] = self.elasticPlanTimeStart!
        }
        if self.elasticPlanWeeklyRepeat != nil {
            map["ElasticPlanWeeklyRepeat"] = self.elasticPlanWeeklyRepeat!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourcePoolName != nil {
            map["ResourcePoolName"] = self.resourcePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("ElasticPlanEnable") {
            self.elasticPlanEnable = dict["ElasticPlanEnable"] as! Bool
        }
        if dict.keys.contains("ElasticPlanEndDay") {
            self.elasticPlanEndDay = dict["ElasticPlanEndDay"] as! String
        }
        if dict.keys.contains("ElasticPlanName") {
            self.elasticPlanName = dict["ElasticPlanName"] as! String
        }
        if dict.keys.contains("ElasticPlanNodeNum") {
            self.elasticPlanNodeNum = dict["ElasticPlanNodeNum"] as! Int32
        }
        if dict.keys.contains("ElasticPlanStartDay") {
            self.elasticPlanStartDay = dict["ElasticPlanStartDay"] as! String
        }
        if dict.keys.contains("ElasticPlanTimeEnd") {
            self.elasticPlanTimeEnd = dict["ElasticPlanTimeEnd"] as! String
        }
        if dict.keys.contains("ElasticPlanTimeStart") {
            self.elasticPlanTimeStart = dict["ElasticPlanTimeStart"] as! String
        }
        if dict.keys.contains("ElasticPlanWeeklyRepeat") {
            self.elasticPlanWeeklyRepeat = dict["ElasticPlanWeeklyRepeat"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourcePoolName") {
            self.resourcePoolName = dict["ResourcePoolName"] as! String
        }
    }
}

public class ModifyElasticPlanResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyElasticPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticPlanResponseBody?

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
            var model = ModifyElasticPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLogBackupPolicyRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var enableBackupLog: String?

    public var logBackupRetentionPeriod: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.enableBackupLog != nil {
            map["EnableBackupLog"] = self.enableBackupLog!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EnableBackupLog") {
            self.enableBackupLog = dict["EnableBackupLog"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyLogBackupPolicyResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyLogBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLogBackupPolicyResponseBody?

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
            var model = ModifyLogBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMaintenanceActionRequest : Tea.TeaModel {
    public var ids: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var switchTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
    }
}

public class ModifyMaintenanceActionResponseBody : Tea.TeaModel {
    public var ids: String?

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
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyMaintenanceActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMaintenanceActionResponseBody?

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
            var model = ModifyMaintenanceActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseClusterPublicConnectionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ReleaseClusterPublicConnectionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReleaseClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseClusterPublicConnectionResponseBody?

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
            var model = ReleaseClusterPublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var accountType: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class ResetAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAccountPasswordResponseBody?

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
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeOperatorPermissionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RevokeOperatorPermissionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RevokeOperatorPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeOperatorPermissionResponseBody?

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
            var model = RevokeOperatorPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindDBResourceGroupWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var groupUser: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupUser != nil {
            map["GroupUser"] = self.groupUser!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupUser") {
            self.groupUser = dict["GroupUser"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UnbindDBResourceGroupWithUserResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindDBResourceGroupWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDBResourceGroupWithUserResponseBody?

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
            var model = UnbindDBResourceGroupWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindDBResourcePoolWithUserRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var poolName: String?

    public var poolUser: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.poolUser != nil {
            map["PoolUser"] = self.poolUser!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PoolName") {
            self.poolName = dict["PoolName"] as! String
        }
        if dict.keys.contains("PoolUser") {
            self.poolUser = dict["PoolUser"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UnbindDBResourcePoolWithUserResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindDBResourcePoolWithUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindDBResourcePoolWithUserResponseBody?

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
            var model = UnbindDBResourcePoolWithUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
