import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddBuDBInstanceRelationRequest : Tea.TeaModel {
    public var businessUnit: String?

    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnit != nil {
            map["BusinessUnit"] = self.businessUnit!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessUnit") {
            self.businessUnit = dict["BusinessUnit"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class AddBuDBInstanceRelationResponseBody : Tea.TeaModel {
    public var businessUnit: String?

    public var DBInstanceName: String?

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
        if self.businessUnit != nil {
            map["BusinessUnit"] = self.businessUnit!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessUnit") {
            self.businessUnit = dict["BusinessUnit"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddBuDBInstanceRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBuDBInstanceRelationResponseBody?

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
            var model = AddBuDBInstanceRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AllocateInstancePublicConnectionRequest : Tea.TeaModel {
    public var addressType: String?

    public var connectionStringPrefix: String?

    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var port: String?

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
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AllocateInstancePublicConnectionResponseBody : Tea.TeaModel {
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

public class AllocateInstancePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateInstancePublicConnectionResponseBody?

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
            var model = AllocateInstancePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckServiceLinkedRoleRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CheckServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var hasServiceLinkedRole: String?

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
        if self.hasServiceLinkedRole != nil {
            map["HasServiceLinkedRole"] = self.hasServiceLinkedRole!
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
        if dict.keys.contains("HasServiceLinkedRole") {
            self.hasServiceLinkedRole = dict["HasServiceLinkedRole"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceLinkedRoleResponseBody?

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
            var model = CheckServiceLinkedRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var DBInstanceId: String?

    public var databaseName: String?

    public var ownerId: Int64?

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
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DatabaseName") {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
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

public class CreateDBInstanceRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var createSampleData: Bool?

    public var DBInstanceCategory: String?

    public var DBInstanceClass: String?

    public var DBInstanceDescription: String?

    public var DBInstanceGroupCount: String?

    public var DBInstanceMode: String?

    public var engine: String?

    public var engineVersion: String?

    public var instanceNetworkType: String?

    public var instanceSpec: String?

    public var masterNodeNum: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var privateIpAddress: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityIPList: String?

    public var segNodeNum: String?

    public var segStorageType: String?

    public var storageSize: Int64?

    public var storageType: String?

    public var tag: [CreateDBInstanceRequest.Tag]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createSampleData != nil {
            map["CreateSampleData"] = self.createSampleData!
        }
        if self.DBInstanceCategory != nil {
            map["DBInstanceCategory"] = self.DBInstanceCategory!
        }
        if self.DBInstanceClass != nil {
            map["DBInstanceClass"] = self.DBInstanceClass!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceGroupCount != nil {
            map["DBInstanceGroupCount"] = self.DBInstanceGroupCount!
        }
        if self.DBInstanceMode != nil {
            map["DBInstanceMode"] = self.DBInstanceMode!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.masterNodeNum != nil {
            map["MasterNodeNum"] = self.masterNodeNum!
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
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.segNodeNum != nil {
            map["SegNodeNum"] = self.segNodeNum!
        }
        if self.segStorageType != nil {
            map["SegStorageType"] = self.segStorageType!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateSampleData") {
            self.createSampleData = dict["CreateSampleData"] as! Bool
        }
        if dict.keys.contains("DBInstanceCategory") {
            self.DBInstanceCategory = dict["DBInstanceCategory"] as! String
        }
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceGroupCount") {
            self.DBInstanceGroupCount = dict["DBInstanceGroupCount"] as! String
        }
        if dict.keys.contains("DBInstanceMode") {
            self.DBInstanceMode = dict["DBInstanceMode"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
        }
        if dict.keys.contains("InstanceSpec") {
            self.instanceSpec = dict["InstanceSpec"] as! String
        }
        if dict.keys.contains("MasterNodeNum") {
            self.masterNodeNum = dict["MasterNodeNum"] as! String
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
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("SegNodeNum") {
            self.segNodeNum = dict["SegNodeNum"] as! String
        }
        if dict.keys.contains("SegStorageType") {
            self.segStorageType = dict["SegStorageType"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! Int64
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateDBInstanceRequest.Tag]
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

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceId: String?

    public var orderId: String?

    public var port: String?

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
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBInstanceResponseBody?

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
            var model = CreateDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBInstancePlanRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var planConfig: String?

    public var planDesc: String?

    public var planEndDate: String?

    public var planName: String?

    public var planScheduleType: String?

    public var planStartDate: String?

    public var planType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.planConfig != nil {
            map["PlanConfig"] = self.planConfig!
        }
        if self.planDesc != nil {
            map["PlanDesc"] = self.planDesc!
        }
        if self.planEndDate != nil {
            map["PlanEndDate"] = self.planEndDate!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.planScheduleType != nil {
            map["PlanScheduleType"] = self.planScheduleType!
        }
        if self.planStartDate != nil {
            map["PlanStartDate"] = self.planStartDate!
        }
        if self.planType != nil {
            map["PlanType"] = self.planType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlanConfig") {
            self.planConfig = dict["PlanConfig"] as! String
        }
        if dict.keys.contains("PlanDesc") {
            self.planDesc = dict["PlanDesc"] as! String
        }
        if dict.keys.contains("PlanEndDate") {
            self.planEndDate = dict["PlanEndDate"] as! String
        }
        if dict.keys.contains("PlanName") {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("PlanScheduleType") {
            self.planScheduleType = dict["PlanScheduleType"] as! String
        }
        if dict.keys.contains("PlanStartDate") {
            self.planStartDate = dict["PlanStartDate"] as! String
        }
        if dict.keys.contains("PlanType") {
            self.planType = dict["PlanType"] as! String
        }
    }
}

public class CreateDBInstancePlanResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var planId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class CreateDBInstancePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBInstancePlanResponseBody?

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
            var model = CreateDBInstancePlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateECSDBInstanceRequest : Tea.TeaModel {
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
    public var backupId: String?

    public var clientToken: String?

    public var DBInstanceCategory: String?

    public var DBInstanceDescription: String?

    public var encryptionKey: String?

    public var encryptionType: String?

    public var engine: String?

    public var engineVersion: String?

    public var instanceNetworkType: String?

    public var instanceSpec: String?

    public var masterNodeNum: Int32?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var privateIpAddress: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityIPList: String?

    public var segNodeNum: Int32?

    public var segStorageType: String?

    public var srcDbInstanceName: String?

    public var storageSize: Int32?

    public var tag: [CreateECSDBInstanceRequest.Tag]?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceCategory != nil {
            map["DBInstanceCategory"] = self.DBInstanceCategory!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.encryptionKey != nil {
            map["EncryptionKey"] = self.encryptionKey!
        }
        if self.encryptionType != nil {
            map["EncryptionType"] = self.encryptionType!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.masterNodeNum != nil {
            map["MasterNodeNum"] = self.masterNodeNum!
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
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.segNodeNum != nil {
            map["SegNodeNum"] = self.segNodeNum!
        }
        if self.segStorageType != nil {
            map["SegStorageType"] = self.segStorageType!
        }
        if self.srcDbInstanceName != nil {
            map["SrcDbInstanceName"] = self.srcDbInstanceName!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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
        if dict.keys.contains("BackupId") {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceCategory") {
            self.DBInstanceCategory = dict["DBInstanceCategory"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("EncryptionKey") {
            self.encryptionKey = dict["EncryptionKey"] as! String
        }
        if dict.keys.contains("EncryptionType") {
            self.encryptionType = dict["EncryptionType"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
        }
        if dict.keys.contains("InstanceSpec") {
            self.instanceSpec = dict["InstanceSpec"] as! String
        }
        if dict.keys.contains("MasterNodeNum") {
            self.masterNodeNum = dict["MasterNodeNum"] as! Int32
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
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("SegNodeNum") {
            self.segNodeNum = dict["SegNodeNum"] as! Int32
        }
        if dict.keys.contains("SegStorageType") {
            self.segStorageType = dict["SegStorageType"] as! String
        }
        if dict.keys.contains("SrcDbInstanceName") {
            self.srcDbInstanceName = dict["SrcDbInstanceName"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! Int32
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateECSDBInstanceRequest.Tag]
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

public class CreateECSDBInstanceResponseBody : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceId: String?

    public var orderId: String?

    public var port: String?

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
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateECSDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateECSDBInstanceResponseBody?

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
            var model = CreateECSDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSampleDataRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CreateSampleDataResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class CreateSampleDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSampleDataResponseBody?

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
            var model = CreateSampleDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
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

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

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
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBInstanceId: String?

    public var ownerId: Int64?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteDBInstanceResponseBody : Tea.TeaModel {
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

public class DeleteDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBInstanceResponseBody?

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
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBInstancePlanRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var planId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
    }
}

public class DeleteDBInstancePlanResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var planId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DeleteDBInstancePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBInstancePlanResponseBody?

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
            var model = DeleteDBInstancePlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabaseRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteDatabaseResponseBody : Tea.TeaModel {
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

public class DeleteDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabaseResponseBody?

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
            var model = DeleteDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class DBInstanceAccount : Tea.TeaModel {
            public var accountDescription: String?

            public var accountName: String?

            public var accountStatus: String?

            public var DBInstanceId: String?

            public override init() {
                super.init()
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
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
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
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
            }
        }
        public var DBInstanceAccount: [DescribeAccountsResponseBody.Accounts.DBInstanceAccount]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceAccount != nil {
                var tmp : [Any] = []
                for k in self.DBInstanceAccount! {
                    tmp.append(k.toMap())
                }
                map["DBInstanceAccount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceAccount") {
                self.DBInstanceAccount = dict["DBInstanceAccount"] as! [DescribeAccountsResponseBody.Accounts.DBInstanceAccount]
            }
        }
    }
    public var accounts: DescribeAccountsResponseBody.Accounts?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") {
            var model = DescribeAccountsResponseBody.Accounts()
            model.fromMap(dict["Accounts"] as! [String: Any])
            self.accounts = model
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

public class DescribeAvailableResourcesRequest : Tea.TeaModel {
    public var chargeType: String?

    public var region: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeAvailableResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class SupportedEngines : Tea.TeaModel {
            public class SupportedInstanceClasses : Tea.TeaModel {
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
                public class StorageSize : Tea.TeaModel {
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
                public var description_: String?

                public var displayClass: String?

                public var instanceClass: String?

                public var nodeCount: DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses.NodeCount?

                public var storageSize: DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses.StorageSize?

                public var storageType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nodeCount?.validate()
                    try self.storageSize?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.displayClass != nil {
                        map["DisplayClass"] = self.displayClass!
                    }
                    if self.instanceClass != nil {
                        map["InstanceClass"] = self.instanceClass!
                    }
                    if self.nodeCount != nil {
                        map["NodeCount"] = self.nodeCount?.toMap()
                    }
                    if self.storageSize != nil {
                        map["StorageSize"] = self.storageSize?.toMap()
                    }
                    if self.storageType != nil {
                        map["StorageType"] = self.storageType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("DisplayClass") {
                        self.displayClass = dict["DisplayClass"] as! String
                    }
                    if dict.keys.contains("InstanceClass") {
                        self.instanceClass = dict["InstanceClass"] as! String
                    }
                    if dict.keys.contains("NodeCount") {
                        var model = DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses.NodeCount()
                        model.fromMap(dict["NodeCount"] as! [String: Any])
                        self.nodeCount = model
                    }
                    if dict.keys.contains("StorageSize") {
                        var model = DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses.StorageSize()
                        model.fromMap(dict["StorageSize"] as! [String: Any])
                        self.storageSize = model
                    }
                    if dict.keys.contains("StorageType") {
                        self.storageType = dict["StorageType"] as! String
                    }
                }
            }
            public var mode: String?

            public var supportedEngineVersion: String?

            public var supportedInstanceClasses: [DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses]?

            public override init() {
                super.init()
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
                if self.supportedEngineVersion != nil {
                    map["SupportedEngineVersion"] = self.supportedEngineVersion!
                }
                if self.supportedInstanceClasses != nil {
                    var tmp : [Any] = []
                    for k in self.supportedInstanceClasses! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedInstanceClasses"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("SupportedEngineVersion") {
                    self.supportedEngineVersion = dict["SupportedEngineVersion"] as! String
                }
                if dict.keys.contains("SupportedInstanceClasses") {
                    self.supportedInstanceClasses = dict["SupportedInstanceClasses"] as! [DescribeAvailableResourcesResponseBody.Resources.SupportedEngines.SupportedInstanceClasses]
                }
            }
        }
        public var supportedEngines: [DescribeAvailableResourcesResponseBody.Resources.SupportedEngines]?

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
            if self.supportedEngines != nil {
                var tmp : [Any] = []
                for k in self.supportedEngines! {
                    tmp.append(k.toMap())
                }
                map["SupportedEngines"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedEngines") {
                self.supportedEngines = dict["SupportedEngines"] as! [DescribeAvailableResourcesResponseBody.Resources.SupportedEngines]
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var regionId: String?

    public var requestId: String?

    public var resources: [DescribeAvailableResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [DescribeAvailableResourcesResponseBody.Resources]
        }
    }
}

public class DescribeAvailableResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableResourcesResponseBody?

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
            var model = DescribeAvailableResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var enableRecoveryPoint: Bool?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var recoveryPointPeriod: String?

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
        if self.enableRecoveryPoint != nil {
            map["EnableRecoveryPoint"] = self.enableRecoveryPoint!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.recoveryPointPeriod != nil {
            map["RecoveryPointPeriod"] = self.recoveryPointPeriod!
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
        if dict.keys.contains("EnableRecoveryPoint") {
            self.enableRecoveryPoint = dict["EnableRecoveryPoint"] as! Bool
        }
        if dict.keys.contains("PreferredBackupPeriod") {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RecoveryPointPeriod") {
            self.recoveryPointPeriod = dict["RecoveryPointPeriod"] as! String
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

public class DescribeDBClusterNodeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var nodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("NodeType") {
            self.nodeType = dict["NodeType"] as! String
        }
    }
}

public class DescribeDBClusterNodeResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var nodes: [DescribeDBClusterNodeResponseBody.Nodes]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
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
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! [DescribeDBClusterNodeResponseBody.Nodes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterNodeResponseBody?

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
            var model = DescribeDBClusterNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterPerformanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var key: String?

    public var nodeType: String?

    public var nodes: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("NodeType") {
            self.nodeType = dict["NodeType"] as! String
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterPerformanceResponseBody : Tea.TeaModel {
    public class PerformanceKeys : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public var point: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.point != nil {
                        map["Point"] = self.point!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Point") {
                        self.point = dict["Point"] as! [String]
                    }
                }
            }
            public var name: String?

            public var role: String?

            public var values: [DescribeDBClusterPerformanceResponseBody.PerformanceKeys.Series.Values]?

            public override init() {
                super.init()
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
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [DescribeDBClusterPerformanceResponseBody.PerformanceKeys.Series.Values]
                }
            }
        }
        public var name: String?

        public var series: [DescribeDBClusterPerformanceResponseBody.PerformanceKeys.Series]?

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
            if self.name != nil {
                map["Name"] = self.name!
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribeDBClusterPerformanceResponseBody.PerformanceKeys.Series]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performanceKeys: [DescribeDBClusterPerformanceResponseBody.PerformanceKeys]?

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
        if self.performanceKeys != nil {
            var tmp : [Any] = []
            for k in self.performanceKeys! {
                tmp.append(k.toMap())
            }
            map["PerformanceKeys"] = tmp
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
        if dict.keys.contains("PerformanceKeys") {
            self.performanceKeys = dict["PerformanceKeys"] as! [DescribeDBClusterPerformanceResponseBody.PerformanceKeys]
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

public class DescribeDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstanceAttribute : Tea.TeaModel {
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
                public var tag: [DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute.Tags.Tag]?

                public override init() {
                    super.init()
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
                        self.tag = dict["Tag"] as! [DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute.Tags.Tag]
                    }
                }
            }
            public var availabilityValue: String?

            public var connectionMode: String?

            public var connectionString: String?

            public var coreVersion: String?

            public var cpuCores: Int32?

            public var cpuCoresPerNode: Int32?

            public var creationTime: String?

            public var DBInstanceCategory: String?

            public var DBInstanceClass: String?

            public var DBInstanceClassType: String?

            public var DBInstanceCpuCores: Int32?

            public var DBInstanceDescription: String?

            public var DBInstanceDiskMBPS: Int64?

            public var DBInstanceGroupCount: String?

            public var DBInstanceId: String?

            public var DBInstanceMemory: Int64?

            public var DBInstanceMode: String?

            public var DBInstanceNetType: String?

            public var DBInstanceStatus: String?

            public var DBInstanceStorage: Int64?

            public var encryptionKey: String?

            public var encryptionType: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var hostType: String?

            public var instanceNetworkType: String?

            public var lockMode: String?

            public var lockReason: String?

            public var maintainEndTime: String?

            public var maintainStartTime: String?

            public var masterNodeNum: Int32?

            public var maxConnections: Int32?

            public var memoryPerNode: Int32?

            public var memorySize: Int64?

            public var memoryUnit: String?

            public var minorVersion: String?

            public var payType: String?

            public var port: String?

            public var readDelayTime: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var runningTime: String?

            public var securityIPList: String?

            public var segNodeNum: Int32?

            public var segmentCounts: Int32?

            public var startTime: String?

            public var storagePerNode: Int32?

            public var storageSize: Int64?

            public var storageType: String?

            public var storageUnit: String?

            public var supportRestore: Bool?

            public var tags: DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute.Tags?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.availabilityValue != nil {
                    map["AvailabilityValue"] = self.availabilityValue!
                }
                if self.connectionMode != nil {
                    map["ConnectionMode"] = self.connectionMode!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.coreVersion != nil {
                    map["CoreVersion"] = self.coreVersion!
                }
                if self.cpuCores != nil {
                    map["CpuCores"] = self.cpuCores!
                }
                if self.cpuCoresPerNode != nil {
                    map["CpuCoresPerNode"] = self.cpuCoresPerNode!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.DBInstanceCategory != nil {
                    map["DBInstanceCategory"] = self.DBInstanceCategory!
                }
                if self.DBInstanceClass != nil {
                    map["DBInstanceClass"] = self.DBInstanceClass!
                }
                if self.DBInstanceClassType != nil {
                    map["DBInstanceClassType"] = self.DBInstanceClassType!
                }
                if self.DBInstanceCpuCores != nil {
                    map["DBInstanceCpuCores"] = self.DBInstanceCpuCores!
                }
                if self.DBInstanceDescription != nil {
                    map["DBInstanceDescription"] = self.DBInstanceDescription!
                }
                if self.DBInstanceDiskMBPS != nil {
                    map["DBInstanceDiskMBPS"] = self.DBInstanceDiskMBPS!
                }
                if self.DBInstanceGroupCount != nil {
                    map["DBInstanceGroupCount"] = self.DBInstanceGroupCount!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceMemory != nil {
                    map["DBInstanceMemory"] = self.DBInstanceMemory!
                }
                if self.DBInstanceMode != nil {
                    map["DBInstanceMode"] = self.DBInstanceMode!
                }
                if self.DBInstanceNetType != nil {
                    map["DBInstanceNetType"] = self.DBInstanceNetType!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.DBInstanceStorage != nil {
                    map["DBInstanceStorage"] = self.DBInstanceStorage!
                }
                if self.encryptionKey != nil {
                    map["EncryptionKey"] = self.encryptionKey!
                }
                if self.encryptionType != nil {
                    map["EncryptionType"] = self.encryptionType!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.hostType != nil {
                    map["HostType"] = self.hostType!
                }
                if self.instanceNetworkType != nil {
                    map["InstanceNetworkType"] = self.instanceNetworkType!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainEndTime != nil {
                    map["MaintainEndTime"] = self.maintainEndTime!
                }
                if self.maintainStartTime != nil {
                    map["MaintainStartTime"] = self.maintainStartTime!
                }
                if self.masterNodeNum != nil {
                    map["MasterNodeNum"] = self.masterNodeNum!
                }
                if self.maxConnections != nil {
                    map["MaxConnections"] = self.maxConnections!
                }
                if self.memoryPerNode != nil {
                    map["MemoryPerNode"] = self.memoryPerNode!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                if self.memoryUnit != nil {
                    map["MemoryUnit"] = self.memoryUnit!
                }
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.readDelayTime != nil {
                    map["ReadDelayTime"] = self.readDelayTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.segNodeNum != nil {
                    map["SegNodeNum"] = self.segNodeNum!
                }
                if self.segmentCounts != nil {
                    map["SegmentCounts"] = self.segmentCounts!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.storagePerNode != nil {
                    map["StoragePerNode"] = self.storagePerNode!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.storageUnit != nil {
                    map["StorageUnit"] = self.storageUnit!
                }
                if self.supportRestore != nil {
                    map["SupportRestore"] = self.supportRestore!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailabilityValue") {
                    self.availabilityValue = dict["AvailabilityValue"] as! String
                }
                if dict.keys.contains("ConnectionMode") {
                    self.connectionMode = dict["ConnectionMode"] as! String
                }
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CoreVersion") {
                    self.coreVersion = dict["CoreVersion"] as! String
                }
                if dict.keys.contains("CpuCores") {
                    self.cpuCores = dict["CpuCores"] as! Int32
                }
                if dict.keys.contains("CpuCoresPerNode") {
                    self.cpuCoresPerNode = dict["CpuCoresPerNode"] as! Int32
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DBInstanceCategory") {
                    self.DBInstanceCategory = dict["DBInstanceCategory"] as! String
                }
                if dict.keys.contains("DBInstanceClass") {
                    self.DBInstanceClass = dict["DBInstanceClass"] as! String
                }
                if dict.keys.contains("DBInstanceClassType") {
                    self.DBInstanceClassType = dict["DBInstanceClassType"] as! String
                }
                if dict.keys.contains("DBInstanceCpuCores") {
                    self.DBInstanceCpuCores = dict["DBInstanceCpuCores"] as! Int32
                }
                if dict.keys.contains("DBInstanceDescription") {
                    self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                }
                if dict.keys.contains("DBInstanceDiskMBPS") {
                    self.DBInstanceDiskMBPS = dict["DBInstanceDiskMBPS"] as! Int64
                }
                if dict.keys.contains("DBInstanceGroupCount") {
                    self.DBInstanceGroupCount = dict["DBInstanceGroupCount"] as! String
                }
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceMemory") {
                    self.DBInstanceMemory = dict["DBInstanceMemory"] as! Int64
                }
                if dict.keys.contains("DBInstanceMode") {
                    self.DBInstanceMode = dict["DBInstanceMode"] as! String
                }
                if dict.keys.contains("DBInstanceNetType") {
                    self.DBInstanceNetType = dict["DBInstanceNetType"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                }
                if dict.keys.contains("DBInstanceStorage") {
                    self.DBInstanceStorage = dict["DBInstanceStorage"] as! Int64
                }
                if dict.keys.contains("EncryptionKey") {
                    self.encryptionKey = dict["EncryptionKey"] as! String
                }
                if dict.keys.contains("EncryptionType") {
                    self.encryptionType = dict["EncryptionType"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("HostType") {
                    self.hostType = dict["HostType"] as! String
                }
                if dict.keys.contains("InstanceNetworkType") {
                    self.instanceNetworkType = dict["InstanceNetworkType"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MaintainEndTime") {
                    self.maintainEndTime = dict["MaintainEndTime"] as! String
                }
                if dict.keys.contains("MaintainStartTime") {
                    self.maintainStartTime = dict["MaintainStartTime"] as! String
                }
                if dict.keys.contains("MasterNodeNum") {
                    self.masterNodeNum = dict["MasterNodeNum"] as! Int32
                }
                if dict.keys.contains("MaxConnections") {
                    self.maxConnections = dict["MaxConnections"] as! Int32
                }
                if dict.keys.contains("MemoryPerNode") {
                    self.memoryPerNode = dict["MemoryPerNode"] as! Int32
                }
                if dict.keys.contains("MemorySize") {
                    self.memorySize = dict["MemorySize"] as! Int64
                }
                if dict.keys.contains("MemoryUnit") {
                    self.memoryUnit = dict["MemoryUnit"] as! String
                }
                if dict.keys.contains("MinorVersion") {
                    self.minorVersion = dict["MinorVersion"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("ReadDelayTime") {
                    self.readDelayTime = dict["ReadDelayTime"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("RunningTime") {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SecurityIPList") {
                    self.securityIPList = dict["SecurityIPList"] as! String
                }
                if dict.keys.contains("SegNodeNum") {
                    self.segNodeNum = dict["SegNodeNum"] as! Int32
                }
                if dict.keys.contains("SegmentCounts") {
                    self.segmentCounts = dict["SegmentCounts"] as! Int32
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StoragePerNode") {
                    self.storagePerNode = dict["StoragePerNode"] as! Int32
                }
                if dict.keys.contains("StorageSize") {
                    self.storageSize = dict["StorageSize"] as! Int64
                }
                if dict.keys.contains("StorageType") {
                    self.storageType = dict["StorageType"] as! String
                }
                if dict.keys.contains("StorageUnit") {
                    self.storageUnit = dict["StorageUnit"] as! String
                }
                if dict.keys.contains("SupportRestore") {
                    self.supportRestore = dict["SupportRestore"] as! Bool
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBInstanceAttribute: [DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceAttribute != nil {
                var tmp : [Any] = []
                for k in self.DBInstanceAttribute! {
                    tmp.append(k.toMap())
                }
                map["DBInstanceAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceAttribute") {
                self.DBInstanceAttribute = dict["DBInstanceAttribute"] as! [DescribeDBInstanceAttributeResponseBody.Items.DBInstanceAttribute]
            }
        }
    }
    public var items: DescribeDBInstanceAttributeResponseBody.Items?

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
            var model = DescribeDBInstanceAttributeResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceAttributeResponseBody?

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
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceDataBloatRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeDBInstanceDataBloatResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var bloatCeoff: String?

        public var bloatSize: String?

        public var databaseName: String?

        public var expectTableSize: String?

        public var realTableSize: String?

        public var schemaName: String?

        public var sequence: Int32?

        public var storageType: String?

        public var suggestedAction: String?

        public var tableName: String?

        public var timeLastUpdated: String?

        public var timeLastVacuumed: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bloatCeoff != nil {
                map["BloatCeoff"] = self.bloatCeoff!
            }
            if self.bloatSize != nil {
                map["BloatSize"] = self.bloatSize!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.expectTableSize != nil {
                map["ExpectTableSize"] = self.expectTableSize!
            }
            if self.realTableSize != nil {
                map["RealTableSize"] = self.realTableSize!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.sequence != nil {
                map["Sequence"] = self.sequence!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.suggestedAction != nil {
                map["SuggestedAction"] = self.suggestedAction!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.timeLastUpdated != nil {
                map["TimeLastUpdated"] = self.timeLastUpdated!
            }
            if self.timeLastVacuumed != nil {
                map["TimeLastVacuumed"] = self.timeLastVacuumed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BloatCeoff") {
                self.bloatCeoff = dict["BloatCeoff"] as! String
            }
            if dict.keys.contains("BloatSize") {
                self.bloatSize = dict["BloatSize"] as! String
            }
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("ExpectTableSize") {
                self.expectTableSize = dict["ExpectTableSize"] as! String
            }
            if dict.keys.contains("RealTableSize") {
                self.realTableSize = dict["RealTableSize"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("Sequence") {
                self.sequence = dict["Sequence"] as! Int32
            }
            if dict.keys.contains("StorageType") {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("SuggestedAction") {
                self.suggestedAction = dict["SuggestedAction"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TimeLastUpdated") {
                self.timeLastUpdated = dict["TimeLastUpdated"] as! String
            }
            if dict.keys.contains("TimeLastVacuumed") {
                self.timeLastVacuumed = dict["TimeLastVacuumed"] as! String
            }
        }
    }
    public var items: [DescribeDBInstanceDataBloatResponseBody.Items]?

    public var pageNumber: Int32?

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
            self.items = dict["Items"] as! [DescribeDBInstanceDataBloatResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBInstanceDataBloatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceDataBloatResponseBody?

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
            var model = DescribeDBInstanceDataBloatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceDataSkewRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeDBInstanceDataSkewResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var databaseName: String?

        public var distributeKey: String?

        public var owner: String?

        public var schemaName: String?

        public var sequence: Int32?

        public var tableName: String?

        public var tableSize: String?

        public var tableSkew: String?

        public var timeLastUpdated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.distributeKey != nil {
                map["DistributeKey"] = self.distributeKey!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.sequence != nil {
                map["Sequence"] = self.sequence!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.tableSize != nil {
                map["TableSize"] = self.tableSize!
            }
            if self.tableSkew != nil {
                map["TableSkew"] = self.tableSkew!
            }
            if self.timeLastUpdated != nil {
                map["TimeLastUpdated"] = self.timeLastUpdated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DistributeKey") {
                self.distributeKey = dict["DistributeKey"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("Sequence") {
                self.sequence = dict["Sequence"] as! Int32
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TableSize") {
                self.tableSize = dict["TableSize"] as! String
            }
            if dict.keys.contains("TableSkew") {
                self.tableSkew = dict["TableSkew"] as! String
            }
            if dict.keys.contains("TimeLastUpdated") {
                self.timeLastUpdated = dict["TimeLastUpdated"] as! String
            }
        }
    }
    public var items: [DescribeDBInstanceDataSkewResponseBody.Items]?

    public var pageNumber: Int32?

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
            self.items = dict["Items"] as! [DescribeDBInstanceDataSkewResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBInstanceDataSkewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceDataSkewResponseBody?

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
            var model = DescribeDBInstanceDataSkewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceDiagnosisSummaryRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var rolePreferd: String?

    public var startStatus: String?

    public var syncMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rolePreferd != nil {
            map["RolePreferd"] = self.rolePreferd!
        }
        if self.startStatus != nil {
            map["StartStatus"] = self.startStatus!
        }
        if self.syncMode != nil {
            map["SyncMode"] = self.syncMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RolePreferd") {
            self.rolePreferd = dict["RolePreferd"] as! String
        }
        if dict.keys.contains("StartStatus") {
            self.startStatus = dict["StartStatus"] as! String
        }
        if dict.keys.contains("SyncMode") {
            self.syncMode = dict["SyncMode"] as! String
        }
    }
}

public class DescribeDBInstanceDiagnosisSummaryResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var hostname: String?

        public var nodeAddress: String?

        public var nodeCID: String?

        public var nodeID: String?

        public var nodeName: String?

        public var nodePort: String?

        public var nodePreferredRole: String?

        public var nodeReplicationMode: String?

        public var nodeRole: String?

        public var nodeStatus: String?

        public var nodeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.nodeAddress != nil {
                map["NodeAddress"] = self.nodeAddress!
            }
            if self.nodeCID != nil {
                map["NodeCID"] = self.nodeCID!
            }
            if self.nodeID != nil {
                map["NodeID"] = self.nodeID!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodePort != nil {
                map["NodePort"] = self.nodePort!
            }
            if self.nodePreferredRole != nil {
                map["NodePreferredRole"] = self.nodePreferredRole!
            }
            if self.nodeReplicationMode != nil {
                map["NodeReplicationMode"] = self.nodeReplicationMode!
            }
            if self.nodeRole != nil {
                map["NodeRole"] = self.nodeRole!
            }
            if self.nodeStatus != nil {
                map["NodeStatus"] = self.nodeStatus!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("NodeAddress") {
                self.nodeAddress = dict["NodeAddress"] as! String
            }
            if dict.keys.contains("NodeCID") {
                self.nodeCID = dict["NodeCID"] as! String
            }
            if dict.keys.contains("NodeID") {
                self.nodeID = dict["NodeID"] as! String
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodePort") {
                self.nodePort = dict["NodePort"] as! String
            }
            if dict.keys.contains("NodePreferredRole") {
                self.nodePreferredRole = dict["NodePreferredRole"] as! String
            }
            if dict.keys.contains("NodeReplicationMode") {
                self.nodeReplicationMode = dict["NodeReplicationMode"] as! String
            }
            if dict.keys.contains("NodeRole") {
                self.nodeRole = dict["NodeRole"] as! String
            }
            if dict.keys.contains("NodeStatus") {
                self.nodeStatus = dict["NodeStatus"] as! String
            }
            if dict.keys.contains("NodeType") {
                self.nodeType = dict["NodeType"] as! String
            }
        }
    }
    public class MasterStatusInfo : Tea.TeaModel {
        public var exceptionNodeNum: Int32?

        public var normalNodeNum: Int32?

        public var notPreferredNodeNum: Int32?

        public var notSyncingNodeNum: Int32?

        public var preferredNodeNum: Int32?

        public var syncedNodeNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exceptionNodeNum != nil {
                map["ExceptionNodeNum"] = self.exceptionNodeNum!
            }
            if self.normalNodeNum != nil {
                map["NormalNodeNum"] = self.normalNodeNum!
            }
            if self.notPreferredNodeNum != nil {
                map["NotPreferredNodeNum"] = self.notPreferredNodeNum!
            }
            if self.notSyncingNodeNum != nil {
                map["NotSyncingNodeNum"] = self.notSyncingNodeNum!
            }
            if self.preferredNodeNum != nil {
                map["PreferredNodeNum"] = self.preferredNodeNum!
            }
            if self.syncedNodeNum != nil {
                map["SyncedNodeNum"] = self.syncedNodeNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExceptionNodeNum") {
                self.exceptionNodeNum = dict["ExceptionNodeNum"] as! Int32
            }
            if dict.keys.contains("NormalNodeNum") {
                self.normalNodeNum = dict["NormalNodeNum"] as! Int32
            }
            if dict.keys.contains("NotPreferredNodeNum") {
                self.notPreferredNodeNum = dict["NotPreferredNodeNum"] as! Int32
            }
            if dict.keys.contains("NotSyncingNodeNum") {
                self.notSyncingNodeNum = dict["NotSyncingNodeNum"] as! Int32
            }
            if dict.keys.contains("PreferredNodeNum") {
                self.preferredNodeNum = dict["PreferredNodeNum"] as! Int32
            }
            if dict.keys.contains("SyncedNodeNum") {
                self.syncedNodeNum = dict["SyncedNodeNum"] as! Int32
            }
        }
    }
    public class SegmentStatusInfo : Tea.TeaModel {
        public var exceptionNodeNum: Int32?

        public var normalNodeNum: Int32?

        public var notPreferredNodeNum: Int32?

        public var notSyncingNodeNum: Int32?

        public var preferredNodeNum: Int32?

        public var syncedNodeNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exceptionNodeNum != nil {
                map["ExceptionNodeNum"] = self.exceptionNodeNum!
            }
            if self.normalNodeNum != nil {
                map["NormalNodeNum"] = self.normalNodeNum!
            }
            if self.notPreferredNodeNum != nil {
                map["NotPreferredNodeNum"] = self.notPreferredNodeNum!
            }
            if self.notSyncingNodeNum != nil {
                map["NotSyncingNodeNum"] = self.notSyncingNodeNum!
            }
            if self.preferredNodeNum != nil {
                map["PreferredNodeNum"] = self.preferredNodeNum!
            }
            if self.syncedNodeNum != nil {
                map["SyncedNodeNum"] = self.syncedNodeNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExceptionNodeNum") {
                self.exceptionNodeNum = dict["ExceptionNodeNum"] as! Int32
            }
            if dict.keys.contains("NormalNodeNum") {
                self.normalNodeNum = dict["NormalNodeNum"] as! Int32
            }
            if dict.keys.contains("NotPreferredNodeNum") {
                self.notPreferredNodeNum = dict["NotPreferredNodeNum"] as! Int32
            }
            if dict.keys.contains("NotSyncingNodeNum") {
                self.notSyncingNodeNum = dict["NotSyncingNodeNum"] as! Int32
            }
            if dict.keys.contains("PreferredNodeNum") {
                self.preferredNodeNum = dict["PreferredNodeNum"] as! Int32
            }
            if dict.keys.contains("SyncedNodeNum") {
                self.syncedNodeNum = dict["SyncedNodeNum"] as! Int32
            }
        }
    }
    public var items: [DescribeDBInstanceDiagnosisSummaryResponseBody.Items]?

    public var masterStatusInfo: DescribeDBInstanceDiagnosisSummaryResponseBody.MasterStatusInfo?

    public var pageNumber: String?

    public var requestId: String?

    public var segmentStatusInfo: DescribeDBInstanceDiagnosisSummaryResponseBody.SegmentStatusInfo?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.masterStatusInfo?.validate()
        try self.segmentStatusInfo?.validate()
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
        if self.masterStatusInfo != nil {
            map["MasterStatusInfo"] = self.masterStatusInfo?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.segmentStatusInfo != nil {
            map["SegmentStatusInfo"] = self.segmentStatusInfo?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeDBInstanceDiagnosisSummaryResponseBody.Items]
        }
        if dict.keys.contains("MasterStatusInfo") {
            var model = DescribeDBInstanceDiagnosisSummaryResponseBody.MasterStatusInfo()
            model.fromMap(dict["MasterStatusInfo"] as! [String: Any])
            self.masterStatusInfo = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SegmentStatusInfo") {
            var model = DescribeDBInstanceDiagnosisSummaryResponseBody.SegmentStatusInfo()
            model.fromMap(dict["SegmentStatusInfo"] as! [String: Any])
            self.segmentStatusInfo = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeDBInstanceDiagnosisSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceDiagnosisSummaryResponseBody?

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
            var model = DescribeDBInstanceDiagnosisSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceErrorLogRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var host: String?

    public var keywords: String?

    public var logLevel: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("LogLevel") {
            self.logLevel = dict["LogLevel"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeDBInstanceErrorLogResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var database: String?

        public var host: String?

        public var logContext: String?

        public var logLevel: String?

        public var time: Int64?

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
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.logContext != nil {
                map["LogContext"] = self.logContext!
            }
            if self.logLevel != nil {
                map["LogLevel"] = self.logLevel!
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
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("LogContext") {
                self.logContext = dict["LogContext"] as! String
            }
            if dict.keys.contains("LogLevel") {
                self.logLevel = dict["LogLevel"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var items: [DescribeDBInstanceErrorLogResponseBody.Items]?

    public var pageNumber: Int32?

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
            self.items = dict["Items"] as! [DescribeDBInstanceErrorLogResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBInstanceErrorLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceErrorLogResponseBody?

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
            var model = DescribeDBInstanceErrorLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceIPArrayListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDBInstanceIPArrayListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstanceIPArray : Tea.TeaModel {
            public var DBInstanceIPArrayAttribute: String?

            public var DBInstanceIPArrayName: String?

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
                if self.DBInstanceIPArrayAttribute != nil {
                    map["DBInstanceIPArrayAttribute"] = self.DBInstanceIPArrayAttribute!
                }
                if self.DBInstanceIPArrayName != nil {
                    map["DBInstanceIPArrayName"] = self.DBInstanceIPArrayName!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBInstanceIPArrayAttribute") {
                    self.DBInstanceIPArrayAttribute = dict["DBInstanceIPArrayAttribute"] as! String
                }
                if dict.keys.contains("DBInstanceIPArrayName") {
                    self.DBInstanceIPArrayName = dict["DBInstanceIPArrayName"] as! String
                }
                if dict.keys.contains("SecurityIPList") {
                    self.securityIPList = dict["SecurityIPList"] as! String
                }
            }
        }
        public var DBInstanceIPArray: [DescribeDBInstanceIPArrayListResponseBody.Items.DBInstanceIPArray]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceIPArray != nil {
                var tmp : [Any] = []
                for k in self.DBInstanceIPArray! {
                    tmp.append(k.toMap())
                }
                map["DBInstanceIPArray"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceIPArray") {
                self.DBInstanceIPArray = dict["DBInstanceIPArray"] as! [DescribeDBInstanceIPArrayListResponseBody.Items.DBInstanceIPArray]
            }
        }
    }
    public var items: DescribeDBInstanceIPArrayListResponseBody.Items?

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
            var model = DescribeDBInstanceIPArrayListResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceIPArrayListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceIPArrayListResponseBody?

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
            var model = DescribeDBInstanceIPArrayListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceIndexUsageRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeDBInstanceIndexUsageResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var databaseName: String?

        public var indexDef: String?

        public var indexName: String?

        public var indexScanTimes: Int32?

        public var indexSize: String?

        public var isPartitionTable: Bool?

        public var parentTableName: String?

        public var schemaName: String?

        public var tableName: String?

        public var timeLastUpdated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.indexDef != nil {
                map["IndexDef"] = self.indexDef!
            }
            if self.indexName != nil {
                map["IndexName"] = self.indexName!
            }
            if self.indexScanTimes != nil {
                map["IndexScanTimes"] = self.indexScanTimes!
            }
            if self.indexSize != nil {
                map["IndexSize"] = self.indexSize!
            }
            if self.isPartitionTable != nil {
                map["IsPartitionTable"] = self.isPartitionTable!
            }
            if self.parentTableName != nil {
                map["ParentTableName"] = self.parentTableName!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.timeLastUpdated != nil {
                map["TimeLastUpdated"] = self.timeLastUpdated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("IndexDef") {
                self.indexDef = dict["IndexDef"] as! String
            }
            if dict.keys.contains("IndexName") {
                self.indexName = dict["IndexName"] as! String
            }
            if dict.keys.contains("IndexScanTimes") {
                self.indexScanTimes = dict["IndexScanTimes"] as! Int32
            }
            if dict.keys.contains("IndexSize") {
                self.indexSize = dict["IndexSize"] as! String
            }
            if dict.keys.contains("IsPartitionTable") {
                self.isPartitionTable = dict["IsPartitionTable"] as! Bool
            }
            if dict.keys.contains("ParentTableName") {
                self.parentTableName = dict["ParentTableName"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TimeLastUpdated") {
                self.timeLastUpdated = dict["TimeLastUpdated"] as! String
            }
        }
    }
    public var items: [DescribeDBInstanceIndexUsageResponseBody.Items]?

    public var pageNumber: Int32?

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
            self.items = dict["Items"] as! [DescribeDBInstanceIndexUsageResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDBInstanceIndexUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceIndexUsageResponseBody?

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
            var model = DescribeDBInstanceIndexUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceNetInfoRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeDBInstanceNetInfoResponseBody : Tea.TeaModel {
    public class DBInstanceNetInfos : Tea.TeaModel {
        public class DBInstanceNetInfo : Tea.TeaModel {
            public var addressType: String?

            public var connectionString: String?

            public var IPAddress: String?

            public var IPType: String?

            public var port: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public var vpcInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.IPType != nil {
                    map["IPType"] = self.IPType!
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
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressType") {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("IPAddress") {
                    self.IPAddress = dict["IPAddress"] as! String
                }
                if dict.keys.contains("IPType") {
                    self.IPType = dict["IPType"] as! String
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
                if dict.keys.contains("VpcInstanceId") {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
                }
            }
        }
        public var DBInstanceNetInfo: [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.DBInstanceNetInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceNetInfo != nil {
                var tmp : [Any] = []
                for k in self.DBInstanceNetInfo! {
                    tmp.append(k.toMap())
                }
                map["DBInstanceNetInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceNetInfo") {
                self.DBInstanceNetInfo = dict["DBInstanceNetInfo"] as! [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.DBInstanceNetInfo]
            }
        }
    }
    public var DBInstanceNetInfos: DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos?

    public var instanceNetworkType: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBInstanceNetInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceNetInfos != nil {
            map["DBInstanceNetInfos"] = self.DBInstanceNetInfos?.toMap()
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceNetInfos") {
            var model = DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos()
            model.fromMap(dict["DBInstanceNetInfos"] as! [String: Any])
            self.DBInstanceNetInfos = model
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceNetInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceNetInfoResponseBody?

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
            var model = DescribeDBInstanceNetInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceOnECSAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDBInstanceOnECSAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstanceAttribute : Tea.TeaModel {
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
                public var tag: [DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute.Tags.Tag]?

                public override init() {
                    super.init()
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
                        self.tag = dict["Tag"] as! [DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute.Tags.Tag]
                    }
                }
            }
            public var connectionMode: String?

            public var connectionString: String?

            public var cpuCores: Int32?

            public var creationTime: String?

            public var DBInstanceCategory: String?

            public var DBInstanceClass: String?

            public var DBInstanceDescription: String?

            public var DBInstanceId: String?

            public var DBInstanceStatus: String?

            public var encryptionKey: String?

            public var encryptionType: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var instanceDeployType: String?

            public var instanceNetworkType: String?

            public var lockMode: String?

            public var masterNodeNum: Int32?

            public var memorySize: Int32?

            public var minorVersion: String?

            public var payType: String?

            public var port: String?

            public var regionId: String?

            public var segNodeNum: Int32?

            public var storageSize: Int32?

            public var storageType: String?

            public var supportRestore: Bool?

            public var tags: DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute.Tags?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.connectionMode != nil {
                    map["ConnectionMode"] = self.connectionMode!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.cpuCores != nil {
                    map["CpuCores"] = self.cpuCores!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.DBInstanceCategory != nil {
                    map["DBInstanceCategory"] = self.DBInstanceCategory!
                }
                if self.DBInstanceClass != nil {
                    map["DBInstanceClass"] = self.DBInstanceClass!
                }
                if self.DBInstanceDescription != nil {
                    map["DBInstanceDescription"] = self.DBInstanceDescription!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.encryptionKey != nil {
                    map["EncryptionKey"] = self.encryptionKey!
                }
                if self.encryptionType != nil {
                    map["EncryptionType"] = self.encryptionType!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceDeployType != nil {
                    map["InstanceDeployType"] = self.instanceDeployType!
                }
                if self.instanceNetworkType != nil {
                    map["InstanceNetworkType"] = self.instanceNetworkType!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.masterNodeNum != nil {
                    map["MasterNodeNum"] = self.masterNodeNum!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.segNodeNum != nil {
                    map["SegNodeNum"] = self.segNodeNum!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.supportRestore != nil {
                    map["SupportRestore"] = self.supportRestore!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionMode") {
                    self.connectionMode = dict["ConnectionMode"] as! String
                }
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("CpuCores") {
                    self.cpuCores = dict["CpuCores"] as! Int32
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DBInstanceCategory") {
                    self.DBInstanceCategory = dict["DBInstanceCategory"] as! String
                }
                if dict.keys.contains("DBInstanceClass") {
                    self.DBInstanceClass = dict["DBInstanceClass"] as! String
                }
                if dict.keys.contains("DBInstanceDescription") {
                    self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                }
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                }
                if dict.keys.contains("EncryptionKey") {
                    self.encryptionKey = dict["EncryptionKey"] as! String
                }
                if dict.keys.contains("EncryptionType") {
                    self.encryptionType = dict["EncryptionType"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("InstanceDeployType") {
                    self.instanceDeployType = dict["InstanceDeployType"] as! String
                }
                if dict.keys.contains("InstanceNetworkType") {
                    self.instanceNetworkType = dict["InstanceNetworkType"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("MasterNodeNum") {
                    self.masterNodeNum = dict["MasterNodeNum"] as! Int32
                }
                if dict.keys.contains("MemorySize") {
                    self.memorySize = dict["MemorySize"] as! Int32
                }
                if dict.keys.contains("MinorVersion") {
                    self.minorVersion = dict["MinorVersion"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SegNodeNum") {
                    self.segNodeNum = dict["SegNodeNum"] as! Int32
                }
                if dict.keys.contains("StorageSize") {
                    self.storageSize = dict["StorageSize"] as! Int32
                }
                if dict.keys.contains("StorageType") {
                    self.storageType = dict["StorageType"] as! String
                }
                if dict.keys.contains("SupportRestore") {
                    self.supportRestore = dict["SupportRestore"] as! Bool
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBInstanceAttribute: [DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceAttribute != nil {
                var tmp : [Any] = []
                for k in self.DBInstanceAttribute! {
                    tmp.append(k.toMap())
                }
                map["DBInstanceAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceAttribute") {
                self.DBInstanceAttribute = dict["DBInstanceAttribute"] as! [DescribeDBInstanceOnECSAttributeResponseBody.Items.DBInstanceAttribute]
            }
        }
    }
    public var items: DescribeDBInstanceOnECSAttributeResponseBody.Items?

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
            var model = DescribeDBInstanceOnECSAttributeResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceOnECSAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceOnECSAttributeResponseBody?

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
            var model = DescribeDBInstanceOnECSAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstancePerformanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var key: String?

    public var resourceGroupId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBInstancePerformanceResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var engine: String?

    public var performanceKeys: [String]?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.performanceKeys != nil {
            map["PerformanceKeys"] = self.performanceKeys!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("PerformanceKeys") {
            self.performanceKeys = dict["PerformanceKeys"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBInstancePerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancePerformanceResponseBody?

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
            var model = DescribeDBInstancePerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstancePlansRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var planCreateDate: String?

    public var planDesc: String?

    public var planId: String?

    public var planScheduleType: String?

    public var planType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.planCreateDate != nil {
            map["PlanCreateDate"] = self.planCreateDate!
        }
        if self.planDesc != nil {
            map["PlanDesc"] = self.planDesc!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planScheduleType != nil {
            map["PlanScheduleType"] = self.planScheduleType!
        }
        if self.planType != nil {
            map["PlanType"] = self.planType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlanCreateDate") {
            self.planCreateDate = dict["PlanCreateDate"] as! String
        }
        if dict.keys.contains("PlanDesc") {
            self.planDesc = dict["PlanDesc"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanScheduleType") {
            self.planScheduleType = dict["PlanScheduleType"] as! String
        }
        if dict.keys.contains("PlanType") {
            self.planType = dict["PlanType"] as! String
        }
    }
}

public class DescribeDBInstancePlansResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class PlanList : Tea.TeaModel {
            public var DBInstanceId: String?

            public var planConfig: String?

            public var planDesc: String?

            public var planEndDate: String?

            public var planId: String?

            public var planName: String?

            public var planScheduleType: String?

            public var planStartDate: String?

            public var planStatus: String?

            public var planType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.planConfig != nil {
                    map["PlanConfig"] = self.planConfig!
                }
                if self.planDesc != nil {
                    map["PlanDesc"] = self.planDesc!
                }
                if self.planEndDate != nil {
                    map["PlanEndDate"] = self.planEndDate!
                }
                if self.planId != nil {
                    map["PlanId"] = self.planId!
                }
                if self.planName != nil {
                    map["PlanName"] = self.planName!
                }
                if self.planScheduleType != nil {
                    map["PlanScheduleType"] = self.planScheduleType!
                }
                if self.planStartDate != nil {
                    map["PlanStartDate"] = self.planStartDate!
                }
                if self.planStatus != nil {
                    map["PlanStatus"] = self.planStatus!
                }
                if self.planType != nil {
                    map["PlanType"] = self.planType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("PlanConfig") {
                    self.planConfig = dict["PlanConfig"] as! String
                }
                if dict.keys.contains("PlanDesc") {
                    self.planDesc = dict["PlanDesc"] as! String
                }
                if dict.keys.contains("PlanEndDate") {
                    self.planEndDate = dict["PlanEndDate"] as! String
                }
                if dict.keys.contains("PlanId") {
                    self.planId = dict["PlanId"] as! String
                }
                if dict.keys.contains("PlanName") {
                    self.planName = dict["PlanName"] as! String
                }
                if dict.keys.contains("PlanScheduleType") {
                    self.planScheduleType = dict["PlanScheduleType"] as! String
                }
                if dict.keys.contains("PlanStartDate") {
                    self.planStartDate = dict["PlanStartDate"] as! String
                }
                if dict.keys.contains("PlanStatus") {
                    self.planStatus = dict["PlanStatus"] as! String
                }
                if dict.keys.contains("PlanType") {
                    self.planType = dict["PlanType"] as! String
                }
            }
        }
        public var planList: [DescribeDBInstancePlansResponseBody.Items.PlanList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.planList != nil {
                var tmp : [Any] = []
                for k in self.planList! {
                    tmp.append(k.toMap())
                }
                map["PlanList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlanList") {
                self.planList = dict["PlanList"] as! [DescribeDBInstancePlansResponseBody.Items.PlanList]
            }
        }
    }
    public var errorMessage: String?

    public var items: DescribeDBInstancePlansResponseBody.Items?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var status: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeDBInstancePlansResponseBody.Items()
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
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class DescribeDBInstancePlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancePlansResponseBody?

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
            var model = DescribeDBInstancePlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceSQLPatternsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var queryKeywords: String?

    public var sourceIP: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.sourceIP != nil {
            map["SourceIP"] = self.sourceIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("SourceIP") {
            self.sourceIP = dict["SourceIP"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeDBInstanceSQLPatternsResponseBody : Tea.TeaModel {
    public class Patterns : Tea.TeaModel {
        public var name: String?

        public var values: [String: Any]?

        public override init() {
            super.init()
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
                self.values = dict["Values"] as! [String: Any]
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var patterns: [DescribeDBInstanceSQLPatternsResponseBody.Patterns]?

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
        if self.patterns != nil {
            var tmp : [Any] = []
            for k in self.patterns! {
                tmp.append(k.toMap())
            }
            map["Patterns"] = tmp
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
        if dict.keys.contains("Patterns") {
            self.patterns = dict["Patterns"] as! [DescribeDBInstanceSQLPatternsResponseBody.Patterns]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBInstanceSQLPatternsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceSQLPatternsResponseBody?

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
            var model = DescribeDBInstanceSQLPatternsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceSSLRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeDBInstanceSSLResponseBody : Tea.TeaModel {
    public var certCommonName: String?

    public var DBInstanceId: String?

    public var DBInstanceName: String?

    public var requestId: String?

    public var SSLEnabled: Bool?

    public var SSLExpiredTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certCommonName != nil {
            map["CertCommonName"] = self.certCommonName!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        if self.SSLExpiredTime != nil {
            map["SSLExpiredTime"] = self.SSLExpiredTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertCommonName") {
            self.certCommonName = dict["CertCommonName"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SSLEnabled") {
            self.SSLEnabled = dict["SSLEnabled"] as! Bool
        }
        if dict.keys.contains("SSLExpiredTime") {
            self.SSLExpiredTime = dict["SSLExpiredTime"] as! String
        }
    }
}

public class DescribeDBInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceSSLResponseBody?

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
            var model = DescribeDBInstanceSSLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstancesRequest : Tea.TeaModel {
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
    public var DBInstanceCategories: [String]?

    public var DBInstanceDescription: String?

    public var DBInstanceIds: String?

    public var DBInstanceModes: [String]?

    public var DBInstanceStatuses: [String]?

    public var instanceDeployTypes: [String]?

    public var instanceNetworkType: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeDBInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceCategories != nil {
            map["DBInstanceCategories"] = self.DBInstanceCategories!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceModes != nil {
            map["DBInstanceModes"] = self.DBInstanceModes!
        }
        if self.DBInstanceStatuses != nil {
            map["DBInstanceStatuses"] = self.DBInstanceStatuses!
        }
        if self.instanceDeployTypes != nil {
            map["InstanceDeployTypes"] = self.instanceDeployTypes!
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
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
        if dict.keys.contains("DBInstanceCategories") {
            self.DBInstanceCategories = dict["DBInstanceCategories"] as! [String]
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DBInstanceModes") {
            self.DBInstanceModes = dict["DBInstanceModes"] as! [String]
        }
        if dict.keys.contains("DBInstanceStatuses") {
            self.DBInstanceStatuses = dict["DBInstanceStatuses"] as! [String]
        }
        if dict.keys.contains("InstanceDeployTypes") {
            self.instanceDeployTypes = dict["InstanceDeployTypes"] as! [String]
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
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
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeDBInstancesRequest.Tag]
        }
    }
}

public class DescribeDBInstancesShrinkRequest : Tea.TeaModel {
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
    public var DBInstanceCategoriesShrink: String?

    public var DBInstanceDescription: String?

    public var DBInstanceIds: String?

    public var DBInstanceModesShrink: String?

    public var DBInstanceStatusesShrink: String?

    public var instanceDeployTypesShrink: String?

    public var instanceNetworkType: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeDBInstancesShrinkRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceCategoriesShrink != nil {
            map["DBInstanceCategories"] = self.DBInstanceCategoriesShrink!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceModesShrink != nil {
            map["DBInstanceModes"] = self.DBInstanceModesShrink!
        }
        if self.DBInstanceStatusesShrink != nil {
            map["DBInstanceStatuses"] = self.DBInstanceStatusesShrink!
        }
        if self.instanceDeployTypesShrink != nil {
            map["InstanceDeployTypes"] = self.instanceDeployTypesShrink!
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
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
        if dict.keys.contains("DBInstanceCategories") {
            self.DBInstanceCategoriesShrink = dict["DBInstanceCategories"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DBInstanceModes") {
            self.DBInstanceModesShrink = dict["DBInstanceModes"] as! String
        }
        if dict.keys.contains("DBInstanceStatuses") {
            self.DBInstanceStatusesShrink = dict["DBInstanceStatuses"] as! String
        }
        if dict.keys.contains("InstanceDeployTypes") {
            self.instanceDeployTypesShrink = dict["InstanceDeployTypes"] as! String
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
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
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeDBInstancesShrinkRequest.Tag]
        }
    }
}

public class DescribeDBInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstance : Tea.TeaModel {
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
                public var tag: [DescribeDBInstancesResponseBody.Items.DBInstance.Tags.Tag]?

                public override init() {
                    super.init()
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
                        self.tag = dict["Tag"] as! [DescribeDBInstancesResponseBody.Items.DBInstance.Tags.Tag]
                    }
                }
            }
            public var connectionMode: String?

            public var createTime: String?

            public var DBInstanceCategory: String?

            public var DBInstanceDescription: String?

            public var DBInstanceId: String?

            public var DBInstanceMode: String?

            public var DBInstanceNetType: String?

            public var DBInstanceStatus: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var instanceDeployType: String?

            public var instanceNetworkType: String?

            public var lockMode: String?

            public var lockReason: String?

            public var masterNodeNum: Int32?

            public var payType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var segNodeNum: String?

            public var storageSize: String?

            public var storageType: String?

            public var tags: DescribeDBInstancesResponseBody.Items.DBInstance.Tags?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.connectionMode != nil {
                    map["ConnectionMode"] = self.connectionMode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBInstanceCategory != nil {
                    map["DBInstanceCategory"] = self.DBInstanceCategory!
                }
                if self.DBInstanceDescription != nil {
                    map["DBInstanceDescription"] = self.DBInstanceDescription!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceMode != nil {
                    map["DBInstanceMode"] = self.DBInstanceMode!
                }
                if self.DBInstanceNetType != nil {
                    map["DBInstanceNetType"] = self.DBInstanceNetType!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceDeployType != nil {
                    map["InstanceDeployType"] = self.instanceDeployType!
                }
                if self.instanceNetworkType != nil {
                    map["InstanceNetworkType"] = self.instanceNetworkType!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.masterNodeNum != nil {
                    map["MasterNodeNum"] = self.masterNodeNum!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.segNodeNum != nil {
                    map["SegNodeNum"] = self.segNodeNum!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionMode") {
                    self.connectionMode = dict["ConnectionMode"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DBInstanceCategory") {
                    self.DBInstanceCategory = dict["DBInstanceCategory"] as! String
                }
                if dict.keys.contains("DBInstanceDescription") {
                    self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                }
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceMode") {
                    self.DBInstanceMode = dict["DBInstanceMode"] as! String
                }
                if dict.keys.contains("DBInstanceNetType") {
                    self.DBInstanceNetType = dict["DBInstanceNetType"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("InstanceDeployType") {
                    self.instanceDeployType = dict["InstanceDeployType"] as! String
                }
                if dict.keys.contains("InstanceNetworkType") {
                    self.instanceNetworkType = dict["InstanceNetworkType"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MasterNodeNum") {
                    self.masterNodeNum = dict["MasterNodeNum"] as! Int32
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SegNodeNum") {
                    self.segNodeNum = dict["SegNodeNum"] as! String
                }
                if dict.keys.contains("StorageSize") {
                    self.storageSize = dict["StorageSize"] as! String
                }
                if dict.keys.contains("StorageType") {
                    self.storageType = dict["StorageType"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeDBInstancesResponseBody.Items.DBInstance.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBInstance: [DescribeDBInstancesResponseBody.Items.DBInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstance != nil {
                var tmp : [Any] = []
                for k in self.DBInstance! {
                    tmp.append(k.toMap())
                }
                map["DBInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstance") {
                self.DBInstance = dict["DBInstance"] as! [DescribeDBInstancesResponseBody.Items.DBInstance]
            }
        }
    }
    public var items: DescribeDBInstancesResponseBody.Items?

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
            var model = DescribeDBInstancesResponseBody.Items()
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

public class DescribeDBInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancesResponseBody?

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
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var backupMode: String?

    public var backupStatus: String?

    public var DBInstanceId: String?

    public var dataType: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.backupStatus != nil {
            map["BackupStatus"] = self.backupStatus!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("BackupMode") {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("BackupStatus") {
            self.backupStatus = dict["BackupStatus"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDataBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var backupEndTime: String?

        public var backupEndTimeLocal: String?

        public var backupMode: String?

        public var backupSetId: String?

        public var backupSize: Int64?

        public var backupStartTime: String?

        public var backupStartTimeLocal: String?

        public var backupStatus: String?

        public var baksetName: String?

        public var consistentTime: Int64?

        public var DBInstanceId: String?

        public var dataType: String?

        public override init() {
            super.init()
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
            if self.backupEndTimeLocal != nil {
                map["BackupEndTimeLocal"] = self.backupEndTimeLocal!
            }
            if self.backupMode != nil {
                map["BackupMode"] = self.backupMode!
            }
            if self.backupSetId != nil {
                map["BackupSetId"] = self.backupSetId!
            }
            if self.backupSize != nil {
                map["BackupSize"] = self.backupSize!
            }
            if self.backupStartTime != nil {
                map["BackupStartTime"] = self.backupStartTime!
            }
            if self.backupStartTimeLocal != nil {
                map["BackupStartTimeLocal"] = self.backupStartTimeLocal!
            }
            if self.backupStatus != nil {
                map["BackupStatus"] = self.backupStatus!
            }
            if self.baksetName != nil {
                map["BaksetName"] = self.baksetName!
            }
            if self.consistentTime != nil {
                map["ConsistentTime"] = self.consistentTime!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupEndTime") {
                self.backupEndTime = dict["BackupEndTime"] as! String
            }
            if dict.keys.contains("BackupEndTimeLocal") {
                self.backupEndTimeLocal = dict["BackupEndTimeLocal"] as! String
            }
            if dict.keys.contains("BackupMode") {
                self.backupMode = dict["BackupMode"] as! String
            }
            if dict.keys.contains("BackupSetId") {
                self.backupSetId = dict["BackupSetId"] as! String
            }
            if dict.keys.contains("BackupSize") {
                self.backupSize = dict["BackupSize"] as! Int64
            }
            if dict.keys.contains("BackupStartTime") {
                self.backupStartTime = dict["BackupStartTime"] as! String
            }
            if dict.keys.contains("BackupStartTimeLocal") {
                self.backupStartTimeLocal = dict["BackupStartTimeLocal"] as! String
            }
            if dict.keys.contains("BackupStatus") {
                self.backupStatus = dict["BackupStatus"] as! String
            }
            if dict.keys.contains("BaksetName") {
                self.baksetName = dict["BaksetName"] as! String
            }
            if dict.keys.contains("ConsistentTime") {
                self.consistentTime = dict["ConsistentTime"] as! Int64
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
        }
    }
    public var items: [DescribeDataBackupsResponseBody.Items]?

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
            self.items = dict["Items"] as! [DescribeDataBackupsResponseBody.Items]
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

public class DescribeDataBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataBackupsResponseBody?

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
            var model = DescribeDataBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataShareInstancesRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var searchValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("SearchValue") {
            self.searchValue = dict["SearchValue"] as! String
        }
    }
}

public class DescribeDataShareInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstance : Tea.TeaModel {
            public var DBInstanceId: String?

            public var DBInstanceMode: String?

            public var dataShareStatus: String?

            public var description_: String?

            public var regionId: String?

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
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceMode != nil {
                    map["DBInstanceMode"] = self.DBInstanceMode!
                }
                if self.dataShareStatus != nil {
                    map["DataShareStatus"] = self.dataShareStatus!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceMode") {
                    self.DBInstanceMode = dict["DBInstanceMode"] as! String
                }
                if dict.keys.contains("DataShareStatus") {
                    self.dataShareStatus = dict["DataShareStatus"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBInstance: [DescribeDataShareInstancesResponseBody.Items.DBInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstance != nil {
                var tmp : [Any] = []
                for k in self.DBInstance! {
                    tmp.append(k.toMap())
                }
                map["DBInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstance") {
                self.DBInstance = dict["DBInstance"] as! [DescribeDataShareInstancesResponseBody.Items.DBInstance]
            }
        }
    }
    public var items: DescribeDataShareInstancesResponseBody.Items?

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
            var model = DescribeDataShareInstancesResponseBody.Items()
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

public class DescribeDataShareInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataShareInstancesResponseBody?

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
            var model = DescribeDataShareInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataSharePerformanceRequest : Tea.TeaModel {
    public var endTime: String?

    public var key: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDataSharePerformanceResponseBody : Tea.TeaModel {
    public class PerformanceKeys : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public var point: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.point != nil {
                        map["Point"] = self.point!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Point") {
                        self.point = dict["Point"] as! [String]
                    }
                }
            }
            public var name: String?

            public var values: [DescribeDataSharePerformanceResponseBody.PerformanceKeys.Series.Values]?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [DescribeDataSharePerformanceResponseBody.PerformanceKeys.Series.Values]
                }
            }
        }
        public var name: String?

        public var series: [DescribeDataSharePerformanceResponseBody.PerformanceKeys.Series]?

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
            if self.name != nil {
                map["Name"] = self.name!
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribeDataSharePerformanceResponseBody.PerformanceKeys.Series]
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performanceKeys: [DescribeDataSharePerformanceResponseBody.PerformanceKeys]?

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
        if self.performanceKeys != nil {
            var tmp : [Any] = []
            for k in self.performanceKeys! {
                tmp.append(k.toMap())
            }
            map["PerformanceKeys"] = tmp
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
        if dict.keys.contains("PerformanceKeys") {
            self.performanceKeys = dict["PerformanceKeys"] as! [DescribeDataSharePerformanceResponseBody.PerformanceKeys]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDataSharePerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataSharePerformanceResponseBody?

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
            var model = DescribeDataSharePerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisDimensionsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeDiagnosisDimensionsResponseBody : Tea.TeaModel {
    public var databases: [String]?

    public var requestId: String?

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
        if self.databases != nil {
            map["Databases"] = self.databases!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userNames != nil {
            map["UserNames"] = self.userNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") {
            self.databases = dict["Databases"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeDiagnosisMonitorPerformanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var queryCondition: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QueryCondition") {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeDiagnosisMonitorPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public var cost: Int32?

        public var database: String?

        public var queryID: String?

        public var startTime: Int64?

        public var status: String?

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
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.queryID != nil {
                map["QueryID"] = self.queryID!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cost") {
                self.cost = dict["Cost"] as! Int32
            }
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("QueryID") {
                self.queryID = dict["QueryID"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var performances: [DescribeDiagnosisMonitorPerformanceResponseBody.Performances]?

    public var performancesThreshold: Int32?

    public var performancesTruncated: Bool?

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
        if self.performancesThreshold != nil {
            map["PerformancesThreshold"] = self.performancesThreshold!
        }
        if self.performancesTruncated != nil {
            map["PerformancesTruncated"] = self.performancesTruncated!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Performances") {
            self.performances = dict["Performances"] as! [DescribeDiagnosisMonitorPerformanceResponseBody.Performances]
        }
        if dict.keys.contains("PerformancesThreshold") {
            self.performancesThreshold = dict["PerformancesThreshold"] as! Int32
        }
        if dict.keys.contains("PerformancesTruncated") {
            self.performancesTruncated = dict["PerformancesTruncated"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDiagnosisMonitorPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisMonitorPerformanceResponseBody?

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
            var model = DescribeDiagnosisMonitorPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiagnosisRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var keyword: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryCondition: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryCondition != nil {
            map["QueryCondition"] = self.queryCondition!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
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
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryCondition") {
            self.queryCondition = dict["QueryCondition"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeDiagnosisRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var database: String?

        public var duration: Int32?

        public var queryID: String?

        public var SQLStmt: String?

        public var SQLTruncated: Bool?

        public var SQLTruncatedThreshold: Int32?

        public var sessionID: String?

        public var startTime: Int64?

        public var status: String?

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
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.queryID != nil {
                map["QueryID"] = self.queryID!
            }
            if self.SQLStmt != nil {
                map["SQLStmt"] = self.SQLStmt!
            }
            if self.SQLTruncated != nil {
                map["SQLTruncated"] = self.SQLTruncated!
            }
            if self.SQLTruncatedThreshold != nil {
                map["SQLTruncatedThreshold"] = self.SQLTruncatedThreshold!
            }
            if self.sessionID != nil {
                map["SessionID"] = self.sessionID!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("QueryID") {
                self.queryID = dict["QueryID"] as! String
            }
            if dict.keys.contains("SQLStmt") {
                self.SQLStmt = dict["SQLStmt"] as! String
            }
            if dict.keys.contains("SQLTruncated") {
                self.SQLTruncated = dict["SQLTruncated"] as! Bool
            }
            if dict.keys.contains("SQLTruncatedThreshold") {
                self.SQLTruncatedThreshold = dict["SQLTruncatedThreshold"] as! Int32
            }
            if dict.keys.contains("SessionID") {
                self.sessionID = dict["SessionID"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var items: [DescribeDiagnosisRecordsResponseBody.Items]?

    public var pageNumber: Int32?

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
            self.items = dict["Items"] as! [DescribeDiagnosisRecordsResponseBody.Items]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
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

public class DescribeDiagnosisSQLInfoRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var queryID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.queryID != nil {
            map["QueryID"] = self.queryID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("QueryID") {
            self.queryID = dict["QueryID"] as! String
        }
    }
}

public class DescribeDiagnosisSQLInfoResponseBody : Tea.TeaModel {
    public var database: String?

    public var duration: Int32?

    public var maxOutputRows: String?

    public var queryID: String?

    public var queryPlan: String?

    public var requestId: String?

    public var SQLStmt: String?

    public var sessionID: String?

    public var sortedMetrics: String?

    public var startTime: Int64?

    public var status: String?

    public var textPlan: String?

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
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.maxOutputRows != nil {
            map["MaxOutputRows"] = self.maxOutputRows!
        }
        if self.queryID != nil {
            map["QueryID"] = self.queryID!
        }
        if self.queryPlan != nil {
            map["QueryPlan"] = self.queryPlan!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SQLStmt != nil {
            map["SQLStmt"] = self.SQLStmt!
        }
        if self.sessionID != nil {
            map["SessionID"] = self.sessionID!
        }
        if self.sortedMetrics != nil {
            map["SortedMetrics"] = self.sortedMetrics!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.textPlan != nil {
            map["TextPlan"] = self.textPlan!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("MaxOutputRows") {
            self.maxOutputRows = dict["MaxOutputRows"] as! String
        }
        if dict.keys.contains("QueryID") {
            self.queryID = dict["QueryID"] as! String
        }
        if dict.keys.contains("QueryPlan") {
            self.queryPlan = dict["QueryPlan"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLStmt") {
            self.SQLStmt = dict["SQLStmt"] as! String
        }
        if dict.keys.contains("SessionID") {
            self.sessionID = dict["SessionID"] as! String
        }
        if dict.keys.contains("SortedMetrics") {
            self.sortedMetrics = dict["SortedMetrics"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TextPlan") {
            self.textPlan = dict["TextPlan"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeDiagnosisSQLInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiagnosisSQLInfoResponseBody?

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
            var model = DescribeDiagnosisSQLInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDownloadRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeDownloadRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var downloadId: Int64?

        public var downloadUrl: String?

        public var exceptionMsg: String?

        public var fileName: String?

        public var status: String?

        public override init() {
            super.init()
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
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadId") {
                self.downloadId = dict["DownloadId"] as! Int64
            }
            if dict.keys.contains("DownloadUrl") {
                self.downloadUrl = dict["DownloadUrl"] as! String
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

public class DescribeHealthStatusRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var key: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
    }
}

public class DescribeHealthStatusResponseBody : Tea.TeaModel {
    public class Status : Tea.TeaModel {
        public class AdbgpSegmentDiskUsagePercentMax : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgConnectionStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgDiskStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgDiskUsagePercent : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgMasterDiskUsagePercentMax : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgMasterStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgSegmentStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class AdbpgStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class NodeMasterConnectionStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class NodeMasterStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class NodeSegmentConnectionStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public class NodeSegmentDiskStatus : Tea.TeaModel {
            public var status: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var adbgpSegmentDiskUsagePercentMax: DescribeHealthStatusResponseBody.Status.AdbgpSegmentDiskUsagePercentMax?

        public var adbpgConnectionStatus: DescribeHealthStatusResponseBody.Status.AdbpgConnectionStatus?

        public var adbpgDiskStatus: DescribeHealthStatusResponseBody.Status.AdbpgDiskStatus?

        public var adbpgDiskUsagePercent: DescribeHealthStatusResponseBody.Status.AdbpgDiskUsagePercent?

        public var adbpgMasterDiskUsagePercentMax: DescribeHealthStatusResponseBody.Status.AdbpgMasterDiskUsagePercentMax?

        public var adbpgMasterStatus: DescribeHealthStatusResponseBody.Status.AdbpgMasterStatus?

        public var adbpgSegmentStatus: DescribeHealthStatusResponseBody.Status.AdbpgSegmentStatus?

        public var adbpgStatus: DescribeHealthStatusResponseBody.Status.AdbpgStatus?

        public var nodeMasterConnectionStatus: DescribeHealthStatusResponseBody.Status.NodeMasterConnectionStatus?

        public var nodeMasterStatus: DescribeHealthStatusResponseBody.Status.NodeMasterStatus?

        public var nodeSegmentConnectionStatus: DescribeHealthStatusResponseBody.Status.NodeSegmentConnectionStatus?

        public var nodeSegmentDiskStatus: DescribeHealthStatusResponseBody.Status.NodeSegmentDiskStatus?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.adbgpSegmentDiskUsagePercentMax?.validate()
            try self.adbpgConnectionStatus?.validate()
            try self.adbpgDiskStatus?.validate()
            try self.adbpgDiskUsagePercent?.validate()
            try self.adbpgMasterDiskUsagePercentMax?.validate()
            try self.adbpgMasterStatus?.validate()
            try self.adbpgSegmentStatus?.validate()
            try self.adbpgStatus?.validate()
            try self.nodeMasterConnectionStatus?.validate()
            try self.nodeMasterStatus?.validate()
            try self.nodeSegmentConnectionStatus?.validate()
            try self.nodeSegmentDiskStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adbgpSegmentDiskUsagePercentMax != nil {
                map["adbgp_segment_disk_usage_percent_max"] = self.adbgpSegmentDiskUsagePercentMax?.toMap()
            }
            if self.adbpgConnectionStatus != nil {
                map["adbpg_connection_status"] = self.adbpgConnectionStatus?.toMap()
            }
            if self.adbpgDiskStatus != nil {
                map["adbpg_disk_status"] = self.adbpgDiskStatus?.toMap()
            }
            if self.adbpgDiskUsagePercent != nil {
                map["adbpg_disk_usage_percent"] = self.adbpgDiskUsagePercent?.toMap()
            }
            if self.adbpgMasterDiskUsagePercentMax != nil {
                map["adbpg_master_disk_usage_percent_max"] = self.adbpgMasterDiskUsagePercentMax?.toMap()
            }
            if self.adbpgMasterStatus != nil {
                map["adbpg_master_status"] = self.adbpgMasterStatus?.toMap()
            }
            if self.adbpgSegmentStatus != nil {
                map["adbpg_segment_status"] = self.adbpgSegmentStatus?.toMap()
            }
            if self.adbpgStatus != nil {
                map["adbpg_status"] = self.adbpgStatus?.toMap()
            }
            if self.nodeMasterConnectionStatus != nil {
                map["node_master_connection_status"] = self.nodeMasterConnectionStatus?.toMap()
            }
            if self.nodeMasterStatus != nil {
                map["node_master_status"] = self.nodeMasterStatus?.toMap()
            }
            if self.nodeSegmentConnectionStatus != nil {
                map["node_segment_connection_status"] = self.nodeSegmentConnectionStatus?.toMap()
            }
            if self.nodeSegmentDiskStatus != nil {
                map["node_segment_disk_status"] = self.nodeSegmentDiskStatus?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("adbgp_segment_disk_usage_percent_max") {
                var model = DescribeHealthStatusResponseBody.Status.AdbgpSegmentDiskUsagePercentMax()
                model.fromMap(dict["adbgp_segment_disk_usage_percent_max"] as! [String: Any])
                self.adbgpSegmentDiskUsagePercentMax = model
            }
            if dict.keys.contains("adbpg_connection_status") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgConnectionStatus()
                model.fromMap(dict["adbpg_connection_status"] as! [String: Any])
                self.adbpgConnectionStatus = model
            }
            if dict.keys.contains("adbpg_disk_status") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgDiskStatus()
                model.fromMap(dict["adbpg_disk_status"] as! [String: Any])
                self.adbpgDiskStatus = model
            }
            if dict.keys.contains("adbpg_disk_usage_percent") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgDiskUsagePercent()
                model.fromMap(dict["adbpg_disk_usage_percent"] as! [String: Any])
                self.adbpgDiskUsagePercent = model
            }
            if dict.keys.contains("adbpg_master_disk_usage_percent_max") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgMasterDiskUsagePercentMax()
                model.fromMap(dict["adbpg_master_disk_usage_percent_max"] as! [String: Any])
                self.adbpgMasterDiskUsagePercentMax = model
            }
            if dict.keys.contains("adbpg_master_status") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgMasterStatus()
                model.fromMap(dict["adbpg_master_status"] as! [String: Any])
                self.adbpgMasterStatus = model
            }
            if dict.keys.contains("adbpg_segment_status") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgSegmentStatus()
                model.fromMap(dict["adbpg_segment_status"] as! [String: Any])
                self.adbpgSegmentStatus = model
            }
            if dict.keys.contains("adbpg_status") {
                var model = DescribeHealthStatusResponseBody.Status.AdbpgStatus()
                model.fromMap(dict["adbpg_status"] as! [String: Any])
                self.adbpgStatus = model
            }
            if dict.keys.contains("node_master_connection_status") {
                var model = DescribeHealthStatusResponseBody.Status.NodeMasterConnectionStatus()
                model.fromMap(dict["node_master_connection_status"] as! [String: Any])
                self.nodeMasterConnectionStatus = model
            }
            if dict.keys.contains("node_master_status") {
                var model = DescribeHealthStatusResponseBody.Status.NodeMasterStatus()
                model.fromMap(dict["node_master_status"] as! [String: Any])
                self.nodeMasterStatus = model
            }
            if dict.keys.contains("node_segment_connection_status") {
                var model = DescribeHealthStatusResponseBody.Status.NodeSegmentConnectionStatus()
                model.fromMap(dict["node_segment_connection_status"] as! [String: Any])
                self.nodeSegmentConnectionStatus = model
            }
            if dict.keys.contains("node_segment_disk_status") {
                var model = DescribeHealthStatusResponseBody.Status.NodeSegmentDiskStatus()
                model.fromMap(dict["node_segment_disk_status"] as! [String: Any])
                self.nodeSegmentDiskStatus = model
            }
        }
    }
    public var DBClusterId: String?

    public var requestId: String?

    public var status: DescribeHealthStatusResponseBody.Status?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
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
        if dict.keys.contains("Status") {
            var model = DescribeHealthStatusResponseBody.Status()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class DescribeHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHealthStatusResponseBody?

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
            var model = DescribeHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogBackupsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeLogBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var backupId: String?

        public var DBInstanceId: String?

        public var logFileName: String?

        public var logFileSize: Int64?

        public var logTime: String?

        public var segmentName: String?

        public override init() {
            super.init()
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
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.logFileName != nil {
                map["LogFileName"] = self.logFileName!
            }
            if self.logFileSize != nil {
                map["LogFileSize"] = self.logFileSize!
            }
            if self.logTime != nil {
                map["LogTime"] = self.logTime!
            }
            if self.segmentName != nil {
                map["SegmentName"] = self.segmentName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupId") {
                self.backupId = dict["BackupId"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("LogFileName") {
                self.logFileName = dict["LogFileName"] as! String
            }
            if dict.keys.contains("LogFileSize") {
                self.logFileSize = dict["LogFileSize"] as! Int64
            }
            if dict.keys.contains("LogTime") {
                self.logTime = dict["LogTime"] as! String
            }
            if dict.keys.contains("SegmentName") {
                self.segmentName = dict["SegmentName"] as! String
            }
        }
    }
    public var items: [DescribeLogBackupsResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalLogSize: Int64?

    public override init() {
        super.init()
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
        if self.totalLogSize != nil {
            map["TotalLogSize"] = self.totalLogSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeLogBackupsResponseBody.Items]
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
        if dict.keys.contains("TotalLogSize") {
            self.totalLogSize = dict["TotalLogSize"] as! Int64
        }
    }
}

public class DescribeLogBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogBackupsResponseBody?

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
            var model = DescribeLogBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeModifyParameterLogRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeModifyParameterLogResponseBody : Tea.TeaModel {
    public class Changelogs : Tea.TeaModel {
        public var effectTime: String?

        public var parameterName: String?

        public var parameterValid: String?

        public var parameterValueAfter: String?

        public var parameterValueBefore: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.parameterName != nil {
                map["ParameterName"] = self.parameterName!
            }
            if self.parameterValid != nil {
                map["ParameterValid"] = self.parameterValid!
            }
            if self.parameterValueAfter != nil {
                map["ParameterValueAfter"] = self.parameterValueAfter!
            }
            if self.parameterValueBefore != nil {
                map["ParameterValueBefore"] = self.parameterValueBefore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! String
            }
            if dict.keys.contains("ParameterName") {
                self.parameterName = dict["ParameterName"] as! String
            }
            if dict.keys.contains("ParameterValid") {
                self.parameterValid = dict["ParameterValid"] as! String
            }
            if dict.keys.contains("ParameterValueAfter") {
                self.parameterValueAfter = dict["ParameterValueAfter"] as! String
            }
            if dict.keys.contains("ParameterValueBefore") {
                self.parameterValueBefore = dict["ParameterValueBefore"] as! String
            }
        }
    }
    public var changelogs: [DescribeModifyParameterLogResponseBody.Changelogs]?

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
        if self.changelogs != nil {
            var tmp : [Any] = []
            for k in self.changelogs! {
                tmp.append(k.toMap())
            }
            map["Changelogs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Changelogs") {
            self.changelogs = dict["Changelogs"] as! [DescribeModifyParameterLogResponseBody.Changelogs]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeModifyParameterLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModifyParameterLogResponseBody?

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
            var model = DescribeModifyParameterLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var currentValue: String?

        public var forceRestartInstance: String?

        public var isChangeableConfig: String?

        public var optionalRange: String?

        public var parameterDescription: String?

        public var parameterName: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentValue != nil {
                map["CurrentValue"] = self.currentValue!
            }
            if self.forceRestartInstance != nil {
                map["ForceRestartInstance"] = self.forceRestartInstance!
            }
            if self.isChangeableConfig != nil {
                map["IsChangeableConfig"] = self.isChangeableConfig!
            }
            if self.optionalRange != nil {
                map["OptionalRange"] = self.optionalRange!
            }
            if self.parameterDescription != nil {
                map["ParameterDescription"] = self.parameterDescription!
            }
            if self.parameterName != nil {
                map["ParameterName"] = self.parameterName!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentValue") {
                self.currentValue = dict["CurrentValue"] as! String
            }
            if dict.keys.contains("ForceRestartInstance") {
                self.forceRestartInstance = dict["ForceRestartInstance"] as! String
            }
            if dict.keys.contains("IsChangeableConfig") {
                self.isChangeableConfig = dict["IsChangeableConfig"] as! String
            }
            if dict.keys.contains("OptionalRange") {
                self.optionalRange = dict["OptionalRange"] as! String
            }
            if dict.keys.contains("ParameterDescription") {
                self.parameterDescription = dict["ParameterDescription"] as! String
            }
            if dict.keys.contains("ParameterName") {
                self.parameterName = dict["ParameterName"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var parameters: [DescribeParametersResponseBody.Parameters]?

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
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [DescribeParametersResponseBody.Parameters]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersResponseBody?

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
            var model = DescribeParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdsVSwitchsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var vpcId: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRdsVSwitchsResponseBody : Tea.TeaModel {
    public class VSwitches : Tea.TeaModel {
        public class VSwitch : Tea.TeaModel {
            public var aliUid: String?

            public var bid: String?

            public var cidrBlock: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var isDefault: Bool?

            public var izNo: String?

            public var regionNo: String?

            public var status: String?

            public var vSwitchId: String?

            public var vSwitchName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.izNo != nil {
                    map["IzNo"] = self.izNo!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vSwitchName != nil {
                    map["VSwitchName"] = self.vSwitchName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliUid") {
                    self.aliUid = dict["AliUid"] as! String
                }
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("CidrBlock") {
                    self.cidrBlock = dict["CidrBlock"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IsDefault") {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("IzNo") {
                    self.izNo = dict["IzNo"] as! String
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VSwitchName") {
                    self.vSwitchName = dict["VSwitchName"] as! String
                }
            }
        }
        public var vSwitch: [DescribeRdsVSwitchsResponseBody.VSwitches.VSwitch]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vSwitch != nil {
                var tmp : [Any] = []
                for k in self.vSwitch! {
                    tmp.append(k.toMap())
                }
                map["VSwitch"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitch") {
                self.vSwitch = dict["VSwitch"] as! [DescribeRdsVSwitchsResponseBody.VSwitches.VSwitch]
            }
        }
    }
    public var requestId: String?

    public var vSwitches: DescribeRdsVSwitchsResponseBody.VSwitches?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vSwitches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VSwitches") {
            var model = DescribeRdsVSwitchsResponseBody.VSwitches()
            model.fromMap(dict["VSwitches"] as! [String: Any])
            self.vSwitches = model
        }
    }
}

public class DescribeRdsVSwitchsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsVSwitchsResponseBody?

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
            var model = DescribeRdsVSwitchsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdsVpcsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRdsVpcsResponseBody : Tea.TeaModel {
    public class Vpcs : Tea.TeaModel {
        public class Vpc : Tea.TeaModel {
            public class VSwitchs : Tea.TeaModel {
                public var cidrBlock: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var isDefault: Bool?

                public var izNo: String?

                public var status: String?

                public var vSwitchId: String?

                public var vSwitchName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidrBlock != nil {
                        map["CidrBlock"] = self.cidrBlock!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.isDefault != nil {
                        map["IsDefault"] = self.isDefault!
                    }
                    if self.izNo != nil {
                        map["IzNo"] = self.izNo!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.vSwitchId != nil {
                        map["VSwitchId"] = self.vSwitchId!
                    }
                    if self.vSwitchName != nil {
                        map["VSwitchName"] = self.vSwitchName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CidrBlock") {
                        self.cidrBlock = dict["CidrBlock"] as! String
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("GmtModified") {
                        self.gmtModified = dict["GmtModified"] as! String
                    }
                    if dict.keys.contains("IsDefault") {
                        self.isDefault = dict["IsDefault"] as! Bool
                    }
                    if dict.keys.contains("IzNo") {
                        self.izNo = dict["IzNo"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("VSwitchId") {
                        self.vSwitchId = dict["VSwitchId"] as! String
                    }
                    if dict.keys.contains("VSwitchName") {
                        self.vSwitchName = dict["VSwitchName"] as! String
                    }
                }
            }
            public var aliUid: String?

            public var bid: String?

            public var cidrBlock: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var isDefault: Bool?

            public var regionNo: String?

            public var status: String?

            public var vSwitchs: [DescribeRdsVpcsResponseBody.Vpcs.Vpc.VSwitchs]?

            public var vpcId: String?

            public var vpcName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchs != nil {
                    var tmp : [Any] = []
                    for k in self.vSwitchs! {
                        tmp.append(k.toMap())
                    }
                    map["VSwitchs"] = tmp
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliUid") {
                    self.aliUid = dict["AliUid"] as! String
                }
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("CidrBlock") {
                    self.cidrBlock = dict["CidrBlock"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IsDefault") {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("RegionNo") {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchs") {
                    self.vSwitchs = dict["VSwitchs"] as! [DescribeRdsVpcsResponseBody.Vpcs.Vpc.VSwitchs]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") {
                    self.vpcName = dict["VpcName"] as! String
                }
            }
        }
        public var vpc: [DescribeRdsVpcsResponseBody.Vpcs.Vpc]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpc != nil {
                var tmp : [Any] = []
                for k in self.vpc! {
                    tmp.append(k.toMap())
                }
                map["Vpc"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Vpc") {
                self.vpc = dict["Vpc"] as! [DescribeRdsVpcsResponseBody.Vpcs.Vpc]
            }
        }
    }
    public var requestId: String?

    public var vpcs: DescribeRdsVpcsResponseBody.Vpcs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vpcs != nil {
            map["Vpcs"] = self.vpcs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Vpcs") {
            var model = DescribeRdsVpcsResponseBody.Vpcs()
            model.fromMap(dict["Vpcs"] as! [String: Any])
            self.vpcs = model
        }
    }
}

public class DescribeRdsVpcsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsVpcsResponseBody?

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
            var model = DescribeRdsVpcsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
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
                        if self.vpcEnabled != nil {
                            map["VpcEnabled"] = self.vpcEnabled!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
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
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zones != nil {
                    map["Zones"] = self.zones?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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

public class DescribeResourceUsageRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeResourceUsageResponseBody : Tea.TeaModel {
    public var backupSize: Int64?

    public var DBInstanceId: String?

    public var dataSize: Int64?

    public var diskUsed: Int64?

    public var engine: String?

    public var logSize: Int64?

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
        if self.backupSize != nil {
            map["BackupSize"] = self.backupSize!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.diskUsed != nil {
            map["DiskUsed"] = self.diskUsed!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.logSize != nil {
            map["LogSize"] = self.logSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSize") {
            self.backupSize = dict["BackupSize"] as! Int64
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DataSize") {
            self.dataSize = dict["DataSize"] as! Int64
        }
        if dict.keys.contains("DiskUsed") {
            self.diskUsed = dict["DiskUsed"] as! Int64
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("LogSize") {
            self.logSize = dict["LogSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceUsageResponseBody?

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
            var model = DescribeResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLCollectorPolicyRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class DescribeSQLCollectorPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var SQLCollectorStatus: String?

    public override init() {
        super.init()
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
        if self.SQLCollectorStatus != nil {
            map["SQLCollectorStatus"] = self.SQLCollectorStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SQLCollectorStatus") {
            self.SQLCollectorStatus = dict["SQLCollectorStatus"] as! String
        }
    }
}

public class DescribeSQLCollectorPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLCollectorPolicyResponseBody?

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
            var model = DescribeSQLCollectorPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogByQueryIdRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("QueryId") {
            self.queryId = dict["QueryId"] as! String
        }
    }
}

public class DescribeSQLLogByQueryIdResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountName: String?

        public var DBName: String?

        public var DBRole: String?

        public var executeCost: Double?

        public var executeState: String?

        public var operationClass: String?

        public var operationExecuteTime: String?

        public var operationType: String?

        public var queryId: String?

        public var returnRowCounts: Int64?

        public var SQLPlan: String?

        public var SQLText: String?

        public var scanRowCounts: Int64?

        public var sliceIds: [String]?

        public var sourceIP: String?

        public var sourcePort: Int32?

        public override init() {
            super.init()
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
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.DBRole != nil {
                map["DBRole"] = self.DBRole!
            }
            if self.executeCost != nil {
                map["ExecuteCost"] = self.executeCost!
            }
            if self.executeState != nil {
                map["ExecuteState"] = self.executeState!
            }
            if self.operationClass != nil {
                map["OperationClass"] = self.operationClass!
            }
            if self.operationExecuteTime != nil {
                map["OperationExecuteTime"] = self.operationExecuteTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.SQLPlan != nil {
                map["SQLPlan"] = self.SQLPlan!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.scanRowCounts != nil {
                map["ScanRowCounts"] = self.scanRowCounts!
            }
            if self.sliceIds != nil {
                map["SliceIds"] = self.sliceIds!
            }
            if self.sourceIP != nil {
                map["SourceIP"] = self.sourceIP!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("DBRole") {
                self.DBRole = dict["DBRole"] as! String
            }
            if dict.keys.contains("ExecuteCost") {
                self.executeCost = dict["ExecuteCost"] as! Double
            }
            if dict.keys.contains("ExecuteState") {
                self.executeState = dict["ExecuteState"] as! String
            }
            if dict.keys.contains("OperationClass") {
                self.operationClass = dict["OperationClass"] as! String
            }
            if dict.keys.contains("OperationExecuteTime") {
                self.operationExecuteTime = dict["OperationExecuteTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("QueryId") {
                self.queryId = dict["QueryId"] as! String
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
            }
            if dict.keys.contains("SQLPlan") {
                self.SQLPlan = dict["SQLPlan"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("ScanRowCounts") {
                self.scanRowCounts = dict["ScanRowCounts"] as! Int64
            }
            if dict.keys.contains("SliceIds") {
                self.sliceIds = dict["SliceIds"] as! [String]
            }
            if dict.keys.contains("SourceIP") {
                self.sourceIP = dict["SourceIP"] as! String
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! Int32
            }
        }
    }
    public var items: [DescribeSQLLogByQueryIdResponseBody.Items]?

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
            self.items = dict["Items"] as! [DescribeSQLLogByQueryIdResponseBody.Items]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSQLLogByQueryIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogByQueryIdResponseBody?

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
            var model = DescribeSQLLogByQueryIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogCountRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var executeCost: String?

    public var executeState: String?

    public var maxExecuteCost: String?

    public var minExecuteCost: String?

    public var operationClass: String?

    public var operationType: String?

    public var queryKeywords: String?

    public var sourceIP: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeCost != nil {
            map["ExecuteCost"] = self.executeCost!
        }
        if self.executeState != nil {
            map["ExecuteState"] = self.executeState!
        }
        if self.maxExecuteCost != nil {
            map["MaxExecuteCost"] = self.maxExecuteCost!
        }
        if self.minExecuteCost != nil {
            map["MinExecuteCost"] = self.minExecuteCost!
        }
        if self.operationClass != nil {
            map["OperationClass"] = self.operationClass!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.sourceIP != nil {
            map["SourceIP"] = self.sourceIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecuteCost") {
            self.executeCost = dict["ExecuteCost"] as! String
        }
        if dict.keys.contains("ExecuteState") {
            self.executeState = dict["ExecuteState"] as! String
        }
        if dict.keys.contains("MaxExecuteCost") {
            self.maxExecuteCost = dict["MaxExecuteCost"] as! String
        }
        if dict.keys.contains("MinExecuteCost") {
            self.minExecuteCost = dict["MinExecuteCost"] as! String
        }
        if dict.keys.contains("OperationClass") {
            self.operationClass = dict["OperationClass"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("SourceIP") {
            self.sourceIP = dict["SourceIP"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeSQLLogCountResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public var point: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.point != nil {
                        map["Point"] = self.point!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Point") {
                        self.point = dict["Point"] as! [String]
                    }
                }
            }
            public var values: [DescribeSQLLogCountResponseBody.Items.Series.Values]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [DescribeSQLLogCountResponseBody.Items.Series.Values]
                }
            }
        }
        public var name: String?

        public var series: [DescribeSQLLogCountResponseBody.Items.Series]?

        public override init() {
            super.init()
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
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! [DescribeSQLLogCountResponseBody.Items.Series]
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var items: [DescribeSQLLogCountResponseBody.Items]?

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
            self.items = dict["Items"] as! [DescribeSQLLogCountResponseBody.Items]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSQLLogCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogCountResponseBody?

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
            var model = DescribeSQLLogCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogFilesRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var fileName: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeSQLLogFilesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class LogFile : Tea.TeaModel {
            public var fileID: String?

            public var logDownloadURL: String?

            public var logEndTime: String?

            public var logSize: String?

            public var logStartTime: String?

            public var logStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileID != nil {
                    map["FileID"] = self.fileID!
                }
                if self.logDownloadURL != nil {
                    map["LogDownloadURL"] = self.logDownloadURL!
                }
                if self.logEndTime != nil {
                    map["LogEndTime"] = self.logEndTime!
                }
                if self.logSize != nil {
                    map["LogSize"] = self.logSize!
                }
                if self.logStartTime != nil {
                    map["LogStartTime"] = self.logStartTime!
                }
                if self.logStatus != nil {
                    map["LogStatus"] = self.logStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileID") {
                    self.fileID = dict["FileID"] as! String
                }
                if dict.keys.contains("LogDownloadURL") {
                    self.logDownloadURL = dict["LogDownloadURL"] as! String
                }
                if dict.keys.contains("LogEndTime") {
                    self.logEndTime = dict["LogEndTime"] as! String
                }
                if dict.keys.contains("LogSize") {
                    self.logSize = dict["LogSize"] as! String
                }
                if dict.keys.contains("LogStartTime") {
                    self.logStartTime = dict["LogStartTime"] as! String
                }
                if dict.keys.contains("LogStatus") {
                    self.logStatus = dict["LogStatus"] as! String
                }
            }
        }
        public var logFile: [DescribeSQLLogFilesResponseBody.Items.LogFile]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logFile != nil {
                var tmp : [Any] = []
                for k in self.logFile! {
                    tmp.append(k.toMap())
                }
                map["LogFile"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogFile") {
                self.logFile = dict["LogFile"] as! [DescribeSQLLogFilesResponseBody.Items.LogFile]
            }
        }
    }
    public var items: DescribeSQLLogFilesResponseBody.Items?

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
            var model = DescribeSQLLogFilesResponseBody.Items()
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

public class DescribeSQLLogFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogFilesResponseBody?

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
            var model = DescribeSQLLogFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var form: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryKeywords: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.form != nil {
            map["Form"] = self.form!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Form") {
            self.form = dict["Form"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeSQLLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class SQLRecord : Tea.TeaModel {
            public var accountName: String?

            public var DBName: String?

            public var executeTime: String?

            public var hostAddress: String?

            public var returnRowCounts: Int64?

            public var SQLText: String?

            public var threadID: String?

            public var totalExecutionTimes: Int64?

            public override init() {
                super.init()
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
                if self.DBName != nil {
                    map["DBName"] = self.DBName!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.hostAddress != nil {
                    map["HostAddress"] = self.hostAddress!
                }
                if self.returnRowCounts != nil {
                    map["ReturnRowCounts"] = self.returnRowCounts!
                }
                if self.SQLText != nil {
                    map["SQLText"] = self.SQLText!
                }
                if self.threadID != nil {
                    map["ThreadID"] = self.threadID!
                }
                if self.totalExecutionTimes != nil {
                    map["TotalExecutionTimes"] = self.totalExecutionTimes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
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
                if dict.keys.contains("ReturnRowCounts") {
                    self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
                }
                if dict.keys.contains("SQLText") {
                    self.SQLText = dict["SQLText"] as! String
                }
                if dict.keys.contains("ThreadID") {
                    self.threadID = dict["ThreadID"] as! String
                }
                if dict.keys.contains("TotalExecutionTimes") {
                    self.totalExecutionTimes = dict["TotalExecutionTimes"] as! Int64
                }
            }
        }
        public var SQLRecord: [DescribeSQLLogRecordsResponseBody.Items.SQLRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SQLRecord != nil {
                var tmp : [Any] = []
                for k in self.SQLRecord! {
                    tmp.append(k.toMap())
                }
                map["SQLRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SQLRecord") {
                self.SQLRecord = dict["SQLRecord"] as! [DescribeSQLLogRecordsResponseBody.Items.SQLRecord]
            }
        }
    }
    public var items: DescribeSQLLogRecordsResponseBody.Items?

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
            var model = DescribeSQLLogRecordsResponseBody.Items()
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

public class DescribeSQLLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogRecordsResponseBody?

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
            var model = DescribeSQLLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var executeCost: String?

    public var executeState: String?

    public var maxExecuteCost: String?

    public var minExecuteCost: String?

    public var operationClass: String?

    public var operationType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryKeywords: String?

    public var sourceIP: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeCost != nil {
            map["ExecuteCost"] = self.executeCost!
        }
        if self.executeState != nil {
            map["ExecuteState"] = self.executeState!
        }
        if self.maxExecuteCost != nil {
            map["MaxExecuteCost"] = self.maxExecuteCost!
        }
        if self.minExecuteCost != nil {
            map["MinExecuteCost"] = self.minExecuteCost!
        }
        if self.operationClass != nil {
            map["OperationClass"] = self.operationClass!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.sourceIP != nil {
            map["SourceIP"] = self.sourceIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecuteCost") {
            self.executeCost = dict["ExecuteCost"] as! String
        }
        if dict.keys.contains("ExecuteState") {
            self.executeState = dict["ExecuteState"] as! String
        }
        if dict.keys.contains("MaxExecuteCost") {
            self.maxExecuteCost = dict["MaxExecuteCost"] as! String
        }
        if dict.keys.contains("MinExecuteCost") {
            self.minExecuteCost = dict["MinExecuteCost"] as! String
        }
        if dict.keys.contains("OperationClass") {
            self.operationClass = dict["OperationClass"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("SourceIP") {
            self.sourceIP = dict["SourceIP"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeSQLLogsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountName: String?

        public var DBName: String?

        public var DBRole: String?

        public var executeCost: Double?

        public var executeState: String?

        public var operationClass: String?

        public var operationExecuteTime: String?

        public var operationType: String?

        public var returnRowCounts: Int64?

        public var SQLPlan: String?

        public var SQLText: String?

        public var scanRowCounts: Int64?

        public var sourceIP: String?

        public var sourcePort: Int32?

        public override init() {
            super.init()
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
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.DBRole != nil {
                map["DBRole"] = self.DBRole!
            }
            if self.executeCost != nil {
                map["ExecuteCost"] = self.executeCost!
            }
            if self.executeState != nil {
                map["ExecuteState"] = self.executeState!
            }
            if self.operationClass != nil {
                map["OperationClass"] = self.operationClass!
            }
            if self.operationExecuteTime != nil {
                map["OperationExecuteTime"] = self.operationExecuteTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.SQLPlan != nil {
                map["SQLPlan"] = self.SQLPlan!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.scanRowCounts != nil {
                map["ScanRowCounts"] = self.scanRowCounts!
            }
            if self.sourceIP != nil {
                map["SourceIP"] = self.sourceIP!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("DBRole") {
                self.DBRole = dict["DBRole"] as! String
            }
            if dict.keys.contains("ExecuteCost") {
                self.executeCost = dict["ExecuteCost"] as! Double
            }
            if dict.keys.contains("ExecuteState") {
                self.executeState = dict["ExecuteState"] as! String
            }
            if dict.keys.contains("OperationClass") {
                self.operationClass = dict["OperationClass"] as! String
            }
            if dict.keys.contains("OperationExecuteTime") {
                self.operationExecuteTime = dict["OperationExecuteTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
            }
            if dict.keys.contains("SQLPlan") {
                self.SQLPlan = dict["SQLPlan"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("ScanRowCounts") {
                self.scanRowCounts = dict["ScanRowCounts"] as! Int64
            }
            if dict.keys.contains("SourceIP") {
                self.sourceIP = dict["SourceIP"] as! String
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! Int32
            }
        }
    }
    public var items: [DescribeSQLLogsResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeSQLLogsResponseBody.Items]
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
    }
}

public class DescribeSQLLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogsResponseBody?

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
            var model = DescribeSQLLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogsOnSliceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var executeState: String?

    public var maxExecuteCost: String?

    public var minExecuteCost: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryId: String?

    public var sliceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.executeState != nil {
            map["ExecuteState"] = self.executeState!
        }
        if self.maxExecuteCost != nil {
            map["MaxExecuteCost"] = self.maxExecuteCost!
        }
        if self.minExecuteCost != nil {
            map["MinExecuteCost"] = self.minExecuteCost!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.sliceId != nil {
            map["SliceId"] = self.sliceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ExecuteState") {
            self.executeState = dict["ExecuteState"] as! String
        }
        if dict.keys.contains("MaxExecuteCost") {
            self.maxExecuteCost = dict["MaxExecuteCost"] as! String
        }
        if dict.keys.contains("MinExecuteCost") {
            self.minExecuteCost = dict["MinExecuteCost"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryId") {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("SliceId") {
            self.sliceId = dict["SliceId"] as! String
        }
    }
}

public class DescribeSQLLogsOnSliceResponseBody : Tea.TeaModel {
    public class SliceLogItems : Tea.TeaModel {
        public var executeCost: Double?

        public var executeStatus: String?

        public var operationExecuteEndTime: String?

        public var operationExecuteTime: String?

        public var peakMemory: Double?

        public var returnRowCounts: Int64?

        public var segmentId: String?

        public var segmentName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executeCost != nil {
                map["ExecuteCost"] = self.executeCost!
            }
            if self.executeStatus != nil {
                map["ExecuteStatus"] = self.executeStatus!
            }
            if self.operationExecuteEndTime != nil {
                map["OperationExecuteEndTime"] = self.operationExecuteEndTime!
            }
            if self.operationExecuteTime != nil {
                map["OperationExecuteTime"] = self.operationExecuteTime!
            }
            if self.peakMemory != nil {
                map["PeakMemory"] = self.peakMemory!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.segmentId != nil {
                map["SegmentId"] = self.segmentId!
            }
            if self.segmentName != nil {
                map["SegmentName"] = self.segmentName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecuteCost") {
                self.executeCost = dict["ExecuteCost"] as! Double
            }
            if dict.keys.contains("ExecuteStatus") {
                self.executeStatus = dict["ExecuteStatus"] as! String
            }
            if dict.keys.contains("OperationExecuteEndTime") {
                self.operationExecuteEndTime = dict["OperationExecuteEndTime"] as! String
            }
            if dict.keys.contains("OperationExecuteTime") {
                self.operationExecuteTime = dict["OperationExecuteTime"] as! String
            }
            if dict.keys.contains("PeakMemory") {
                self.peakMemory = dict["PeakMemory"] as! Double
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
            }
            if dict.keys.contains("SegmentId") {
                self.segmentId = dict["SegmentId"] as! String
            }
            if dict.keys.contains("SegmentName") {
                self.segmentName = dict["SegmentName"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var sliceLogItems: [DescribeSQLLogsOnSliceResponseBody.SliceLogItems]?

    public override init() {
        super.init()
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
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sliceLogItems != nil {
            var tmp : [Any] = []
            for k in self.sliceLogItems! {
                tmp.append(k.toMap())
            }
            map["SliceLogItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SliceLogItems") {
            self.sliceLogItems = dict["SliceLogItems"] as! [DescribeSQLLogsOnSliceResponseBody.SliceLogItems]
        }
    }
}

public class DescribeSQLLogsOnSliceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogsOnSliceResponseBody?

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
            var model = DescribeSQLLogsOnSliceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSQLLogsV2Request : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var executeCost: String?

    public var executeState: String?

    public var maxExecuteCost: String?

    public var minExecuteCost: String?

    public var operationClass: String?

    public var operationType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var queryKeywords: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceIP: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeCost != nil {
            map["ExecuteCost"] = self.executeCost!
        }
        if self.executeState != nil {
            map["ExecuteState"] = self.executeState!
        }
        if self.maxExecuteCost != nil {
            map["MaxExecuteCost"] = self.maxExecuteCost!
        }
        if self.minExecuteCost != nil {
            map["MinExecuteCost"] = self.minExecuteCost!
        }
        if self.operationClass != nil {
            map["OperationClass"] = self.operationClass!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceIP != nil {
            map["SourceIP"] = self.sourceIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecuteCost") {
            self.executeCost = dict["ExecuteCost"] as! String
        }
        if dict.keys.contains("ExecuteState") {
            self.executeState = dict["ExecuteState"] as! String
        }
        if dict.keys.contains("MaxExecuteCost") {
            self.maxExecuteCost = dict["MaxExecuteCost"] as! String
        }
        if dict.keys.contains("MinExecuteCost") {
            self.minExecuteCost = dict["MinExecuteCost"] as! String
        }
        if dict.keys.contains("OperationClass") {
            self.operationClass = dict["OperationClass"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIP") {
            self.sourceIP = dict["SourceIP"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeSQLLogsV2ResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountName: String?

        public var DBName: String?

        public var DBRole: String?

        public var executeCost: Double?

        public var executeState: String?

        public var operationClass: String?

        public var operationExecuteTime: String?

        public var operationType: String?

        public var returnRowCounts: Int64?

        public var SQLText: String?

        public var scanRowCounts: Int64?

        public var sourceIP: String?

        public var sourcePort: Int32?

        public override init() {
            super.init()
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
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.DBRole != nil {
                map["DBRole"] = self.DBRole!
            }
            if self.executeCost != nil {
                map["ExecuteCost"] = self.executeCost!
            }
            if self.executeState != nil {
                map["ExecuteState"] = self.executeState!
            }
            if self.operationClass != nil {
                map["OperationClass"] = self.operationClass!
            }
            if self.operationExecuteTime != nil {
                map["OperationExecuteTime"] = self.operationExecuteTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.scanRowCounts != nil {
                map["ScanRowCounts"] = self.scanRowCounts!
            }
            if self.sourceIP != nil {
                map["SourceIP"] = self.sourceIP!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("DBRole") {
                self.DBRole = dict["DBRole"] as! String
            }
            if dict.keys.contains("ExecuteCost") {
                self.executeCost = dict["ExecuteCost"] as! Double
            }
            if dict.keys.contains("ExecuteState") {
                self.executeState = dict["ExecuteState"] as! String
            }
            if dict.keys.contains("OperationClass") {
                self.operationClass = dict["OperationClass"] as! String
            }
            if dict.keys.contains("OperationExecuteTime") {
                self.operationExecuteTime = dict["OperationExecuteTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("ScanRowCounts") {
                self.scanRowCounts = dict["ScanRowCounts"] as! Int64
            }
            if dict.keys.contains("SourceIP") {
                self.sourceIP = dict["SourceIP"] as! String
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! Int32
            }
        }
    }
    public var items: [DescribeSQLLogsV2ResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeSQLLogsV2ResponseBody.Items]
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
    }
}

public class DescribeSQLLogsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSQLLogsV2ResponseBody?

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
            var model = DescribeSQLLogsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSampleDataRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeSampleDataResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var hasSampleData: Bool?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.hasSampleData != nil {
            map["HasSampleData"] = self.hasSampleData!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HasSampleData") {
            self.hasSampleData = dict["HasSampleData"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSampleDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSampleDataResponseBody?

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
            var model = DescribeSampleDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var SQLId: Int64?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.SQLId != nil {
            map["SQLId"] = self.SQLId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SQLId") {
            self.SQLId = dict["SQLId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class SQLSlowRecord : Tea.TeaModel {
            public var DBName: String?

            public var executionStartTime: String?

            public var hostAddress: String?

            public var lockTimes: Int64?

            public var parseRowCounts: Int64?

            public var queryTimes: Int64?

            public var returnRowCounts: Int64?

            public var SQLText: String?

            public override init() {
                super.init()
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
                if self.lockTimes != nil {
                    map["LockTimes"] = self.lockTimes!
                }
                if self.parseRowCounts != nil {
                    map["ParseRowCounts"] = self.parseRowCounts!
                }
                if self.queryTimes != nil {
                    map["QueryTimes"] = self.queryTimes!
                }
                if self.returnRowCounts != nil {
                    map["ReturnRowCounts"] = self.returnRowCounts!
                }
                if self.SQLText != nil {
                    map["SQLText"] = self.SQLText!
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
                if dict.keys.contains("LockTimes") {
                    self.lockTimes = dict["LockTimes"] as! Int64
                }
                if dict.keys.contains("ParseRowCounts") {
                    self.parseRowCounts = dict["ParseRowCounts"] as! Int64
                }
                if dict.keys.contains("QueryTimes") {
                    self.queryTimes = dict["QueryTimes"] as! Int64
                }
                if dict.keys.contains("ReturnRowCounts") {
                    self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
                }
                if dict.keys.contains("SQLText") {
                    self.SQLText = dict["SQLText"] as! String
                }
            }
        }
        public var SQLSlowRecord: [DescribeSlowLogRecordsResponseBody.Items.SQLSlowRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SQLSlowRecord != nil {
                var tmp : [Any] = []
                for k in self.SQLSlowRecord! {
                    tmp.append(k.toMap())
                }
                map["SQLSlowRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SQLSlowRecord") {
                self.SQLSlowRecord = dict["SQLSlowRecord"] as! [DescribeSlowLogRecordsResponseBody.Items.SQLSlowRecord]
            }
        }
    }
    public var engine: String?

    public var items: DescribeSlowLogRecordsResponseBody.Items?

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
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
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
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeSlowLogRecordsResponseBody.Items()
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

public class DescribeSlowSQLLogsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var executeState: String?

    public var maxExecuteCost: String?

    public var minExecuteCost: String?

    public var operationClass: String?

    public var operationType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryKeywords: String?

    public var sourceIP: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeState != nil {
            map["ExecuteState"] = self.executeState!
        }
        if self.maxExecuteCost != nil {
            map["MaxExecuteCost"] = self.maxExecuteCost!
        }
        if self.minExecuteCost != nil {
            map["MinExecuteCost"] = self.minExecuteCost!
        }
        if self.operationClass != nil {
            map["OperationClass"] = self.operationClass!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryKeywords != nil {
            map["QueryKeywords"] = self.queryKeywords!
        }
        if self.sourceIP != nil {
            map["SourceIP"] = self.sourceIP!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecuteState") {
            self.executeState = dict["ExecuteState"] as! String
        }
        if dict.keys.contains("MaxExecuteCost") {
            self.maxExecuteCost = dict["MaxExecuteCost"] as! String
        }
        if dict.keys.contains("MinExecuteCost") {
            self.minExecuteCost = dict["MinExecuteCost"] as! String
        }
        if dict.keys.contains("OperationClass") {
            self.operationClass = dict["OperationClass"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryKeywords") {
            self.queryKeywords = dict["QueryKeywords"] as! String
        }
        if dict.keys.contains("SourceIP") {
            self.sourceIP = dict["SourceIP"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DescribeSlowSQLLogsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountName: String?

        public var DBName: String?

        public var DBRole: String?

        public var executeCost: Double?

        public var executeState: String?

        public var operationClass: String?

        public var operationExecuteTime: String?

        public var operationType: String?

        public var queryId: String?

        public var returnRowCounts: Int64?

        public var SQLPlan: String?

        public var SQLText: String?

        public var scanRowCounts: Int64?

        public var sourceIP: String?

        public var sourcePort: Int32?

        public override init() {
            super.init()
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
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.DBRole != nil {
                map["DBRole"] = self.DBRole!
            }
            if self.executeCost != nil {
                map["ExecuteCost"] = self.executeCost!
            }
            if self.executeState != nil {
                map["ExecuteState"] = self.executeState!
            }
            if self.operationClass != nil {
                map["OperationClass"] = self.operationClass!
            }
            if self.operationExecuteTime != nil {
                map["OperationExecuteTime"] = self.operationExecuteTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.SQLPlan != nil {
                map["SQLPlan"] = self.SQLPlan!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.scanRowCounts != nil {
                map["ScanRowCounts"] = self.scanRowCounts!
            }
            if self.sourceIP != nil {
                map["SourceIP"] = self.sourceIP!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("DBRole") {
                self.DBRole = dict["DBRole"] as! String
            }
            if dict.keys.contains("ExecuteCost") {
                self.executeCost = dict["ExecuteCost"] as! Double
            }
            if dict.keys.contains("ExecuteState") {
                self.executeState = dict["ExecuteState"] as! String
            }
            if dict.keys.contains("OperationClass") {
                self.operationClass = dict["OperationClass"] as! String
            }
            if dict.keys.contains("OperationExecuteTime") {
                self.operationExecuteTime = dict["OperationExecuteTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("QueryId") {
                self.queryId = dict["QueryId"] as! String
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! Int64
            }
            if dict.keys.contains("SQLPlan") {
                self.SQLPlan = dict["SQLPlan"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("ScanRowCounts") {
                self.scanRowCounts = dict["ScanRowCounts"] as! Int64
            }
            if dict.keys.contains("SourceIP") {
                self.sourceIP = dict["SourceIP"] as! String
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! Int32
            }
        }
    }
    public var items: [DescribeSlowSQLLogsResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [DescribeSlowSQLLogsResponseBody.Items]
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
    }
}

public class DescribeSlowSQLLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowSQLLogsResponseBody?

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
            var model = DescribeSlowSQLLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSpecificationRequest : Tea.TeaModel {
    public var cpuCores: Int32?

    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var storageType: String?

    public var totalNodeNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuCores != nil {
            map["CpuCores"] = self.cpuCores!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.totalNodeNum != nil {
            map["TotalNodeNum"] = self.totalNodeNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpuCores") {
            self.cpuCores = dict["CpuCores"] as! Int32
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("StorageType") {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("TotalNodeNum") {
            self.totalNodeNum = dict["TotalNodeNum"] as! Int32
        }
    }
}

public class DescribeSpecificationResponseBody : Tea.TeaModel {
    public class DBInstanceClass : Tea.TeaModel {
        public var text: String?

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
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class DBInstanceGroupCount : Tea.TeaModel {
        public var text: String?

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
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class StorageNotice : Tea.TeaModel {
        public var text: String?

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
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var DBInstanceClass: [DescribeSpecificationResponseBody.DBInstanceClass]?

    public var DBInstanceGroupCount: [DescribeSpecificationResponseBody.DBInstanceGroupCount]?

    public var requestId: String?

    public var storageNotice: [DescribeSpecificationResponseBody.StorageNotice]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceClass != nil {
            var tmp : [Any] = []
            for k in self.DBInstanceClass! {
                tmp.append(k.toMap())
            }
            map["DBInstanceClass"] = tmp
        }
        if self.DBInstanceGroupCount != nil {
            var tmp : [Any] = []
            for k in self.DBInstanceGroupCount! {
                tmp.append(k.toMap())
            }
            map["DBInstanceGroupCount"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageNotice != nil {
            var tmp : [Any] = []
            for k in self.storageNotice! {
                tmp.append(k.toMap())
            }
            map["StorageNotice"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! [DescribeSpecificationResponseBody.DBInstanceClass]
        }
        if dict.keys.contains("DBInstanceGroupCount") {
            self.DBInstanceGroupCount = dict["DBInstanceGroupCount"] as! [DescribeSpecificationResponseBody.DBInstanceGroupCount]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageNotice") {
            self.storageNotice = dict["StorageNotice"] as! [DescribeSpecificationResponseBody.StorageNotice]
        }
    }
}

public class DescribeSpecificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpecificationResponseBody?

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
            var model = DescribeSpecificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTagsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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
    }
}

public class DescribeTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [DescribeTagsResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [DescribeTagsResponseBody.Tags]
        }
    }
}

public class DescribeTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagsResponseBody?

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
            var model = DescribeTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserEncryptionKeyListRequest : Tea.TeaModel {
    public var pageNumber: String?

    public var pageSize: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeUserEncryptionKeyListResponseBody : Tea.TeaModel {
    public class KmsKeys : Tea.TeaModel {
        public var keyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
        }
    }
    public var kmsKeys: [DescribeUserEncryptionKeyListResponseBody.KmsKeys]?

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
        if self.kmsKeys != nil {
            var tmp : [Any] = []
            for k in self.kmsKeys! {
                tmp.append(k.toMap())
            }
            map["KmsKeys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KmsKeys") {
            self.kmsKeys = dict["KmsKeys"] as! [DescribeUserEncryptionKeyListResponseBody.KmsKeys]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserEncryptionKeyListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserEncryptionKeyListResponseBody?

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
            var model = DescribeUserEncryptionKeyListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadDiagnosisRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var database: String?

    public var endTime: String?

    public var lang: String?

    public var queryCondition: String?

    public var resourceGroupId: String?

    public var startTime: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.database != nil {
            map["Database"] = self.database!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Database") {
            self.database = dict["Database"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class DownloadDiagnosisRecordsResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var downloadId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.downloadId != nil {
            map["DownloadId"] = self.downloadId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DownloadId") {
            self.downloadId = dict["DownloadId"] as! String
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

    public var DBInstanceId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
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

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var DBInstanceId: String?

    public var enableRecoveryPoint: Bool?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var recoveryPointPeriod: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.enableRecoveryPoint != nil {
            map["EnableRecoveryPoint"] = self.enableRecoveryPoint!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.recoveryPointPeriod != nil {
            map["RecoveryPointPeriod"] = self.recoveryPointPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int32
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EnableRecoveryPoint") {
            self.enableRecoveryPoint = dict["EnableRecoveryPoint"] as! Bool
        }
        if dict.keys.contains("PreferredBackupPeriod") {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RecoveryPointPeriod") {
            self.recoveryPointPeriod = dict["RecoveryPointPeriod"] as! String
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

public class ModifyDBInstanceConnectionModeRequest : Tea.TeaModel {
    public var connectionMode: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionMode != nil {
            map["ConnectionMode"] = self.connectionMode!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionMode") {
            self.connectionMode = dict["ConnectionMode"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class ModifyDBInstanceConnectionModeResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceConnectionModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConnectionModeResponseBody?

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
            var model = ModifyDBInstanceConnectionModeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceConnectionStringRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var currentConnectionString: String?

    public var DBInstanceId: String?

    public var port: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
    }
}

public class ModifyDBInstanceConnectionStringResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConnectionStringResponseBody?

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
            var model = ModifyDBInstanceConnectionStringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceDescriptionRequest : Tea.TeaModel {
    public var DBInstanceDescription: String?

    public var DBInstanceId: String?

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
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyDBInstanceDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceDescriptionResponseBody?

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
            var model = ModifyDBInstanceDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceMaintainTimeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var resourceGroupId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ModifyDBInstanceMaintainTimeResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceMaintainTimeResponseBody?

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
            var model = ModifyDBInstanceMaintainTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceNetworkTypeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var instanceNetworkType: String?

    public var privateIpAddress: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.instanceNetworkType != nil {
            map["InstanceNetworkType"] = self.instanceNetworkType!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InstanceNetworkType") {
            self.instanceNetworkType = dict["InstanceNetworkType"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("VPCId") {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class ModifyDBInstanceNetworkTypeResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceNetworkTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceNetworkTypeResponseBody?

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
            var model = ModifyDBInstanceNetworkTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceResourceGroupRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var newResourceGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
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

public class ModifyDBInstanceResourceGroupResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceResourceGroupResponseBody?

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
            var model = ModifyDBInstanceResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceSSLRequest : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceId: String?

    public var SSLEnabled: Int32?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("SSLEnabled") {
            self.SSLEnabled = dict["SSLEnabled"] as! Int32
        }
    }
}

public class ModifyDBInstanceSSLResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceSSLResponseBody?

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
            var model = ModifyDBInstanceSSLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyParametersRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var forceRestartInstance: Bool?

    public var parameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.forceRestartInstance != nil {
            map["ForceRestartInstance"] = self.forceRestartInstance!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ForceRestartInstance") {
            self.forceRestartInstance = dict["ForceRestartInstance"] as! Bool
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
    }
}

public class ModifyParametersResponseBody : Tea.TeaModel {
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

public class ModifyParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParametersResponseBody?

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
            var model = ModifyParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySQLCollectorPolicyRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var SQLCollectorStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.SQLCollectorStatus != nil {
            map["SQLCollectorStatus"] = self.SQLCollectorStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("SQLCollectorStatus") {
            self.SQLCollectorStatus = dict["SQLCollectorStatus"] as! String
        }
    }
}

public class ModifySQLCollectorPolicyResponseBody : Tea.TeaModel {
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

public class ModifySQLCollectorPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySQLCollectorPolicyResponseBody?

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
            var model = ModifySQLCollectorPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityIpsRequest : Tea.TeaModel {
    public var DBInstanceIPArrayAttribute: String?

    public var DBInstanceIPArrayName: String?

    public var DBInstanceId: String?

    public var resourceGroupId: String?

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
        if self.DBInstanceIPArrayAttribute != nil {
            map["DBInstanceIPArrayAttribute"] = self.DBInstanceIPArrayAttribute!
        }
        if self.DBInstanceIPArrayName != nil {
            map["DBInstanceIPArrayName"] = self.DBInstanceIPArrayName!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceIPArrayAttribute") {
            self.DBInstanceIPArrayAttribute = dict["DBInstanceIPArrayAttribute"] as! String
        }
        if dict.keys.contains("DBInstanceIPArrayName") {
            self.DBInstanceIPArrayName = dict["DBInstanceIPArrayName"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
    }
}

public class ModifySecurityIpsResponseBody : Tea.TeaModel {
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

public class ModifySecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIpsResponseBody?

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
            var model = ModifySecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PauseInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class PauseInstanceResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class PauseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PauseInstanceResponseBody?

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
            var model = PauseInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebalanceDBInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class RebalanceDBInstanceResponseBody : Tea.TeaModel {
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

public class RebalanceDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebalanceDBInstanceResponseBody?

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
            var model = RebalanceDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseInstancePublicConnectionRequest : Tea.TeaModel {
    public var addressType: String?

    public var currentConnectionString: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.currentConnectionString != nil {
            map["CurrentConnectionString"] = self.currentConnectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("CurrentConnectionString") {
            self.currentConnectionString = dict["CurrentConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class ReleaseInstancePublicConnectionResponseBody : Tea.TeaModel {
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

public class ReleaseInstancePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstancePublicConnectionResponseBody?

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
            var model = ReleaseInstancePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
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

public class RestartDBInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBInstanceId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
    }
}

public class RestartDBInstanceResponseBody : Tea.TeaModel {
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

public class RestartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDBInstanceResponseBody?

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
            var model = RestartDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class ResumeInstanceResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class ResumeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeInstanceResponseBody?

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
            var model = ResumeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDBInstancePlanStatusRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var planId: String?

    public var planStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planStatus != nil {
            map["PlanStatus"] = self.planStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanStatus") {
            self.planStatus = dict["PlanStatus"] as! String
        }
    }
}

public class SetDBInstancePlanStatusResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var planId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetDBInstancePlanStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDBInstancePlanStatusResponseBody?

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
            var model = SetDBInstancePlanStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDataShareInstanceRequest : Tea.TeaModel {
    public var instanceList: [String]?

    public var operationType: String?

    public var ownerId: Int64?

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
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceList") {
            self.instanceList = dict["InstanceList"] as! [String]
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetDataShareInstanceShrinkRequest : Tea.TeaModel {
    public var instanceListShrink: String?

    public var operationType: String?

    public var ownerId: Int64?

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
        if self.instanceListShrink != nil {
            map["InstanceList"] = self.instanceListShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceList") {
            self.instanceListShrink = dict["InstanceList"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetDataShareInstanceResponseBody : Tea.TeaModel {
    public var errMessage: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrMessage") {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetDataShareInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataShareInstanceResponseBody?

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
            var model = SetDataShareInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchDBInstanceNetTypeRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBInstanceId: String?

    public var port: String?

    public override init() {
        super.init()
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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
    }
}

public class SwitchDBInstanceNetTypeResponseBody : Tea.TeaModel {
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

public class SwitchDBInstanceNetTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchDBInstanceNetTypeResponseBody?

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
            var model = SwitchDBInstanceNetTypeResponseBody()
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

public class UnloadSampleDataRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UnloadSampleDataResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class UnloadSampleDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnloadSampleDataResponseBody?

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
            var model = UnloadSampleDataResponseBody()
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

public class UpdateDBInstancePlanRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var planConfig: String?

    public var planDesc: String?

    public var planEndDate: String?

    public var planId: String?

    public var planName: String?

    public var planStartDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.planConfig != nil {
            map["PlanConfig"] = self.planConfig!
        }
        if self.planDesc != nil {
            map["PlanDesc"] = self.planDesc!
        }
        if self.planEndDate != nil {
            map["PlanEndDate"] = self.planEndDate!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planName != nil {
            map["PlanName"] = self.planName!
        }
        if self.planStartDate != nil {
            map["PlanStartDate"] = self.planStartDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlanConfig") {
            self.planConfig = dict["PlanConfig"] as! String
        }
        if dict.keys.contains("PlanDesc") {
            self.planDesc = dict["PlanDesc"] as! String
        }
        if dict.keys.contains("PlanEndDate") {
            self.planEndDate = dict["PlanEndDate"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("PlanName") {
            self.planName = dict["PlanName"] as! String
        }
        if dict.keys.contains("PlanStartDate") {
            self.planStartDate = dict["PlanStartDate"] as! String
        }
    }
}

public class UpdateDBInstancePlanResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var errorMessage: String?

    public var planId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateDBInstancePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDBInstancePlanResponseBody?

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
            var model = UpdateDBInstancePlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceClass: String?

    public var DBInstanceGroupCount: String?

    public var DBInstanceId: String?

    public var instanceSpec: String?

    public var masterNodeNum: String?

    public var ownerId: Int64?

    public var payType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var segNodeNum: String?

    public var storageSize: String?

    public var upgradeType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceClass != nil {
            map["DBInstanceClass"] = self.DBInstanceClass!
        }
        if self.DBInstanceGroupCount != nil {
            map["DBInstanceGroupCount"] = self.DBInstanceGroupCount!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.instanceSpec != nil {
            map["InstanceSpec"] = self.instanceSpec!
        }
        if self.masterNodeNum != nil {
            map["MasterNodeNum"] = self.masterNodeNum!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.segNodeNum != nil {
            map["SegNodeNum"] = self.segNodeNum!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! String
        }
        if dict.keys.contains("DBInstanceGroupCount") {
            self.DBInstanceGroupCount = dict["DBInstanceGroupCount"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InstanceSpec") {
            self.instanceSpec = dict["InstanceSpec"] as! String
        }
        if dict.keys.contains("MasterNodeNum") {
            self.masterNodeNum = dict["MasterNodeNum"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SegNodeNum") {
            self.segNodeNum = dict["SegNodeNum"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! String
        }
        if dict.keys.contains("UpgradeType") {
            self.upgradeType = dict["UpgradeType"] as! Int64
        }
    }
}

public class UpgradeDBInstanceResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpgradeDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeDBInstanceResponseBody?

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
            var model = UpgradeDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeDBVersionRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var majorVersion: String?

    public var minorVersion: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.majorVersion != nil {
            map["MajorVersion"] = self.majorVersion!
        }
        if self.minorVersion != nil {
            map["MinorVersion"] = self.minorVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("MajorVersion") {
            self.majorVersion = dict["MajorVersion"] as! String
        }
        if dict.keys.contains("MinorVersion") {
            self.minorVersion = dict["MinorVersion"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
    }
}

public class UpgradeDBVersionResponseBody : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBInstanceName: String?

    public var requestId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpgradeDBVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeDBVersionResponseBody?

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
            var model = UpgradeDBVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
