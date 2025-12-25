import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConvertInstanceRequest : Tea.TeaModel {
    public class ConvertPostpayInstanceRequest : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["MemoryGB"] as? Int32 {
                        self.memoryGB = value
                    }
                }
            }
            public var namespace: String?

            public var resourceSpec: ConvertInstanceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs.ResourceSpec?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["ResourceSpec"] as? [String: Any?] {
                    var model = ConvertInstanceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs.ResourceSpec()
                    model.fromMap(value)
                    self.resourceSpec = model
                }
            }
        }
        public var duration: Int32?

        public var instanceId: String?

        public var isAutoRenew: Bool?

        public var namespaceResourceSpecs: [ConvertInstanceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsAutoRenew"] as? Bool {
                self.isAutoRenew = value
            }
            if let value = dict["NamespaceResourceSpecs"] as? [Any?] {
                var tmp : [ConvertInstanceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs] = []
                for v in value {
                    if v != nil {
                        var model = ConvertInstanceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.namespaceResourceSpecs = tmp
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var convertPostpayInstanceRequest: ConvertInstanceRequest.ConvertPostpayInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.convertPostpayInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertPostpayInstanceRequest != nil {
            map["ConvertPostpayInstanceRequest"] = self.convertPostpayInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConvertPostpayInstanceRequest"] as? [String: Any?] {
            var model = ConvertInstanceRequest.ConvertPostpayInstanceRequest()
            model.fromMap(value)
            self.convertPostpayInstanceRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConvertInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConvertPrepayInstanceRequest : Tea.TeaModel {
    public class ConvertPrepayInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var convertPrepayInstanceRequest: ConvertPrepayInstanceRequest.ConvertPrepayInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.convertPrepayInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertPrepayInstanceRequest != nil {
            map["ConvertPrepayInstanceRequest"] = self.convertPrepayInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConvertPrepayInstanceRequest"] as? [String: Any?] {
            var model = ConvertPrepayInstanceRequest.ConvertPrepayInstanceRequest()
            model.fromMap(value)
            self.convertPrepayInstanceRequest = model
        }
    }
}

public class ConvertPrepayInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
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

public class ConvertPrepayInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertPrepayInstanceResponseBody?

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
            var model = ConvertPrepayInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bucket"] as? String {
                        self.bucket = value
                    }
                }
            }
            public var oss: CreateInstanceRequest.CreateInstanceRequest.Storage.Oss?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Oss"] as? [String: Any?] {
                    var model = CreateInstanceRequest.CreateInstanceRequest.Storage.Oss()
                    model.fromMap(value)
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

        public var haResourceSpec: CreateInstanceRequest.CreateInstanceRequest.HaResourceSpec?

        public var haVSwitchIds: [String]?

        public var haZoneId: String?

        public var instanceName: String?

        public var monitorType: String?

        public var pricingCycle: String?

        public var promotionCode: String?

        public var region: String?

        public var resourceGroupId: String?

        public var resourceSpec: CreateInstanceRequest.CreateInstanceRequest.ResourceSpec?

        public var storage: CreateInstanceRequest.CreateInstanceRequest.Storage?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchitectureType"] as? String {
                self.architectureType = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["HaResourceSpec"] as? [String: Any?] {
                var model = CreateInstanceRequest.CreateInstanceRequest.HaResourceSpec()
                model.fromMap(value)
                self.haResourceSpec = model
            }
            if let value = dict["HaVSwitchIds"] as? [String] {
                self.haVSwitchIds = value
            }
            if let value = dict["HaZoneId"] as? String {
                self.haZoneId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MonitorType"] as? String {
                self.monitorType = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["PromotionCode"] as? String {
                self.promotionCode = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = CreateInstanceRequest.CreateInstanceRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
            if let value = dict["Storage"] as? [String: Any?] {
                var model = CreateInstanceRequest.CreateInstanceRequest.Storage()
                model.fromMap(value)
                self.storage = model
            }
            if let value = dict["UsePromotionCode"] as? Bool {
                self.usePromotionCode = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var createInstanceRequest: CreateInstanceRequest.CreateInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createInstanceRequest != nil {
            map["CreateInstanceRequest"] = self.createInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateInstanceRequest"] as? [String: Any?] {
            var model = CreateInstanceRequest.CreateInstanceRequest()
            model.fromMap(value)
            self.createInstanceRequest = model
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderInfo"] as? [String: Any?] {
            var model = CreateInstanceResponseBody.OrderInfo()
            model.fromMap(value)
            self.orderInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
                }
            }
        }
        public var ha: Bool?

        public var instanceId: String?

        public var namespace: String?

        public var region: String?

        public var resourceSpec: CreateNamespaceRequest.CreateNamespaceRequest.ResourceSpec?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = CreateNamespaceRequest.CreateNamespaceRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
        }
    }
    public var createNamespaceRequest: CreateNamespaceRequest.CreateNamespaceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createNamespaceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createNamespaceRequest != nil {
            map["CreateNamespaceRequest"] = self.createNamespaceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateNamespaceRequest"] as? [String: Any?] {
            var model = CreateNamespaceRequest.CreateNamespaceRequest()
            model.fromMap(value)
            self.createNamespaceRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var deleteInstanceRequest: DeleteInstanceRequest.DeleteInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteInstanceRequest != nil {
            map["DeleteInstanceRequest"] = self.deleteInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteInstanceRequest"] as? [String: Any?] {
            var model = DeleteInstanceRequest.DeleteInstanceRequest()
            model.fromMap(value)
            self.deleteInstanceRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var deleteNamespaceRequest: DeleteNamespaceRequest.DeleteNamespaceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteNamespaceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteNamespaceRequest != nil {
            map["DeleteNamespaceRequest"] = self.deleteNamespaceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteNamespaceRequest"] as? [String: Any?] {
            var model = DeleteNamespaceRequest.DeleteNamespaceRequest()
            model.fromMap(value)
            self.deleteNamespaceRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
        public var architectureType: String?

        public var chargeType: String?

        public var instanceId: String?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var region: String?

        public var resourceGroupId: String?

        public var tags: [DescribeInstancesRequest.DescribeInstancesRequest.Tags]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchitectureType"] as? String {
                self.architectureType = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PageIndex"] as? Int32 {
                self.pageIndex = value
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
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeInstancesRequest.DescribeInstancesRequest.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesRequest.DescribeInstancesRequest.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var describeInstancesRequest: DescribeInstancesRequest.DescribeInstancesRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.describeInstancesRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.describeInstancesRequest != nil {
            map["DescribeInstancesRequest"] = self.describeInstancesRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DescribeInstancesRequest"] as? [String: Any?] {
            var model = DescribeInstancesRequest.DescribeInstancesRequest()
            model.fromMap(value)
            self.describeInstancesRequest = model
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HostNames"] as? [String] {
                    self.hostNames = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bucket"] as? String {
                        self.bucket = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Oss"] as? [String: Any?] {
                    var model = DescribeInstancesResponseBody.Instances.Storage.Oss()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchitectureType"] as? String {
                self.architectureType = value
            }
            if let value = dict["AskClusterId"] as? String {
                self.askClusterId = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ClusterStatus"] as? String {
                self.clusterStatus = value
            }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["HaResourceSpec"] as? [String: Any?] {
                var model = DescribeInstancesResponseBody.Instances.HaResourceSpec()
                model.fromMap(value)
                self.haResourceSpec = model
            }
            if let value = dict["HaVSwitchIds"] as? [String] {
                self.haVSwitchIds = value
            }
            if let value = dict["HaZoneId"] as? String {
                self.haZoneId = value
            }
            if let value = dict["HostAliases"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Instances.HostAliases] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Instances.HostAliases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAliases = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MonitorType"] as? String {
                self.monitorType = value
            }
            if let value = dict["OrderState"] as? String {
                self.orderState = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceCreateTime"] as? Int64 {
                self.resourceCreateTime = value
            }
            if let value = dict["ResourceExpiredTime"] as? Int64 {
                self.resourceExpiredTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = DescribeInstancesResponseBody.Instances.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
            if let value = dict["Storage"] as? [String: Any?] {
                var model = DescribeInstancesResponseBody.Instances.Storage()
                model.fromMap(value)
                self.storage = model
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Instances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Instances.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
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
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNamespacesRequest : Tea.TeaModel {
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
        public var ha: Bool?

        public var instanceId: String?

        public var namespace: String?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var region: String?

        public var tags: [DescribeNamespacesRequest.DescribeNamespacesRequest.Tags]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["PageIndex"] as? Int32 {
                self.pageIndex = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeNamespacesRequest.DescribeNamespacesRequest.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNamespacesRequest.DescribeNamespacesRequest.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var describeNamespacesRequest: DescribeNamespacesRequest.DescribeNamespacesRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.describeNamespacesRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.describeNamespacesRequest != nil {
            map["DescribeNamespacesRequest"] = self.describeNamespacesRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DescribeNamespacesRequest"] as? [String: Any?] {
            var model = DescribeNamespacesRequest.DescribeNamespacesRequest()
            model.fromMap(value)
            self.describeNamespacesRequest = model
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Double {
                    self.cpu = value
                }
                if let value = dict["Cu"] as? Double {
                    self.cu = value
                }
                if let value = dict["MemoryGB"] as? Double {
                    self.memoryGB = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = DescribeNamespacesResponseBody.Namespaces.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
            if let value = dict["ResourceUsed"] as? [String: Any?] {
                var model = DescribeNamespacesResponseBody.Namespaces.ResourceUsed()
                model.fromMap(value)
                self.resourceUsed = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeNamespacesResponseBody.Namespaces.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNamespacesResponseBody.Namespaces.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespaces"] as? [Any?] {
            var tmp : [DescribeNamespacesResponseBody.Namespaces] = []
            for v in value {
                if v != nil {
                    var model = DescribeNamespacesResponseBody.Namespaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespaces = tmp
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
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
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNamespacesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var regions: [DescribeSupportedRegionsResponseBody.Regions]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeSupportedRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeSupportedRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSupportedRegionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchitectureType"] as? String {
            self.architectureType = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
    }
}

public class DescribeSupportedZonesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.zoneIds != nil {
            map["ZoneIds"] = self.zoneIds!
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
        if let value = dict["ZoneIds"] as? [String] {
            self.zoneIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSupportedZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TagReponseId"] as? String {
            self.tagReponseId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPrepayInstanceSpecRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
                }
            }
        }
        public var ha: Bool?

        public var haResourceSpec: ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest.HaResourceSpec?

        public var haVSwitchIds: [String]?

        public var haZoneId: String?

        public var instanceId: String?

        public var region: String?

        public var resourceSpec: ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest.ResourceSpec?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["HaResourceSpec"] as? [String: Any?] {
                var model = ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest.HaResourceSpec()
                model.fromMap(value)
                self.haResourceSpec = model
            }
            if let value = dict["HaVSwitchIds"] as? [String] {
                self.haVSwitchIds = value
            }
            if let value = dict["HaZoneId"] as? String {
                self.haZoneId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
        }
    }
    public var modifyPrepayInstanceSpecRequest: ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modifyPrepayInstanceSpecRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modifyPrepayInstanceSpecRequest != nil {
            map["ModifyPrepayInstanceSpecRequest"] = self.modifyPrepayInstanceSpecRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModifyPrepayInstanceSpecRequest"] as? [String: Any?] {
            var model = ModifyPrepayInstanceSpecRequest.ModifyPrepayInstanceSpecRequest()
            model.fromMap(value)
            self.modifyPrepayInstanceSpecRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPrepayInstanceSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPrepayNamespaceSpecRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
                }
            }
        }
        public var instanceId: String?

        public var namespace: String?

        public var region: String?

        public var resourceSpec: ModifyPrepayNamespaceSpecRequest.ModifyPrepayNamespaceSpecRequest.ResourceSpec?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = ModifyPrepayNamespaceSpecRequest.ModifyPrepayNamespaceSpecRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
        }
    }
    public var modifyPrepayNamespaceSpecRequest: ModifyPrepayNamespaceSpecRequest.ModifyPrepayNamespaceSpecRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modifyPrepayNamespaceSpecRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modifyPrepayNamespaceSpecRequest != nil {
            map["ModifyPrepayNamespaceSpecRequest"] = self.modifyPrepayNamespaceSpecRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModifyPrepayNamespaceSpecRequest"] as? [String: Any?] {
            var model = ModifyPrepayNamespaceSpecRequest.ModifyPrepayNamespaceSpecRequest()
            model.fromMap(value)
            self.modifyPrepayNamespaceSpecRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPrepayNamespaceSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryConvertInstancePriceRequest : Tea.TeaModel {
    public class ConvertPostpayInstanceRequest : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["MemoryGB"] as? Int32 {
                        self.memoryGB = value
                    }
                }
            }
            public var namespace: String?

            public var resourceSpec: QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs.ResourceSpec?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["ResourceSpec"] as? [String: Any?] {
                    var model = QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs.ResourceSpec()
                    model.fromMap(value)
                    self.resourceSpec = model
                }
            }
        }
        public var duration: Int32?

        public var instanceId: String?

        public var isAutoRenew: Bool?

        public var namespaceResourceSpecs: [QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsAutoRenew"] as? Bool {
                self.isAutoRenew = value
            }
            if let value = dict["NamespaceResourceSpecs"] as? [Any?] {
                var tmp : [QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs] = []
                for v in value {
                    if v != nil {
                        var model = QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest.NamespaceResourceSpecs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.namespaceResourceSpecs = tmp
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var convertPostpayInstanceRequest: QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.convertPostpayInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertPostpayInstanceRequest != nil {
            map["ConvertPostpayInstanceRequest"] = self.convertPostpayInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConvertPostpayInstanceRequest"] as? [String: Any?] {
            var model = QueryConvertInstancePriceRequest.ConvertPostpayInstanceRequest()
            model.fromMap(value)
            self.convertPostpayInstanceRequest = model
        }
    }
}

public class QueryConvertInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: String?

            public var cheapStandAmount: String?

            public var isShow: Bool?

            public var monthPrice: String?

            public var originalStandAmount: String?

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
                if self.cheapRate != nil {
                    map["CheapRate"] = self.cheapRate!
                }
                if self.cheapStandAmount != nil {
                    map["CheapStandAmount"] = self.cheapStandAmount!
                }
                if self.isShow != nil {
                    map["IsShow"] = self.isShow!
                }
                if self.monthPrice != nil {
                    map["MonthPrice"] = self.monthPrice!
                }
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? String {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? String {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["MonthPrice"] as? String {
                    self.monthPrice = value
                }
                if let value = dict["OriginalStandAmount"] as? String {
                    self.originalStandAmount = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var depreciateInfo: QueryConvertInstancePriceResponseBody.PriceInfo.DepreciateInfo?

        public var discountAmount: Double?

        public var isContractActivity: Bool?

        public var lxRequestId: String?

        public var message: String?

        public var optionalPromotions: [QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryConvertInstancePriceResponseBody.PriceInfo.Rules]?

        public var standDiscountPrice: String?

        public var standPrice: String?

        public var tradeAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.depreciateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.depreciateInfo != nil {
                map["DepreciateInfo"] = self.depreciateInfo?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.isContractActivity != nil {
                map["IsContractActivity"] = self.isContractActivity!
            }
            if self.lxRequestId != nil {
                map["LxRequestId"] = self.lxRequestId!
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
            if self.standDiscountPrice != nil {
                map["StandDiscountPrice"] = self.standDiscountPrice!
            }
            if self.standPrice != nil {
                map["StandPrice"] = self.standPrice!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryConvertInstancePriceResponseBody.PriceInfo.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["IsContractActivity"] as? Bool {
                self.isContractActivity = value
            }
            if let value = dict["LxRequestId"] as? String {
                self.lxRequestId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryConvertInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [QueryConvertInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryConvertInstancePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? String {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? String {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = QueryConvertInstancePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryConvertInstancePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryConvertPrepayInstancePriceRequest : Tea.TeaModel {
    public class ConvertPrepayInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var convertPrepayInstanceRequest: QueryConvertPrepayInstancePriceRequest.ConvertPrepayInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.convertPrepayInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.convertPrepayInstanceRequest != nil {
            map["ConvertPrepayInstanceRequest"] = self.convertPrepayInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConvertPrepayInstanceRequest"] as? [String: Any?] {
            var model = QueryConvertPrepayInstancePriceRequest.ConvertPrepayInstanceRequest()
            model.fromMap(value)
            self.convertPrepayInstanceRequest = model
        }
    }
}

public class QueryConvertPrepayInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: String?

            public var cheapStandAmount: String?

            public var isShow: Bool?

            public var monthPrice: String?

            public var originalStandAmount: String?

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
                if self.cheapRate != nil {
                    map["CheapRate"] = self.cheapRate!
                }
                if self.cheapStandAmount != nil {
                    map["CheapStandAmount"] = self.cheapStandAmount!
                }
                if self.isShow != nil {
                    map["IsShow"] = self.isShow!
                }
                if self.monthPrice != nil {
                    map["MonthPrice"] = self.monthPrice!
                }
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? String {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? String {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["MonthPrice"] as? String {
                    self.monthPrice = value
                }
                if let value = dict["OriginalStandAmount"] as? String {
                    self.originalStandAmount = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var depreciateInfo: QueryConvertPrepayInstancePriceResponseBody.PriceInfo.DepreciateInfo?

        public var discountAmount: Double?

        public var isContractActivity: Bool?

        public var lxRequestId: String?

        public var message: String?

        public var optionalPromotions: [QueryConvertPrepayInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryConvertPrepayInstancePriceResponseBody.PriceInfo.Rules]?

        public var standDiscountPrice: String?

        public var standPrice: String?

        public var tradeAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.depreciateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.depreciateInfo != nil {
                map["DepreciateInfo"] = self.depreciateInfo?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.isContractActivity != nil {
                map["IsContractActivity"] = self.isContractActivity!
            }
            if self.lxRequestId != nil {
                map["LxRequestId"] = self.lxRequestId!
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
            if self.standDiscountPrice != nil {
                map["StandDiscountPrice"] = self.standDiscountPrice!
            }
            if self.standPrice != nil {
                map["StandPrice"] = self.standPrice!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryConvertPrepayInstancePriceResponseBody.PriceInfo.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["IsContractActivity"] as? Bool {
                self.isContractActivity = value
            }
            if let value = dict["LxRequestId"] as? String {
                self.lxRequestId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryConvertPrepayInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryConvertPrepayInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [QueryConvertPrepayInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryConvertPrepayInstancePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? String {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? String {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var priceInfo: QueryConvertPrepayInstancePriceResponseBody.PriceInfo?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = QueryConvertPrepayInstancePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryConvertPrepayInstancePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryConvertPrepayInstancePriceResponseBody?

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
            var model = QueryConvertPrepayInstancePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCreateInstancePriceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bucket"] as? String {
                        self.bucket = value
                    }
                }
            }
            public var oss: QueryCreateInstancePriceRequest.CreateInstanceRequest.Storage.Oss?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Oss"] as? [String: Any?] {
                    var model = QueryCreateInstancePriceRequest.CreateInstanceRequest.Storage.Oss()
                    model.fromMap(value)
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

        public var haResourceSpec: QueryCreateInstancePriceRequest.CreateInstanceRequest.HaResourceSpec?

        public var instanceName: String?

        public var pricingCycle: String?

        public var promotionCode: String?

        public var region: String?

        public var resourceSpec: QueryCreateInstancePriceRequest.CreateInstanceRequest.ResourceSpec?

        public var storage: QueryCreateInstancePriceRequest.CreateInstanceRequest.Storage?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArchitectureType"] as? String {
                self.architectureType = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["HaResourceSpec"] as? [String: Any?] {
                var model = QueryCreateInstancePriceRequest.CreateInstanceRequest.HaResourceSpec()
                model.fromMap(value)
                self.haResourceSpec = model
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["PromotionCode"] as? String {
                self.promotionCode = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = QueryCreateInstancePriceRequest.CreateInstanceRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
            if let value = dict["Storage"] as? [String: Any?] {
                var model = QueryCreateInstancePriceRequest.CreateInstanceRequest.Storage()
                model.fromMap(value)
                self.storage = model
            }
            if let value = dict["UsePromotionCode"] as? Bool {
                self.usePromotionCode = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var createInstanceRequest: QueryCreateInstancePriceRequest.CreateInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createInstanceRequest != nil {
            map["CreateInstanceRequest"] = self.createInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateInstanceRequest"] as? [String: Any?] {
            var model = QueryCreateInstancePriceRequest.CreateInstanceRequest()
            model.fromMap(value)
            self.createInstanceRequest = model
        }
    }
}

public class QueryCreateInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: String?

            public var cheapStandAmount: String?

            public var isShow: Bool?

            public var monthPrice: String?

            public var originalStandAmount: String?

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
                if self.cheapRate != nil {
                    map["CheapRate"] = self.cheapRate!
                }
                if self.cheapStandAmount != nil {
                    map["CheapStandAmount"] = self.cheapStandAmount!
                }
                if self.isShow != nil {
                    map["IsShow"] = self.isShow!
                }
                if self.monthPrice != nil {
                    map["MonthPrice"] = self.monthPrice!
                }
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? String {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? String {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["MonthPrice"] as? String {
                    self.monthPrice = value
                }
                if let value = dict["OriginalStandAmount"] as? String {
                    self.originalStandAmount = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var depreciateInfo: QueryCreateInstancePriceResponseBody.PriceInfo.DepreciateInfo?

        public var discountAmount: Double?

        public var isContractActivity: Bool?

        public var lxRequestId: String?

        public var message: String?

        public var optionalPromotions: [QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryCreateInstancePriceResponseBody.PriceInfo.Rules]?

        public var standDiscountPrice: String?

        public var standPrice: String?

        public var tradeAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.depreciateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.depreciateInfo != nil {
                map["DepreciateInfo"] = self.depreciateInfo?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.isContractActivity != nil {
                map["IsContractActivity"] = self.isContractActivity!
            }
            if self.lxRequestId != nil {
                map["LxRequestId"] = self.lxRequestId!
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
            if self.standDiscountPrice != nil {
                map["StandDiscountPrice"] = self.standDiscountPrice!
            }
            if self.standPrice != nil {
                map["StandPrice"] = self.standPrice!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryCreateInstancePriceResponseBody.PriceInfo.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["IsContractActivity"] as? Bool {
                self.isContractActivity = value
            }
            if let value = dict["LxRequestId"] as? String {
                self.lxRequestId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryCreateInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [QueryCreateInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryCreateInstancePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? String {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? String {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = QueryCreateInstancePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCreateInstancePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyInstancePriceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["MemoryGB"] as? Int32 {
                    self.memoryGB = value
                }
            }
        }
        public var ha: Bool?

        public var haResourceSpec: QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest.HaResourceSpec?

        public var haVSwitchIds: [String]?

        public var haZoneId: String?

        public var instanceId: String?

        public var region: String?

        public var resourceSpec: QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest.ResourceSpec?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ha"] as? Bool {
                self.ha = value
            }
            if let value = dict["HaResourceSpec"] as? [String: Any?] {
                var model = QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest.HaResourceSpec()
                model.fromMap(value)
                self.haResourceSpec = model
            }
            if let value = dict["HaVSwitchIds"] as? [String] {
                self.haVSwitchIds = value
            }
            if let value = dict["HaZoneId"] as? String {
                self.haZoneId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
        }
    }
    public var modifyPrepayInstanceSpecRequest: QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modifyPrepayInstanceSpecRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modifyPrepayInstanceSpecRequest != nil {
            map["ModifyPrepayInstanceSpecRequest"] = self.modifyPrepayInstanceSpecRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModifyPrepayInstanceSpecRequest"] as? [String: Any?] {
            var model = QueryModifyInstancePriceRequest.ModifyPrepayInstanceSpecRequest()
            model.fromMap(value)
            self.modifyPrepayInstanceSpecRequest = model
        }
    }
}

public class QueryModifyInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: String?

            public var cheapStandAmount: String?

            public var isShow: Bool?

            public var monthPrice: String?

            public var originalStandAmount: String?

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
                if self.cheapRate != nil {
                    map["CheapRate"] = self.cheapRate!
                }
                if self.cheapStandAmount != nil {
                    map["CheapStandAmount"] = self.cheapStandAmount!
                }
                if self.isShow != nil {
                    map["IsShow"] = self.isShow!
                }
                if self.monthPrice != nil {
                    map["MonthPrice"] = self.monthPrice!
                }
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? String {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? String {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["MonthPrice"] as? String {
                    self.monthPrice = value
                }
                if let value = dict["OriginalStandAmount"] as? String {
                    self.originalStandAmount = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var depreciateInfo: QueryModifyInstancePriceResponseBody.PriceInfo.DepreciateInfo?

        public var discountAmount: Double?

        public var isContractActivity: Bool?

        public var lxRequestId: String?

        public var message: String?

        public var optionalPromotions: [QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyInstancePriceResponseBody.PriceInfo.Rules]?

        public var standDiscountPrice: String?

        public var standPrice: String?

        public var tradeAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.depreciateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.depreciateInfo != nil {
                map["DepreciateInfo"] = self.depreciateInfo?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.isContractActivity != nil {
                map["IsContractActivity"] = self.isContractActivity!
            }
            if self.lxRequestId != nil {
                map["LxRequestId"] = self.lxRequestId!
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
            if self.standDiscountPrice != nil {
                map["StandDiscountPrice"] = self.standDiscountPrice!
            }
            if self.standPrice != nil {
                map["StandPrice"] = self.standPrice!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyInstancePriceResponseBody.PriceInfo.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["IsContractActivity"] as? Bool {
                self.isContractActivity = value
            }
            if let value = dict["LxRequestId"] as? String {
                self.lxRequestId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [QueryModifyInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyInstancePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? String {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? String {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = QueryModifyInstancePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryModifyInstancePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRenewInstancePriceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var renewInstanceRequest: QueryRenewInstancePriceRequest.RenewInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.renewInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.renewInstanceRequest != nil {
            map["RenewInstanceRequest"] = self.renewInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RenewInstanceRequest"] as? [String: Any?] {
            var model = QueryRenewInstancePriceRequest.RenewInstanceRequest()
            model.fromMap(value)
            self.renewInstanceRequest = model
        }
    }
}

public class QueryRenewInstancePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: String?

            public var cheapStandAmount: String?

            public var isShow: Bool?

            public var monthPrice: String?

            public var originalStandAmount: String?

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
                if self.cheapRate != nil {
                    map["CheapRate"] = self.cheapRate!
                }
                if self.cheapStandAmount != nil {
                    map["CheapStandAmount"] = self.cheapStandAmount!
                }
                if self.isShow != nil {
                    map["IsShow"] = self.isShow!
                }
                if self.monthPrice != nil {
                    map["MonthPrice"] = self.monthPrice!
                }
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? String {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? String {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["MonthPrice"] as? String {
                    self.monthPrice = value
                }
                if let value = dict["OriginalStandAmount"] as? String {
                    self.originalStandAmount = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromotionDesc"] as? String {
                    self.promotionDesc = value
                }
                if let value = dict["PromotionName"] as? String {
                    self.promotionName = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
                if let value = dict["Selected"] as? Bool {
                    self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var code: String?

        public var currency: String?

        public var depreciateInfo: QueryRenewInstancePriceResponseBody.PriceInfo.DepreciateInfo?

        public var discountAmount: Double?

        public var isContractActivity: Bool?

        public var lxRequestId: String?

        public var message: String?

        public var optionalPromotions: [QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryRenewInstancePriceResponseBody.PriceInfo.Rules]?

        public var standDiscountPrice: String?

        public var standPrice: String?

        public var tradeAmount: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.depreciateInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.depreciateInfo != nil {
                map["DepreciateInfo"] = self.depreciateInfo?.toMap()
            }
            if self.discountAmount != nil {
                map["DiscountAmount"] = self.discountAmount!
            }
            if self.isContractActivity != nil {
                map["IsContractActivity"] = self.isContractActivity!
            }
            if self.lxRequestId != nil {
                map["LxRequestId"] = self.lxRequestId!
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
            if self.standDiscountPrice != nil {
                map["StandDiscountPrice"] = self.standDiscountPrice!
            }
            if self.standPrice != nil {
                map["StandPrice"] = self.standPrice!
            }
            if self.tradeAmount != nil {
                map["TradeAmount"] = self.tradeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryRenewInstancePriceResponseBody.PriceInfo.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["IsContractActivity"] as? Bool {
                self.isContractActivity = value
            }
            if let value = dict["LxRequestId"] as? String {
                self.lxRequestId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryRenewInstancePriceResponseBody.PriceInfo.OptionalPromotions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.optionalPromotions = tmp
            }
            if let value = dict["OriginalAmount"] as? Double {
                self.originalAmount = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [QueryRenewInstancePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryRenewInstancePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? String {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? String {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = QueryRenewInstancePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryRenewInstancePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var renewInstanceRequest: RenewInstanceRequest.RenewInstanceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.renewInstanceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.renewInstanceRequest != nil {
            map["RenewInstanceRequest"] = self.renewInstanceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RenewInstanceRequest"] as? [String: Any?] {
            var model = RenewInstanceRequest.RenewInstanceRequest()
            model.fromMap(value)
            self.renewInstanceRequest = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenewInstanceResponseBody()
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
        if let value = dict["TagResponseId"] as? String {
            self.tagResponseId = value
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
        if let value = dict["TagResponseId"] as? String {
            self.tagResponseId = value
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
