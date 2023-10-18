import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateInstanceRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var coldStorageSize: Int64?

    public var cpu: Int64?

    public var duration: Int64?

    public var gatewayCount: Int64?

    public var initialDatabases: String?

    public var instanceName: String?

    public var instanceType: String?

    public var leaderInstanceId: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var storageSize: Int64?

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
        if self.autoPay != nil {
            map["autoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["autoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.coldStorageSize != nil {
            map["coldStorageSize"] = self.coldStorageSize!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.gatewayCount != nil {
            map["gatewayCount"] = self.gatewayCount!
        }
        if self.initialDatabases != nil {
            map["initialDatabases"] = self.initialDatabases!
        }
        if self.instanceName != nil {
            map["instanceName"] = self.instanceName!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.leaderInstanceId != nil {
            map["leaderInstanceId"] = self.leaderInstanceId!
        }
        if self.pricingCycle != nil {
            map["pricingCycle"] = self.pricingCycle!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.storageSize != nil {
            map["storageSize"] = self.storageSize!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["zoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoPay") && dict["autoPay"] != nil {
            self.autoPay = dict["autoPay"] as! Bool
        }
        if dict.keys.contains("autoRenew") && dict["autoRenew"] != nil {
            self.autoRenew = dict["autoRenew"] as! Bool
        }
        if dict.keys.contains("chargeType") && dict["chargeType"] != nil {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("coldStorageSize") && dict["coldStorageSize"] != nil {
            self.coldStorageSize = dict["coldStorageSize"] as! Int64
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Int64
        }
        if dict.keys.contains("duration") && dict["duration"] != nil {
            self.duration = dict["duration"] as! Int64
        }
        if dict.keys.contains("gatewayCount") && dict["gatewayCount"] != nil {
            self.gatewayCount = dict["gatewayCount"] as! Int64
        }
        if dict.keys.contains("initialDatabases") && dict["initialDatabases"] != nil {
            self.initialDatabases = dict["initialDatabases"] as! String
        }
        if dict.keys.contains("instanceName") && dict["instanceName"] != nil {
            self.instanceName = dict["instanceName"] as! String
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("leaderInstanceId") && dict["leaderInstanceId"] != nil {
            self.leaderInstanceId = dict["leaderInstanceId"] as! String
        }
        if dict.keys.contains("pricingCycle") && dict["pricingCycle"] != nil {
            self.pricingCycle = dict["pricingCycle"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("storageSize") && dict["storageSize"] != nil {
            self.storageSize = dict["storageSize"] as! Int64
        }
        if dict.keys.contains("vSwitchId") && dict["vSwitchId"] != nil {
            self.vSwitchId = dict["vSwitchId"] as! String
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
        }
        if dict.keys.contains("zoneId") && dict["zoneId"] != nil {
            self.zoneId = dict["zoneId"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var instanceId: String?

        public var message: String?

        public var orderId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
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
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! String
            }
        }
    }
    public var data: CreateInstanceResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var alternativeEndpoints: String?

            public var enabled: Bool?

            public var endpoint: String?

            public var type: String?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.alternativeEndpoints != nil {
                    map["AlternativeEndpoints"] = self.alternativeEndpoints!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlternativeEndpoints") && dict["AlternativeEndpoints"] != nil {
                    self.alternativeEndpoints = dict["AlternativeEndpoints"] as! String
                }
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") && dict["VpcInstanceId"] != nil {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
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
        public var autoRenewal: String?

        public var coldStorage: Int64?

        public var commodityCode: String?

        public var computeNodeCount: Int64?

        public var cpu: Int64?

        public var creationTime: String?

        public var disk: String?

        public var enableHiveAccess: String?

        public var endpoints: [GetInstanceResponseBody.Instance.Endpoints]?

        public var expirationTime: String?

        public var gatewayCount: Int64?

        public var gatewayCpu: Int64?

        public var gatewayMemory: Int64?

        public var instanceChargeType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceOwner: String?

        public var instanceStatus: String?

        public var instanceType: String?

        public var leaderInstanceId: String?

        public var memory: Int64?

        public var regionId: String?

        public var resourceGroupId: String?

        public var suspendReason: String?

        public var tags: [GetInstanceResponseBody.Instance.Tags]?

        public var version: String?

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
            if self.autoRenewal != nil {
                map["AutoRenewal"] = self.autoRenewal!
            }
            if self.coldStorage != nil {
                map["ColdStorage"] = self.coldStorage!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.computeNodeCount != nil {
                map["ComputeNodeCount"] = self.computeNodeCount!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.enableHiveAccess != nil {
                map["EnableHiveAccess"] = self.enableHiveAccess!
            }
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.gatewayCount != nil {
                map["GatewayCount"] = self.gatewayCount!
            }
            if self.gatewayCpu != nil {
                map["GatewayCpu"] = self.gatewayCpu!
            }
            if self.gatewayMemory != nil {
                map["GatewayMemory"] = self.gatewayMemory!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceOwner != nil {
                map["InstanceOwner"] = self.instanceOwner!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.leaderInstanceId != nil {
                map["LeaderInstanceId"] = self.leaderInstanceId!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.suspendReason != nil {
                map["SuspendReason"] = self.suspendReason!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenewal") && dict["AutoRenewal"] != nil {
                self.autoRenewal = dict["AutoRenewal"] as! String
            }
            if dict.keys.contains("ColdStorage") && dict["ColdStorage"] != nil {
                self.coldStorage = dict["ColdStorage"] as! Int64
            }
            if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ComputeNodeCount") && dict["ComputeNodeCount"] != nil {
                self.computeNodeCount = dict["ComputeNodeCount"] as! Int64
            }
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int64
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("EnableHiveAccess") && dict["EnableHiveAccess"] != nil {
                self.enableHiveAccess = dict["EnableHiveAccess"] as! String
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var tmp : [GetInstanceResponseBody.Instance.Endpoints] = []
                for v in dict["Endpoints"] as! [Any] {
                    var model = GetInstanceResponseBody.Instance.Endpoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endpoints = tmp
            }
            if dict.keys.contains("ExpirationTime") && dict["ExpirationTime"] != nil {
                self.expirationTime = dict["ExpirationTime"] as! String
            }
            if dict.keys.contains("GatewayCount") && dict["GatewayCount"] != nil {
                self.gatewayCount = dict["GatewayCount"] as! Int64
            }
            if dict.keys.contains("GatewayCpu") && dict["GatewayCpu"] != nil {
                self.gatewayCpu = dict["GatewayCpu"] as! Int64
            }
            if dict.keys.contains("GatewayMemory") && dict["GatewayMemory"] != nil {
                self.gatewayMemory = dict["GatewayMemory"] as! Int64
            }
            if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceOwner") && dict["InstanceOwner"] != nil {
                self.instanceOwner = dict["InstanceOwner"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("LeaderInstanceId") && dict["LeaderInstanceId"] != nil {
                self.leaderInstanceId = dict["LeaderInstanceId"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SuspendReason") && dict["SuspendReason"] != nil {
                self.suspendReason = dict["SuspendReason"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [GetInstanceResponseBody.Instance.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetInstanceResponseBody.Instance.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var instance: GetInstanceResponseBody.Instance?

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
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Instance") && dict["Instance"] != nil {
            var model = GetInstanceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var cmsInstanceType: String?

    public var resourceGroupId: String?

    public var tag: [ListInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cmsInstanceType != nil {
            map["cmsInstanceType"] = self.cmsInstanceType!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cmsInstanceType") && dict["cmsInstanceType"] != nil {
            self.cmsInstanceType = dict["cmsInstanceType"] as! String
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            var tmp : [ListInstancesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var enabled: Bool?

            public var endpoint: String?

            public var type: String?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") && dict["VpcInstanceId"] != nil {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
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
        public var commodityCode: String?

        public var creationTime: String?

        public var enableHiveAccess: String?

        public var endpoints: [ListInstancesResponseBody.InstanceList.Endpoints]?

        public var expirationTime: String?

        public var instanceChargeType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceStatus: String?

        public var instanceType: String?

        public var leaderInstanceId: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var suspendReason: String?

        public var tags: [ListInstancesResponseBody.InstanceList.Tags]?

        public var version: String?

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
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.enableHiveAccess != nil {
                map["EnableHiveAccess"] = self.enableHiveAccess!
            }
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.instanceChargeType != nil {
                map["InstanceChargeType"] = self.instanceChargeType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.leaderInstanceId != nil {
                map["LeaderInstanceId"] = self.leaderInstanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.suspendReason != nil {
                map["SuspendReason"] = self.suspendReason!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("EnableHiveAccess") && dict["EnableHiveAccess"] != nil {
                self.enableHiveAccess = dict["EnableHiveAccess"] as! String
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var tmp : [ListInstancesResponseBody.InstanceList.Endpoints] = []
                for v in dict["Endpoints"] as! [Any] {
                    var model = ListInstancesResponseBody.InstanceList.Endpoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endpoints = tmp
            }
            if dict.keys.contains("ExpirationTime") && dict["ExpirationTime"] != nil {
                self.expirationTime = dict["ExpirationTime"] as! String
            }
            if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
                self.instanceChargeType = dict["InstanceChargeType"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("LeaderInstanceId") && dict["LeaderInstanceId"] != nil {
                self.leaderInstanceId = dict["LeaderInstanceId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SuspendReason") && dict["SuspendReason"] != nil {
                self.suspendReason = dict["SuspendReason"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListInstancesResponseBody.InstanceList.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListInstancesResponseBody.InstanceList.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var instanceList: [ListInstancesResponseBody.InstanceList]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["InstanceList"] = tmp
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("InstanceList") && dict["InstanceList"] != nil {
            var tmp : [ListInstancesResponseBody.InstanceList] = []
            for v in dict["InstanceList"] as! [Any] {
                var model = ListInstancesResponseBody.InstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var duration: Int32?

    public override init() {
        super.init()
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
            map["autoRenew"] = self.autoRenew!
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoRenew") && dict["autoRenew"] != nil {
            self.autoRenew = dict["autoRenew"] as! Bool
        }
        if dict.keys.contains("duration") && dict["duration"] != nil {
            self.duration = dict["duration"] as! Int32
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var orderId: String?

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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
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
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var data: RenewInstanceResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RenewInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class RenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RenewInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartInstanceResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RestartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RestartInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeInstanceResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResumeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScaleInstanceRequest : Tea.TeaModel {
    public var coldStorageSize: Int64?

    public var cpu: Int64?

    public var gatewayCount: Int64?

    public var scaleType: String?

    public var storageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coldStorageSize != nil {
            map["coldStorageSize"] = self.coldStorageSize!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.gatewayCount != nil {
            map["gatewayCount"] = self.gatewayCount!
        }
        if self.scaleType != nil {
            map["scaleType"] = self.scaleType!
        }
        if self.storageSize != nil {
            map["storageSize"] = self.storageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("coldStorageSize") && dict["coldStorageSize"] != nil {
            self.coldStorageSize = dict["coldStorageSize"] as! Int64
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Int64
        }
        if dict.keys.contains("gatewayCount") && dict["gatewayCount"] != nil {
            self.gatewayCount = dict["gatewayCount"] as! Int64
        }
        if dict.keys.contains("scaleType") && dict["scaleType"] != nil {
            self.scaleType = dict["scaleType"] as! String
        }
        if dict.keys.contains("storageSize") && dict["storageSize"] != nil {
            self.storageSize = dict["storageSize"] as! Int64
        }
    }
}

public class ScaleInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var orderId: String?

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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
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
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var data: ScaleInstanceResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ScaleInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ScaleInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ScaleInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceNameRequest : Tea.TeaModel {
    public var instanceName: String?

    public override init() {
        super.init()
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
            map["instanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceName") && dict["instanceName"] != nil {
            self.instanceName = dict["instanceName"] as! String
        }
    }
}

public class UpdateInstanceNameResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceNetworkTypeRequest : Tea.TeaModel {
    public var anyTunnelToSingleTunnel: String?

    public var networkTypes: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public var vpcOwnerId: String?

    public var vpcRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anyTunnelToSingleTunnel != nil {
            map["anyTunnelToSingleTunnel"] = self.anyTunnelToSingleTunnel!
        }
        if self.networkTypes != nil {
            map["networkTypes"] = self.networkTypes!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        if self.vpcOwnerId != nil {
            map["vpcOwnerId"] = self.vpcOwnerId!
        }
        if self.vpcRegionId != nil {
            map["vpcRegionId"] = self.vpcRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("anyTunnelToSingleTunnel") && dict["anyTunnelToSingleTunnel"] != nil {
            self.anyTunnelToSingleTunnel = dict["anyTunnelToSingleTunnel"] as! String
        }
        if dict.keys.contains("networkTypes") && dict["networkTypes"] != nil {
            self.networkTypes = dict["networkTypes"] as! String
        }
        if dict.keys.contains("vSwitchId") && dict["vSwitchId"] != nil {
            self.vSwitchId = dict["vSwitchId"] as! String
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
        }
        if dict.keys.contains("vpcOwnerId") && dict["vpcOwnerId"] != nil {
            self.vpcOwnerId = dict["vpcOwnerId"] as! String
        }
        if dict.keys.contains("vpcRegionId") && dict["vpcRegionId"] != nil {
            self.vpcRegionId = dict["vpcRegionId"] as! String
        }
    }
}

public class UpdateInstanceNetworkTypeResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateInstanceNetworkTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNetworkTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceNetworkTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
