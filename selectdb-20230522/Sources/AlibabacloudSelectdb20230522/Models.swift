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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionStringPrefix"] as? String {
            self.connectionStringPrefix = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AllocateInstancePublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheSize"] as? Int32 {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceClass"] as? String {
            self.DBInstanceClass = value
        }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckCreateDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckIpExistsInSecurityIpListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ip: String?

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
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CheckIpExistsInSecurityIpListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ipExists: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipExists != nil {
                map["IpExists"] = self.ipExists!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpExists"] as? Bool {
                self.ipExists = value
            }
        }
    }
    public var data: CheckIpExistsInSecurityIpListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckIpExistsInSecurityIpListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckIpExistsInSecurityIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckIpExistsInSecurityIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckIpExistsInSecurityIpListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasServiceLinkedRole"] as? Bool {
            self.hasServiceLinkedRole = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBClusterRequest : Tea.TeaModel {
    public var cacheSize: String?

    public var chargeType: String?

    public var clusterNodeCount: Int32?

    public var clusterNodeType: String?

    public var DBClusterClass: String?

    public var DBClusterDescription: String?

    public var DBInstanceId: String?

    public var engine: String?

    public var engineVersion: String?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var scaleMax: Double?

    public var scaleMin: Double?

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
        if self.clusterNodeCount != nil {
            map["ClusterNodeCount"] = self.clusterNodeCount!
        }
        if self.clusterNodeType != nil {
            map["ClusterNodeType"] = self.clusterNodeType!
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
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheSize"] as? String {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClusterNodeCount"] as? Int32 {
            self.clusterNodeCount = value
        }
        if let value = dict["ClusterNodeType"] as? String {
            self.clusterNodeType = value
        }
        if let value = dict["DBClusterClass"] as? String {
            self.DBClusterClass = value
        }
        if let value = dict["DBClusterDescription"] as? String {
            self.DBClusterDescription = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleMax"] as? Double {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? Double {
            self.scaleMin = value
        }
        if let value = dict["UsedTime"] as? String {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateDBClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDBClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBClusterBindingRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBClusterIdBak: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBClusterIdBak != nil {
            map["DBClusterIdBak"] = self.DBClusterIdBak!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBClusterIdBak"] as? String {
            self.DBClusterIdBak = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateDBClusterBindingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public var dbInstanceName: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
        }
    }
    public var data: CreateDBClusterBindingResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateDBClusterBindingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDBClusterBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBClusterBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBClusterBindingResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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
    public var addVPCIPs: String?

    public var cacheSize: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var clusterNodeCount: Int32?

    public var clusterNodeType: String?

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

    public var scaleMax: Double?

    public var scaleMin: Double?

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
        if self.addVPCIPs != nil {
            map["AddVPCIPs"] = self.addVPCIPs!
        }
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterNodeCount != nil {
            map["ClusterNodeCount"] = self.clusterNodeCount!
        }
        if self.clusterNodeType != nil {
            map["ClusterNodeType"] = self.clusterNodeType!
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
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddVPCIPs"] as? String {
            self.addVPCIPs = value
        }
        if let value = dict["CacheSize"] as? Int32 {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterNodeCount"] as? Int32 {
            self.clusterNodeCount = value
        }
        if let value = dict["ClusterNodeType"] as? String {
            self.clusterNodeType = value
        }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceClass"] as? String {
            self.DBInstanceClass = value
        }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DeployScheme"] as? String {
            self.deployScheme = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["MultiZone"] as? [Any?] {
            var tmp : [CreateDBInstanceRequest.MultiZone] = []
            for v in value {
                if v != nil {
                    var model = CreateDBInstanceRequest.MultiZone()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiZone = tmp
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleMax"] as? Double {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? Double {
            self.scaleMin = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateDBInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateDBInstanceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var addVPCIPs: String?

    public var cacheSize: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var clusterNodeCount: Int32?

    public var clusterNodeType: String?

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

    public var scaleMax: Double?

    public var scaleMin: Double?

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
        if self.addVPCIPs != nil {
            map["AddVPCIPs"] = self.addVPCIPs!
        }
        if self.cacheSize != nil {
            map["CacheSize"] = self.cacheSize!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterNodeCount != nil {
            map["ClusterNodeCount"] = self.clusterNodeCount!
        }
        if self.clusterNodeType != nil {
            map["ClusterNodeType"] = self.clusterNodeType!
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
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddVPCIPs"] as? String {
            self.addVPCIPs = value
        }
        if let value = dict["CacheSize"] as? Int32 {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterNodeCount"] as? Int32 {
            self.clusterNodeCount = value
        }
        if let value = dict["ClusterNodeType"] as? String {
            self.clusterNodeType = value
        }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceClass"] as? String {
            self.DBInstanceClass = value
        }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DeployScheme"] as? String {
            self.deployScheme = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["MultiZone"] as? String {
            self.multiZoneShrink = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleMax"] as? Double {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? Double {
            self.scaleMin = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDBInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterClass"] as? String {
            self.clusterClass = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["ElasticRuleStartTime"] as? String {
            self.elasticRuleStartTime = value
        }
        if let value = dict["ExecutionPeriod"] as? String {
            self.executionPeriod = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterClass"] as? String {
                self.clusterClass = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["ElasticRuleStartTime"] as? String {
                self.elasticRuleStartTime = value
            }
            if let value = dict["ExecutionPeriod"] as? String {
                self.executionPeriod = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateElasticRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateElasticRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceLinkedRoleForSelectDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVirtualClusterRequest : Tea.TeaModel {
    public var activeClusterId: String?

    public var clusterName: String?

    public var DBInstanceId: String?

    public var regionId: String?

    public var standbyClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeClusterId != nil {
            map["ActiveClusterId"] = self.activeClusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.standbyClusterId != nil {
            map["StandbyClusterId"] = self.standbyClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveClusterId"] as? String {
            self.activeClusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StandbyClusterId"] as? String {
            self.standbyClusterId = value
        }
    }
}

public class CreateVirtualClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
        }
    }
    public var data: CreateVirtualClusterResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateVirtualClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVirtualClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVirtualClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteDBClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDBClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBClusterBindingRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var DBClusterIdBak: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBClusterIdBak != nil {
            map["DBClusterIdBak"] = self.DBClusterIdBak!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBClusterIdBak"] as? String {
            self.DBClusterIdBak = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDBClusterBindingResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDBClusterBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBClusterBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBClusterBindingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteElasticRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVirtualClusterRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteVirtualClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
        }
    }
    public var data: DeleteVirtualClusterResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteVirtualClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVirtualClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVirtualClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClassCode"] as? String {
                self.classCode = value
            }
            if let value = dict["CpuCores"] as? Int64 {
                self.cpuCores = value
            }
            if let value = dict["DefaultStorageInGB"] as? Int64 {
                self.defaultStorageInGB = value
            }
            if let value = dict["MaxStorageInGB"] as? Int64 {
                self.maxStorageInGB = value
            }
            if let value = dict["MemoryInGB"] as? Int64 {
                self.memoryInGB = value
            }
            if let value = dict["MinStorageInGB"] as? Int64 {
                self.minStorageInGB = value
            }
            if let value = dict["StepStorageInGB"] as? Int64 {
                self.stepStorageInGB = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClassCodeList"] as? [Any?] {
            var tmp : [DescribeAllDBInstanceClassResponseBody.ClassCodeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeAllDBInstanceClassResponseBody.ClassCodeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.classCodeList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAllDBInstanceClassResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["IsDynamic"] as? Int32 {
                    self.isDynamic = value
                }
                if let value = dict["IsUserModifiable"] as? Int32 {
                    self.isUserModifiable = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Optional"] as? String {
                    self.optional_ = value
                }
                if let value = dict["ParamCategory"] as? String {
                    self.paramCategory = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
            if let value = dict["Params"] as? [Any?] {
                var tmp : [DescribeDBClusterConfigResponseBody.Data.Params] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterConfigResponseBody.Data.Params()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.params = tmp
            }
            if let value = dict["TaskId"] as? Int32 {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBClusterConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IsApplied"] as? Bool {
                    self.isApplied = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NewValue"] as? String {
                    self.newValue = value
                }
                if let value = dict["OldValue"] as? String {
                    self.oldValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
            if let value = dict["ParamChangeLogs"] as? [Any?] {
                var tmp : [DescribeDBClusterConfigChangeLogsResponseBody.Data.ParamChangeLogs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterConfigChangeLogsResponseBody.Data.ParamChangeLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramChangeLogs = tmp
            }
            if let value = dict["TaskId"] as? Int32 {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBClusterConfigChangeLogsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterConfigChangeLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterStorageLimitationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBClusterStorageLimitationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClassCodeList : Tea.TeaModel {
            public var classCode: String?

            public var cpuCores: Int32?

            public var defaultStorageInGB: Int32?

            public var maxStorageInGB: Int32?

            public var memoryInGB: Int32?

            public var minStorageInGB: Int32?

            public var stepStorageInGB: Int32?

            public override init() {
                super.init()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClassCode"] as? String {
                    self.classCode = value
                }
                if let value = dict["CpuCores"] as? Int32 {
                    self.cpuCores = value
                }
                if let value = dict["DefaultStorageInGB"] as? Int32 {
                    self.defaultStorageInGB = value
                }
                if let value = dict["MaxStorageInGB"] as? Int32 {
                    self.maxStorageInGB = value
                }
                if let value = dict["MemoryInGB"] as? Int32 {
                    self.memoryInGB = value
                }
                if let value = dict["MinStorageInGB"] as? Int32 {
                    self.minStorageInGB = value
                }
                if let value = dict["StepStorageInGB"] as? Int32 {
                    self.stepStorageInGB = value
                }
            }
        }
        public var classCodeList: [DescribeDBClusterStorageLimitationResponseBody.Data.ClassCodeList]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClassCodeList"] as? [Any?] {
                var tmp : [DescribeDBClusterStorageLimitationResponseBody.Data.ClassCodeList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterStorageLimitationResponseBody.Data.ClassCodeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.classCodeList = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeDBClusterStorageLimitationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBClusterStorageLimitationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterStorageLimitationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterStorageLimitationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBClusterStorageLimitationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class DBClusterList : Tea.TeaModel {
        public var cacheStorageSizeGB: String?

        public var cacheStorageType: String?

        public var chargeType: String?

        public var clusterBinding: String?

        public var clusterNodeCount: Int32?

        public var clusterNodeType: String?

        public var cpuCores: Int64?

        public var createdTime: String?

        public var dbClusterClass: String?

        public var dbClusterId: String?

        public var dbClusterName: String?

        public var dbInstanceName: String?

        public var memory: Int64?

        public var modifiedTime: String?

        public var performanceLevel: String?

        public var scaleMax: Double?

        public var scaleMin: Double?

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
            if self.clusterNodeCount != nil {
                map["ClusterNodeCount"] = self.clusterNodeCount!
            }
            if self.clusterNodeType != nil {
                map["ClusterNodeType"] = self.clusterNodeType!
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
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CacheStorageSizeGB"] as? String {
                self.cacheStorageSizeGB = value
            }
            if let value = dict["CacheStorageType"] as? String {
                self.cacheStorageType = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ClusterBinding"] as? String {
                self.clusterBinding = value
            }
            if let value = dict["ClusterNodeCount"] as? Int32 {
                self.clusterNodeCount = value
            }
            if let value = dict["ClusterNodeType"] as? String {
                self.clusterNodeType = value
            }
            if let value = dict["CpuCores"] as? Int64 {
                self.cpuCores = value
            }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["DbClusterClass"] as? String {
                self.dbClusterClass = value
            }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbClusterName"] as? String {
                self.dbClusterName = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
            if let value = dict["Memory"] as? Int64 {
                self.memory = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
            }
            if let value = dict["ScaleMax"] as? Double {
                self.scaleMax = value
            }
            if let value = dict["ScaleMin"] as? Double {
                self.scaleMin = value
            }
            if let value = dict["ScalingRulesEnable"] as? Bool {
                self.scalingRulesEnable = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubDomain"] as? String {
                self.subDomain = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableIpCount"] as? Int64 {
                self.availableIpCount = value
            }
            if let value = dict["Cidr"] as? String {
                self.cidr = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public class VirtualClusterList : Tea.TeaModel {
        public var activeClusterId: String?

        public var activeClusterName: String?

        public var createdTime: String?

        public var dbClusterId: String?

        public var dbClusterName: String?

        public var standbyClusterId: String?

        public var standbyClusterName: String?

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
            if self.activeClusterId != nil {
                map["ActiveClusterId"] = self.activeClusterId!
            }
            if self.activeClusterName != nil {
                map["ActiveClusterName"] = self.activeClusterName!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.dbClusterId != nil {
                map["DbClusterId"] = self.dbClusterId!
            }
            if self.dbClusterName != nil {
                map["DbClusterName"] = self.dbClusterName!
            }
            if self.standbyClusterId != nil {
                map["StandbyClusterId"] = self.standbyClusterId!
            }
            if self.standbyClusterName != nil {
                map["StandbyClusterName"] = self.standbyClusterName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveClusterId"] as? String {
                self.activeClusterId = value
            }
            if let value = dict["ActiveClusterName"] as? String {
                self.activeClusterName = value
            }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbClusterName"] as? String {
                self.dbClusterName = value
            }
            if let value = dict["StandbyClusterId"] as? String {
                self.standbyClusterId = value
            }
            if let value = dict["StandbyClusterName"] as? String {
                self.standbyClusterName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public var secGroupConnValid: String?

    public var serverless: Bool?

    public var status: String?

    public var storageSize: Int64?

    public var subDomain: String?

    public var tags: [DescribeDBInstanceAttributeResponseBody.Tags]?

    public var vSwitchId: String?

    public var virtualClusterList: [DescribeDBInstanceAttributeResponseBody.VirtualClusterList]?

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
        if self.secGroupConnValid != nil {
            map["SecGroupConnValid"] = self.secGroupConnValid!
        }
        if self.serverless != nil {
            map["Serverless"] = self.serverless!
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
        if self.virtualClusterList != nil {
            var tmp : [Any] = []
            for k in self.virtualClusterList! {
                tmp.append(k.toMap())
            }
            map["VirtualClusterList"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanUpgradeVersions"] as? [String] {
            self.canUpgradeVersions = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DBClusterList"] as? [Any?] {
            var tmp : [DescribeDBInstanceAttributeResponseBody.DBClusterList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceAttributeResponseBody.DBClusterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DBClusterList = tmp
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DeployScheme"] as? String {
            self.deployScheme = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineMinorVersion"] as? String {
            self.engineMinorVersion = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["LockMode"] as? Int64 {
            self.lockMode = value
        }
        if let value = dict["LockReason"] as? String {
            self.lockReason = value
        }
        if let value = dict["MaintainEndtime"] as? String {
            self.maintainEndtime = value
        }
        if let value = dict["MaintainStarttime"] as? String {
            self.maintainStarttime = value
        }
        if let value = dict["MultiZone"] as? [Any?] {
            var tmp : [DescribeDBInstanceAttributeResponseBody.MultiZone] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceAttributeResponseBody.MultiZone()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiZone = tmp
        }
        if let value = dict["ObjectStoreSize"] as? Int64 {
            self.objectStoreSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCpu"] as? Int64 {
            self.resourceCpu = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecGroupConnValid"] as? String {
            self.secGroupConnValid = value
        }
        if let value = dict["Serverless"] as? Bool {
            self.serverless = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StorageSize"] as? Int64 {
            self.storageSize = value
        }
        if let value = dict["SubDomain"] as? String {
            self.subDomain = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [DescribeDBInstanceAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceAttributeResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VirtualClusterList"] as? [Any?] {
            var tmp : [DescribeDBInstanceAttributeResponseBody.VirtualClusterList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceAttributeResponseBody.VirtualClusterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.virtualClusterList = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["NetType"] as? String {
                self.netType = value
            }
            if let value = dict["PortList"] as? [Any?] {
                var tmp : [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos.PortList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos.PortList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.portList = tmp
            }
            if let value = dict["UserVisible"] as? Bool {
                self.userVisible = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcInstanceId"] as? String {
                self.vpcInstanceId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["NetType"] as? String {
                self.netType = value
            }
            if let value = dict["PortList"] as? [Any?] {
                var tmp : [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.PortList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos.PortList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.portList = tmp
            }
            if let value = dict["UserVisible"] as? Bool {
                self.userVisible = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcInstanceId"] as? String {
                self.vpcInstanceId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClustersNetInfos"] as? [Any?] {
            var tmp : [DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceNetInfoResponseBody.DBClustersNetInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DBClustersNetInfos = tmp
        }
        if let value = dict["DBInstanceNetInfos"] as? [Any?] {
            var tmp : [DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstanceNetInfoResponseBody.DBInstanceNetInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DBInstanceNetInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceNetInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DBInstanceIds"] as? String {
            self.DBInstanceIds = value
        }
        if let value = dict["DBInstanceStatus"] as? String {
            self.DBInstanceStatus = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDBInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstancesRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DBInstanceIds"] as? String {
            self.DBInstanceIds = value
        }
        if let value = dict["DBInstanceStatus"] as? String {
            self.DBInstanceStatus = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VSwitchIds"] as? [String] {
                    self.vSwitchIds = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
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

        public var serverless: Bool?

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
            if self.serverless != nil {
                map["Serverless"] = self.serverless!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ClusterCount"] as? Int32 {
                self.clusterCount = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DeployScheme"] as? String {
                self.deployScheme = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineMinorVersion"] as? String {
                self.engineMinorVersion = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InstanceUsedType"] as? String {
                self.instanceUsedType = value
            }
            if let value = dict["IsDeleted"] as? Bool {
                self.isDeleted = value
            }
            if let value = dict["LockMode"] as? Int64 {
                self.lockMode = value
            }
            if let value = dict["LockReason"] as? String {
                self.lockReason = value
            }
            if let value = dict["MaintainEndTimeStr"] as? String {
                self.maintainEndTimeStr = value
            }
            if let value = dict["MaintainEndtime"] as? String {
                self.maintainEndtime = value
            }
            if let value = dict["MaintainStartTimeStr"] as? String {
                self.maintainStartTimeStr = value
            }
            if let value = dict["MaintainStarttime"] as? String {
                self.maintainStarttime = value
            }
            if let value = dict["MultiZone"] as? [Any?] {
                var tmp : [DescribeDBInstancesResponseBody.Items.MultiZone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstancesResponseBody.Items.MultiZone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiZone = tmp
            }
            if let value = dict["ObjectStoreSize"] as? Int64 {
                self.objectStoreSize = value
            }
            if let value = dict["ParentInstance"] as? String {
                self.parentInstance = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceCpu"] as? Int64 {
                self.resourceCpu = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceMemory"] as? Int64 {
                self.resourceMemory = value
            }
            if let value = dict["ScaleMax"] as? Int64 {
                self.scaleMax = value
            }
            if let value = dict["ScaleMin"] as? Int64 {
                self.scaleMin = value
            }
            if let value = dict["ScaleReplica"] as? Int64 {
                self.scaleReplica = value
            }
            if let value = dict["Serverless"] as? Bool {
                self.serverless = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageSize"] as? Int64 {
                self.storageSize = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDBInstancesResponseBody.Items.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstancesResponseBody.Items.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantClusterId"] as? String {
                self.tenantClusterId = value
            }
            if let value = dict["TenantToken"] as? String {
                self.tenantToken = value
            }
            if let value = dict["TenantUserId"] as? String {
                self.tenantUserId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["connectionString"] as? String {
                self.connectionString = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDBInstancesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstancesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? Int64 {
            self.totalRecordCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterClass"] as? String {
                    self.clusterClass = value
                }
                if let value = dict["ElasticRuleStartTime"] as? String {
                    self.elasticRuleStartTime = value
                }
                if let value = dict["ExecutionPeriod"] as? String {
                    self.executionPeriod = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [DescribeElasticRulesResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeElasticRulesResponseBody.Data.Rules()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeElasticRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeElasticRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Disabled"] as? Bool {
                    self.disabled = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["SubDomain"] as? String {
                    self.subDomain = value
                }
                if let value = dict["VpcEnabled"] as? Bool {
                    self.vpcEnabled = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.RegionModelList.Zones] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.RegionModelList.Zones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionModelList"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.RegionModelList] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.RegionModelList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionModelList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AecurityIPType"] as? String {
                self.aecurityIPType = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["GroupTag"] as? String {
                self.groupTag = value
            }
            if let value = dict["SecurityIPList"] as? String {
                self.securityIPList = value
            }
            if let value = dict["WhitelistNetType"] as? String {
                self.whitelistNetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["GroupItems"] as? [Any?] {
            var tmp : [DescribeSecurityIPListResponseBody.GroupItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeSecurityIPListResponseBody.GroupItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groupItems = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSecurityIPListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVSwitchesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeVSwitchesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var vSwitchId: String?

        public var vSwitchName: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchName != nil {
                map["VSwitchName"] = self.vSwitchName!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchName"] as? String {
                self.vSwitchName = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var items: [DescribeVSwitchesResponseBody.Items]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalRecordCount: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeVSwitchesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeVSwitchesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? String {
            self.totalRecordCount = value
        }
    }
}

public class DescribeVSwitchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVSwitchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVSwitchesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var items: [DescribeZonesResponseBody.Items]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeZonesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeZonesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScalingRulesEnable"] as? Bool {
            self.scalingRulesEnable = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["ScalingRulesEnable"] as? Bool {
                self.scalingRulesEnable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = EnDisableScalingRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnDisableScalingRulesResponseBody()
            model.fromMap(value)
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

    public var promotionOptionNo: String?

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
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheSize"] as? Int64 {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["ComputeSize"] as? Int64 {
            self.computeSize = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["PreCacheSize"] as? Int64 {
            self.preCacheSize = value
        }
        if let value = dict["PreComputeSize"] as? Int64 {
            self.preComputeSize = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetCreateBEClusterInquiryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var canPromFee: String?

            public var optionCode: String?

            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canPromFee != nil {
                    map["CanPromFee"] = self.canPromFee!
                }
                if self.optionCode != nil {
                    map["OptionCode"] = self.optionCode!
                }
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CanPromFee"] as? String {
                    self.canPromFee = value
                }
                if let value = dict["OptionCode"] as? String {
                    self.optionCode = value
                }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
            }
        }
        public var currency: String?

        public var optionalPromotions: [GetCreateBEClusterInquiryResponseBody.Data.OptionalPromotions]?

        public var pricingRules: [String: String]?

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
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.pricingRules != nil {
                map["PricingRules"] = self.pricingRules!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [GetCreateBEClusterInquiryResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = GetCreateBEClusterInquiryResponseBody.Data.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["PricingRules"] as? [String: String] {
                self.pricingRules = value
            }
            if let value = dict["TradeAmount"] as? String {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCreateBEClusterInquiryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCreateBEClusterInquiryResponseBody()
            model.fromMap(value)
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

    public var modifyClusterChargeType: Bool?

    public var preCacheSize: Int64?

    public var preComputeSize: Int64?

    public var pricingCycle: String?

    public var promotionOptionNo: String?

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
        if self.modifyClusterChargeType != nil {
            map["ModifyClusterChargeType"] = self.modifyClusterChargeType!
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
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheSize"] as? Int64 {
            self.cacheSize = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["ComputeSize"] as? Int64 {
            self.computeSize = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["ModifyClusterChargeType"] as? Bool {
            self.modifyClusterChargeType = value
        }
        if let value = dict["PreCacheSize"] as? Int64 {
            self.preCacheSize = value
        }
        if let value = dict["PreComputeSize"] as? Int64 {
            self.preComputeSize = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetModifyBEClusterInquiryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var canPromFee: String?

            public var optionCode: String?

            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.canPromFee != nil {
                    map["CanPromFee"] = self.canPromFee!
                }
                if self.optionCode != nil {
                    map["OptionCode"] = self.optionCode!
                }
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CanPromFee"] as? String {
                    self.canPromFee = value
                }
                if let value = dict["OptionCode"] as? String {
                    self.optionCode = value
                }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
            }
        }
        public var currency: String?

        public var optionalPromotions: [GetModifyBEClusterInquiryResponseBody.Data.OptionalPromotions]?

        public var pricingRules: [String: String]?

        public var refundAmount: String?

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
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.pricingRules != nil {
                map["PricingRules"] = self.pricingRules!
            }
            if self.refundAmount != nil {
                map["RefundAmount"] = self.refundAmount!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [GetModifyBEClusterInquiryResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = GetModifyBEClusterInquiryResponseBody.Data.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["PricingRules"] as? [String: String] {
                self.pricingRules = value
            }
            if let value = dict["RefundAmount"] as? String {
                self.refundAmount = value
            }
            if let value = dict["TradeAmount"] as? String {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetModifyBEClusterInquiryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModifyBEClusterInquiryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["InstanceAttributeType"] as? String {
            self.instanceAttributeType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyBEClusterAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterRequest : Tea.TeaModel {
    public var cacheSize: String?

    public var clusterNodeCount: Int32?

    public var clusterNodeType: String?

    public var DBClusterClass: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var engine: String?

    public var regionId: String?

    public var resourceOwnerId: Int64?

    public var scaleMax: Double?

    public var scaleMin: Double?

    public override init() {
        super.init()
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
        if self.clusterNodeCount != nil {
            map["ClusterNodeCount"] = self.clusterNodeCount!
        }
        if self.clusterNodeType != nil {
            map["ClusterNodeType"] = self.clusterNodeType!
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
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheSize"] as? String {
            self.cacheSize = value
        }
        if let value = dict["ClusterNodeCount"] as? Int32 {
            self.clusterNodeCount = value
        }
        if let value = dict["ClusterNodeType"] as? String {
            self.clusterNodeType = value
        }
        if let value = dict["DBClusterClass"] as? String {
            self.DBClusterClass = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleMax"] as? Double {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? Double {
            self.scaleMin = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBClusterId"] as? String {
                self.DBClusterId = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyDBClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["ParallelOperation"] as? Bool {
            self.parallelOperation = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
            if let value = dict["TaskId"] as? Int32 {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyDBClusterConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["InstanceAttributeType"] as? String {
            self.instanceAttributeType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBInstanceAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterClass"] as? String {
            self.clusterClass = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["ElasticRuleStartTime"] as? String {
            self.elasticRuleStartTime = value
        }
        if let value = dict["ExecutionPeriod"] as? String {
            self.executionPeriod = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterClass"] as? String {
                self.clusterClass = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["ElasticRuleStartTime"] as? String {
                self.elasticRuleStartTime = value
            }
            if let value = dict["ExecutionPeriod"] as? String {
                self.executionPeriod = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyElasticRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyElasticRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["GroupTag"] as? String {
            self.groupTag = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["SecurityIPType"] as? String {
            self.securityIPType = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["WhitelistNetType"] as? String {
            self.whitelistNetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySecurityIPListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyVirtualClusterRequest : Tea.TeaModel {
    public var activeClusterId: String?

    public var DBClusterId: String?

    public var DBInstanceId: String?

    public var regionId: String?

    public var standbyClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeClusterId != nil {
            map["ActiveClusterId"] = self.activeClusterId!
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
        if self.standbyClusterId != nil {
            map["StandbyClusterId"] = self.standbyClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveClusterId"] as? String {
            self.activeClusterId = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StandbyClusterId"] as? String {
            self.standbyClusterId = value
        }
    }
}

public class ModifyVirtualClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbClusterId: String?

        public var dbInstanceId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
        }
    }
    public var data: ModifyVirtualClusterResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyVirtualClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyVirtualClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVirtualClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyVirtualClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseInstancePublicConnectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["ParallelOperation"] as? Bool {
            self.parallelOperation = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBClusterId"] as? String {
                self.DBClusterId = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RestartDBClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartDBClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartBEClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopBEClusterResponseBody()
            model.fromMap(value)
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
    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeDBInstanceDeploySchemeRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var DBInstanceId: String?

    public var multiZone: [UpgradeDBInstanceDeploySchemeRequest.MultiZone]?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.multiZone != nil {
            var tmp : [Any] = []
            for k in self.multiZone! {
                tmp.append(k.toMap())
            }
            map["MultiZone"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["MultiZone"] as? [Any?] {
            var tmp : [UpgradeDBInstanceDeploySchemeRequest.MultiZone] = []
            for v in value {
                if v != nil {
                    var model = UpgradeDBInstanceDeploySchemeRequest.MultiZone()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiZone = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpgradeDBInstanceDeploySchemeShrinkRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var multiZoneShrink: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.multiZoneShrink != nil {
            map["MultiZone"] = self.multiZoneShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["MultiZone"] as? String {
            self.multiZoneShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpgradeDBInstanceDeploySchemeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeDBInstanceDeploySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeDBInstanceDeploySchemeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeDBInstanceDeploySchemeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ParallelOperation"] as? Bool {
            self.parallelOperation = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeDBInstanceEngineVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
