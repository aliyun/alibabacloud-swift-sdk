import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocatePublicContactPointsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class AllocatePublicContactPointsResponseBody : Tea.TeaModel {
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

public class AllocatePublicContactPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocatePublicContactPointsResponseBody?

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
            var model = AllocatePublicContactPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBackupPlanRequest : Tea.TeaModel {
    public var active: Bool?

    public var backupPeriod: String?

    public var backupTime: String?

    public var clientToken: String?

    public var clusterId: String?

    public var dataCenterId: String?

    public var retentionPeriod: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupTime != nil {
            map["BackupTime"] = self.backupTime!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.retentionPeriod != nil {
            map["RetentionPeriod"] = self.retentionPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupTime") {
            self.backupTime = dict["BackupTime"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("RetentionPeriod") {
            self.retentionPeriod = dict["RetentionPeriod"] as! Int32
        }
    }
}

public class CreateBackupPlanResponseBody : Tea.TeaModel {
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

public class CreateClusterRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterName: String?

    public var dataCenterName: String?

    public var diskSize: Int32?

    public var diskType: String?

    public var instanceType: String?

    public var majorVersion: String?

    public var nodeCount: Int32?

    public var password: String?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.dataCenterName != nil {
            map["DataCenterName"] = self.dataCenterName!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.majorVersion != nil {
            map["MajorVersion"] = self.majorVersion!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DataCenterName") {
            self.dataCenterName = dict["DataCenterName"] as! String
        }
        if dict.keys.contains("DiskSize") {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("MajorVersion") {
            self.majorVersion = dict["MajorVersion"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataCenterRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterId: String?

    public var dataCenterName: String?

    public var diskSize: Int32?

    public var diskType: String?

    public var instanceType: String?

    public var nodeCount: Int32?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataCenterName != nil {
            map["DataCenterName"] = self.dataCenterName!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterName") {
            self.dataCenterName = dict["DataCenterName"] as! String
        }
        if dict.keys.contains("DiskSize") {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
    }
}

public class CreateDataCenterResponseBody : Tea.TeaModel {
    public var dataCenterId: String?

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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDataCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataCenterResponseBody?

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
            var model = CreateDataCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DeleteBackupPlanResponseBody : Tea.TeaModel {
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
            var model = DeleteBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
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

public class DeleteClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterResponseBody?

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
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataCenterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DeleteDataCenterResponseBody : Tea.TeaModel {
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

public class DeleteDataCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataCenterResponseBody?

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
            var model = DeleteDataCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNodeToolExecutionHistoryRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public var jobId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DeleteNodeToolExecutionHistoryResponseBody : Tea.TeaModel {
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

public class DeleteNodeToolExecutionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodeToolExecutionHistoryResponseBody?

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
            var model = DeleteNodeToolExecutionHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
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
        public var account: [DescribeAccountsResponseBody.Accounts.Account]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                var tmp : [Any] = []
                for k in self.account! {
                    tmp.append(k.toMap())
                }
                map["Account"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! [DescribeAccountsResponseBody.Accounts.Account]
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

public class DescribeBackupRequest : Tea.TeaModel {
    public var backupId: String?

    public var backupType: String?

    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("BackupType") {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DescribeBackupResponseBody : Tea.TeaModel {
    public class Backup : Tea.TeaModel {
        public var backupId: String?

        public var backupType: String?

        public var clusterId: String?

        public var dataCenterId: String?

        public var details: String?

        public var endTime: String?

        public var size: Int64?

        public var startTime: String?

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
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dataCenterId != nil {
                map["DataCenterId"] = self.dataCenterId!
            }
            if self.details != nil {
                map["Details"] = self.details!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupId") {
                self.backupId = dict["BackupId"] as! String
            }
            if dict.keys.contains("BackupType") {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DataCenterId") {
                self.dataCenterId = dict["DataCenterId"] as! String
            }
            if dict.keys.contains("Details") {
                self.details = dict["Details"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var backup: DescribeBackupResponseBody.Backup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backup != nil {
            map["Backup"] = self.backup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backup") {
            var model = DescribeBackupResponseBody.Backup()
            model.fromMap(dict["Backup"] as! [String: Any])
            self.backup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupResponseBody?

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
            var model = DescribeBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DescribeBackupPlanResponseBody : Tea.TeaModel {
    public class BackupPlan : Tea.TeaModel {
        public var active: Bool?

        public var backupPeriod: String?

        public var backupTime: String?

        public var clusterId: String?

        public var createdTime: String?

        public var dataCenterId: String?

        public var retentionPeriod: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.backupPeriod != nil {
                map["BackupPeriod"] = self.backupPeriod!
            }
            if self.backupTime != nil {
                map["BackupTime"] = self.backupTime!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.dataCenterId != nil {
                map["DataCenterId"] = self.dataCenterId!
            }
            if self.retentionPeriod != nil {
                map["RetentionPeriod"] = self.retentionPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("BackupPeriod") {
                self.backupPeriod = dict["BackupPeriod"] as! String
            }
            if dict.keys.contains("BackupTime") {
                self.backupTime = dict["BackupTime"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DataCenterId") {
                self.dataCenterId = dict["DataCenterId"] as! String
            }
            if dict.keys.contains("RetentionPeriod") {
                self.retentionPeriod = dict["RetentionPeriod"] as! Int32
            }
        }
    }
    public var backupPlan: DescribeBackupPlanResponseBody.BackupPlan?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backupPlan?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPlan != nil {
            map["BackupPlan"] = self.backupPlan?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlan") {
            var model = DescribeBackupPlanResponseBody.BackupPlan()
            model.fromMap(dict["BackupPlan"] as! [String: Any])
            self.backupPlan = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPlanResponseBody?

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
            var model = DescribeBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPlansRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeBackupPlansResponseBody : Tea.TeaModel {
    public class BackupPlans : Tea.TeaModel {
        public class BackupPlan : Tea.TeaModel {
            public var active: Bool?

            public var backupPeriod: String?

            public var backupTime: String?

            public var clusterId: String?

            public var createdTime: String?

            public var dataCenterId: String?

            public var retentionPeriod: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.backupPeriod != nil {
                    map["BackupPeriod"] = self.backupPeriod!
                }
                if self.backupTime != nil {
                    map["BackupTime"] = self.backupTime!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dataCenterId != nil {
                    map["DataCenterId"] = self.dataCenterId!
                }
                if self.retentionPeriod != nil {
                    map["RetentionPeriod"] = self.retentionPeriod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Active") {
                    self.active = dict["Active"] as! Bool
                }
                if dict.keys.contains("BackupPeriod") {
                    self.backupPeriod = dict["BackupPeriod"] as! String
                }
                if dict.keys.contains("BackupTime") {
                    self.backupTime = dict["BackupTime"] as! String
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreatedTime") {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DataCenterId") {
                    self.dataCenterId = dict["DataCenterId"] as! String
                }
                if dict.keys.contains("RetentionPeriod") {
                    self.retentionPeriod = dict["RetentionPeriod"] as! Int32
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
            if dict.keys.contains("BackupPlan") {
                self.backupPlan = dict["BackupPlan"] as! [DescribeBackupPlansResponseBody.BackupPlans.BackupPlan]
            }
        }
    }
    public var backupPlans: DescribeBackupPlansResponseBody.BackupPlans?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPlans") {
            var model = DescribeBackupPlansResponseBody.BackupPlans()
            model.fromMap(dict["BackupPlans"] as! [String: Any])
            self.backupPlans = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeBackupPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupType: String?

    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Backups : Tea.TeaModel {
        public class Backup : Tea.TeaModel {
            public var backupId: String?

            public var backupType: String?

            public var clusterId: String?

            public var dataCenterId: String?

            public var endTime: String?

            public var size: Int64?

            public var startTime: String?

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
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.dataCenterId != nil {
                    map["DataCenterId"] = self.dataCenterId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupId") {
                    self.backupId = dict["BackupId"] as! String
                }
                if dict.keys.contains("BackupType") {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("DataCenterId") {
                    self.dataCenterId = dict["DataCenterId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int64
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var backup: [DescribeBackupsResponseBody.Backups.Backup]?

        public override init() {
            super.init()
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
                self.backup = dict["Backup"] as! [DescribeBackupsResponseBody.Backups.Backup]
            }
        }
    }
    public var backups: DescribeBackupsResponseBody.Backups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backups != nil {
            map["Backups"] = self.backups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backups") {
            var model = DescribeBackupsResponseBody.Backups()
            model.fromMap(dict["Backups"] as! [String: Any])
            self.backups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class Cluster : Tea.TeaModel {
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
            public var tag: [DescribeClusterResponseBody.Cluster.Tags.Tag]?

            public override init() {
                super.init()
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
                    self.tag = dict["Tag"] as! [DescribeClusterResponseBody.Cluster.Tags.Tag]
                }
            }
        }
        public var autoRenewPeriod: Int32?

        public var autoRenewal: Bool?

        public var clusterId: String?

        public var clusterName: String?

        public var createdTime: String?

        public var dataCenterCount: Int32?

        public var expireTime: String?

        public var isLatestVersion: Bool?

        public var lockMode: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var majorVersion: String?

        public var minorVersion: String?

        public var payType: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: DescribeClusterResponseBody.Cluster.Tags?

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
            if self.autoRenewPeriod != nil {
                map["AutoRenewPeriod"] = self.autoRenewPeriod!
            }
            if self.autoRenewal != nil {
                map["AutoRenewal"] = self.autoRenewal!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.dataCenterCount != nil {
                map["DataCenterCount"] = self.dataCenterCount!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.isLatestVersion != nil {
                map["IsLatestVersion"] = self.isLatestVersion!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.majorVersion != nil {
                map["MajorVersion"] = self.majorVersion!
            }
            if self.minorVersion != nil {
                map["MinorVersion"] = self.minorVersion!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewPeriod") {
                self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
            }
            if dict.keys.contains("AutoRenewal") {
                self.autoRenewal = dict["AutoRenewal"] as! Bool
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DataCenterCount") {
                self.dataCenterCount = dict["DataCenterCount"] as! Int32
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("IsLatestVersion") {
                self.isLatestVersion = dict["IsLatestVersion"] as! Bool
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("MaintainEndTime") {
                self.maintainEndTime = dict["MaintainEndTime"] as! String
            }
            if dict.keys.contains("MaintainStartTime") {
                self.maintainStartTime = dict["MaintainStartTime"] as! String
            }
            if dict.keys.contains("MajorVersion") {
                self.majorVersion = dict["MajorVersion"] as! String
            }
            if dict.keys.contains("MinorVersion") {
                self.minorVersion = dict["MinorVersion"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var model = DescribeClusterResponseBody.Cluster.Tags()
                model.fromMap(dict["Tags"] as! [String: Any])
                self.tags = model
            }
        }
    }
    public var cluster: DescribeClusterResponseBody.Cluster?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["Cluster"] = self.cluster?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cluster") {
            var model = DescribeClusterResponseBody.Cluster()
            model.fromMap(dict["Cluster"] as! [String: Any])
            self.cluster = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResponseBody?

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
            var model = DescribeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterDashboardRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeClusterDashboardResponseBody : Tea.TeaModel {
    public class Dashboard : Tea.TeaModel {
        public class DataCenters : Tea.TeaModel {
            public class DataCenter : Tea.TeaModel {
                public class Nodes : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public var address: String?

                        public var load: String?

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
                            if self.address != nil {
                                map["Address"] = self.address!
                            }
                            if self.load != nil {
                                map["Load"] = self.load!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Address") {
                                self.address = dict["Address"] as! String
                            }
                            if dict.keys.contains("Load") {
                                self.load = dict["Load"] as! String
                            }
                            if dict.keys.contains("Status") {
                                self.status = dict["Status"] as! String
                            }
                        }
                    }
                    public var node: [DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter.Nodes.Node]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.node != nil {
                            var tmp : [Any] = []
                            for k in self.node! {
                                tmp.append(k.toMap())
                            }
                            map["Node"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Node") {
                            self.node = dict["Node"] as! [DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter.Nodes.Node]
                        }
                    }
                }
                public var dataCenterId: String?

                public var nodes: DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter.Nodes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nodes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataCenterId != nil {
                        map["DataCenterId"] = self.dataCenterId!
                    }
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataCenterId") {
                        self.dataCenterId = dict["DataCenterId"] as! String
                    }
                    if dict.keys.contains("Nodes") {
                        var model = DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter.Nodes()
                        model.fromMap(dict["Nodes"] as! [String: Any])
                        self.nodes = model
                    }
                }
            }
            public var dataCenter: [DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataCenter != nil {
                    var tmp : [Any] = []
                    for k in self.dataCenter! {
                        tmp.append(k.toMap())
                    }
                    map["DataCenter"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataCenter") {
                    self.dataCenter = dict["DataCenter"] as! [DescribeClusterDashboardResponseBody.Dashboard.DataCenters.DataCenter]
                }
            }
        }
        public var clusterId: String?

        public var dataCenters: DescribeClusterDashboardResponseBody.Dashboard.DataCenters?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataCenters?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dataCenters != nil {
                map["DataCenters"] = self.dataCenters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DataCenters") {
                var model = DescribeClusterDashboardResponseBody.Dashboard.DataCenters()
                model.fromMap(dict["DataCenters"] as! [String: Any])
                self.dataCenters = model
            }
        }
    }
    public var dashboard: DescribeClusterDashboardResponseBody.Dashboard?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dashboard?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dashboard != nil {
            map["Dashboard"] = self.dashboard?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dashboard") {
            var model = DescribeClusterDashboardResponseBody.Dashboard()
            model.fromMap(dict["Dashboard"] as! [String: Any])
            self.dashboard = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterDashboardResponseBody?

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
            var model = DescribeClusterDashboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterStatusRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeClusterStatusResponseBody : Tea.TeaModel {
    public var createdTime: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
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
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeClusterStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterStatusResponseBody?

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
            var model = DescribeClusterStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClustersRequest : Tea.TeaModel {
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
    public var clusterName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeClustersRequest.Tag]?

    public override init() {
        super.init()
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
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
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
            self.tag = dict["Tag"] as! [DescribeClustersRequest.Tag]
        }
    }
}

public class DescribeClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
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
                public var tag: [DescribeClustersResponseBody.Clusters.Cluster.Tags.Tag]?

                public override init() {
                    super.init()
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
                        self.tag = dict["Tag"] as! [DescribeClustersResponseBody.Clusters.Cluster.Tags.Tag]
                    }
                }
            }
            public var autoRenewPeriod: Int32?

            public var autoRenewal: Bool?

            public var clusterId: String?

            public var clusterName: String?

            public var createdTime: String?

            public var dataCenterCount: Int32?

            public var expireTime: String?

            public var lockMode: String?

            public var majorVersion: String?

            public var minorVersion: String?

            public var payType: String?

            public var resourceGroupId: String?

            public var status: String?

            public var tags: DescribeClustersResponseBody.Clusters.Cluster.Tags?

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
                if self.autoRenewPeriod != nil {
                    map["AutoRenewPeriod"] = self.autoRenewPeriod!
                }
                if self.autoRenewal != nil {
                    map["AutoRenewal"] = self.autoRenewal!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dataCenterCount != nil {
                    map["DataCenterCount"] = self.dataCenterCount!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.majorVersion != nil {
                    map["MajorVersion"] = self.majorVersion!
                }
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoRenewPeriod") {
                    self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
                }
                if dict.keys.contains("AutoRenewal") {
                    self.autoRenewal = dict["AutoRenewal"] as! Bool
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("CreatedTime") {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DataCenterCount") {
                    self.dataCenterCount = dict["DataCenterCount"] as! Int32
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("MajorVersion") {
                    self.majorVersion = dict["MajorVersion"] as! String
                }
                if dict.keys.contains("MinorVersion") {
                    self.minorVersion = dict["MinorVersion"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeClustersResponseBody.Clusters.Cluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var cluster: [DescribeClustersResponseBody.Clusters.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") {
                self.cluster = dict["Cluster"] as! [DescribeClustersResponseBody.Clusters.Cluster]
            }
        }
    }
    public var clusters: DescribeClustersResponseBody.Clusters?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
        if dict.keys.contains("Clusters") {
            var model = DescribeClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClustersResponseBody?

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
            var model = DescribeClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContactPointsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeContactPointsResponseBody : Tea.TeaModel {
    public class ContactPoints : Tea.TeaModel {
        public class ContactPoint : Tea.TeaModel {
            public class PrivateAddresses : Tea.TeaModel {
                public var privateAddress: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.privateAddress != nil {
                        map["PrivateAddress"] = self.privateAddress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PrivateAddress") {
                        self.privateAddress = dict["PrivateAddress"] as! [String]
                    }
                }
            }
            public class PublicAddresses : Tea.TeaModel {
                public var publicAddress: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.publicAddress != nil {
                        map["PublicAddress"] = self.publicAddress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PublicAddress") {
                        self.publicAddress = dict["PublicAddress"] as! [String]
                    }
                }
            }
            public var dataCenterId: String?

            public var port: Int32?

            public var privateAddresses: DescribeContactPointsResponseBody.ContactPoints.ContactPoint.PrivateAddresses?

            public var publicAddresses: DescribeContactPointsResponseBody.ContactPoints.ContactPoint.PublicAddresses?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.privateAddresses?.validate()
                try self.publicAddresses?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataCenterId != nil {
                    map["DataCenterId"] = self.dataCenterId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.privateAddresses != nil {
                    map["PrivateAddresses"] = self.privateAddresses?.toMap()
                }
                if self.publicAddresses != nil {
                    map["PublicAddresses"] = self.publicAddresses?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataCenterId") {
                    self.dataCenterId = dict["DataCenterId"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("PrivateAddresses") {
                    var model = DescribeContactPointsResponseBody.ContactPoints.ContactPoint.PrivateAddresses()
                    model.fromMap(dict["PrivateAddresses"] as! [String: Any])
                    self.privateAddresses = model
                }
                if dict.keys.contains("PublicAddresses") {
                    var model = DescribeContactPointsResponseBody.ContactPoints.ContactPoint.PublicAddresses()
                    model.fromMap(dict["PublicAddresses"] as! [String: Any])
                    self.publicAddresses = model
                }
            }
        }
        public var contactPoint: [DescribeContactPointsResponseBody.ContactPoints.ContactPoint]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactPoint != nil {
                var tmp : [Any] = []
                for k in self.contactPoint! {
                    tmp.append(k.toMap())
                }
                map["ContactPoint"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactPoint") {
                self.contactPoint = dict["ContactPoint"] as! [DescribeContactPointsResponseBody.ContactPoints.ContactPoint]
            }
        }
    }
    public var contactPoints: DescribeContactPointsResponseBody.ContactPoints?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contactPoints?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactPoints != nil {
            map["ContactPoints"] = self.contactPoints?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactPoints") {
            var model = DescribeContactPointsResponseBody.ContactPoints()
            model.fromMap(dict["ContactPoints"] as! [String: Any])
            self.contactPoints = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContactPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContactPointsResponseBody?

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
            var model = DescribeContactPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataCenterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class DescribeDataCenterResponseBody : Tea.TeaModel {
    public var autoRenewPeriod: Int32?

    public var autoRenewal: Bool?

    public var clusterId: String?

    public var commodityInstance: String?

    public var createdTime: String?

    public var dataCenterId: String?

    public var dataCenterName: String?

    public var diskSize: Int32?

    public var diskType: String?

    public var expireTime: String?

    public var instanceType: String?

    public var lockMode: String?

    public var nodeCount: Int32?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.commodityInstance != nil {
            map["CommodityInstance"] = self.commodityInstance!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.dataCenterName != nil {
            map["DataCenterName"] = self.dataCenterName!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CommodityInstance") {
            self.commodityInstance = dict["CommodityInstance"] as! String
        }
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("DataCenterName") {
            self.dataCenterName = dict["DataCenterName"] as! String
        }
        if dict.keys.contains("DiskSize") {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("LockMode") {
            self.lockMode = dict["LockMode"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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
    }
}

public class DescribeDataCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataCenterResponseBody?

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
            var model = DescribeDataCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataCentersRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeDataCentersResponseBody : Tea.TeaModel {
    public class DataCenters : Tea.TeaModel {
        public class DataCenter : Tea.TeaModel {
            public var autoRenewPeriod: Int32?

            public var autoRenewal: Bool?

            public var clusterId: String?

            public var commodityInstance: String?

            public var createdTime: String?

            public var dataCenterId: String?

            public var dataCenterName: String?

            public var diskSize: Int32?

            public var diskType: String?

            public var expireTime: String?

            public var instanceType: String?

            public var lockMode: String?

            public var nodeCount: Int32?

            public var payType: String?

            public var regionId: String?

            public var status: String?

            public var vpcId: String?

            public var vswitchId: String?

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
                if self.autoRenewPeriod != nil {
                    map["AutoRenewPeriod"] = self.autoRenewPeriod!
                }
                if self.autoRenewal != nil {
                    map["AutoRenewal"] = self.autoRenewal!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.commodityInstance != nil {
                    map["CommodityInstance"] = self.commodityInstance!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dataCenterId != nil {
                    map["DataCenterId"] = self.dataCenterId!
                }
                if self.dataCenterName != nil {
                    map["DataCenterName"] = self.dataCenterName!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoRenewPeriod") {
                    self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
                }
                if dict.keys.contains("AutoRenewal") {
                    self.autoRenewal = dict["AutoRenewal"] as! Bool
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CommodityInstance") {
                    self.commodityInstance = dict["CommodityInstance"] as! String
                }
                if dict.keys.contains("CreatedTime") {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DataCenterId") {
                    self.dataCenterId = dict["DataCenterId"] as! String
                }
                if dict.keys.contains("DataCenterName") {
                    self.dataCenterName = dict["DataCenterName"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("NodeCount") {
                    self.nodeCount = dict["NodeCount"] as! Int32
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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
            }
        }
        public var dataCenter: [DescribeDataCentersResponseBody.DataCenters.DataCenter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataCenter != nil {
                var tmp : [Any] = []
                for k in self.dataCenter! {
                    tmp.append(k.toMap())
                }
                map["DataCenter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataCenter") {
                self.dataCenter = dict["DataCenter"] as! [DescribeDataCentersResponseBody.DataCenters.DataCenter]
            }
        }
    }
    public var dataCenters: DescribeDataCentersResponseBody.DataCenters?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataCenters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataCenters != nil {
            map["DataCenters"] = self.dataCenters?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataCenters") {
            var model = DescribeDataCentersResponseBody.DataCenters()
            model.fromMap(dict["DataCenters"] as! [String: Any])
            self.dataCenters = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDataCentersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataCentersResponseBody?

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
            var model = DescribeDataCentersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeletedClustersRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDeletedClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var createdTime: String?

            public var dataCenterCount: Int32?

            public var expireTime: String?

            public var majorVersion: String?

            public var minorVersion: String?

            public var payType: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dataCenterCount != nil {
                    map["DataCenterCount"] = self.dataCenterCount!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.majorVersion != nil {
                    map["MajorVersion"] = self.majorVersion!
                }
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("CreatedTime") {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DataCenterCount") {
                    self.dataCenterCount = dict["DataCenterCount"] as! Int32
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("MajorVersion") {
                    self.majorVersion = dict["MajorVersion"] as! String
                }
                if dict.keys.contains("MinorVersion") {
                    self.minorVersion = dict["MinorVersion"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var cluster: [DescribeDeletedClustersResponseBody.Clusters.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") {
                self.cluster = dict["Cluster"] as! [DescribeDeletedClustersResponseBody.Clusters.Cluster]
            }
        }
    }
    public var clusters: DescribeDeletedClustersResponseBody.Clusters?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
        if dict.keys.contains("Clusters") {
            var model = DescribeDeletedClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDeletedClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeletedClustersResponseBody?

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
            var model = DescribeDeletedClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceTypeRequest : Tea.TeaModel {
    public var instanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class DescribeInstanceTypeResponseBody : Tea.TeaModel {
    public class InstanceTypeSpecList : Tea.TeaModel {
        public class InstanceTypeSpec : Tea.TeaModel {
            public var cpuSize: Int64?

            public var instanceType: String?

            public var memSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuSize != nil {
                    map["CpuSize"] = self.cpuSize!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memSize != nil {
                    map["MemSize"] = self.memSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuSize") {
                    self.cpuSize = dict["CpuSize"] as! Int64
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("MemSize") {
                    self.memSize = dict["MemSize"] as! Int64
                }
            }
        }
        public var instanceTypeSpec: [DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceTypeSpec != nil {
                var tmp : [Any] = []
                for k in self.instanceTypeSpec! {
                    tmp.append(k.toMap())
                }
                map["InstanceTypeSpec"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceTypeSpec") {
                self.instanceTypeSpec = dict["InstanceTypeSpec"] as! [DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec]
            }
        }
    }
    public var instanceTypeSpecList: DescribeInstanceTypeResponseBody.InstanceTypeSpecList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTypeSpecList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypeSpecList != nil {
            map["InstanceTypeSpecList"] = self.instanceTypeSpecList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTypeSpecList") {
            var model = DescribeInstanceTypeResponseBody.InstanceTypeSpecList()
            model.fromMap(dict["InstanceTypeSpecList"] as! [String: Any])
            self.instanceTypeSpecList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTypeResponseBody?

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
            var model = DescribeInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpWhitelistRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeIpWhitelistResponseBody : Tea.TeaModel {
    public class IpList : Tea.TeaModel {
        public var IP: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IP") {
                self.IP = dict["IP"] as! [String]
            }
        }
    }
    public var ipList: DescribeIpWhitelistResponseBody.IpList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ipList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipList != nil {
            map["IpList"] = self.ipList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpList") {
            var model = DescribeIpWhitelistResponseBody.IpList()
            model.fromMap(dict["IpList"] as! [String: Any])
            self.ipList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpWhitelistResponseBody?

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
            var model = DescribeIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpWhitelistGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeIpWhitelistGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public class IpList : Tea.TeaModel {
                public var IP: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IP") {
                        self.IP = dict["IP"] as! [String]
                    }
                }
            }
            public var groupName: String?

            public var ipList: DescribeIpWhitelistGroupsResponseBody.Groups.Group.IpList?

            public var ipVersion: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ipList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.ipList != nil {
                    map["IpList"] = self.ipList?.toMap()
                }
                if self.ipVersion != nil {
                    map["IpVersion"] = self.ipVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("IpList") {
                    var model = DescribeIpWhitelistGroupsResponseBody.Groups.Group.IpList()
                    model.fromMap(dict["IpList"] as! [String: Any])
                    self.ipList = model
                }
                if dict.keys.contains("IpVersion") {
                    self.ipVersion = dict["IpVersion"] as! Int32
                }
            }
        }
        public var group: [DescribeIpWhitelistGroupsResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! [DescribeIpWhitelistGroupsResponseBody.Groups.Group]
            }
        }
    }
    public var groups: DescribeIpWhitelistGroupsResponseBody.Groups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = DescribeIpWhitelistGroupsResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeIpWhitelistGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpWhitelistGroupsResponseBody?

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
            var model = DescribeIpWhitelistGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeToolExecutionHistoriesRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeNodeToolExecutionHistoriesResponseBody : Tea.TeaModel {
    public class Histories : Tea.TeaModel {
        public class History : Tea.TeaModel {
            public var arguments: String?

            public var command: String?

            public var createTime: Int64?

            public var dataCenterId: String?

            public var errorMessage: String?

            public var isEnded: Bool?

            public var jobId: String?

            public var modifyTime: Int64?

            public var nodes: String?

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
                if self.arguments != nil {
                    map["Arguments"] = self.arguments!
                }
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataCenterId != nil {
                    map["DataCenterId"] = self.dataCenterId!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.isEnded != nil {
                    map["IsEnded"] = self.isEnded!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Arguments") {
                    self.arguments = dict["Arguments"] as! String
                }
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataCenterId") {
                    self.dataCenterId = dict["DataCenterId"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("IsEnded") {
                    self.isEnded = dict["IsEnded"] as! Bool
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Nodes") {
                    self.nodes = dict["Nodes"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var history: [DescribeNodeToolExecutionHistoriesResponseBody.Histories.History]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.history != nil {
                var tmp : [Any] = []
                for k in self.history! {
                    tmp.append(k.toMap())
                }
                map["History"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("History") {
                self.history = dict["History"] as! [DescribeNodeToolExecutionHistoriesResponseBody.Histories.History]
            }
        }
    }
    public var histories: DescribeNodeToolExecutionHistoriesResponseBody.Histories?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.histories?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.histories != nil {
            map["Histories"] = self.histories?.toMap()
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
        if dict.keys.contains("Histories") {
            var model = DescribeNodeToolExecutionHistoriesResponseBody.Histories()
            model.fromMap(dict["Histories"] as! [String: Any])
            self.histories = model
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
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeNodeToolExecutionHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeToolExecutionHistoriesResponseBody?

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
            var model = DescribeNodeToolExecutionHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeToolExecutionHistoryRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dcId: String?

    public var jobId: String?

    public override init() {
        super.init()
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
        if self.dcId != nil {
            map["DcId"] = self.dcId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DcId") {
            self.dcId = dict["DcId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DescribeNodeToolExecutionHistoryResponseBody : Tea.TeaModel {
    public var arguments: String?

    public var command: String?

    public var createTime: Int64?

    public var dataCenterId: String?

    public var errorMessage: String?

    public var isEnded: Bool?

    public var jobId: String?

    public var modifyTime: Int64?

    public var nodes: String?

    public var regionId: String?

    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.isEnded != nil {
            map["IsEnded"] = self.isEnded!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arguments") {
            self.arguments = dict["Arguments"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("IsEnded") {
            self.isEnded = dict["IsEnded"] as! Bool
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! Int64
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class DescribeNodeToolExecutionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeToolExecutionHistoryResponseBody?

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
            var model = DescribeNodeToolExecutionHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParameterModificationHistoriesRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeParameterModificationHistoriesResponseBody : Tea.TeaModel {
    public class Histories : Tea.TeaModel {
        public class History : Tea.TeaModel {
            public var name: String?

            public var newValue: String?

            public var oldValue: String?

            public var time: Int64?

            public override init() {
                super.init()
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
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewValue") {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") {
                    self.oldValue = dict["OldValue"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int64
                }
            }
        }
        public var history: [DescribeParameterModificationHistoriesResponseBody.Histories.History]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.history != nil {
                var tmp : [Any] = []
                for k in self.history! {
                    tmp.append(k.toMap())
                }
                map["History"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("History") {
                self.history = dict["History"] as! [DescribeParameterModificationHistoriesResponseBody.Histories.History]
            }
        }
    }
    public var histories: DescribeParameterModificationHistoriesResponseBody.Histories?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.histories?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.histories != nil {
            map["Histories"] = self.histories?.toMap()
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
        if dict.keys.contains("Histories") {
            var model = DescribeParameterModificationHistoriesResponseBody.Histories()
            model.fromMap(dict["Histories"] as! [String: Any])
            self.histories = model
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
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeParameterModificationHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParameterModificationHistoriesResponseBody?

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
            var model = DescribeParameterModificationHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParametersRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public class Parameter : Tea.TeaModel {
            public var allowedValues: String?

            public var dataType: String?

            public var defaultValue: String?

            public var description_: String?

            public var name: String?

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
                if self.allowedValues != nil {
                    map["AllowedValues"] = self.allowedValues!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedValues") {
                    self.allowedValues = dict["AllowedValues"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var parameter: [DescribeParametersResponseBody.Parameters.Parameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameter != nil {
                var tmp : [Any] = []
                for k in self.parameter! {
                    tmp.append(k.toMap())
                }
                map["Parameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Parameter") {
                self.parameter = dict["Parameter"] as! [DescribeParametersResponseBody.Parameters.Parameter]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parameters: DescribeParametersResponseBody.Parameters?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters?.toMap()
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
        if dict.keys.contains("Parameters") {
            var model = DescribeParametersResponseBody.Parameters()
            model.fromMap(dict["Parameters"] as! [String: Any])
            self.parameters = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
                    public var id: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
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

public class DescribeSecurityGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeSecurityGroupsResponseBody : Tea.TeaModel {
    public class SecurityGroupIds : Tea.TeaModel {
        public var securityGroupId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var securityGroupIds: DescribeSecurityGroupsResponseBody.SecurityGroupIds?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityGroupIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") {
            var model = DescribeSecurityGroupsResponseBody.SecurityGroupIds()
            model.fromMap(dict["SecurityGroupIds"] as! [String: Any])
            self.securityGroupIds = model
        }
    }
}

public class DescribeSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityGroupsResponseBody?

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
            var model = DescribeSecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteNodeToolRequest : Tea.TeaModel {
    public var arguments: String?

    public var clusterId: String?

    public var command: String?

    public var dataCenterId: String?

    public var executeNodes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.executeNodes != nil {
            map["ExecuteNodes"] = self.executeNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arguments") {
            self.arguments = dict["Arguments"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("ExecuteNodes") {
            self.executeNodes = dict["ExecuteNodes"] as! String
        }
    }
}

public class ExecuteNodeToolResponseBody : Tea.TeaModel {
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

public class ExecuteNodeToolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteNodeToolResponseBody?

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
            var model = ExecuteNodeToolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCmsUrlRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class GetCmsUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetCmsUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCmsUrlResponseBody?

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
            var model = GetCmsUrlResponseBody()
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

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
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

public class ListTagsRequest : Tea.TeaModel {
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

public class ListTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
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
        public var tag: [ListTagsResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
                self.tag = dict["Tag"] as! [ListTagsResponseBody.Tags.Tag]
            }
        }
    }
    public var requestId: String?

    public var tags: ListTagsResponseBody.Tags?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = ListTagsResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
    }
}

public class ListTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsResponseBody?

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
            var model = ListTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountPasswordRequest : Tea.TeaModel {
    public var account: String?

    public var clusterId: String?

    public var password: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
    }
}

public class ModifyAccountPasswordResponseBody : Tea.TeaModel {
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

public class ModifyAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountPasswordResponseBody?

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
            var model = ModifyAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyBackupPlanRequest : Tea.TeaModel {
    public var active: Bool?

    public var backupPeriod: String?

    public var backupTime: String?

    public var clusterId: String?

    public var dataCenterId: String?

    public var retentionPeriod: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupTime != nil {
            map["BackupTime"] = self.backupTime!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.retentionPeriod != nil {
            map["RetentionPeriod"] = self.retentionPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupTime") {
            self.backupTime = dict["BackupTime"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("RetentionPeriod") {
            self.retentionPeriod = dict["RetentionPeriod"] as! Int32
        }
    }
}

public class ModifyBackupPlanResponseBody : Tea.TeaModel {
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

public class ModifyBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPlanResponseBody?

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
            var model = ModifyBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public override init() {
        super.init()
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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
    }
}

public class ModifyClusterResponseBody : Tea.TeaModel {
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

public class ModifyClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterResponseBody?

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
            var model = ModifyClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDataCenterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public var dataCenterName: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.dataCenterName != nil {
            map["DataCenterName"] = self.dataCenterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("DataCenterName") {
            self.dataCenterName = dict["DataCenterName"] as! String
        }
    }
}

public class ModifyDataCenterResponseBody : Tea.TeaModel {
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

public class ModifyDataCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataCenterResponseBody?

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
            var model = ModifyDataCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceMaintainTimeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public override init() {
        super.init()
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
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MaintainEndTime") {
            self.maintainEndTime = dict["MaintainEndTime"] as! String
        }
        if dict.keys.contains("MaintainStartTime") {
            self.maintainStartTime = dict["MaintainStartTime"] as! String
        }
    }
}

public class ModifyInstanceMaintainTimeResponseBody : Tea.TeaModel {
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

public class ModifyInstanceMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceMaintainTimeResponseBody?

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
            var model = ModifyInstanceMaintainTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceTypeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public var instanceType: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class ModifyInstanceTypeResponseBody : Tea.TeaModel {
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

public class ModifyInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceTypeResponseBody?

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
            var model = ModifyInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIpWhitelistRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ipList: String?

    public override init() {
        super.init()
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
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
    }
}

public class ModifyIpWhitelistResponseBody : Tea.TeaModel {
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

public class ModifyIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpWhitelistResponseBody?

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
            var model = ModifyIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIpWhitelistGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var groupName: String?

    public var ipList: String?

    public var ipVersion: Int32?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("IpVersion") {
            self.ipVersion = dict["IpVersion"] as! Int32
        }
    }
}

public class ModifyIpWhitelistGroupResponseBody : Tea.TeaModel {
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

public class ModifyIpWhitelistGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpWhitelistGroupResponseBody?

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
            var model = ModifyIpWhitelistGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyParameterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var name: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class ModifyParameterResponseBody : Tea.TeaModel {
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

public class ModifyParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParameterResponseBody?

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
            var model = ModifyParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var securityGroupIds: String?

    public override init() {
        super.init()
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
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") {
            self.securityGroupIds = dict["SecurityGroupIds"] as! String
        }
    }
}

public class ModifySecurityGroupsResponseBody : Tea.TeaModel {
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

public class ModifySecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityGroupsResponseBody?

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
            var model = ModifySecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var newResourceGroupId: String?

    public override init() {
        super.init()
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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
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

public class MoveResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceGroupResponseBody?

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
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PurgeClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class PurgeClusterResponseBody : Tea.TeaModel {
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

public class PurgeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurgeClusterResponseBody?

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
            var model = PurgeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebootClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class RebootClusterResponseBody : Tea.TeaModel {
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

public class RebootClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootClusterResponseBody?

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
            var model = RebootClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleasePublicContactPointsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
    }
}

public class ReleasePublicContactPointsResponseBody : Tea.TeaModel {
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

public class ReleasePublicContactPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleasePublicContactPointsResponseBody?

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
            var model = ReleasePublicContactPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResizeDiskSizeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public var diskSize: Int32?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("DiskSize") {
            self.diskSize = dict["DiskSize"] as! Int32
        }
    }
}

public class ResizeDiskSizeResponseBody : Tea.TeaModel {
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

public class ResizeDiskSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeDiskSizeResponseBody?

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
            var model = ResizeDiskSizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResizeNodeCountRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dataCenterId: String?

    public var nodeCount: Int32?

    public override init() {
        super.init()
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
        if self.dataCenterId != nil {
            map["DataCenterId"] = self.dataCenterId!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DataCenterId") {
            self.dataCenterId = dict["DataCenterId"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
    }
}

public class ResizeNodeCountResponseBody : Tea.TeaModel {
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

public class ResizeNodeCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeNodeCountResponseBody?

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
            var model = ResizeNodeCountResponseBody()
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
    public var regionId: String?

    public var resourceId: [String]?

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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
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

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeClusterVersionRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class UpgradeClusterVersionResponseBody : Tea.TeaModel {
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

public class UpgradeClusterVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClusterVersionResponseBody?

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
            var model = UpgradeClusterVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
