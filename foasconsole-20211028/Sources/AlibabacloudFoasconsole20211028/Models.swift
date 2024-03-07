import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConvertInstanceRequest : Tea.TeaModel {
    public class NamespaceResourceSpecs : Tea.TeaModel {
        public class ResourceSpec : Tea.TeaModel {
            public var cpu: Int32?

            public var memoryGB: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Int32
                }
            }
        }
        public var namespace: String?

        public var resourceSpec: ConvertInstanceRequest.NamespaceResourceSpecs.ResourceSpec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.resourceSpec != nil {
                map["ResourceSpec"] = self.resourceSpec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
                var model = ConvertInstanceRequest.NamespaceResourceSpecs.ResourceSpec()
                model.fromMap(dict["ResourceSpec"] as! [String: Any])
                self.resourceSpec = model
            }
        }
    }
    public var duration: Int32?

    public var instanceId: String?

    public var isAutoRenew: Bool?

    public var namespaceResourceSpecs: [ConvertInstanceRequest.NamespaceResourceSpecs]?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isAutoRenew != nil {
            map["IsAutoRenew"] = self.isAutoRenew!
        }
        if self.namespaceResourceSpecs != nil {
            var tmp : [Any] = []
            for k in self.namespaceResourceSpecs! {
                tmp.append(k.toMap())
            }
            map["NamespaceResourceSpecs"] = tmp
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsAutoRenew") && dict["IsAutoRenew"] != nil {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("NamespaceResourceSpecs") && dict["NamespaceResourceSpecs"] != nil {
            var tmp : [ConvertInstanceRequest.NamespaceResourceSpecs] = []
            for v in dict["NamespaceResourceSpecs"] as! [Any] {
                var model = ConvertInstanceRequest.NamespaceResourceSpecs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.namespaceResourceSpecs = tmp
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class ConvertInstanceShrinkRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var isAutoRenew: Bool?

    public var namespaceResourceSpecsShrink: String?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isAutoRenew != nil {
            map["IsAutoRenew"] = self.isAutoRenew!
        }
        if self.namespaceResourceSpecsShrink != nil {
            map["NamespaceResourceSpecs"] = self.namespaceResourceSpecsShrink!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsAutoRenew") && dict["IsAutoRenew"] != nil {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("NamespaceResourceSpecs") && dict["NamespaceResourceSpecs"] != nil {
            self.namespaceResourceSpecsShrink = dict["NamespaceResourceSpecs"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class ConvertInstanceResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConvertInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConvertInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class HaResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class Storage : Tea.TeaModel {
        public class Oss : Tea.TeaModel {
            public var bucket: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucket != nil {
                    map["Bucket"] = self.bucket!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                    self.bucket = dict["Bucket"] as! String
                }
            }
        }
        public var oss: CreateInstanceRequest.Storage.Oss?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.oss?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.oss != nil {
                map["Oss"] = self.oss?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Oss") && dict["Oss"] != nil {
                var model = CreateInstanceRequest.Storage.Oss()
                model.fromMap(dict["Oss"] as! [String: Any])
                self.oss = model
            }
        }
    }
    public var architectureType: String?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var duration: Int32?

    public var extra: String?

    public var ha: Bool?

    public var haResourceSpec: CreateInstanceRequest.HaResourceSpec?

    public var haVSwitchIds: [String]?

    public var haZoneId: String?

    public var instanceName: String?

    public var monitorType: String?

    public var pricingCycle: String?

    public var promotionCode: String?

    public var region: String?

    public var resourceGroupId: String?

    public var resourceSpec: CreateInstanceRequest.ResourceSpec?

    public var storage: CreateInstanceRequest.Storage?

    public var usePromotionCode: Bool?

    public var vSwitchIds: [String]?

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
        try self.haResourceSpec?.validate()
        try self.resourceSpec?.validate()
        try self.storage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpec != nil {
            map["HaResourceSpec"] = self.haResourceSpec?.toMap()
        }
        if self.haVSwitchIds != nil {
            map["HaVSwitchIds"] = self.haVSwitchIds!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.monitorType != nil {
            map["MonitorType"] = self.monitorType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionCode != nil {
            map["PromotionCode"] = self.promotionCode!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        if self.storage != nil {
            map["Storage"] = self.storage?.toMap()
        }
        if self.usePromotionCode != nil {
            map["UsePromotionCode"] = self.usePromotionCode!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Extra") && dict["Extra"] != nil {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            var model = CreateInstanceRequest.HaResourceSpec()
            model.fromMap(dict["HaResourceSpec"] as! [String: Any])
            self.haResourceSpec = model
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIds = dict["HaVSwitchIds"] as! [String]
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("MonitorType") && dict["MonitorType"] != nil {
            self.monitorType = dict["MonitorType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("PromotionCode") && dict["PromotionCode"] != nil {
            self.promotionCode = dict["PromotionCode"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = CreateInstanceRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
        if dict.keys.contains("Storage") && dict["Storage"] != nil {
            var model = CreateInstanceRequest.Storage()
            model.fromMap(dict["Storage"] as! [String: Any])
            self.storage = model
        }
        if dict.keys.contains("UsePromotionCode") && dict["UsePromotionCode"] != nil {
            self.usePromotionCode = dict["UsePromotionCode"] as! Bool
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateInstanceShrinkRequest : Tea.TeaModel {
    public var architectureType: String?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var duration: Int32?

    public var extra: String?

    public var ha: Bool?

    public var haResourceSpecShrink: String?

    public var haVSwitchIdsShrink: String?

    public var haZoneId: String?

    public var instanceName: String?

    public var monitorType: String?

    public var pricingCycle: String?

    public var promotionCode: String?

    public var region: String?

    public var resourceGroupId: String?

    public var resourceSpecShrink: String?

    public var storageShrink: String?

    public var usePromotionCode: Bool?

    public var vSwitchIdsShrink: String?

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
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpecShrink != nil {
            map["HaResourceSpec"] = self.haResourceSpecShrink!
        }
        if self.haVSwitchIdsShrink != nil {
            map["HaVSwitchIds"] = self.haVSwitchIdsShrink!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.monitorType != nil {
            map["MonitorType"] = self.monitorType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionCode != nil {
            map["PromotionCode"] = self.promotionCode!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        if self.storageShrink != nil {
            map["Storage"] = self.storageShrink!
        }
        if self.usePromotionCode != nil {
            map["UsePromotionCode"] = self.usePromotionCode!
        }
        if self.vSwitchIdsShrink != nil {
            map["VSwitchIds"] = self.vSwitchIdsShrink!
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
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Extra") && dict["Extra"] != nil {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            self.haResourceSpecShrink = dict["HaResourceSpec"] as! String
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIdsShrink = dict["HaVSwitchIds"] as! String
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("MonitorType") && dict["MonitorType"] != nil {
            self.monitorType = dict["MonitorType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("PromotionCode") && dict["PromotionCode"] != nil {
            self.promotionCode = dict["PromotionCode"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
        if dict.keys.contains("Storage") && dict["Storage"] != nil {
            self.storageShrink = dict["Storage"] as! String
        }
        if dict.keys.contains("UsePromotionCode") && dict["UsePromotionCode"] != nil {
            self.usePromotionCode = dict["UsePromotionCode"] as! Bool
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIdsShrink = dict["VSwitchIds"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class OrderInfo : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var orderInfo: CreateInstanceResponseBody.OrderInfo?

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
        try self.orderInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderInfo != nil {
            map["OrderInfo"] = self.orderInfo?.toMap()
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
        if dict.keys.contains("OrderInfo") && dict["OrderInfo"] != nil {
            var model = CreateInstanceResponseBody.OrderInfo()
            model.fromMap(dict["OrderInfo"] as! [String: Any])
            self.orderInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class CreateNamespaceRequest : Tea.TeaModel {
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public var ha: Bool?

    public var instanceId: String?

    public var namespace: String?

    public var region: String?

    public var resourceSpec: CreateNamespaceRequest.ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = CreateNamespaceRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
    }
}

public class CreateNamespaceShrinkRequest : Tea.TeaModel {
    public var ha: Bool?

    public var instanceId: String?

    public var namespace: String?

    public var region: String?

    public var resourceSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespace: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
    public var architectureType: String?

    public var chargeType: String?

    public var instanceId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var resourceGroupId: String?

    public var tags: [DescribeInstancesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
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
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [DescribeInstancesRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = DescribeInstancesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class DescribeInstancesShrinkRequest : Tea.TeaModel {
    public var architectureType: String?

    public var chargeType: String?

    public var instanceId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class HaResourceSpec : Tea.TeaModel {
            public var cpu: Int32?

            public var memoryGB: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Int32
                }
            }
        }
        public class HostAliases : Tea.TeaModel {
            public var hostNames: [String]?

            public var ip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostNames != nil {
                    map["HostNames"] = self.hostNames!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostNames") && dict["HostNames"] != nil {
                    self.hostNames = dict["HostNames"] as! [String]
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! String
                }
            }
        }
        public class ResourceSpec : Tea.TeaModel {
            public var cpu: Int32?

            public var memoryGB: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Int32
                }
            }
        }
        public class Storage : Tea.TeaModel {
            public class Oss : Tea.TeaModel {
                public var bucket: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bucket != nil {
                        map["Bucket"] = self.bucket!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                        self.bucket = dict["Bucket"] as! String
                    }
                }
            }
            public var oss: DescribeInstancesResponseBody.Instances.Storage.Oss?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.oss?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oss != nil {
                    map["Oss"] = self.oss?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Oss") && dict["Oss"] != nil {
                    var model = DescribeInstancesResponseBody.Instances.Storage.Oss()
                    model.fromMap(dict["Oss"] as! [String: Any])
                    self.oss = model
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
        public var architectureType: String?

        public var askClusterId: String?

        public var chargeType: String?

        public var clusterStatus: String?

        public var ha: Bool?

        public var haResourceSpec: DescribeInstancesResponseBody.Instances.HaResourceSpec?

        public var haVSwitchIds: [String]?

        public var haZoneId: String?

        public var hostAliases: [DescribeInstancesResponseBody.Instances.HostAliases]?

        public var instanceId: String?

        public var instanceName: String?

        public var monitorType: String?

        public var orderState: String?

        public var region: String?

        public var resourceCreateTime: Int64?

        public var resourceExpiredTime: Int64?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceSpec: DescribeInstancesResponseBody.Instances.ResourceSpec?

        public var storage: DescribeInstancesResponseBody.Instances.Storage?

        public var tags: [DescribeInstancesResponseBody.Instances.Tags]?

        public var uid: String?

        public var vSwitchIds: [String]?

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
            try self.haResourceSpec?.validate()
            try self.resourceSpec?.validate()
            try self.storage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.architectureType != nil {
                map["ArchitectureType"] = self.architectureType!
            }
            if self.askClusterId != nil {
                map["AskClusterId"] = self.askClusterId!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.ha != nil {
                map["Ha"] = self.ha!
            }
            if self.haResourceSpec != nil {
                map["HaResourceSpec"] = self.haResourceSpec?.toMap()
            }
            if self.haVSwitchIds != nil {
                map["HaVSwitchIds"] = self.haVSwitchIds!
            }
            if self.haZoneId != nil {
                map["HaZoneId"] = self.haZoneId!
            }
            if self.hostAliases != nil {
                var tmp : [Any] = []
                for k in self.hostAliases! {
                    tmp.append(k.toMap())
                }
                map["HostAliases"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.monitorType != nil {
                map["MonitorType"] = self.monitorType!
            }
            if self.orderState != nil {
                map["OrderState"] = self.orderState!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceCreateTime != nil {
                map["ResourceCreateTime"] = self.resourceCreateTime!
            }
            if self.resourceExpiredTime != nil {
                map["ResourceExpiredTime"] = self.resourceExpiredTime!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceSpec != nil {
                map["ResourceSpec"] = self.resourceSpec?.toMap()
            }
            if self.storage != nil {
                map["Storage"] = self.storage?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
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
            if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
                self.architectureType = dict["ArchitectureType"] as! String
            }
            if dict.keys.contains("AskClusterId") && dict["AskClusterId"] != nil {
                self.askClusterId = dict["AskClusterId"] as! String
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
                self.clusterStatus = dict["ClusterStatus"] as! String
            }
            if dict.keys.contains("Ha") && dict["Ha"] != nil {
                self.ha = dict["Ha"] as! Bool
            }
            if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
                var model = DescribeInstancesResponseBody.Instances.HaResourceSpec()
                model.fromMap(dict["HaResourceSpec"] as! [String: Any])
                self.haResourceSpec = model
            }
            if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
                self.haVSwitchIds = dict["HaVSwitchIds"] as! [String]
            }
            if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
                self.haZoneId = dict["HaZoneId"] as! String
            }
            if dict.keys.contains("HostAliases") && dict["HostAliases"] != nil {
                var tmp : [DescribeInstancesResponseBody.Instances.HostAliases] = []
                for v in dict["HostAliases"] as! [Any] {
                    var model = DescribeInstancesResponseBody.Instances.HostAliases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAliases = tmp
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("MonitorType") && dict["MonitorType"] != nil {
                self.monitorType = dict["MonitorType"] as! String
            }
            if dict.keys.contains("OrderState") && dict["OrderState"] != nil {
                self.orderState = dict["OrderState"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceCreateTime") && dict["ResourceCreateTime"] != nil {
                self.resourceCreateTime = dict["ResourceCreateTime"] as! Int64
            }
            if dict.keys.contains("ResourceExpiredTime") && dict["ResourceExpiredTime"] != nil {
                self.resourceExpiredTime = dict["ResourceExpiredTime"] as! Int64
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
                var model = DescribeInstancesResponseBody.Instances.ResourceSpec()
                model.fromMap(dict["ResourceSpec"] as! [String: Any])
                self.resourceSpec = model
            }
            if dict.keys.contains("Storage") && dict["Storage"] != nil {
                var model = DescribeInstancesResponseBody.Instances.Storage()
                model.fromMap(dict["Storage"] as! [String: Any])
                self.storage = model
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeInstancesResponseBody.Instances.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeInstancesResponseBody.Instances.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = DescribeInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
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
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNamespacesRequest : Tea.TeaModel {
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
    public var ha: Bool?

    public var instanceId: String?

    public var namespace: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var tags: [DescribeNamespacesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
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
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [DescribeNamespacesRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = DescribeNamespacesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class DescribeNamespacesShrinkRequest : Tea.TeaModel {
    public var ha: Bool?

    public var instanceId: String?

    public var namespace: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class DescribeNamespacesResponseBody : Tea.TeaModel {
    public class Namespaces : Tea.TeaModel {
        public class ResourceSpec : Tea.TeaModel {
            public var cpu: Int32?

            public var memoryGB: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Int32
                }
            }
        }
        public class ResourceUsed : Tea.TeaModel {
            public var cpu: Double?

            public var cu: Double?

            public var memoryGB: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.cu != nil {
                    map["Cu"] = self.cu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("Cu") && dict["Cu"] != nil {
                    self.cu = dict["Cu"] as! Double
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Double
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
        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var ha: Bool?

        public var namespace: String?

        public var resourceSpec: DescribeNamespacesResponseBody.Namespaces.ResourceSpec?

        public var resourceUsed: DescribeNamespacesResponseBody.Namespaces.ResourceUsed?

        public var status: String?

        public var tags: [DescribeNamespacesResponseBody.Namespaces.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceSpec?.validate()
            try self.resourceUsed?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ha != nil {
                map["Ha"] = self.ha!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.resourceSpec != nil {
                map["ResourceSpec"] = self.resourceSpec?.toMap()
            }
            if self.resourceUsed != nil {
                map["ResourceUsed"] = self.resourceUsed?.toMap()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Ha") && dict["Ha"] != nil {
                self.ha = dict["Ha"] as! Bool
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
                var model = DescribeNamespacesResponseBody.Namespaces.ResourceSpec()
                model.fromMap(dict["ResourceSpec"] as! [String: Any])
                self.resourceSpec = model
            }
            if dict.keys.contains("ResourceUsed") && dict["ResourceUsed"] != nil {
                var model = DescribeNamespacesResponseBody.Namespaces.ResourceUsed()
                model.fromMap(dict["ResourceUsed"] as! [String: Any])
                self.resourceUsed = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeNamespacesResponseBody.Namespaces.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeNamespacesResponseBody.Namespaces.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var namespaces: [DescribeNamespacesResponseBody.Namespaces]?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaces != nil {
            var tmp : [Any] = []
            for k in self.namespaces! {
                tmp.append(k.toMap())
            }
            map["Namespaces"] = tmp
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            var tmp : [DescribeNamespacesResponseBody.Namespaces] = []
            for v in dict["Namespaces"] as! [Any] {
                var model = DescribeNamespacesResponseBody.Namespaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.namespaces = tmp
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
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
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSupportedRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var region: String?

        public var regionName: String?

        public override init() {
            super.init()
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
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
        }
    }
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var regions: [DescribeSupportedRegionsResponseBody.Regions]?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [DescribeSupportedRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeSupportedRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
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
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeSupportedRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSupportedRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSupportedRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSupportedZonesRequest : Tea.TeaModel {
    public var architectureType: String?

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
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class DescribeSupportedZonesResponseBody : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var totalPage: Int32?

    public var zoneIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        if self.zoneIds != nil {
            map["ZoneIds"] = self.zoneIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
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
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
        if dict.keys.contains("ZoneIds") && dict["ZoneIds"] != nil {
            self.zoneIds = dict["ZoneIds"] as! [String]
        }
    }
}

public class DescribeSupportedZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSupportedZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSupportedZonesResponseBody()
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
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
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tagReponseId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tagReponseId != nil {
            map["TagReponseId"] = self.tagReponseId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TagReponseId") && dict["TagReponseId"] != nil {
            self.tagReponseId = dict["TagReponseId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPrepayInstanceSpecRequest : Tea.TeaModel {
    public class HaResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public var ha: Bool?

    public var haResourceSpec: ModifyPrepayInstanceSpecRequest.HaResourceSpec?

    public var haVSwitchIds: [String]?

    public var haZoneId: String?

    public var instanceId: String?

    public var region: String?

    public var resourceSpec: ModifyPrepayInstanceSpecRequest.ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.haResourceSpec?.validate()
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpec != nil {
            map["HaResourceSpec"] = self.haResourceSpec?.toMap()
        }
        if self.haVSwitchIds != nil {
            map["HaVSwitchIds"] = self.haVSwitchIds!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            var model = ModifyPrepayInstanceSpecRequest.HaResourceSpec()
            model.fromMap(dict["HaResourceSpec"] as! [String: Any])
            self.haResourceSpec = model
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIds = dict["HaVSwitchIds"] as! [String]
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = ModifyPrepayInstanceSpecRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
    }
}

public class ModifyPrepayInstanceSpecShrinkRequest : Tea.TeaModel {
    public var ha: Bool?

    public var haResourceSpecShrink: String?

    public var haVSwitchIdsShrink: String?

    public var haZoneId: String?

    public var instanceId: String?

    public var region: String?

    public var resourceSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpecShrink != nil {
            map["HaResourceSpec"] = self.haResourceSpecShrink!
        }
        if self.haVSwitchIdsShrink != nil {
            map["HaVSwitchIds"] = self.haVSwitchIdsShrink!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            self.haResourceSpecShrink = dict["HaResourceSpec"] as! String
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIdsShrink = dict["HaVSwitchIds"] as! String
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
    }
}

public class ModifyPrepayInstanceSpecResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyPrepayInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPrepayInstanceSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPrepayInstanceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPrepayNamespaceSpecRequest : Tea.TeaModel {
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public var instanceId: String?

    public var namespace: String?

    public var region: String?

    public var resourceSpec: ModifyPrepayNamespaceSpecRequest.ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = ModifyPrepayNamespaceSpecRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
    }
}

public class ModifyPrepayNamespaceSpecShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespace: String?

    public var region: String?

    public var resourceSpecShrink: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
    }
}

public class ModifyPrepayNamespaceSpecResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyPrepayNamespaceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPrepayNamespaceSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPrepayNamespaceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryConvertInstancePriceRequest : Tea.TeaModel {
    public class NamespaceResourceSpecs : Tea.TeaModel {
        public class ResourceSpec : Tea.TeaModel {
            public var cpu: Int32?

            public var memoryGB: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memoryGB != nil {
                    map["MemoryGB"] = self.memoryGB!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                    self.memoryGB = dict["MemoryGB"] as! Int32
                }
            }
        }
        public var namespace: String?

        public var resourceSpec: QueryConvertInstancePriceRequest.NamespaceResourceSpecs.ResourceSpec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourceSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.resourceSpec != nil {
                map["ResourceSpec"] = self.resourceSpec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
                var model = QueryConvertInstancePriceRequest.NamespaceResourceSpecs.ResourceSpec()
                model.fromMap(dict["ResourceSpec"] as! [String: Any])
                self.resourceSpec = model
            }
        }
    }
    public var duration: Int32?

    public var instanceId: String?

    public var isAutoRenew: Bool?

    public var namespaceResourceSpecs: [QueryConvertInstancePriceRequest.NamespaceResourceSpecs]?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isAutoRenew != nil {
            map["IsAutoRenew"] = self.isAutoRenew!
        }
        if self.namespaceResourceSpecs != nil {
            var tmp : [Any] = []
            for k in self.namespaceResourceSpecs! {
                tmp.append(k.toMap())
            }
            map["NamespaceResourceSpecs"] = tmp
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsAutoRenew") && dict["IsAutoRenew"] != nil {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("NamespaceResourceSpecs") && dict["NamespaceResourceSpecs"] != nil {
            var tmp : [QueryConvertInstancePriceRequest.NamespaceResourceSpecs] = []
            for v in dict["NamespaceResourceSpecs"] as! [Any] {
                var model = QueryConvertInstancePriceRequest.NamespaceResourceSpecs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.namespaceResourceSpecs = tmp
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class QueryConvertInstancePriceShrinkRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var isAutoRenew: Bool?

    public var namespaceResourceSpecsShrink: String?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isAutoRenew != nil {
            map["IsAutoRenew"] = self.isAutoRenew!
        }
        if self.namespaceResourceSpecsShrink != nil {
            map["NamespaceResourceSpecs"] = self.namespaceResourceSpecsShrink!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsAutoRenew") && dict["IsAutoRenew"] != nil {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("NamespaceResourceSpecs") && dict["NamespaceResourceSpecs"] != nil {
            self.namespaceResourceSpecsShrink = dict["NamespaceResourceSpecs"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class QueryConvertInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public var selected: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                if self.selected != nil {
                    map["Selected"] = self.selected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                    self.promotionDesc = dict["PromotionDesc"] as! String
                }
                if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                    self.promotionName = dict["PromotionName"] as! String
                }
                if dict.keys.contains("PromotionOptionNo") && dict["PromotionOptionNo"] != nil {
                    self.promotionOptionNo = dict["PromotionOptionNo"] as! String
                }
                if dict.keys.contains("Selected") && dict["Selected"] != nil {
                    self.selected = dict["Selected"] as! Bool
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var discountAmount: Double?

        public var message: String?

        public var optionalPromotions: [QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryConvertInstancePriceResponseBody.PriceInfo.Rules]?

        public var tradeAmount: Double?

        public override init() {
            super.init()
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
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                self.discountAmount = dict["DiscountAmount"] as! Double
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OptionalPromotions") && dict["OptionalPromotions"] != nil {
                var tmp : [QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in dict["OptionalPromotions"] as! [Any] {
                    var model = QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.optionalPromotions = tmp
            }
            if dict.keys.contains("OriginalAmount") && dict["OriginalAmount"] != nil {
                self.originalAmount = dict["OriginalAmount"] as! Double
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [QueryConvertInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = QueryConvertInstancePriceResponseBody.PriceInfo.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("TradeAmount") && dict["TradeAmount"] != nil {
                self.tradeAmount = dict["TradeAmount"] as! Double
            }
        }
    }
    public var priceInfo: QueryConvertInstancePriceResponseBody.PriceInfo?

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
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
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
        if dict.keys.contains("PriceInfo") && dict["PriceInfo"] != nil {
            var model = QueryConvertInstancePriceResponseBody.PriceInfo()
            model.fromMap(dict["PriceInfo"] as! [String: Any])
            self.priceInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryConvertInstancePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryConvertInstancePriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryConvertInstancePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCreateInstancePriceRequest : Tea.TeaModel {
    public class HaResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class Storage : Tea.TeaModel {
        public class Oss : Tea.TeaModel {
            public var bucket: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucket != nil {
                    map["Bucket"] = self.bucket!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                    self.bucket = dict["Bucket"] as! String
                }
            }
        }
        public var oss: QueryCreateInstancePriceRequest.Storage.Oss?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.oss?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.oss != nil {
                map["Oss"] = self.oss?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Oss") && dict["Oss"] != nil {
                var model = QueryCreateInstancePriceRequest.Storage.Oss()
                model.fromMap(dict["Oss"] as! [String: Any])
                self.oss = model
            }
        }
    }
    public var architectureType: String?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var duration: Int32?

    public var extra: String?

    public var ha: Bool?

    public var haResourceSpec: QueryCreateInstancePriceRequest.HaResourceSpec?

    public var instanceName: String?

    public var pricingCycle: String?

    public var promotionCode: String?

    public var region: String?

    public var resourceSpec: QueryCreateInstancePriceRequest.ResourceSpec?

    public var storage: QueryCreateInstancePriceRequest.Storage?

    public var usePromotionCode: Bool?

    public var vSwitchIds: [String]?

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
        try self.haResourceSpec?.validate()
        try self.resourceSpec?.validate()
        try self.storage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpec != nil {
            map["HaResourceSpec"] = self.haResourceSpec?.toMap()
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionCode != nil {
            map["PromotionCode"] = self.promotionCode!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        if self.storage != nil {
            map["Storage"] = self.storage?.toMap()
        }
        if self.usePromotionCode != nil {
            map["UsePromotionCode"] = self.usePromotionCode!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Extra") && dict["Extra"] != nil {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            var model = QueryCreateInstancePriceRequest.HaResourceSpec()
            model.fromMap(dict["HaResourceSpec"] as! [String: Any])
            self.haResourceSpec = model
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("PromotionCode") && dict["PromotionCode"] != nil {
            self.promotionCode = dict["PromotionCode"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = QueryCreateInstancePriceRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
        if dict.keys.contains("Storage") && dict["Storage"] != nil {
            var model = QueryCreateInstancePriceRequest.Storage()
            model.fromMap(dict["Storage"] as! [String: Any])
            self.storage = model
        }
        if dict.keys.contains("UsePromotionCode") && dict["UsePromotionCode"] != nil {
            self.usePromotionCode = dict["UsePromotionCode"] as! Bool
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class QueryCreateInstancePriceShrinkRequest : Tea.TeaModel {
    public var architectureType: String?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var duration: Int32?

    public var extra: String?

    public var ha: Bool?

    public var haResourceSpecShrink: String?

    public var instanceName: String?

    public var pricingCycle: String?

    public var promotionCode: String?

    public var region: String?

    public var resourceSpecShrink: String?

    public var storageShrink: String?

    public var usePromotionCode: Bool?

    public var vSwitchIdsShrink: String?

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
        if self.architectureType != nil {
            map["ArchitectureType"] = self.architectureType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpecShrink != nil {
            map["HaResourceSpec"] = self.haResourceSpecShrink!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionCode != nil {
            map["PromotionCode"] = self.promotionCode!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        if self.storageShrink != nil {
            map["Storage"] = self.storageShrink!
        }
        if self.usePromotionCode != nil {
            map["UsePromotionCode"] = self.usePromotionCode!
        }
        if self.vSwitchIdsShrink != nil {
            map["VSwitchIds"] = self.vSwitchIdsShrink!
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
        if dict.keys.contains("ArchitectureType") && dict["ArchitectureType"] != nil {
            self.architectureType = dict["ArchitectureType"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Extra") && dict["Extra"] != nil {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            self.haResourceSpecShrink = dict["HaResourceSpec"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("PromotionCode") && dict["PromotionCode"] != nil {
            self.promotionCode = dict["PromotionCode"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
        if dict.keys.contains("Storage") && dict["Storage"] != nil {
            self.storageShrink = dict["Storage"] as! String
        }
        if dict.keys.contains("UsePromotionCode") && dict["UsePromotionCode"] != nil {
            self.usePromotionCode = dict["UsePromotionCode"] as! Bool
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIdsShrink = dict["VSwitchIds"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class QueryCreateInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public var selected: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                if self.selected != nil {
                    map["Selected"] = self.selected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                    self.promotionDesc = dict["PromotionDesc"] as! String
                }
                if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                    self.promotionName = dict["PromotionName"] as! String
                }
                if dict.keys.contains("PromotionOptionNo") && dict["PromotionOptionNo"] != nil {
                    self.promotionOptionNo = dict["PromotionOptionNo"] as! String
                }
                if dict.keys.contains("Selected") && dict["Selected"] != nil {
                    self.selected = dict["Selected"] as! Bool
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var discountAmount: Double?

        public var message: String?

        public var optionalPromotions: [QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryCreateInstancePriceResponseBody.PriceInfo.Rules]?

        public var tradeAmount: Double?

        public override init() {
            super.init()
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
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                self.discountAmount = dict["DiscountAmount"] as! Double
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OptionalPromotions") && dict["OptionalPromotions"] != nil {
                var tmp : [QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in dict["OptionalPromotions"] as! [Any] {
                    var model = QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.optionalPromotions = tmp
            }
            if dict.keys.contains("OriginalAmount") && dict["OriginalAmount"] != nil {
                self.originalAmount = dict["OriginalAmount"] as! Double
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [QueryCreateInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = QueryCreateInstancePriceResponseBody.PriceInfo.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("TradeAmount") && dict["TradeAmount"] != nil {
                self.tradeAmount = dict["TradeAmount"] as! Double
            }
        }
    }
    public var priceInfo: QueryCreateInstancePriceResponseBody.PriceInfo?

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
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
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
        if dict.keys.contains("PriceInfo") && dict["PriceInfo"] != nil {
            var model = QueryCreateInstancePriceResponseBody.PriceInfo()
            model.fromMap(dict["PriceInfo"] as! [String: Any])
            self.priceInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryCreateInstancePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCreateInstancePriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryCreateInstancePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryModifyInstancePriceRequest : Tea.TeaModel {
    public class HaResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public class ResourceSpec : Tea.TeaModel {
        public var cpu: Int32?

        public var memoryGB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.memoryGB != nil {
                map["MemoryGB"] = self.memoryGB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("MemoryGB") && dict["MemoryGB"] != nil {
                self.memoryGB = dict["MemoryGB"] as! Int32
            }
        }
    }
    public var ha: Bool?

    public var haResourceSpec: QueryModifyInstancePriceRequest.HaResourceSpec?

    public var haVSwitchIds: [String]?

    public var haZoneId: String?

    public var instanceId: String?

    public var region: String?

    public var resourceSpec: QueryModifyInstancePriceRequest.ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.haResourceSpec?.validate()
        try self.resourceSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpec != nil {
            map["HaResourceSpec"] = self.haResourceSpec?.toMap()
        }
        if self.haVSwitchIds != nil {
            map["HaVSwitchIds"] = self.haVSwitchIds!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpec != nil {
            map["ResourceSpec"] = self.resourceSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            var model = QueryModifyInstancePriceRequest.HaResourceSpec()
            model.fromMap(dict["HaResourceSpec"] as! [String: Any])
            self.haResourceSpec = model
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIds = dict["HaVSwitchIds"] as! [String]
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            var model = QueryModifyInstancePriceRequest.ResourceSpec()
            model.fromMap(dict["ResourceSpec"] as! [String: Any])
            self.resourceSpec = model
        }
    }
}

public class QueryModifyInstancePriceShrinkRequest : Tea.TeaModel {
    public var ha: Bool?

    public var haResourceSpecShrink: String?

    public var haVSwitchIdsShrink: String?

    public var haZoneId: String?

    public var instanceId: String?

    public var region: String?

    public var resourceSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ha != nil {
            map["Ha"] = self.ha!
        }
        if self.haResourceSpecShrink != nil {
            map["HaResourceSpec"] = self.haResourceSpecShrink!
        }
        if self.haVSwitchIdsShrink != nil {
            map["HaVSwitchIds"] = self.haVSwitchIdsShrink!
        }
        if self.haZoneId != nil {
            map["HaZoneId"] = self.haZoneId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceSpecShrink != nil {
            map["ResourceSpec"] = self.resourceSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ha") && dict["Ha"] != nil {
            self.ha = dict["Ha"] as! Bool
        }
        if dict.keys.contains("HaResourceSpec") && dict["HaResourceSpec"] != nil {
            self.haResourceSpecShrink = dict["HaResourceSpec"] as! String
        }
        if dict.keys.contains("HaVSwitchIds") && dict["HaVSwitchIds"] != nil {
            self.haVSwitchIdsShrink = dict["HaVSwitchIds"] as! String
        }
        if dict.keys.contains("HaZoneId") && dict["HaZoneId"] != nil {
            self.haZoneId = dict["HaZoneId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceSpec") && dict["ResourceSpec"] != nil {
            self.resourceSpecShrink = dict["ResourceSpec"] as! String
        }
    }
}

public class QueryModifyInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public var selected: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                if self.selected != nil {
                    map["Selected"] = self.selected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                    self.promotionDesc = dict["PromotionDesc"] as! String
                }
                if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                    self.promotionName = dict["PromotionName"] as! String
                }
                if dict.keys.contains("PromotionOptionNo") && dict["PromotionOptionNo"] != nil {
                    self.promotionOptionNo = dict["PromotionOptionNo"] as! String
                }
                if dict.keys.contains("Selected") && dict["Selected"] != nil {
                    self.selected = dict["Selected"] as! Bool
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var discountAmount: Double?

        public var message: String?

        public var optionalPromotions: [QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyInstancePriceResponseBody.PriceInfo.Rules]?

        public var tradeAmount: Double?

        public override init() {
            super.init()
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
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                self.discountAmount = dict["DiscountAmount"] as! Double
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OptionalPromotions") && dict["OptionalPromotions"] != nil {
                var tmp : [QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in dict["OptionalPromotions"] as! [Any] {
                    var model = QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.optionalPromotions = tmp
            }
            if dict.keys.contains("OriginalAmount") && dict["OriginalAmount"] != nil {
                self.originalAmount = dict["OriginalAmount"] as! Double
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [QueryModifyInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = QueryModifyInstancePriceResponseBody.PriceInfo.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("TradeAmount") && dict["TradeAmount"] != nil {
                self.tradeAmount = dict["TradeAmount"] as! Double
            }
        }
    }
    public var priceInfo: QueryModifyInstancePriceResponseBody.PriceInfo?

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
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
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
        if dict.keys.contains("PriceInfo") && dict["PriceInfo"] != nil {
            var model = QueryModifyInstancePriceResponseBody.PriceInfo()
            model.fromMap(dict["PriceInfo"] as! [String: Any])
            self.priceInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryModifyInstancePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyInstancePriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryModifyInstancePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRenewInstancePriceRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class QueryRenewInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class OptionalPromotions : Tea.TeaModel {
            public var promotionDesc: String?

            public var promotionName: String?

            public var promotionOptionNo: String?

            public var selected: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promotionDesc != nil {
                    map["PromotionDesc"] = self.promotionDesc!
                }
                if self.promotionName != nil {
                    map["PromotionName"] = self.promotionName!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                if self.selected != nil {
                    map["Selected"] = self.selected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                    self.promotionDesc = dict["PromotionDesc"] as! String
                }
                if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                    self.promotionName = dict["PromotionName"] as! String
                }
                if dict.keys.contains("PromotionOptionNo") && dict["PromotionOptionNo"] != nil {
                    self.promotionOptionNo = dict["PromotionOptionNo"] as! String
                }
                if dict.keys.contains("Selected") && dict["Selected"] != nil {
                    self.selected = dict["Selected"] as! Bool
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var discountAmount: Double?

        public var message: String?

        public var optionalPromotions: [QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryRenewInstancePriceResponseBody.PriceInfo.Rules]?

        public var tradeAmount: Double?

        public override init() {
            super.init()
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
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.optionalPromotions != nil {
                var tmp : [Any] = []
                for k in self.optionalPromotions! {
                    tmp.append(k.toMap())
                }
                map["OptionalPromotions"] = tmp
            }
            if self.originalAmount != nil {
                map["OriginalAmount"] = self.originalAmount!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DiscountAmount") && dict["DiscountAmount"] != nil {
                self.discountAmount = dict["DiscountAmount"] as! Double
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OptionalPromotions") && dict["OptionalPromotions"] != nil {
                var tmp : [QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in dict["OptionalPromotions"] as! [Any] {
                    var model = QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.optionalPromotions = tmp
            }
            if dict.keys.contains("OriginalAmount") && dict["OriginalAmount"] != nil {
                self.originalAmount = dict["OriginalAmount"] as! Double
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [QueryRenewInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = QueryRenewInstancePriceResponseBody.PriceInfo.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
            if dict.keys.contains("TradeAmount") && dict["TradeAmount"] != nil {
                self.tradeAmount = dict["TradeAmount"] as! Double
            }
        }
    }
    public var priceInfo: QueryRenewInstancePriceResponseBody.PriceInfo?

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
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
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
        if dict.keys.contains("PriceInfo") && dict["PriceInfo"] != nil {
            var model = QueryRenewInstancePriceResponseBody.PriceInfo()
            model.fromMap(dict["PriceInfo"] as! [String: Any])
            self.priceInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRenewInstancePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRenewInstancePriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryRenewInstancePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tagResponseId: String?

    public override init() {
        super.init()
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
        if self.tagResponseId != nil {
            map["TagResponseId"] = self.tagResponseId!
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
        if dict.keys.contains("TagResponseId") && dict["TagResponseId"] != nil {
            self.tagResponseId = dict["TagResponseId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tagResponseId: String?

    public override init() {
        super.init()
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
        if self.tagResponseId != nil {
            map["TagResponseId"] = self.tagResponseId!
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
        if dict.keys.contains("TagResponseId") && dict["TagResponseId"] != nil {
            self.tagResponseId = dict["TagResponseId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
