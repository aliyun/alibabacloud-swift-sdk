import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocateInstancePublicConnectionRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBInstanceId: String?

    public var netType: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("NetType") {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AllocateInstancePublicConnectionResponseBody : Tea.TeaModel {
    public var instanceName: String?

    public var requestId: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class CheckCreateDBInstanceRequest : Tea.TeaModel {
    public var cacheSize: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var connectionString: String?

    public var DBInstanceClass: String?

    public var DBInstanceDescription: String?

    public var engine: String?

    public var engineVersion: String?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var securityIPList: String?

    public var usedTime: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceClass != nil {
            map["DBInstanceClass"] = self.DBInstanceClass!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
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
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! Int32
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
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
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

public class CheckCreateDBInstanceResponseBody : Tea.TeaModel {
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

public class CheckCreateDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCreateDBInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckCreateDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckServiceLinkedRoleRequest : Tea.TeaModel {
    public var ownerAccount: String?

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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CheckServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var hasServiceLinkedRole: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HasServiceLinkedRole") {
            self.hasServiceLinkedRole = dict["HasServiceLinkedRole"] as! Bool
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class CreateDBClusterRequest : Tea.TeaModel {
    public var cacheSize: String?

    public var chargeType: String?

    public var DBClusterClass: String?

    public var DBClusterDescription: String?

    public var DBInstanceId: String?

    public var engine: String?

    public var engineVersion: String?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var usedTime: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.DBClusterClass != nil {
            map["DBClusterClass"] = self.DBClusterClass!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
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
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DBClusterClass") {
            self.DBClusterClass = dict["DBClusterClass"] as! String
        }
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! String
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

public class CreateDBClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var DBInstanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: CreateDBClusterResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateDBClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class CreateDBInstanceRequest : Tea.TeaModel {
    public class MultiZone : Tea.TeaModel {
        public var vSwitchIds: [String]?

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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var cacheSize: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var connectionString: String?

    public var DBInstanceClass: String?

    public var DBInstanceDescription: String?

    public var deployScheme: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZone: [CreateDBInstanceRequest.MultiZone]?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var securityIPList: String?

    public var tag: [CreateDBInstanceRequest.Tag]?

    public var usedTime: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceClass != nil {
            map["DBInstanceClass"] = self.DBInstanceClass!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.deployScheme != nil {
            map["DeployScheme"] = self.deployScheme!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZone != nil {
            var tmp : [Any] = []
            for k in self.multiZone! {
                tmp.append(k.toMap())
            }
            map["MultiZone"] = tmp
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
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
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! Int32
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DeployScheme") {
            self.deployScheme = dict["DeployScheme"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("MultiZone") {
            var tmp : [CreateDBInstanceRequest.MultiZone] = []
            for v in dict["MultiZone"] as! [Any] {
                var model = CreateDBInstanceRequest.MultiZone()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.multiZone = tmp
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
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateDBInstanceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateDBInstanceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var cacheSize: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var connectionString: String?

    public var DBInstanceClass: String?

    public var DBInstanceDescription: String?

    public var deployScheme: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZoneShrink: String?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var securityIPList: String?

    public var tagShrink: String?

    public var usedTime: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceClass != nil {
            map["DBInstanceClass"] = self.DBInstanceClass!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.deployScheme != nil {
            map["DeployScheme"] = self.deployScheme!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZoneShrink != nil {
            map["MultiZone"] = self.multiZoneShrink!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
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
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! Int32
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceClass") {
            self.DBInstanceClass = dict["DBInstanceClass"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DeployScheme") {
            self.deployScheme = dict["DeployScheme"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("MultiZone") {
            self.multiZoneShrink = dict["MultiZone"] as! String
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
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
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

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: CreateDBInstanceResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class CreateElasticRuleRequest : Tea.TeaModel {
    public var clusterClass: String?

    public var clusterId: String?

    public var dbInstanceId: String?

    public var elasticRuleStartTime: String?

    public var executionPeriod: String?

    public var regionId: String?

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
        if self.clusterClass != nil {
            map["ClusterClass"] = self.clusterClass!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.elasticRuleStartTime != nil {
            map["ElasticRuleStartTime"] = self.elasticRuleStartTime!
        }
        if self.executionPeriod != nil {
            map["ExecutionPeriod"] = self.executionPeriod!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterClass") {
            self.clusterClass = dict["ClusterClass"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("ElasticRuleStartTime") {
            self.elasticRuleStartTime = dict["ElasticRuleStartTime"] as! String
        }
        if dict.keys.contains("ExecutionPeriod") {
            self.executionPeriod = dict["ExecutionPeriod"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateElasticRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterClass: String?

        public var clusterId: String?

        public var dbInstanceId: String?

        public var elasticRuleStartTime: String?

        public var executionPeriod: String?

        public var ruleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterClass != nil {
                map["ClusterClass"] = self.clusterClass!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.elasticRuleStartTime != nil {
                map["ElasticRuleStartTime"] = self.elasticRuleStartTime!
            }
            if self.executionPeriod != nil {
                map["ExecutionPeriod"] = self.executionPeriod!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterClass") {
                self.clusterClass = dict["ClusterClass"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("ElasticRuleStartTime") {
                self.elasticRuleStartTime = dict["ElasticRuleStartTime"] as! String
            }
            if dict.keys.contains("ExecutionPeriod") {
                self.executionPeriod = dict["ExecutionPeriod"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
        }
    }
    public var data: CreateElasticRuleResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateElasticRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateElasticRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateElasticRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateElasticRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleForSelectDBRequest : Tea.TeaModel {
    public var ownerAccount: String?

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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateServiceLinkedRoleForSelectDBResponseBody : Tea.TeaModel {
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

public class CreateServiceLinkedRoleForSelectDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleForSelectDBResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceLinkedRoleForSelectDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteDBClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public var orderId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var data: DeleteDBClusterResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteDBClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DeleteDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DeleteElasticRuleRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dbInstanceId: String?

    public var product: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteElasticRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteElasticRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteElasticRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteElasticRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAllDBInstanceClassRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAllDBInstanceClassResponseBody : Tea.TeaModel {
    public class ClassCodeList : Tea.TeaModel {
        public var classCode: String?

        public var cpuCores: Int64?

        public var defaultStorageInGB: Int64?

        public var maxStorageInGB: Int64?

        public var memoryInGB: Int64?

        public var minStorageInGB: Int64?

        public var stepStorageInGB: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classCode != nil {
                map["ClassCode"] = self.classCode!
            }
            if self.cpuCores != nil {
                map["CpuCores"] = self.cpuCores!
            }
            if self.defaultStorageInGB != nil {
                map["DefaultStorageInGB"] = self.defaultStorageInGB!
            }
            if self.maxStorageInGB != nil {
                map["MaxStorageInGB"] = self.maxStorageInGB!
            }
            if self.memoryInGB != nil {
                map["MemoryInGB"] = self.memoryInGB!
            }
            if self.minStorageInGB != nil {
                map["MinStorageInGB"] = self.minStorageInGB!
            }
            if self.stepStorageInGB != nil {
                map["StepStorageInGB"] = self.stepStorageInGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassCode") {
                self.classCode = dict["ClassCode"] as! String
            }
            if dict.keys.contains("CpuCores") {
                self.cpuCores = dict["CpuCores"] as! Int64
            }
            if dict.keys.contains("DefaultStorageInGB") {
                self.defaultStorageInGB = dict["DefaultStorageInGB"] as! Int64
            }
            if dict.keys.contains("MaxStorageInGB") {
                self.maxStorageInGB = dict["MaxStorageInGB"] as! Int64
            }
            if dict.keys.contains("MemoryInGB") {
                self.memoryInGB = dict["MemoryInGB"] as! Int64
            }
            if dict.keys.contains("MinStorageInGB") {
                self.minStorageInGB = dict["MinStorageInGB"] as! Int64
            }
            if dict.keys.contains("StepStorageInGB") {
                self.stepStorageInGB = dict["StepStorageInGB"] as! Int64
            }
        }
    }
    public var classCodeList: [DescribeAllDBInstanceClassResponseBody.ClassCodeList]?

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
        if self.classCodeList != nil {
            var tmp : [Any] = []
            for k in self.classCodeList! {
                tmp.append(k.toMap())
            }
            map["ClassCodeList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClassCodeList") {
            var tmp : [DescribeAllDBInstanceClassResponseBody.ClassCodeList] = []
            for v in dict["ClassCodeList"] as! [Any] {
                var model = DescribeAllDBInstanceClassResponseBody.ClassCodeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.classCodeList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAllDBInstanceClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllDBInstanceClassResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAllDBInstanceClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterConfigRequest : Tea.TeaModel {
    public var configKey: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

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
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigKey") {
            self.configKey = dict["ConfigKey"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDBClusterConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Params : Tea.TeaModel {
            public var comment: String?

            public var defaultValue: String?

            public var isDynamic: Int32?

            public var isUserModifiable: Int32?

            public var name: String?

            public var optional_: String?

            public var paramCategory: String?

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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.isDynamic != nil {
                    map["IsDynamic"] = self.isDynamic!
                }
                if self.isUserModifiable != nil {
                    map["IsUserModifiable"] = self.isUserModifiable!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.optional_ != nil {
                    map["Optional"] = self.optional_!
                }
                if self.paramCategory != nil {
                    map["ParamCategory"] = self.paramCategory!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("IsDynamic") {
                    self.isDynamic = dict["IsDynamic"] as! Int32
                }
                if dict.keys.contains("IsUserModifiable") {
                    self.isUserModifiable = dict["IsUserModifiable"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Optional") {
                    self.optional_ = dict["Optional"] as! String
                }
                if dict.keys.contains("ParamCategory") {
                    self.paramCategory = dict["ParamCategory"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public var dbInstanceName: String?

        public var params: [DescribeDBClusterConfigResponseBody.Data.Params]?

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
            if self.dbClusterId != nil {
                map["DbClusterId"] = self.dbClusterId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.params != nil {
                var tmp : [Any] = []
                for k in self.params! {
                    tmp.append(k.toMap())
                }
                map["Params"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbClusterId") {
                self.dbClusterId = dict["DbClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("DbInstanceName") {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("Params") {
                var tmp : [DescribeDBClusterConfigResponseBody.Data.Params] = []
                for v in dict["Params"] as! [Any] {
                    var model = DescribeDBClusterConfigResponseBody.Data.Params()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.params = tmp
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeDBClusterConfigResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeDBClusterConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBClusterConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBClusterConfigChangeLogsRequest : Tea.TeaModel {
    public var configKey: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var endTime: String?

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
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if dict.keys.contains("ConfigKey") {
            self.configKey = dict["ConfigKey"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDBClusterConfigChangeLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamChangeLogs : Tea.TeaModel {
            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isApplied: Bool?

            public var name: String?

            public var newValue: String?

            public var oldValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isApplied != nil {
                    map["IsApplied"] = self.isApplied!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IsApplied") {
                    self.isApplied = dict["IsApplied"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewValue") {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") {
                    self.oldValue = dict["OldValue"] as! String
                }
            }
        }
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public var dbInstanceName: String?

        public var paramChangeLogs: [DescribeDBClusterConfigChangeLogsResponseBody.Data.ParamChangeLogs]?

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
            if self.dbClusterId != nil {
                map["DbClusterId"] = self.dbClusterId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.paramChangeLogs != nil {
                var tmp : [Any] = []
                for k in self.paramChangeLogs! {
                    tmp.append(k.toMap())
                }
                map["ParamChangeLogs"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbClusterId") {
                self.dbClusterId = dict["DbClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("DbInstanceName") {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("ParamChangeLogs") {
                var tmp : [DescribeDBClusterConfigChangeLogsResponseBody.Data.ParamChangeLogs] = []
                for v in dict["ParamChangeLogs"] as! [Any] {
                    var model = DescribeDBClusterConfigChangeLogsResponseBody.Data.ParamChangeLogs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramChangeLogs = tmp
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeDBClusterConfigChangeLogsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeDBClusterConfigChangeLogsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBClusterConfigChangeLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterConfigChangeLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBClusterConfigChangeLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class DBClusterList : Tea.TeaModel {
        public var cacheStorageSizeGB: String?

        public var cacheStorageType: String?

        public var chargeType: String?

        public var clusterBinding: String?

        public var cpuCores: Int64?

        public var createdTime: String?

        public var dbClusterClass: String?

        public var dbClusterId: String?

        public var dbClusterName: String?

        public var dbInstanceName: String?

        public var memory: Int64?

        public var modifiedTime: String?

        public var performanceLevel: String?

        public var scalingRulesEnable: Bool?

        public var startTime: String?

        public var status: String?

        public var subDomain: String?

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
            if self.cacheStorageSizeGB != nil {
                map["CacheStorageSizeGB"] = self.cacheStorageSizeGB!
            }
            if self.cacheStorageType != nil {
                map["CacheStorageType"] = self.cacheStorageType!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clusterBinding != nil {
                map["ClusterBinding"] = self.clusterBinding!
            }
            if self.cpuCores != nil {
                map["CpuCores"] = self.cpuCores!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.dbClusterClass != nil {
                map["DbClusterClass"] = self.dbClusterClass!
            }
            if self.dbClusterId != nil {
                map["DbClusterId"] = self.dbClusterId!
            }
            if self.dbClusterName != nil {
                map["DbClusterName"] = self.dbClusterName!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.scalingRulesEnable != nil {
                map["ScalingRulesEnable"] = self.scalingRulesEnable!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subDomain != nil {
                map["SubDomain"] = self.subDomain!
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
            if dict.keys.contains("CacheStorageSizeGB") {
                self.cacheStorageSizeGB = dict["CacheStorageSizeGB"] as! String
            }
            if dict.keys.contains("CacheStorageType") {
                self.cacheStorageType = dict["CacheStorageType"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ClusterBinding") {
                self.clusterBinding = dict["ClusterBinding"] as! String
            }
            if dict.keys.contains("CpuCores") {
                self.cpuCores = dict["CpuCores"] as! Int64
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DbClusterClass") {
                self.dbClusterClass = dict["DbClusterClass"] as! String
            }
            if dict.keys.contains("DbClusterId") {
                self.dbClusterId = dict["DbClusterId"] as! String
            }
            if dict.keys.contains("DbClusterName") {
                self.dbClusterName = dict["DbClusterName"] as! String
            }
            if dict.keys.contains("DbInstanceName") {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PerformanceLevel") {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("ScalingRulesEnable") {
                self.scalingRulesEnable = dict["ScalingRulesEnable"] as! Bool
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubDomain") {
                self.subDomain = dict["SubDomain"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public class MultiZone : Tea.TeaModel {
        public var availableIpCount: Int64?

        public var cidr: String?

        public var vSwitchIds: [String]?

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
            if self.availableIpCount != nil {
                map["AvailableIpCount"] = self.availableIpCount!
            }
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableIpCount") {
                self.availableIpCount = dict["AvailableIpCount"] as! Int64
            }
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
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
    public var canUpgradeVersions: [String]?

    public var chargeType: String?

    public var createTime: String?

    public var DBClusterList: [DescribeDBInstanceAttributeResponseBody.DBClusterList]?

    public var DBInstanceId: String?

    public var deployScheme: String?

    public var description_: String?

    public var engine: String?

    public var engineMinorVersion: String?

    public var engineVersion: String?

    public var expireTime: String?

    public var gmtModified: String?

    public var lockMode: Int64?

    public var lockReason: String?

    public var maintainEndtime: String?

    public var maintainStarttime: String?

    public var multiZone: [DescribeDBInstanceAttributeResponseBody.MultiZone]?

    public var objectStoreSize: Int64?

    public var regionId: String?

    public var requestId: String?

    public var resourceCpu: Int64?

    public var resourceGroupId: String?

    public var status: String?

    public var storageSize: Int64?

    public var subDomain: String?

    public var tags: [DescribeDBInstanceAttributeResponseBody.Tags]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canUpgradeVersions != nil {
            map["CanUpgradeVersions"] = self.canUpgradeVersions!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.DBClusterList != nil {
            var tmp : [Any] = []
            for k in self.DBClusterList! {
                tmp.append(k.toMap())
            }
            map["DBClusterList"] = tmp
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.deployScheme != nil {
            map["DeployScheme"] = self.deployScheme!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineMinorVersion != nil {
            map["EngineMinorVersion"] = self.engineMinorVersion!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.lockReason != nil {
            map["LockReason"] = self.lockReason!
        }
        if self.maintainEndtime != nil {
            map["MaintainEndtime"] = self.maintainEndtime!
        }
        if self.maintainStarttime != nil {
            map["MaintainStarttime"] = self.maintainStarttime!
        }
        if self.multiZone != nil {
            var tmp : [Any] = []
            for k in self.multiZone! {
                tmp.append(k.toMap())
            }
            map["MultiZone"] = tmp
        }
        if self.objectStoreSize != nil {
            map["ObjectStoreSize"] = self.objectStoreSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCpu != nil {
            map["ResourceCpu"] = self.resourceCpu!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
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
        if dict.keys.contains("CanUpgradeVersions") {
            self.canUpgradeVersions = dict["CanUpgradeVersions"] as! [String]
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DBClusterList") {
            var tmp : [DescribeDBInstanceAttributeResponseBody.DBClusterList] = []
            for v in dict["DBClusterList"] as! [Any] {
                var model = DescribeDBInstanceAttributeResponseBody.DBClusterList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DBClusterList = tmp
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DeployScheme") {
            self.deployScheme = dict["DeployScheme"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineMinorVersion") {
            self.engineMinorVersion = dict["EngineMinorVersion"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("LockMode") {
            self.lockMode = dict["LockMode"] as! Int64
        }
        if dict.keys.contains("LockReason") {
            self.lockReason = dict["LockReason"] as! String
        }
        if dict.keys.contains("MaintainEndtime") {
            self.maintainEndtime = dict["MaintainEndtime"] as! String
        }
        if dict.keys.contains("MaintainStarttime") {
            self.maintainStarttime = dict["MaintainStarttime"] as! String
        }
        if dict.keys.contains("MultiZone") {
            var tmp : [DescribeDBInstanceAttributeResponseBody.MultiZone] = []
            for v in dict["MultiZone"] as! [Any] {
                var model = DescribeDBInstanceAttributeResponseBody.MultiZone()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.multiZone = tmp
        }
        if dict.keys.contains("ObjectStoreSize") {
            self.objectStoreSize = dict["ObjectStoreSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceCpu") {
            self.resourceCpu = dict["ResourceCpu"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StorageSize") {
            self.storageSize = dict["StorageSize"] as! Int64
        }
        if dict.keys.contains("SubDomain") {
            self.subDomain = dict["SubDomain"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [DescribeDBInstanceAttributeResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = DescribeDBInstanceAttributeResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DescribeDBInstanceNetInfoRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeDBInstanceNetInfoResponseBody : Tea.TeaModel {
    public class DBClustersNetInfos : Tea.TeaModel {
        public class PortList : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public var clusterId: String?

        public var connectionString: String?

        public var ip: String?

        public var netType: String?

        public var portList: [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos.PortList]?

        public var userVisible: Bool?

        public var vpcId: String?

        public var vpcInstanceId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
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
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.portList != nil {
                var tmp : [Any] = []
                for k in self.portList! {
                    tmp.append(k.toMap())
                }
                map["PortList"] = tmp
            }
            if self.userVisible != nil {
                map["UserVisible"] = self.userVisible!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcInstanceId != nil {
                map["VpcInstanceId"] = self.vpcInstanceId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NetType") {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("PortList") {
                var tmp : [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos.PortList] = []
                for v in dict["PortList"] as! [Any] {
                    var model = DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos.PortList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portList = tmp
            }
            if dict.keys.contains("UserVisible") {
                self.userVisible = dict["UserVisible"] as! Bool
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcInstanceId") {
                self.vpcInstanceId = dict["VpcInstanceId"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
        }
    }
    public class DBInstanceNetInfos : Tea.TeaModel {
        public class PortList : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public var clusterId: String?

        public var connectionString: String?

        public var ip: String?

        public var netType: String?

        public var portList: [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.PortList]?

        public var userVisible: Bool?

        public var vpcId: String?

        public var vpcInstanceId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
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
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.portList != nil {
                var tmp : [Any] = []
                for k in self.portList! {
                    tmp.append(k.toMap())
                }
                map["PortList"] = tmp
            }
            if self.userVisible != nil {
                map["UserVisible"] = self.userVisible!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcInstanceId != nil {
                map["VpcInstanceId"] = self.vpcInstanceId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NetType") {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("PortList") {
                var tmp : [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.PortList] = []
                for v in dict["PortList"] as! [Any] {
                    var model = DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.PortList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portList = tmp
            }
            if dict.keys.contains("UserVisible") {
                self.userVisible = dict["UserVisible"] as! Bool
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcInstanceId") {
                self.vpcInstanceId = dict["VpcInstanceId"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
        }
    }
    public var DBClustersNetInfos: [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos]?

    public var DBInstanceNetInfos: [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos]?

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
        if self.DBClustersNetInfos != nil {
            var tmp : [Any] = []
            for k in self.DBClustersNetInfos! {
                tmp.append(k.toMap())
            }
            map["DBClustersNetInfos"] = tmp
        }
        if self.DBInstanceNetInfos != nil {
            var tmp : [Any] = []
            for k in self.DBInstanceNetInfos! {
                tmp.append(k.toMap())
            }
            map["DBInstanceNetInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClustersNetInfos") {
            var tmp : [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos] = []
            for v in dict["DBClustersNetInfos"] as! [Any] {
                var model = DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DBClustersNetInfos = tmp
        }
        if dict.keys.contains("DBInstanceNetInfos") {
            var tmp : [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos] = []
            for v in dict["DBInstanceNetInfos"] as! [Any] {
                var model = DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DBInstanceNetInfos = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
    public var DBInstanceDescription: String?

    public var DBInstanceIds: String?

    public var DBInstanceStatus: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

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
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceStatus != nil {
            map["DBInstanceStatus"] = self.DBInstanceStatus!
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
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DBInstanceStatus") {
            self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeDBInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDBInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDBInstancesShrinkRequest : Tea.TeaModel {
    public var DBInstanceDescription: String?

    public var DBInstanceIds: String?

    public var DBInstanceStatus: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerId: Int64?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceStatus != nil {
            map["DBInstanceStatus"] = self.DBInstanceStatus!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DBInstanceStatus") {
            self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
    }
}

public class DescribeDBInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class MultiZone : Tea.TeaModel {
            public var vSwitchIds: [String]?

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
                if self.vSwitchIds != nil {
                    map["VSwitchIds"] = self.vSwitchIds!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VSwitchIds") {
                    self.vSwitchIds = dict["VSwitchIds"] as! [String]
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
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
        public var category: String?

        public var chargeType: String?

        public var clusterCount: Int32?

        public var DBInstanceId: String?

        public var deployScheme: String?

        public var description_: String?

        public var engine: String?

        public var engineMinorVersion: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var instanceUsedType: String?

        public var isDeleted: Bool?

        public var lockMode: Int64?

        public var lockReason: String?

        public var maintainEndTimeStr: String?

        public var maintainEndtime: String?

        public var maintainStartTimeStr: String?

        public var maintainStarttime: String?

        public var multiZone: [DescribeDBInstancesResponseBody.Items.MultiZone]?

        public var objectStoreSize: Int64?

        public var parentInstance: String?

        public var regionId: String?

        public var resourceCpu: Int64?

        public var resourceGroupId: String?

        public var resourceMemory: Int64?

        public var scaleMax: Int64?

        public var scaleMin: Int64?

        public var scaleReplica: Int64?

        public var status: String?

        public var storageSize: Int64?

        public var storageType: String?

        public var tags: [DescribeDBInstancesResponseBody.Items.Tags]?

        public var tenantClusterId: String?

        public var tenantToken: String?

        public var tenantUserId: String?

        public var vpcId: String?

        public var vswitchId: String?

        public var zoneId: String?

        public var connectionString: String?

        public override init() {
            super.init()
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
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clusterCount != nil {
                map["ClusterCount"] = self.clusterCount!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.deployScheme != nil {
                map["DeployScheme"] = self.deployScheme!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineMinorVersion != nil {
                map["EngineMinorVersion"] = self.engineMinorVersion!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceUsedType != nil {
                map["InstanceUsedType"] = self.instanceUsedType!
            }
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.lockReason != nil {
                map["LockReason"] = self.lockReason!
            }
            if self.maintainEndTimeStr != nil {
                map["MaintainEndTimeStr"] = self.maintainEndTimeStr!
            }
            if self.maintainEndtime != nil {
                map["MaintainEndtime"] = self.maintainEndtime!
            }
            if self.maintainStartTimeStr != nil {
                map["MaintainStartTimeStr"] = self.maintainStartTimeStr!
            }
            if self.maintainStarttime != nil {
                map["MaintainStarttime"] = self.maintainStarttime!
            }
            if self.multiZone != nil {
                var tmp : [Any] = []
                for k in self.multiZone! {
                    tmp.append(k.toMap())
                }
                map["MultiZone"] = tmp
            }
            if self.objectStoreSize != nil {
                map["ObjectStoreSize"] = self.objectStoreSize!
            }
            if self.parentInstance != nil {
                map["ParentInstance"] = self.parentInstance!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceCpu != nil {
                map["ResourceCpu"] = self.resourceCpu!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceMemory != nil {
                map["ResourceMemory"] = self.resourceMemory!
            }
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
            }
            if self.scaleReplica != nil {
                map["ScaleReplica"] = self.scaleReplica!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantClusterId != nil {
                map["TenantClusterId"] = self.tenantClusterId!
            }
            if self.tenantToken != nil {
                map["TenantToken"] = self.tenantToken!
            }
            if self.tenantUserId != nil {
                map["TenantUserId"] = self.tenantUserId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.connectionString != nil {
                map["connectionString"] = self.connectionString!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ClusterCount") {
                self.clusterCount = dict["ClusterCount"] as! Int32
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DeployScheme") {
                self.deployScheme = dict["DeployScheme"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineMinorVersion") {
                self.engineMinorVersion = dict["EngineMinorVersion"] as! String
            }
            if dict.keys.contains("EngineVersion") {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InstanceUsedType") {
                self.instanceUsedType = dict["InstanceUsedType"] as! String
            }
            if dict.keys.contains("IsDeleted") {
                self.isDeleted = dict["IsDeleted"] as! Bool
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! Int64
            }
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! String
            }
            if dict.keys.contains("MaintainEndTimeStr") {
                self.maintainEndTimeStr = dict["MaintainEndTimeStr"] as! String
            }
            if dict.keys.contains("MaintainEndtime") {
                self.maintainEndtime = dict["MaintainEndtime"] as! String
            }
            if dict.keys.contains("MaintainStartTimeStr") {
                self.maintainStartTimeStr = dict["MaintainStartTimeStr"] as! String
            }
            if dict.keys.contains("MaintainStarttime") {
                self.maintainStarttime = dict["MaintainStarttime"] as! String
            }
            if dict.keys.contains("MultiZone") {
                var tmp : [DescribeDBInstancesResponseBody.Items.MultiZone] = []
                for v in dict["MultiZone"] as! [Any] {
                    var model = DescribeDBInstancesResponseBody.Items.MultiZone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiZone = tmp
            }
            if dict.keys.contains("ObjectStoreSize") {
                self.objectStoreSize = dict["ObjectStoreSize"] as! Int64
            }
            if dict.keys.contains("ParentInstance") {
                self.parentInstance = dict["ParentInstance"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceCpu") {
                self.resourceCpu = dict["ResourceCpu"] as! Int64
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceMemory") {
                self.resourceMemory = dict["ResourceMemory"] as! Int64
            }
            if dict.keys.contains("ScaleMax") {
                self.scaleMax = dict["ScaleMax"] as! Int64
            }
            if dict.keys.contains("ScaleMin") {
                self.scaleMin = dict["ScaleMin"] as! Int64
            }
            if dict.keys.contains("ScaleReplica") {
                self.scaleReplica = dict["ScaleReplica"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageSize") {
                self.storageSize = dict["StorageSize"] as! Int64
            }
            if dict.keys.contains("StorageType") {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [DescribeDBInstancesResponseBody.Items.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDBInstancesResponseBody.Items.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TenantClusterId") {
                self.tenantClusterId = dict["TenantClusterId"] as! String
            }
            if dict.keys.contains("TenantToken") {
                self.tenantToken = dict["TenantToken"] as! String
            }
            if dict.keys.contains("TenantUserId") {
                self.tenantUserId = dict["TenantUserId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("connectionString") {
                self.connectionString = dict["connectionString"] as! String
            }
        }
    }
    public var items: [DescribeDBInstancesResponseBody.Items]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
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
            var tmp : [DescribeDBInstancesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDBInstancesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DescribeElasticRulesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dbInstanceId: String?

    public var product: String?

    public var regionId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeElasticRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var clusterClass: String?

            public var elasticRuleStartTime: String?

            public var executionPeriod: String?

            public var ruleId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterClass != nil {
                    map["ClusterClass"] = self.clusterClass!
                }
                if self.elasticRuleStartTime != nil {
                    map["ElasticRuleStartTime"] = self.elasticRuleStartTime!
                }
                if self.executionPeriod != nil {
                    map["ExecutionPeriod"] = self.executionPeriod!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterClass") {
                    self.clusterClass = dict["ClusterClass"] as! String
                }
                if dict.keys.contains("ElasticRuleStartTime") {
                    self.elasticRuleStartTime = dict["ElasticRuleStartTime"] as! String
                }
                if dict.keys.contains("ExecutionPeriod") {
                    self.executionPeriod = dict["ExecutionPeriod"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var clusterId: String?

        public var dbInstanceId: String?

        public var rules: [DescribeElasticRulesResponseBody.Data.Rules]?

        public override init() {
            super.init()
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
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
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
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("Rules") {
                var tmp : [DescribeElasticRulesResponseBody.Data.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = DescribeElasticRulesResponseBody.Data.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public var data: DescribeElasticRulesResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeElasticRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeElasticRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeElasticRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class RegionModelList : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var description_: String?

            public var disabled: Bool?

            public var label: String?

            public var name: String?

            public var regionId: String?

            public var subDomain: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.subDomain != nil {
                    map["SubDomain"] = self.subDomain!
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
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Disabled") {
                    self.disabled = dict["Disabled"] as! Bool
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SubDomain") {
                    self.subDomain = dict["SubDomain"] as! String
                }
                if dict.keys.contains("VpcEnabled") {
                    self.vpcEnabled = dict["VpcEnabled"] as! Bool
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var regionId: String?

        public var zones: [DescribeRegionsResponseBody.RegionModelList.Zones]?

        public override init() {
            super.init()
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
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["Zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Zones") {
                var tmp : [DescribeRegionsResponseBody.RegionModelList.Zones] = []
                for v in dict["Zones"] as! [Any] {
                    var model = DescribeRegionsResponseBody.RegionModelList.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zones = tmp
            }
        }
    }
    public var regionModelList: [DescribeRegionsResponseBody.RegionModelList]?

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
        if self.regionModelList != nil {
            var tmp : [Any] = []
            for k in self.regionModelList! {
                tmp.append(k.toMap())
            }
            map["RegionModelList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionModelList") {
            var tmp : [DescribeRegionsResponseBody.RegionModelList] = []
            for v in dict["RegionModelList"] as! [Any] {
                var model = DescribeRegionsResponseBody.RegionModelList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regionModelList = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DescribeSecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeSecurityIPListResponseBody : Tea.TeaModel {
    public class GroupItems : Tea.TeaModel {
        public var aecurityIPType: String?

        public var groupName: String?

        public var groupTag: String?

        public var securityIPList: String?

        public var whitelistNetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aecurityIPType != nil {
                map["AecurityIPType"] = self.aecurityIPType!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupTag != nil {
                map["GroupTag"] = self.groupTag!
            }
            if self.securityIPList != nil {
                map["SecurityIPList"] = self.securityIPList!
            }
            if self.whitelistNetType != nil {
                map["WhitelistNetType"] = self.whitelistNetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AecurityIPType") {
                self.aecurityIPType = dict["AecurityIPType"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupTag") {
                self.groupTag = dict["GroupTag"] as! String
            }
            if dict.keys.contains("SecurityIPList") {
                self.securityIPList = dict["SecurityIPList"] as! String
            }
            if dict.keys.contains("WhitelistNetType") {
                self.whitelistNetType = dict["WhitelistNetType"] as! String
            }
        }
    }
    public var DBInstanceName: String?

    public var groupItems: [DescribeSecurityIPListResponseBody.GroupItems]?

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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.groupItems != nil {
            var tmp : [Any] = []
            for k in self.groupItems! {
                tmp.append(k.toMap())
            }
            map["GroupItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("GroupItems") {
            var tmp : [DescribeSecurityIPListResponseBody.GroupItems] = []
            for v in dict["GroupItems"] as! [Any] {
                var model = DescribeSecurityIPListResponseBody.GroupItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groupItems = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIPListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSecurityIPListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnDisableScalingRulesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dbInstanceId: String?

    public var product: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var scalingRulesEnable: Bool?

    public override init() {
        super.init()
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
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingRulesEnable != nil {
            map["ScalingRulesEnable"] = self.scalingRulesEnable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingRulesEnable") {
            self.scalingRulesEnable = dict["ScalingRulesEnable"] as! Bool
        }
    }
}

public class EnDisableScalingRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var dbInstanceId: String?

        public var scalingRulesEnable: Bool?

        public override init() {
            super.init()
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
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.scalingRulesEnable != nil {
                map["ScalingRulesEnable"] = self.scalingRulesEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("ScalingRulesEnable") {
                self.scalingRulesEnable = dict["ScalingRulesEnable"] as! Bool
            }
        }
    }
    public var data: EnDisableScalingRulesResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = EnDisableScalingRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnDisableScalingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnDisableScalingRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnDisableScalingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCreateBEClusterInquiryRequest : Tea.TeaModel {
    public var cacheSize: Int64?

    public var chargeType: String?

    public var commodityCode: String?

    public var computeSize: Int64?

    public var dbInstanceId: String?

    public var preCacheSize: Int64?

    public var preComputeSize: Int64?

    public var pricingCycle: String?

    public var quantity: Int64?

    public var regionId: String?

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
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.computeSize != nil {
            map["ComputeSize"] = self.computeSize!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.preCacheSize != nil {
            map["PreCacheSize"] = self.preCacheSize!
        }
        if self.preComputeSize != nil {
            map["PreComputeSize"] = self.preComputeSize!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! Int64
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("ComputeSize") {
            self.computeSize = dict["ComputeSize"] as! Int64
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("PreCacheSize") {
            self.preCacheSize = dict["PreCacheSize"] as! Int64
        }
        if dict.keys.contains("PreComputeSize") {
            self.preComputeSize = dict["PreComputeSize"] as! Int64
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetCreateBEClusterInquiryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currency: String?

        public var tradeAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("TradeAmount") {
                self.tradeAmount = dict["TradeAmount"] as! String
            }
        }
    }
    public var data: GetCreateBEClusterInquiryResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetCreateBEClusterInquiryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCreateBEClusterInquiryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreateBEClusterInquiryResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCreateBEClusterInquiryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModifyBEClusterInquiryRequest : Tea.TeaModel {
    public var cacheSize: Int64?

    public var chargeType: String?

    public var clusterId: String?

    public var commodityCode: String?

    public var computeSize: Int64?

    public var dbInstanceId: String?

    public var preCacheSize: Int64?

    public var preComputeSize: Int64?

    public var pricingCycle: String?

    public var quantity: Int64?

    public var regionId: String?

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
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.computeSize != nil {
            map["ComputeSize"] = self.computeSize!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.preCacheSize != nil {
            map["PreCacheSize"] = self.preCacheSize!
        }
        if self.preComputeSize != nil {
            map["PreComputeSize"] = self.preComputeSize!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! Int64
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("ComputeSize") {
            self.computeSize = dict["ComputeSize"] as! Int64
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("PreCacheSize") {
            self.preCacheSize = dict["PreCacheSize"] as! Int64
        }
        if dict.keys.contains("PreComputeSize") {
            self.preComputeSize = dict["PreComputeSize"] as! Int64
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetModifyBEClusterInquiryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currency: String?

        public var tradeAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("TradeAmount") {
                self.tradeAmount = dict["TradeAmount"] as! String
            }
        }
    }
    public var data: GetModifyBEClusterInquiryResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetModifyBEClusterInquiryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetModifyBEClusterInquiryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModifyBEClusterInquiryResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetModifyBEClusterInquiryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyBEClusterAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var instanceAttributeType: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.instanceAttributeType != nil {
            map["InstanceAttributeType"] = self.instanceAttributeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InstanceAttributeType") {
            self.instanceAttributeType = dict["InstanceAttributeType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class ModifyBEClusterAttributeResponseBody : Tea.TeaModel {
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

public class ModifyBEClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBEClusterAttributeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBEClusterAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBClusterRequest : Tea.TeaModel {
    public var cacheSize: String?

    public var DBClusterClass: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var engine: String?

    public var regionId: String?

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
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.DBClusterClass != nil {
            map["DBClusterClass"] = self.DBClusterClass!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheSize") {
            self.cacheSize = dict["CacheSize"] as! String
        }
        if dict.keys.contains("DBClusterClass") {
            self.DBClusterClass = dict["DBClusterClass"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyDBClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBClusterId: String?

        public var DBInstanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var DBInstanceId: String?

    public var data: ModifyDBClusterResponseBody.Data?

    public var requestId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = ModifyDBClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class ModifyDBClusterConfigRequest : Tea.TeaModel {
    public var configKey: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var parallelOperation: Bool?

    public var parameters: String?

    public var regionId: String?

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
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.parallelOperation != nil {
            map["ParallelOperation"] = self.parallelOperation!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigKey") {
            self.configKey = dict["ConfigKey"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ParallelOperation") {
            self.parallelOperation = dict["ParallelOperation"] as! Bool
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
    }
}

public class ModifyDBClusterConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public var dbInstanceName: String?

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
            if self.dbClusterId != nil {
                map["DbClusterId"] = self.dbClusterId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbClusterId") {
                self.dbClusterId = dict["DbClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("DbInstanceName") {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifyDBClusterConfigResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var requestId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ModifyDBClusterConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBClusterConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var instanceAttributeType: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.instanceAttributeType != nil {
            map["InstanceAttributeType"] = self.instanceAttributeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InstanceAttributeType") {
            self.instanceAttributeType = dict["InstanceAttributeType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class ModifyDBInstanceAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceAttributeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyElasticRuleRequest : Tea.TeaModel {
    public var clusterClass: String?

    public var clusterId: String?

    public var dbInstanceId: String?

    public var elasticRuleStartTime: String?

    public var executionPeriod: String?

    public var product: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterClass != nil {
            map["ClusterClass"] = self.clusterClass!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.elasticRuleStartTime != nil {
            map["ElasticRuleStartTime"] = self.elasticRuleStartTime!
        }
        if self.executionPeriod != nil {
            map["ExecutionPeriod"] = self.executionPeriod!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterClass") {
            self.clusterClass = dict["ClusterClass"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("ElasticRuleStartTime") {
            self.elasticRuleStartTime = dict["ElasticRuleStartTime"] as! String
        }
        if dict.keys.contains("ExecutionPeriod") {
            self.executionPeriod = dict["ExecutionPeriod"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class ModifyElasticRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterClass: String?

        public var clusterId: String?

        public var dbInstanceId: String?

        public var elasticRuleStartTime: String?

        public var executionPeriod: String?

        public var ruleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterClass != nil {
                map["ClusterClass"] = self.clusterClass!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.elasticRuleStartTime != nil {
                map["ElasticRuleStartTime"] = self.elasticRuleStartTime!
            }
            if self.executionPeriod != nil {
                map["ExecutionPeriod"] = self.executionPeriod!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterClass") {
                self.clusterClass = dict["ClusterClass"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("ElasticRuleStartTime") {
                self.elasticRuleStartTime = dict["ElasticRuleStartTime"] as! String
            }
            if dict.keys.contains("ExecutionPeriod") {
                self.executionPeriod = dict["ExecutionPeriod"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
        }
    }
    public var data: ModifyElasticRuleResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyElasticRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyElasticRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyElasticRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var groupName: String?

    public var modifyMode: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ModifyMode") {
            self.modifyMode = dict["ModifyMode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
    }
}

public class ModifySecurityIPListResponseBody : Tea.TeaModel {
    public var DBInstanceName: String?

    public var groupName: String?

    public var groupTag: String?

    public var requestId: String?

    public var securityIPList: String?

    public var securityIPType: String?

    public var taskId: Int64?

    public var whitelistNetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupTag != nil {
            map["GroupTag"] = self.groupTag!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.securityIPType != nil {
            map["SecurityIPType"] = self.securityIPType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.whitelistNetType != nil {
            map["WhitelistNetType"] = self.whitelistNetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupTag") {
            self.groupTag = dict["GroupTag"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("SecurityIPType") {
            self.securityIPType = dict["SecurityIPType"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
        if dict.keys.contains("WhitelistNetType") {
            self.whitelistNetType = dict["WhitelistNetType"] as! String
        }
    }
}

public class ModifySecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIPListResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifySecurityIPListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseInstancePublicConnectionRequest : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class RestartDBClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var parallelOperation: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.parallelOperation != nil {
            map["ParallelOperation"] = self.parallelOperation!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ParallelOperation") {
            self.parallelOperation = dict["ParallelOperation"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RestartDBClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBClusterId: String?

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
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: RestartDBClusterResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = RestartDBClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RestartDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDBClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartBEClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class StartBEClusterResponseBody : Tea.TeaModel {
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

public class StartBEClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartBEClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartBEClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopBEClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class StopBEClusterResponseBody : Tea.TeaModel {
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

public class StopBEClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopBEClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopBEClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeDBInstanceEngineVersionRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var engineVersion: String?

    public var parallelOperation: Bool?

    public var regionId: String?

    public var resourceOwnerId: Int64?

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
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.parallelOperation != nil {
            map["ParallelOperation"] = self.parallelOperation!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("ParallelOperation") {
            self.parallelOperation = dict["ParallelOperation"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
    }
}

public class UpgradeDBInstanceEngineVersionResponseBody : Tea.TeaModel {
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

public class UpgradeDBInstanceEngineVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeDBInstanceEngineVersionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeDBInstanceEngineVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
