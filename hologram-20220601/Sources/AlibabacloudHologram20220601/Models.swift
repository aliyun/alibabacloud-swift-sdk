import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.newResourceGroupId != nil {
            map["newResourceGroupId"] = self.newResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["newResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
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

public class CreateHoloWarehouseRequest : Tea.TeaModel {
    public var clusterCount: Int64?

    public var cpu: String?

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
        if self.clusterCount != nil {
            map["clusterCount"] = self.clusterCount!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clusterCount"] as? Int64 {
            self.clusterCount = value
        }
        if let value = dict["cpu"] as? String {
            self.cpu = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHoloWarehouseResponseBody?

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
            var model = CreateHoloWarehouseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var coldStorageSize: Int64?

    public var cpu: Int64?

    public var duration: Int64?

    public var enableServerlessComputing: Bool?

    public var gatewayCount: Int64?

    public var initialDatabases: String?

    public var instanceName: String?

    public var instanceType: String?

    public var leaderInstanceId: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var storageSize: Int64?

    public var storageType: String?

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
        if self.enableServerlessComputing != nil {
            map["enableServerlessComputing"] = self.enableServerlessComputing!
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
        if self.storageType != nil {
            map["storageType"] = self.storageType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["autoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["coldStorageSize"] as? Int64 {
            self.coldStorageSize = value
        }
        if let value = dict["cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["enableServerlessComputing"] as? Bool {
            self.enableServerlessComputing = value
        }
        if let value = dict["gatewayCount"] as? Int64 {
            self.gatewayCount = value
        }
        if let value = dict["initialDatabases"] as? String {
            self.initialDatabases = value
        }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["instanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["leaderInstanceId"] as? String {
            self.leaderInstanceId = value
        }
        if let value = dict["pricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["storageSize"] as? Int64 {
            self.storageSize = value
        }
        if let value = dict["storageType"] as? String {
            self.storageType = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["zoneId"] as? String {
            self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DeleteHoloWarehouseRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class DeleteHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHoloWarehouseResponseBody?

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
            var model = DeleteHoloWarehouseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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

public class DisableHiveAccessRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DisableHiveAccessResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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

public class DisableHiveAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableHiveAccessResponseBody?

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
            var model = DisableHiveAccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSSLResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var success: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSSLResponseBody?

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
            var model = DisableSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableHiveAccessRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class EnableHiveAccessResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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

public class EnableHiveAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableHiveAccessResponseBody?

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
            var model = EnableHiveAccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSSLResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSSLResponseBody?

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
            var model = EnableSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCertificateAttributeResponseBody : Tea.TeaModel {
    public class CertificateAttributeDto : Tea.TeaModel {
        public var enableSSL: Bool?

        public var expirationTime: Int64?

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
            if self.enableSSL != nil {
                map["enableSSL"] = self.enableSSL!
            }
            if self.expirationTime != nil {
                map["expirationTime"] = self.expirationTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableSSL"] as? Bool {
                self.enableSSL = value
            }
            if let value = dict["expirationTime"] as? Int64 {
                self.expirationTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var certificateAttributeDto: GetCertificateAttributeResponseBody.CertificateAttributeDto?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var success: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificateAttributeDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateAttributeDto != nil {
            map["CertificateAttributeDto"] = self.certificateAttributeDto?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateAttributeDto"] as? [String: Any?] {
            var model = GetCertificateAttributeResponseBody.CertificateAttributeDto()
            model.fromMap(value)
            self.certificateAttributeDto = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCertificateAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCertificateAttributeResponseBody?

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
            var model = GetCertificateAttributeResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlternativeEndpoints"] as? String {
                    self.alternativeEndpoints = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcInstanceId"] as? String {
                    self.vpcInstanceId = value
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
        public var autoRenewal: String?

        public var coldStorage: Int64?

        public var commodityCode: String?

        public var computeNodeCount: Int64?

        public var cpu: Int64?

        public var creationTime: String?

        public var disk: String?

        public var enableHiveAccess: String?

        public var enableSSL: Bool?

        public var enableServerless: Bool?

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

        public var replicaRole: String?

        public var resourceGroupId: String?

        public var storageType: String?

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
            if self.enableSSL != nil {
                map["EnableSSL"] = self.enableSSL!
            }
            if self.enableServerless != nil {
                map["EnableServerless"] = self.enableServerless!
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
            if self.replicaRole != nil {
                map["ReplicaRole"] = self.replicaRole!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRenewal"] as? String {
                self.autoRenewal = value
            }
            if let value = dict["ColdStorage"] as? Int64 {
                self.coldStorage = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ComputeNodeCount"] as? Int64 {
                self.computeNodeCount = value
            }
            if let value = dict["Cpu"] as? Int64 {
                self.cpu = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Disk"] as? String {
                self.disk = value
            }
            if let value = dict["EnableHiveAccess"] as? String {
                self.enableHiveAccess = value
            }
            if let value = dict["EnableSSL"] as? Bool {
                self.enableSSL = value
            }
            if let value = dict["EnableServerless"] as? Bool {
                self.enableServerless = value
            }
            if let value = dict["Endpoints"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Instance.Endpoints] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Instance.Endpoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.endpoints = tmp
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["GatewayCount"] as? Int64 {
                self.gatewayCount = value
            }
            if let value = dict["GatewayCpu"] as? Int64 {
                self.gatewayCpu = value
            }
            if let value = dict["GatewayMemory"] as? Int64 {
                self.gatewayMemory = value
            }
            if let value = dict["InstanceChargeType"] as? String {
                self.instanceChargeType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceOwner"] as? String {
                self.instanceOwner = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["LeaderInstanceId"] as? String {
                self.leaderInstanceId = value
            }
            if let value = dict["Memory"] as? Int64 {
                self.memory = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ReplicaRole"] as? String {
                self.replicaRole = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["SuspendReason"] as? String {
                self.suspendReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Instance.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Instance.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Instance"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRootCertificateResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRootCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRootCertificateResponseBody?

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
            var model = GetRootCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWarehouseDetailResponseBody : Tea.TeaModel {
    public class WarehouseDetail : Tea.TeaModel {
        public class WarehouseList : Tea.TeaModel {
            public var autoScaleType: String?

            public var clusterCount: String?

            public var clusterCpu: String?

            public var cpu: Int64?

            public var defaultWarehouse: Bool?

            public var elasticCpu: Int64?

            public var elasticType: String?

            public var id: Int64?

            public var initClusterCount: String?

            public var maxClusterCount: String?

            public var mem: Int64?

            public var name: String?

            public var nodeCount: Int64?

            public var rebalanceStatus: String?

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
                if self.autoScaleType != nil {
                    map["AutoScaleType"] = self.autoScaleType!
                }
                if self.clusterCount != nil {
                    map["ClusterCount"] = self.clusterCount!
                }
                if self.clusterCpu != nil {
                    map["ClusterCpu"] = self.clusterCpu!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.defaultWarehouse != nil {
                    map["DefaultWarehouse"] = self.defaultWarehouse!
                }
                if self.elasticCpu != nil {
                    map["ElasticCpu"] = self.elasticCpu!
                }
                if self.elasticType != nil {
                    map["ElasticType"] = self.elasticType!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.initClusterCount != nil {
                    map["InitClusterCount"] = self.initClusterCount!
                }
                if self.maxClusterCount != nil {
                    map["MaxClusterCount"] = self.maxClusterCount!
                }
                if self.mem != nil {
                    map["Mem"] = self.mem!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.rebalanceStatus != nil {
                    map["RebalanceStatus"] = self.rebalanceStatus!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoScaleType"] as? String {
                    self.autoScaleType = value
                }
                if let value = dict["ClusterCount"] as? String {
                    self.clusterCount = value
                }
                if let value = dict["ClusterCpu"] as? String {
                    self.clusterCpu = value
                }
                if let value = dict["Cpu"] as? Int64 {
                    self.cpu = value
                }
                if let value = dict["DefaultWarehouse"] as? Bool {
                    self.defaultWarehouse = value
                }
                if let value = dict["ElasticCpu"] as? Int64 {
                    self.elasticCpu = value
                }
                if let value = dict["ElasticType"] as? String {
                    self.elasticType = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["InitClusterCount"] as? String {
                    self.initClusterCount = value
                }
                if let value = dict["MaxClusterCount"] as? String {
                    self.maxClusterCount = value
                }
                if let value = dict["Mem"] as? Int64 {
                    self.mem = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NodeCount"] as? Int64 {
                    self.nodeCount = value
                }
                if let value = dict["RebalanceStatus"] as? String {
                    self.rebalanceStatus = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var autoElasticCpu: String?

        public var remainingCpu: String?

        public var reservedCpu: String?

        public var timedElasticCpu: String?

        public var warehouseList: [GetWarehouseDetailResponseBody.WarehouseDetail.WarehouseList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoElasticCpu != nil {
                map["AutoElasticCpu"] = self.autoElasticCpu!
            }
            if self.remainingCpu != nil {
                map["RemainingCpu"] = self.remainingCpu!
            }
            if self.reservedCpu != nil {
                map["ReservedCpu"] = self.reservedCpu!
            }
            if self.timedElasticCpu != nil {
                map["TimedElasticCpu"] = self.timedElasticCpu!
            }
            if self.warehouseList != nil {
                var tmp : [Any] = []
                for k in self.warehouseList! {
                    tmp.append(k.toMap())
                }
                map["WarehouseList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoElasticCpu"] as? String {
                self.autoElasticCpu = value
            }
            if let value = dict["RemainingCpu"] as? String {
                self.remainingCpu = value
            }
            if let value = dict["ReservedCpu"] as? String {
                self.reservedCpu = value
            }
            if let value = dict["TimedElasticCpu"] as? String {
                self.timedElasticCpu = value
            }
            if let value = dict["WarehouseList"] as? [Any?] {
                var tmp : [GetWarehouseDetailResponseBody.WarehouseDetail.WarehouseList] = []
                for v in value {
                    if v != nil {
                        var model = GetWarehouseDetailResponseBody.WarehouseDetail.WarehouseList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.warehouseList = tmp
            }
        }
    }
    public var requestId: String?

    public var warehouseDetail: GetWarehouseDetailResponseBody.WarehouseDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.warehouseDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.warehouseDetail != nil {
            map["WarehouseDetail"] = self.warehouseDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WarehouseDetail"] as? [String: Any?] {
            var model = GetWarehouseDetailResponseBody.WarehouseDetail()
            model.fromMap(value)
            self.warehouseDetail = model
        }
    }
}

public class GetWarehouseDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWarehouseDetailResponseBody?

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
            var model = GetWarehouseDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantDatabasePermissionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var privileges: [String]?

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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class GrantDatabasePermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GrantDatabasePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantDatabasePermissionResponseBody?

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
            var model = GrantDatabasePermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantSchemaPermissionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var privileges: [String]?

    public var schemaName: String?

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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["schemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class GrantSchemaPermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GrantSchemaPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantSchemaPermissionResponseBody?

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
            var model = GrantSchemaPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantTablePermissionRequest : Tea.TeaModel {
    public var allTable: Bool?

    public var databaseName: String?

    public var privileges: [String]?

    public var schemaName: String?

    public var tableName: String?

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
        if self.allTable != nil {
            map["allTable"] = self.allTable!
        }
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allTable"] as? Bool {
            self.allTable = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["schemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class GrantTablePermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GrantTablePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantTablePermissionResponseBody?

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
            var model = GrantTablePermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBackupDataRequest : Tea.TeaModel {
    public var backupType: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
            map["backupType"] = self.backupType!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backupType"] as? String {
            self.backupType = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListBackupDataResponseBody : Tea.TeaModel {
    public class BackupDataList : Tea.TeaModel {
        public var backupType: String?

        public var coldDataSize: Int64?

        public var dataDesc: String?

        public var dataGran: String?

        public var dataSize: Int64?

        public var dataTime: String?

        public var endTime: String?

        public var id: Int64?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceRegion: String?

        public var instanceType: String?

        public var instanceZoneId: String?

        public var snapshotRegion: String?

        public var snapshotZoneId: String?

        public var startTime: String?

        public var status: String?

        public var triggerType: String?

        public override init() {
            super.init()
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
            if self.coldDataSize != nil {
                map["ColdDataSize"] = self.coldDataSize!
            }
            if self.dataDesc != nil {
                map["DataDesc"] = self.dataDesc!
            }
            if self.dataGran != nil {
                map["DataGran"] = self.dataGran!
            }
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.dataTime != nil {
                map["DataTime"] = self.dataTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceRegion != nil {
                map["InstanceRegion"] = self.instanceRegion!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.instanceZoneId != nil {
                map["InstanceZoneId"] = self.instanceZoneId!
            }
            if self.snapshotRegion != nil {
                map["SnapshotRegion"] = self.snapshotRegion!
            }
            if self.snapshotZoneId != nil {
                map["SnapshotZoneId"] = self.snapshotZoneId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["ColdDataSize"] as? Int64 {
                self.coldDataSize = value
            }
            if let value = dict["DataDesc"] as? String {
                self.dataDesc = value
            }
            if let value = dict["DataGran"] as? String {
                self.dataGran = value
            }
            if let value = dict["DataSize"] as? Int64 {
                self.dataSize = value
            }
            if let value = dict["DataTime"] as? String {
                self.dataTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceRegion"] as? String {
                self.instanceRegion = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["InstanceZoneId"] as? String {
                self.instanceZoneId = value
            }
            if let value = dict["SnapshotRegion"] as? String {
                self.snapshotRegion = value
            }
            if let value = dict["SnapshotZoneId"] as? String {
                self.snapshotZoneId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
        }
    }
    public var backupDataList: [ListBackupDataResponseBody.BackupDataList]?

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
        if self.backupDataList != nil {
            var tmp : [Any] = []
            for k in self.backupDataList! {
                tmp.append(k.toMap())
            }
            map["BackupDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupDataList"] as? [Any?] {
            var tmp : [ListBackupDataResponseBody.BackupDataList] = []
            for v in value {
                if v != nil {
                    var model = ListBackupDataResponseBody.BackupDataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.backupDataList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBackupDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBackupDataResponseBody?

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
            var model = ListBackupDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatabasesRequest : Tea.TeaModel {
    public var external: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.external != nil {
            map["external"] = self.external!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["external"] as? Bool {
            self.external = value
        }
    }
}

public class ListDatabasesResponseBody : Tea.TeaModel {
    public class DatabaseList : Tea.TeaModel {
        public var external: Bool?

        public var name: String?

        public var permissionModel: String?

        public var privilege: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.external != nil {
                map["External"] = self.external!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.permissionModel != nil {
                map["PermissionModel"] = self.permissionModel!
            }
            if self.privilege != nil {
                map["Privilege"] = self.privilege!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["External"] as? Bool {
                self.external = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PermissionModel"] as? String {
                self.permissionModel = value
            }
            if let value = dict["Privilege"] as? String {
                self.privilege = value
            }
        }
    }
    public var databaseList: [ListDatabasesResponseBody.DatabaseList]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseList != nil {
            var tmp : [Any] = []
            for k in self.databaseList! {
                tmp.append(k.toMap())
            }
            map["DatabaseList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseList"] as? [Any?] {
            var tmp : [ListDatabasesResponseBody.DatabaseList] = []
            for v in value {
                if v != nil {
                    var model = ListDatabasesResponseBody.DatabaseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseList = tmp
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ListDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesResponseBody?

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
            var model = ListDatabasesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cmsInstanceType"] as? String {
            self.cmsInstanceType = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesRequest.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcInstanceId"] as? String {
                    self.vpcInstanceId = value
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
        public var commodityCode: String?

        public var creationTime: String?

        public var enableHiveAccess: String?

        public var enableSSL: String?

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

        public var storageType: String?

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
            if self.enableSSL != nil {
                map["EnableSSL"] = self.enableSSL!
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
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["EnableHiveAccess"] as? String {
                self.enableHiveAccess = value
            }
            if let value = dict["EnableSSL"] as? String {
                self.enableSSL = value
            }
            if let value = dict["Endpoints"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.InstanceList.Endpoints] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.InstanceList.Endpoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.endpoints = tmp
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["InstanceChargeType"] as? String {
                self.instanceChargeType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["LeaderInstanceId"] as? String {
                self.leaderInstanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["SuspendReason"] as? String {
                self.suspendReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.InstanceList.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.InstanceList.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceList"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.InstanceList] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.InstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWarehousesResponseBody : Tea.TeaModel {
    public class WarehouseList : Tea.TeaModel {
        public var cpu: Int64?

        public var id: Int64?

        public var mem: Int64?

        public var name: String?

        public var nodeCount: Int64?

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
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mem != nil {
                map["Mem"] = self.mem!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cpu"] as? Int64 {
                self.cpu = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Mem"] as? Int64 {
                self.mem = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NodeCount"] as? Int64 {
                self.nodeCount = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var warehouseList: [ListWarehousesResponseBody.WarehouseList]?

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
        if self.warehouseList != nil {
            var tmp : [Any] = []
            for k in self.warehouseList! {
                tmp.append(k.toMap())
            }
            map["WarehouseList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WarehouseList"] as? [Any?] {
            var tmp : [ListWarehousesResponseBody.WarehouseList] = []
            for v in value {
                if v != nil {
                    var model = ListWarehousesResponseBody.WarehouseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.warehouseList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListWarehousesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWarehousesResponseBody?

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
            var model = ListWarehousesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebalanceHoloWarehouseRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class RebalanceHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RebalanceHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebalanceHoloWarehouseResponseBody?

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
            var model = RebalanceHoloWarehouseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenameHoloWarehouseRequest : Tea.TeaModel {
    public var name: String?

    public var newWarehouseName: String?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.newWarehouseName != nil {
            map["newWarehouseName"] = self.newWarehouseName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["newWarehouseName"] as? String {
            self.newWarehouseName = value
        }
    }
}

public class RenameHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenameHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameHoloWarehouseResponseBody?

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
            var model = RenameHoloWarehouseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["duration"] as? Int32 {
            self.duration = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RenewInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
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

public class RenewSSLCertificateResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewSSLCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewSSLCertificateResponseBody?

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
            var model = RenewSSLCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartHoloWarehouseRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class RestartHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartHoloWarehouseResponseBody?

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
            var model = RestartHoloWarehouseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeHoloWarehouseRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ResumeHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResumeHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeHoloWarehouseResponseBody?

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
            var model = ResumeHoloWarehouseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResumeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeDatabasePermissionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var privileges: [String]?

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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class RevokeDatabasePermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RevokeDatabasePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeDatabasePermissionResponseBody?

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
            var model = RevokeDatabasePermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeSchemaPermissionRequest : Tea.TeaModel {
    public var databaseName: String?

    public var privileges: [String]?

    public var schemaName: String?

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
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["schemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class RevokeSchemaPermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RevokeSchemaPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeSchemaPermissionResponseBody?

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
            var model = RevokeSchemaPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeTablePermissionRequest : Tea.TeaModel {
    public var allTable: Bool?

    public var databaseName: String?

    public var privileges: [String]?

    public var schemaName: String?

    public var tableName: String?

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
        if self.allTable != nil {
            map["allTable"] = self.allTable!
        }
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.privileges != nil {
            map["privileges"] = self.privileges!
        }
        if self.schemaName != nil {
            map["schemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allTable"] as? Bool {
            self.allTable = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["privileges"] as? [String] {
            self.privileges = value
        }
        if let value = dict["schemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class RevokeTablePermissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RevokeTablePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeTablePermissionResponseBody?

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
            var model = RevokeTablePermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScaleHoloWarehouseRequest : Tea.TeaModel {
    public var clusterCount: Int64?

    public var cpu: Int64?

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
        if self.clusterCount != nil {
            map["clusterCount"] = self.clusterCount!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clusterCount"] as? Int64 {
            self.clusterCount = value
        }
        if let value = dict["cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ScaleHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScaleHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleHoloWarehouseResponseBody?

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
            var model = ScaleHoloWarehouseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScaleInstanceRequest : Tea.TeaModel {
    public var coldStorageSize: Int64?

    public var cpu: Int64?

    public var enableServerlessComputing: Bool?

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
        if self.enableServerlessComputing != nil {
            map["enableServerlessComputing"] = self.enableServerlessComputing!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["coldStorageSize"] as? Int64 {
            self.coldStorageSize = value
        }
        if let value = dict["cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["enableServerlessComputing"] as? Bool {
            self.enableServerlessComputing = value
        }
        if let value = dict["gatewayCount"] as? Int64 {
            self.gatewayCount = value
        }
        if let value = dict["scaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["storageSize"] as? Int64 {
            self.storageSize = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScaleInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ScaleInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SuspendHoloWarehouseRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class SuspendHoloWarehouseResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SuspendHoloWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuspendHoloWarehouseResponseBody?

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
            var model = SuspendHoloWarehouseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceName"] as? String {
            self.instanceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["anyTunnelToSingleTunnel"] as? String {
            self.anyTunnelToSingleTunnel = value
        }
        if let value = dict["networkTypes"] as? String {
            self.networkTypes = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["vpcOwnerId"] as? String {
            self.vpcOwnerId = value
        }
        if let value = dict["vpcRegionId"] as? String {
            self.vpcRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceNetworkTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
