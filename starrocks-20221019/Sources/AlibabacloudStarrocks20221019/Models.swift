import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class InstanceConfigDto : Tea.TeaModel {
    public var configKey: String?

    public var configType: String?

    public var configValue: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
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
            map["configKey"] = self.configKey!
        }
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.configValue != nil {
            map["configValue"] = self.configValue!
        }
        if self.nodeGroupId != nil {
            map["nodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["configKey"] as? String {
            self.configKey = value
        }
        if let value = dict["configType"] as? String {
            self.configType = value
        }
        if let value = dict["configValue"] as? String {
            self.configValue = value
        }
        if let value = dict["nodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class ResourceSpec : Tea.TeaModel {
    public var cu: Int32?

    public var diskNumber: Int32?

    public var localStorageInstanceType: String?

    public var nodeNumber: Int32?

    public var specType: String?

    public var storagePerformanceLevel: String?

    public var storageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cu != nil {
            map["cu"] = self.cu!
        }
        if self.diskNumber != nil {
            map["diskNumber"] = self.diskNumber!
        }
        if self.localStorageInstanceType != nil {
            map["localStorageInstanceType"] = self.localStorageInstanceType!
        }
        if self.nodeNumber != nil {
            map["nodeNumber"] = self.nodeNumber!
        }
        if self.specType != nil {
            map["specType"] = self.specType!
        }
        if self.storagePerformanceLevel != nil {
            map["storagePerformanceLevel"] = self.storagePerformanceLevel!
        }
        if self.storageSize != nil {
            map["storageSize"] = self.storageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cu"] as? Int32 {
            self.cu = value
        }
        if let value = dict["diskNumber"] as? Int32 {
            self.diskNumber = value
        }
        if let value = dict["localStorageInstanceType"] as? String {
            self.localStorageInstanceType = value
        }
        if let value = dict["nodeNumber"] as? Int32 {
            self.nodeNumber = value
        }
        if let value = dict["specType"] as? String {
            self.specType = value
        }
        if let value = dict["storagePerformanceLevel"] as? String {
            self.storagePerformanceLevel = value
        }
        if let value = dict["storageSize"] as? Int32 {
            self.storageSize = value
        }
    }
}

public class DataZoneSupportCompactionServiceValue : Tea.TeaModel {
    public var zoneId: String?

    public var resourceLevel: String?

    public var recommended: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.zoneId != nil {
            map["zoneId"] = self.zoneId!
        }
        if self.resourceLevel != nil {
            map["resourceLevel"] = self.resourceLevel!
        }
        if self.recommended != nil {
            map["recommended"] = self.recommended!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["zoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["resourceLevel"] as? String {
            self.resourceLevel = value
        }
        if let value = dict["recommended"] as? Bool {
            self.recommended = value
        }
    }
}

public class AddBackupPolicyRequest : Tea.TeaModel {
    public var expireDays: Int32?

    public var hour: Int32?

    public var instanceId: String?

    public var minute: Int32?

    public var recurrenceType: String?

    public var recurrenceValues: [Int32]?

    public var timeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireDays != nil {
            map["ExpireDays"] = self.expireDays!
        }
        if self.hour != nil {
            map["Hour"] = self.hour!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.minute != nil {
            map["Minute"] = self.minute!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValues != nil {
            map["RecurrenceValues"] = self.recurrenceValues!
        }
        if self.timeoutSeconds != nil {
            map["TimeoutSeconds"] = self.timeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireDays"] as? Int32 {
            self.expireDays = value
        }
        if let value = dict["Hour"] as? Int32 {
            self.hour = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minute"] as? Int32 {
            self.minute = value
        }
        if let value = dict["RecurrenceType"] as? String {
            self.recurrenceType = value
        }
        if let value = dict["RecurrenceValues"] as? [Int32] {
            self.recurrenceValues = value
        }
        if let value = dict["TimeoutSeconds"] as? Int32 {
            self.timeoutSeconds = value
        }
    }
}

public class AddBackupPolicyResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class AddBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBackupPolicyResponseBody?

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
            var model = AddBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddGatewayRequest : Tea.TeaModel {
    public var feNodeNumber: Int32?

    public var gatewayName: String?

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
        if self.feNodeNumber != nil {
            map["FeNodeNumber"] = self.feNodeNumber!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeNodeNumber"] as? Int32 {
            self.feNodeNumber = value
        }
        if let value = dict["GatewayName"] as? String {
            self.gatewayName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class AddGatewayResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class AddGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGatewayResponseBody?

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
            var model = AddGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class CheckInventoryRequest : Tea.TeaModel {
    public var clusterInfo: String?

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
        if self.clusterInfo != nil {
            map["ClusterInfo"] = self.clusterInfo!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterInfo"] as? String {
            self.clusterInfo = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CheckInventoryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class CheckInventoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckInventoryResponseBody?

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
            var model = CheckInventoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentResourceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var cu: Int32?

    public var duration: Int32?

    public var instanceId: String?

    public var payType: String?

    public var pricingCycle: String?

    public var promotionOptionNo: String?

    public var specType: String?

    public override init() {
        super.init()
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
        if self.cu != nil {
            map["Cu"] = self.cu!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["Cu"] as? Int32 {
            self.cu = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
    }
}

public class CreateAgentResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var nodeGroupId: String?

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
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var data: CreateAgentResourceResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAgentResourceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class CreateAgentResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentResourceResponseBody?

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
            var model = CreateAgentResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceV1Request : Tea.TeaModel {
    public class AgentNodeGroup : Tea.TeaModel {
        public var cu: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
        }
    }
    public class BackendNodeGroups : Tea.TeaModel {
        public var cu: Int32?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

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
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public class FrontendNodeGroups : Tea.TeaModel {
        public var cu: Int32?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

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
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public class ObserverNodeGroups : Tea.TeaModel {
        public var cu: Int32?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

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
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
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
    public class VSwitches : Tea.TeaModel {
        public var vswId: String?

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
            if self.vswId != nil {
                map["VswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VswId"] as? String {
                self.vswId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var adminPassword: String?

    public var agentNodeGroup: CreateInstanceV1Request.AgentNodeGroup?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var backendNodeGroups: [CreateInstanceV1Request.BackendNodeGroups]?

    public var clientToken: String?

    public var dlfCatalogName: String?

    public var dlfCatalogType: String?

    public var duration: Int32?

    public var enableMultiAz: Bool?

    public var encrypted: Bool?

    public var frontendNodeGroups: [CreateInstanceV1Request.FrontendNodeGroups]?

    public var gatewayType: String?

    public var instanceName: String?

    public var kmsKeyId: String?

    public var linkedRamUserName: String?

    public var observerNodeGroups: [CreateInstanceV1Request.ObserverNodeGroups]?

    public var ossAccessingRoleName: String?

    public var packageType: String?

    public var payType: String?

    public var pricingCycle: String?

    public var principalType: String?

    public var promotionOptionNo: String?

    public var ramUserId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var runMode: String?

    public var tags: [CreateInstanceV1Request.Tags]?

    public var vSwitches: [CreateInstanceV1Request.VSwitches]?

    public var version: String?

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
        try self.agentNodeGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminPassword != nil {
            map["AdminPassword"] = self.adminPassword!
        }
        if self.agentNodeGroup != nil {
            map["AgentNodeGroup"] = self.agentNodeGroup?.toMap()
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.backendNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.backendNodeGroups! {
                tmp.append(k.toMap())
            }
            map["BackendNodeGroups"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dlfCatalogName != nil {
            map["DlfCatalogName"] = self.dlfCatalogName!
        }
        if self.dlfCatalogType != nil {
            map["DlfCatalogType"] = self.dlfCatalogType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.enableMultiAz != nil {
            map["EnableMultiAz"] = self.enableMultiAz!
        }
        if self.encrypted != nil {
            map["Encrypted"] = self.encrypted!
        }
        if self.frontendNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.frontendNodeGroups! {
                tmp.append(k.toMap())
            }
            map["FrontendNodeGroups"] = tmp
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.kmsKeyId != nil {
            map["KmsKeyId"] = self.kmsKeyId!
        }
        if self.linkedRamUserName != nil {
            map["LinkedRamUserName"] = self.linkedRamUserName!
        }
        if self.observerNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.observerNodeGroups! {
                tmp.append(k.toMap())
            }
            map["ObserverNodeGroups"] = tmp
        }
        if self.ossAccessingRoleName != nil {
            map["OssAccessingRoleName"] = self.ossAccessingRoleName!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.ramUserId != nil {
            map["RamUserId"] = self.ramUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.vSwitches != nil {
            var tmp : [Any] = []
            for k in self.vSwitches! {
                tmp.append(k.toMap())
            }
            map["VSwitches"] = tmp
        }
        if self.version != nil {
            map["Version"] = self.version!
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
        if let value = dict["AdminPassword"] as? String {
            self.adminPassword = value
        }
        if let value = dict["AgentNodeGroup"] as? [String: Any?] {
            var model = CreateInstanceV1Request.AgentNodeGroup()
            model.fromMap(value)
            self.agentNodeGroup = model
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BackendNodeGroups"] as? [Any?] {
            var tmp : [CreateInstanceV1Request.BackendNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceV1Request.BackendNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.backendNodeGroups = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DlfCatalogName"] as? String {
            self.dlfCatalogName = value
        }
        if let value = dict["DlfCatalogType"] as? String {
            self.dlfCatalogType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EnableMultiAz"] as? Bool {
            self.enableMultiAz = value
        }
        if let value = dict["Encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["FrontendNodeGroups"] as? [Any?] {
            var tmp : [CreateInstanceV1Request.FrontendNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceV1Request.FrontendNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.frontendNodeGroups = tmp
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["KmsKeyId"] as? String {
            self.kmsKeyId = value
        }
        if let value = dict["LinkedRamUserName"] as? String {
            self.linkedRamUserName = value
        }
        if let value = dict["ObserverNodeGroups"] as? [Any?] {
            var tmp : [CreateInstanceV1Request.ObserverNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceV1Request.ObserverNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.observerNodeGroups = tmp
        }
        if let value = dict["OssAccessingRoleName"] as? String {
            self.ossAccessingRoleName = value
        }
        if let value = dict["PackageType"] as? String {
            self.packageType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["RamUserId"] as? String {
            self.ramUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateInstanceV1Request.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceV1Request.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["VSwitches"] as? [Any?] {
            var tmp : [CreateInstanceV1Request.VSwitches] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceV1Request.VSwitches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitches = tmp
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateInstanceV1ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var accessDeniedDetail: String?

    public var data: CreateInstanceV1ResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateInstanceV1ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class CreateInstanceV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceV1ResponseBody?

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
            var model = CreateInstanceV1ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScalingRuleRequest : Tea.TeaModel {
    public var nodeGroupId: String?

    public var rule: String?

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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
    }
}

public class CreateScalingRuleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class CreateScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScalingRuleResponseBody?

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
            var model = CreateScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupRequest : Tea.TeaModel {
    public var backupTaskId: String?

    public var instanceId: String?

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
        if self.backupTaskId != nil {
            map["BackupTaskId"] = self.backupTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupTaskId"] as? String {
            self.backupTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteBackupResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DeleteBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupResponseBody?

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
            var model = DeleteBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupPolicyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

    public override init() {
        super.init()
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DeleteBackupPolicyResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DeleteBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupPolicyResponseBody?

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
            var model = DeleteBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

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
            var model = DeleteGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInnerIpWhitelistGroupRequest : Tea.TeaModel {
    public var innerIpWhitelistGroupId: String?

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
        if self.innerIpWhitelistGroupId != nil {
            map["InnerIpWhitelistGroupId"] = self.innerIpWhitelistGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InnerIpWhitelistGroupId"] as? String {
            self.innerIpWhitelistGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInnerIpWhitelistGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DeleteInnerIpWhitelistGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInnerIpWhitelistGroupResponseBody?

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
            var model = DeleteInnerIpWhitelistGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScalingRuleRequest : Tea.TeaModel {
    public var nodeGroupId: String?

    public var scalingRuleId: String?

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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["ScalingRuleId"] as? String {
            self.scalingRuleId = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
    }
}

public class DeleteScalingRuleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DeleteScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScalingRuleResponseBody?

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
            var model = DeleteScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAvailableZonesRequest : Tea.TeaModel {
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

public class DescribeAvailableZonesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var officialAvailableZones: [String]?

        public var trialAvailableZones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.officialAvailableZones != nil {
                map["OfficialAvailableZones"] = self.officialAvailableZones!
            }
            if self.trialAvailableZones != nil {
                map["TrialAvailableZones"] = self.trialAvailableZones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OfficialAvailableZones"] as? [String] {
                self.officialAvailableZones = value
            }
            if let value = dict["TrialAvailableZones"] as? [String] {
                self.trialAvailableZones = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeAvailableZonesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAvailableZonesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DescribeAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableZonesResponseBody?

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
            var model = DescribeAvailableZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPoliciesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBackupPoliciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireDays: Int32?

        public var hour: String?

        public var instanceId: String?

        public var minute: String?

        public var policyId: String?

        public var recurrenceValues: [Int32]?

        public var timeoutSeconds: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireDays != nil {
                map["ExpireDays"] = self.expireDays!
            }
            if self.hour != nil {
                map["Hour"] = self.hour!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.minute != nil {
                map["Minute"] = self.minute!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.recurrenceValues != nil {
                map["RecurrenceValues"] = self.recurrenceValues!
            }
            if self.timeoutSeconds != nil {
                map["TimeoutSeconds"] = self.timeoutSeconds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireDays"] as? Int32 {
                self.expireDays = value
            }
            if let value = dict["Hour"] as? String {
                self.hour = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Minute"] as? String {
                self.minute = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["RecurrenceValues"] as? [Int32] {
                self.recurrenceValues = value
            }
            if let value = dict["TimeoutSeconds"] as? Int32 {
                self.timeoutSeconds = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeBackupPoliciesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeBackupPoliciesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupPoliciesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeBackupPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPoliciesResponseBody?

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
            var model = DescribeBackupPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupTaskId: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var statuses: String?

    public var timePeriodEndTime: Int64?

    public var timePeriodStartTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupTaskId != nil {
            map["BackupTaskId"] = self.backupTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.timePeriodEndTime != nil {
            map["TimePeriodEndTime"] = self.timePeriodEndTime!
        }
        if self.timePeriodStartTime != nil {
            map["TimePeriodStartTime"] = self.timePeriodStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupTaskId"] as? String {
            self.backupTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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
        if let value = dict["Statuses"] as? String {
            self.statuses = value
        }
        if let value = dict["TimePeriodEndTime"] as? Int64 {
            self.timePeriodEndTime = value
        }
        if let value = dict["TimePeriodStartTime"] as? Int64 {
            self.timePeriodStartTime = value
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceSnapshot : Tea.TeaModel {
            public class NodeGroups : Tea.TeaModel {
                public var componentType: String?

                public var cu: Int32?

                public var diskNumber: String?

                public var localStorageInstanceType: String?

                public var residentNodeNumber: String?

                public var specType: String?

                public var storagePerformanceLevel: String?

                public var storageSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.componentType != nil {
                        map["ComponentType"] = self.componentType!
                    }
                    if self.cu != nil {
                        map["Cu"] = self.cu!
                    }
                    if self.diskNumber != nil {
                        map["DiskNumber"] = self.diskNumber!
                    }
                    if self.localStorageInstanceType != nil {
                        map["LocalStorageInstanceType"] = self.localStorageInstanceType!
                    }
                    if self.residentNodeNumber != nil {
                        map["ResidentNodeNumber"] = self.residentNodeNumber!
                    }
                    if self.specType != nil {
                        map["SpecType"] = self.specType!
                    }
                    if self.storagePerformanceLevel != nil {
                        map["StoragePerformanceLevel"] = self.storagePerformanceLevel!
                    }
                    if self.storageSize != nil {
                        map["StorageSize"] = self.storageSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentType"] as? String {
                        self.componentType = value
                    }
                    if let value = dict["Cu"] as? Int32 {
                        self.cu = value
                    }
                    if let value = dict["DiskNumber"] as? String {
                        self.diskNumber = value
                    }
                    if let value = dict["LocalStorageInstanceType"] as? String {
                        self.localStorageInstanceType = value
                    }
                    if let value = dict["ResidentNodeNumber"] as? String {
                        self.residentNodeNumber = value
                    }
                    if let value = dict["SpecType"] as? String {
                        self.specType = value
                    }
                    if let value = dict["StoragePerformanceLevel"] as? String {
                        self.storagePerformanceLevel = value
                    }
                    if let value = dict["StorageSize"] as? Int32 {
                        self.storageSize = value
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
            public var instanceName: String?

            public var minorVersion: String?

            public var nodeGroups: [DescribeBackupsResponseBody.Data.InstanceSnapshot.NodeGroups]?

            public var regionId: String?

            public var resourceGroupId: String?

            public var runMode: String?

            public var specType: String?

            public var tags: [DescribeBackupsResponseBody.Data.InstanceSnapshot.Tags]?

            public var version: String?

            public var vpcId: String?

            public override init() {
                super.init()
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
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
                }
                if self.nodeGroups != nil {
                    var tmp : [Any] = []
                    for k in self.nodeGroups! {
                        tmp.append(k.toMap())
                    }
                    map["NodeGroups"] = tmp
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.runMode != nil {
                    map["RunMode"] = self.runMode!
                }
                if self.specType != nil {
                    map["SpecType"] = self.specType!
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
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["MinorVersion"] as? String {
                    self.minorVersion = value
                }
                if let value = dict["NodeGroups"] as? [Any?] {
                    var tmp : [DescribeBackupsResponseBody.Data.InstanceSnapshot.NodeGroups] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeBackupsResponseBody.Data.InstanceSnapshot.NodeGroups()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nodeGroups = tmp
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["RunMode"] as? String {
                    self.runMode = value
                }
                if let value = dict["SpecType"] as? String {
                    self.specType = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [DescribeBackupsResponseBody.Data.InstanceSnapshot.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeBackupsResponseBody.Data.InstanceSnapshot.Tags()
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
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public class SubTasks : Tea.TeaModel {
            public var dataBase: String?

            public var detail: String?

            public var finishedTime: Int64?

            public var size: Int64?

            public var snapshotName: String?

            public var startTime: Int64?

            public var status: String?

            public var table: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataBase != nil {
                    map["DataBase"] = self.dataBase!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.finishedTime != nil {
                    map["FinishedTime"] = self.finishedTime!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.snapshotName != nil {
                    map["SnapshotName"] = self.snapshotName!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataBase"] as? String {
                    self.dataBase = value
                }
                if let value = dict["Detail"] as? String {
                    self.detail = value
                }
                if let value = dict["FinishedTime"] as? Int64 {
                    self.finishedTime = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["SnapshotName"] as? String {
                    self.snapshotName = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Table"] as? String {
                    self.table = value
                }
            }
        }
        public var backupFinishedTime: Int64?

        public var backupStartTime: Int64?

        public var backupTaskId: String?

        public var backupType: String?

        public var description_: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceSnapshot: DescribeBackupsResponseBody.Data.InstanceSnapshot?

        public var regionId: String?

        public var size: Int64?

        public var status: String?

        public var subTasks: [DescribeBackupsResponseBody.Data.SubTasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceSnapshot?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupFinishedTime != nil {
                map["BackupFinishedTime"] = self.backupFinishedTime!
            }
            if self.backupStartTime != nil {
                map["BackupStartTime"] = self.backupStartTime!
            }
            if self.backupTaskId != nil {
                map["BackupTaskId"] = self.backupTaskId!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceSnapshot != nil {
                map["InstanceSnapshot"] = self.instanceSnapshot?.toMap()
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subTasks != nil {
                var tmp : [Any] = []
                for k in self.subTasks! {
                    tmp.append(k.toMap())
                }
                map["SubTasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupFinishedTime"] as? Int64 {
                self.backupFinishedTime = value
            }
            if let value = dict["BackupStartTime"] as? Int64 {
                self.backupStartTime = value
            }
            if let value = dict["BackupTaskId"] as? String {
                self.backupTaskId = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceSnapshot"] as? [String: Any?] {
                var model = DescribeBackupsResponseBody.Data.InstanceSnapshot()
                model.fromMap(value)
                self.instanceSnapshot = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubTasks"] as? [Any?] {
                var tmp : [DescribeBackupsResponseBody.Data.SubTasks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupsResponseBody.Data.SubTasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subTasks = tmp
            }
        }
    }
    public var data: [DescribeBackupsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeBackupsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeConfigHistoryRequest : Tea.TeaModel {
    public var effectStatuses: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var needTotal: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.effectStatuses != nil {
            map["EffectStatuses"] = self.effectStatuses!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.needTotal != nil {
            map["NeedTotal"] = self.needTotal!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EffectStatuses"] as? String {
            self.effectStatuses = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NeedTotal"] as? Bool {
            self.needTotal = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeConfigHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigHistoryEffectDetails : Tea.TeaModel {
            public var effectStatus: String?

            public var nodeGroupId: String?

            public var nodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.effectStatus != nil {
                    map["EffectStatus"] = self.effectStatus!
                }
                if self.nodeGroupId != nil {
                    map["NodeGroupId"] = self.nodeGroupId!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EffectStatus"] as? String {
                    self.effectStatus = value
                }
                if let value = dict["NodeGroupId"] as? String {
                    self.nodeGroupId = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
            }
        }
        public class ConfigMementos : Tea.TeaModel {
            public var action: String?

            public var after: String?

            public var before: String?

            public var configKey: String?

            public var configType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.after != nil {
                    map["After"] = self.after!
                }
                if self.before != nil {
                    map["Before"] = self.before!
                }
                if self.configKey != nil {
                    map["ConfigKey"] = self.configKey!
                }
                if self.configType != nil {
                    map["ConfigType"] = self.configType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["After"] as? String {
                    self.after = value
                }
                if let value = dict["Before"] as? String {
                    self.before = value
                }
                if let value = dict["ConfigKey"] as? String {
                    self.configKey = value
                }
                if let value = dict["ConfigType"] as? String {
                    self.configType = value
                }
            }
        }
        public var configHistoryEffectDetails: [DescribeConfigHistoryResponseBody.Data.ConfigHistoryEffectDetails]?

        public var configHistoryId: String?

        public var configMementos: [DescribeConfigHistoryResponseBody.Data.ConfigMementos]?

        public var effectStatus: String?

        public var effected: Bool?

        public var gmtCreate: Int64?

        public var operatorId: String?

        public var reason: String?

        public var rollback: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configHistoryEffectDetails != nil {
                var tmp : [Any] = []
                for k in self.configHistoryEffectDetails! {
                    tmp.append(k.toMap())
                }
                map["ConfigHistoryEffectDetails"] = tmp
            }
            if self.configHistoryId != nil {
                map["ConfigHistoryId"] = self.configHistoryId!
            }
            if self.configMementos != nil {
                var tmp : [Any] = []
                for k in self.configMementos! {
                    tmp.append(k.toMap())
                }
                map["ConfigMementos"] = tmp
            }
            if self.effectStatus != nil {
                map["EffectStatus"] = self.effectStatus!
            }
            if self.effected != nil {
                map["Effected"] = self.effected!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.operatorId != nil {
                map["OperatorId"] = self.operatorId!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.rollback != nil {
                map["Rollback"] = self.rollback!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigHistoryEffectDetails"] as? [Any?] {
                var tmp : [DescribeConfigHistoryResponseBody.Data.ConfigHistoryEffectDetails] = []
                for v in value {
                    if v != nil {
                        var model = DescribeConfigHistoryResponseBody.Data.ConfigHistoryEffectDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.configHistoryEffectDetails = tmp
            }
            if let value = dict["ConfigHistoryId"] as? String {
                self.configHistoryId = value
            }
            if let value = dict["ConfigMementos"] as? [Any?] {
                var tmp : [DescribeConfigHistoryResponseBody.Data.ConfigMementos] = []
                for v in value {
                    if v != nil {
                        var model = DescribeConfigHistoryResponseBody.Data.ConfigMementos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.configMementos = tmp
            }
            if let value = dict["EffectStatus"] as? String {
                self.effectStatus = value
            }
            if let value = dict["Effected"] as? Bool {
                self.effected = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["OperatorId"] as? String {
                self.operatorId = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Rollback"] as? Bool {
                self.rollback = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeConfigHistoryResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeConfigHistoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeConfigHistoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeConfigHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigHistoryResponseBody?

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
            var model = DescribeConfigHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventNamesRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeEventNamesResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeEventNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventNamesResponseBody?

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
            var model = DescribeEventNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInnerIpWhitelistGroupsRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeInnerIpWhitelistGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cidrIpList: [String]?

        public var innerIpWhitelistGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidrIpList != nil {
                map["CidrIpList"] = self.cidrIpList!
            }
            if self.innerIpWhitelistGroupId != nil {
                map["InnerIpWhitelistGroupId"] = self.innerIpWhitelistGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CidrIpList"] as? [String] {
                self.cidrIpList = value
            }
            if let value = dict["InnerIpWhitelistGroupId"] as? String {
                self.innerIpWhitelistGroupId = value
            }
        }
    }
    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var data: [DescribeInnerIpWhitelistGroupsResponseBody.Data]?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DescribeInnerIpWhitelistGroupsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeInnerIpWhitelistGroupsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
    }
}

public class DescribeInnerIpWhitelistGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInnerIpWhitelistGroupsResponseBody?

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
            var model = DescribeInnerIpWhitelistGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceConfigsRequest : Tea.TeaModel {
    public var allowModify: Bool?

    public var configKey: String?

    public var configType: String?

    public var description_: String?

    public var instanceId: String?

    public var needTotal: Bool?

    public var nodeGroupId: String?

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
        if self.allowModify != nil {
            map["AllowModify"] = self.allowModify!
        }
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.needTotal != nil {
            map["NeedTotal"] = self.needTotal!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowModify"] as? Bool {
            self.allowModify = value
        }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NeedTotal"] as? Bool {
            self.needTotal = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeInstanceConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allowModify: String?

        public var configKey: String?

        public var configType: String?

        public var configValue: String?

        public var custom: Bool?

        public var defaultNodeGroup: Bool?

        public var defaultValue: String?

        public var description_: String?

        public var descriptionEn: String?

        public var nodeGroupId: String?

        public var nodeGroupName: String?

        public var restart: Bool?

        public var unit: String?

        public var valueRange: String?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowModify != nil {
                map["AllowModify"] = self.allowModify!
            }
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configType != nil {
                map["ConfigType"] = self.configType!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.custom != nil {
                map["Custom"] = self.custom!
            }
            if self.defaultNodeGroup != nil {
                map["DefaultNodeGroup"] = self.defaultNodeGroup!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionEn != nil {
                map["DescriptionEn"] = self.descriptionEn!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.restart != nil {
                map["Restart"] = self.restart!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.valueRange != nil {
                map["ValueRange"] = self.valueRange!
            }
            if self.valueType != nil {
                map["ValueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowModify"] as? String {
                self.allowModify = value
            }
            if let value = dict["ConfigKey"] as? String {
                self.configKey = value
            }
            if let value = dict["ConfigType"] as? String {
                self.configType = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["Custom"] as? Bool {
                self.custom = value
            }
            if let value = dict["DefaultNodeGroup"] as? Bool {
                self.defaultNodeGroup = value
            }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DescriptionEn"] as? String {
                self.descriptionEn = value
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["NodeGroupName"] as? String {
                self.nodeGroupName = value
            }
            if let value = dict["Restart"] as? Bool {
                self.restart = value
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
            if let value = dict["ValueRange"] as? String {
                self.valueRange = value
            }
            if let value = dict["ValueType"] as? String {
                self.valueType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeInstanceConfigsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeInstanceConfigsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceConfigsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeInstanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceConfigsResponseBody?

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
            var model = DescribeInstanceConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceDiagnosisResultRequest : Tea.TeaModel {
    public var dimension: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reportDate: String?

    public var statuses: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportDate != nil {
            map["ReportDate"] = self.reportDate!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimension"] as? String {
            self.dimension = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportDate"] as? String {
            self.reportDate = value
        }
        if let value = dict["Statuses"] as? String {
            self.statuses = value
        }
    }
}

public class DescribeInstanceDiagnosisResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bestPractice: String?

        public var description_: String?

        public var dimension: String?

        public var evaluationTime: Int64?

        public var fullScore: Double?

        public var instanceId: String?

        public var introduction: String?

        public var itemId: String?

        public var itemName: String?

        public var reportDate: String?

        public var score: Double?

        public var status: String?

        public var suggestion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bestPractice != nil {
                map["BestPractice"] = self.bestPractice!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dimension != nil {
                map["Dimension"] = self.dimension!
            }
            if self.evaluationTime != nil {
                map["EvaluationTime"] = self.evaluationTime!
            }
            if self.fullScore != nil {
                map["FullScore"] = self.fullScore!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemName != nil {
                map["ItemName"] = self.itemName!
            }
            if self.reportDate != nil {
                map["ReportDate"] = self.reportDate!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BestPractice"] as? String {
                self.bestPractice = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Dimension"] as? String {
                self.dimension = value
            }
            if let value = dict["EvaluationTime"] as? Int64 {
                self.evaluationTime = value
            }
            if let value = dict["FullScore"] as? Double {
                self.fullScore = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["ItemName"] as? String {
                self.itemName = value
            }
            if let value = dict["ReportDate"] as? String {
                self.reportDate = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Suggestion"] as? String {
                self.suggestion = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeInstanceDiagnosisResultResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeInstanceDiagnosisResultResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceDiagnosisResultResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeInstanceDiagnosisResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceDiagnosisResultResponseBody?

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
            var model = DescribeInstanceDiagnosisResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceMetaTokenRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeInstanceMetaTokenResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeInstanceMetaTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceMetaTokenResponseBody?

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
            var model = DescribeInstanceMetaTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
    public var instanceId: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeInstancesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesRequest.Tag()
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

public class DescribeInstancesShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
        public class VSwitches : Tea.TeaModel {
            public var primary: Bool?

            public var vswId: String?

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
                if self.primary != nil {
                    map["Primary"] = self.primary!
                }
                if self.vswId != nil {
                    map["VswId"] = self.vswId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Primary"] as? Bool {
                    self.primary = value
                }
                if let value = dict["VswId"] as? String {
                    self.vswId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var aclId: String?

        public var architecture: String?

        public var beginTime: Int64?

        public var enableAiFunction: Bool?

        public var enableAutoMinorVersionUpgrade: Bool?

        public var enableMultiAz: Bool?

        public var enableSSL: Bool?

        public var enabledAuditLoader: Bool?

        public var encrypted: Bool?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceStatus: String?

        public var isolateLeader: Bool?

        public var kmsKeyId: String?

        public var maintainablePeriod: String?

        public var minorVersion: String?

        public var monitorType: String?

        public var ossLocation: String?

        public var packageType: String?

        public var payType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var runMode: String?

        public var runningTime: Int64?

        public var securityGroupManaged: Bool?

        public var sgId: String?

        public var tags: [DescribeInstancesResponseBody.Data.Tags]?

        public var vSwitches: [DescribeInstancesResponseBody.Data.VSwitches]?

        public var version: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.enableAiFunction != nil {
                map["EnableAiFunction"] = self.enableAiFunction!
            }
            if self.enableAutoMinorVersionUpgrade != nil {
                map["EnableAutoMinorVersionUpgrade"] = self.enableAutoMinorVersionUpgrade!
            }
            if self.enableMultiAz != nil {
                map["EnableMultiAz"] = self.enableMultiAz!
            }
            if self.enableSSL != nil {
                map["EnableSSL"] = self.enableSSL!
            }
            if self.enabledAuditLoader != nil {
                map["EnabledAuditLoader"] = self.enabledAuditLoader!
            }
            if self.encrypted != nil {
                map["Encrypted"] = self.encrypted!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
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
            if self.isolateLeader != nil {
                map["IsolateLeader"] = self.isolateLeader!
            }
            if self.kmsKeyId != nil {
                map["KmsKeyId"] = self.kmsKeyId!
            }
            if self.maintainablePeriod != nil {
                map["MaintainablePeriod"] = self.maintainablePeriod!
            }
            if self.minorVersion != nil {
                map["MinorVersion"] = self.minorVersion!
            }
            if self.monitorType != nil {
                map["MonitorType"] = self.monitorType!
            }
            if self.ossLocation != nil {
                map["OssLocation"] = self.ossLocation!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
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
            if self.runMode != nil {
                map["RunMode"] = self.runMode!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.securityGroupManaged != nil {
                map["SecurityGroupManaged"] = self.securityGroupManaged!
            }
            if self.sgId != nil {
                map["SgId"] = self.sgId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vSwitches != nil {
                var tmp : [Any] = []
                for k in self.vSwitches! {
                    tmp.append(k.toMap())
                }
                map["VSwitches"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["Architecture"] as? String {
                self.architecture = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["EnableAiFunction"] as? Bool {
                self.enableAiFunction = value
            }
            if let value = dict["EnableAutoMinorVersionUpgrade"] as? Bool {
                self.enableAutoMinorVersionUpgrade = value
            }
            if let value = dict["EnableMultiAz"] as? Bool {
                self.enableMultiAz = value
            }
            if let value = dict["EnableSSL"] as? Bool {
                self.enableSSL = value
            }
            if let value = dict["EnabledAuditLoader"] as? Bool {
                self.enabledAuditLoader = value
            }
            if let value = dict["Encrypted"] as? Bool {
                self.encrypted = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
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
            if let value = dict["IsolateLeader"] as? Bool {
                self.isolateLeader = value
            }
            if let value = dict["KmsKeyId"] as? String {
                self.kmsKeyId = value
            }
            if let value = dict["MaintainablePeriod"] as? String {
                self.maintainablePeriod = value
            }
            if let value = dict["MinorVersion"] as? String {
                self.minorVersion = value
            }
            if let value = dict["MonitorType"] as? String {
                self.monitorType = value
            }
            if let value = dict["OssLocation"] as? String {
                self.ossLocation = value
            }
            if let value = dict["PackageType"] as? String {
                self.packageType = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RunMode"] as? String {
                self.runMode = value
            }
            if let value = dict["RunningTime"] as? Int64 {
                self.runningTime = value
            }
            if let value = dict["SecurityGroupManaged"] as? Bool {
                self.securityGroupManaged = value
            }
            if let value = dict["SgId"] as? String {
                self.sgId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VSwitches"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Data.VSwitches] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Data.VSwitches()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vSwitches = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var data: [DescribeInstancesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

public class DescribeNodeGroupsRequest : Tea.TeaModel {
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
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var componentType: String?

    public var instanceId: String?

    public var nodeGroupIds: [String]?

    public var nodeGroupName: String?

    public var status: String?

    public var tags: [DescribeNodeGroupsRequest.Tags]?

    public override init() {
        super.init()
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
        if self.componentType != nil {
            map["componentType"] = self.componentType!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.nodeGroupIds != nil {
            map["nodeGroupIds"] = self.nodeGroupIds!
        }
        if self.nodeGroupName != nil {
            map["nodeGroupName"] = self.nodeGroupName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["componentType"] as? String {
            self.componentType = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["nodeGroupIds"] as? [String] {
            self.nodeGroupIds = value
        }
        if let value = dict["nodeGroupName"] as? String {
            self.nodeGroupName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [DescribeNodeGroupsRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodeGroupsRequest.Tags()
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

public class DescribeNodeGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public var nodeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
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
        public var accountStatus: String?

        public var architecture: String?

        public var beginTime: Int64?

        public var billingInstanceId: String?

        public var commodityCode: String?

        public var componentType: String?

        public var cu: Int32?

        public var defaultGroup: Bool?

        public var description_: String?

        public var diskNumber: Int32?

        public var elasticNodeNumber: Int32?

        public var enablePublicNetwork: Bool?

        public var endpoint: String?

        public var expireTime: Int64?

        public var httpPort: Int32?

        public var instanceId: String?

        public var localStorageInstanceType: String?

        public var memoryCpuRatio: Int32?

        public var nodeGroupId: String?

        public var nodeGroupName: String?

        public var nodeInfo: [DescribeNodeGroupsResponseBody.Data.NodeInfo]?

        public var payType: String?

        public var publicAddress: String?

        public var regionId: String?

        public var residentNodeNumber: Int32?

        public var runningTime: Int64?

        public var specType: String?

        public var status: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

        public var tags: [DescribeNodeGroupsResponseBody.Data.Tags]?

        public var targetElasticNodeNumber: Int32?

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
            if self.accountStatus != nil {
                map["AccountStatus"] = self.accountStatus!
            }
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.billingInstanceId != nil {
                map["BillingInstanceId"] = self.billingInstanceId!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.componentType != nil {
                map["ComponentType"] = self.componentType!
            }
            if self.cu != nil {
                map["Cu"] = self.cu!
            }
            if self.defaultGroup != nil {
                map["DefaultGroup"] = self.defaultGroup!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.diskNumber != nil {
                map["DiskNumber"] = self.diskNumber!
            }
            if self.elasticNodeNumber != nil {
                map["ElasticNodeNumber"] = self.elasticNodeNumber!
            }
            if self.enablePublicNetwork != nil {
                map["EnablePublicNetwork"] = self.enablePublicNetwork!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.httpPort != nil {
                map["HttpPort"] = self.httpPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.localStorageInstanceType != nil {
                map["LocalStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.memoryCpuRatio != nil {
                map["MemoryCpuRatio"] = self.memoryCpuRatio!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.publicAddress != nil {
                map["PublicAddress"] = self.publicAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.residentNodeNumber != nil {
                map["ResidentNodeNumber"] = self.residentNodeNumber!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.specType != nil {
                map["SpecType"] = self.specType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storagePerformanceLevel != nil {
                map["StoragePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.targetElasticNodeNumber != nil {
                map["TargetElasticNodeNumber"] = self.targetElasticNodeNumber!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountStatus"] as? String {
                self.accountStatus = value
            }
            if let value = dict["Architecture"] as? String {
                self.architecture = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["BillingInstanceId"] as? String {
                self.billingInstanceId = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ComponentType"] as? String {
                self.componentType = value
            }
            if let value = dict["Cu"] as? Int32 {
                self.cu = value
            }
            if let value = dict["DefaultGroup"] as? Bool {
                self.defaultGroup = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DiskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["ElasticNodeNumber"] as? Int32 {
                self.elasticNodeNumber = value
            }
            if let value = dict["EnablePublicNetwork"] as? Bool {
                self.enablePublicNetwork = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["HttpPort"] as? Int32 {
                self.httpPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LocalStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["MemoryCpuRatio"] as? Int32 {
                self.memoryCpuRatio = value
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["NodeGroupName"] as? String {
                self.nodeGroupName = value
            }
            if let value = dict["NodeInfo"] as? [Any?] {
                var tmp : [DescribeNodeGroupsResponseBody.Data.NodeInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNodeGroupsResponseBody.Data.NodeInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeInfo = tmp
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["PublicAddress"] as? String {
                self.publicAddress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResidentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["RunningTime"] as? Int64 {
                self.runningTime = value
            }
            if let value = dict["SpecType"] as? String {
                self.specType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StoragePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["StorageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeNodeGroupsResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNodeGroupsResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TargetElasticNodeNumber"] as? Int32 {
                self.targetElasticNodeNumber = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeNodeGroupsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeNodeGroupsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodeGroupsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeNodeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeGroupsResponseBody?

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
            var model = DescribeNodeGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var descriptionEn: String?

        public var regionId: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionEn != nil {
                map["DescriptionEn"] = self.descriptionEn!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DescriptionEn"] as? String {
                self.descriptionEn = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeRegionsResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DescribeResourceConstraintsRequest : Tea.TeaModel {
    public var architecture: String?

    public var packageType: String?

    public var runMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.architecture != nil {
            map["Architecture"] = self.architecture!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Architecture"] as? String {
            self.architecture = value
        }
        if let value = dict["PackageType"] as? String {
            self.packageType = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
    }
}

public class DescribeResourceConstraintsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BeNumber : Tea.TeaModel {
            public var default_: Int32?

            public var max: Int32?

            public var min: Int32?

            public var step: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.max != nil {
                    map["Max"] = self.max!
                }
                if self.min != nil {
                    map["Min"] = self.min!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Max"] as? Int32 {
                    self.max = value
                }
                if let value = dict["Min"] as? Int32 {
                    self.min = value
                }
                if let value = dict["Step"] as? Int32 {
                    self.step = value
                }
            }
        }
        public class BeStorageConstraints : Tea.TeaModel {
            public class DiskNumberConstraint : Tea.TeaModel {
                public var default_: Int32?

                public var max: Int32?

                public var min: Int32?

                public var step: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.default_ != nil {
                        map["Default"] = self.default_!
                    }
                    if self.max != nil {
                        map["Max"] = self.max!
                    }
                    if self.min != nil {
                        map["Min"] = self.min!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Default"] as? Int32 {
                        self.default_ = value
                    }
                    if let value = dict["Max"] as? Int32 {
                        self.max = value
                    }
                    if let value = dict["Min"] as? Int32 {
                        self.min = value
                    }
                    if let value = dict["Step"] as? Int32 {
                        self.step = value
                    }
                }
            }
            public class ValueConstraint : Tea.TeaModel {
                public var default_: Int32?

                public var max: Int32?

                public var min: Int32?

                public var step: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.default_ != nil {
                        map["Default"] = self.default_!
                    }
                    if self.max != nil {
                        map["Max"] = self.max!
                    }
                    if self.min != nil {
                        map["Min"] = self.min!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Default"] as? Int32 {
                        self.default_ = value
                    }
                    if let value = dict["Max"] as? Int32 {
                        self.max = value
                    }
                    if let value = dict["Min"] as? Int32 {
                        self.min = value
                    }
                    if let value = dict["Step"] as? Int32 {
                        self.step = value
                    }
                }
            }
            public var desc: String?

            public var diskNumberConstraint: DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints.DiskNumberConstraint?

            public var isDefault: Bool?

            public var level: String?

            public var valueConstraint: DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints.ValueConstraint?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.diskNumberConstraint?.validate()
                try self.valueConstraint?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.desc != nil {
                    map["Desc"] = self.desc!
                }
                if self.diskNumberConstraint != nil {
                    map["DiskNumberConstraint"] = self.diskNumberConstraint?.toMap()
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.valueConstraint != nil {
                    map["ValueConstraint"] = self.valueConstraint?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Desc"] as? String {
                    self.desc = value
                }
                if let value = dict["DiskNumberConstraint"] as? [String: Any?] {
                    var model = DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints.DiskNumberConstraint()
                    model.fromMap(value)
                    self.diskNumberConstraint = model
                }
                if let value = dict["IsDefault"] as? Bool {
                    self.isDefault = value
                }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["ValueConstraint"] as? [String: Any?] {
                    var model = DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints.ValueConstraint()
                    model.fromMap(value)
                    self.valueConstraint = model
                }
            }
        }
        public class BigDataInstanceTypeConstraints : Tea.TeaModel {
            public var cpu: Int32?

            public var diskNumber: String?

            public var display: String?

            public var ecsInstanceType: String?

            public var instanceType: String?

            public var isDefault: String?

            public var memory: Int32?

            public var storageSize: String?

            public override init() {
                super.init()
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
                if self.diskNumber != nil {
                    map["DiskNumber"] = self.diskNumber!
                }
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.ecsInstanceType != nil {
                    map["EcsInstanceType"] = self.ecsInstanceType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["DiskNumber"] as? String {
                    self.diskNumber = value
                }
                if let value = dict["Display"] as? String {
                    self.display = value
                }
                if let value = dict["EcsInstanceType"] as? String {
                    self.ecsInstanceType = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["IsDefault"] as? String {
                    self.isDefault = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["StorageSize"] as? String {
                    self.storageSize = value
                }
            }
        }
        public class FeNumber : Tea.TeaModel {
            public var default_: Int32?

            public var max: Int32?

            public var min: Int32?

            public var step: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.max != nil {
                    map["Max"] = self.max!
                }
                if self.min != nil {
                    map["Min"] = self.min!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Max"] as? Int32 {
                    self.max = value
                }
                if let value = dict["Min"] as? Int32 {
                    self.min = value
                }
                if let value = dict["Step"] as? Int32 {
                    self.step = value
                }
            }
        }
        public class FeSpecType : Tea.TeaModel {
            public var display: String?

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
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Display"] as? String {
                    self.display = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class FeStorage : Tea.TeaModel {
            public var default_: Int32?

            public var max: Int32?

            public var min: Int32?

            public var step: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.default_ != nil {
                    map["Default"] = self.default_!
                }
                if self.max != nil {
                    map["Max"] = self.max!
                }
                if self.min != nil {
                    map["Min"] = self.min!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Default"] as? Int32 {
                    self.default_ = value
                }
                if let value = dict["Max"] as? Int32 {
                    self.max = value
                }
                if let value = dict["Min"] as? Int32 {
                    self.min = value
                }
                if let value = dict["Step"] as? Int32 {
                    self.step = value
                }
            }
        }
        public class HaFeResourceSpec : Tea.TeaModel {
            public var cu: Int32?

            public var nodeNumber: Int32?

            public var storageSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cu != nil {
                    map["Cu"] = self.cu!
                }
                if self.nodeNumber != nil {
                    map["NodeNumber"] = self.nodeNumber!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cu"] as? Int32 {
                    self.cu = value
                }
                if let value = dict["NodeNumber"] as? Int32 {
                    self.nodeNumber = value
                }
                if let value = dict["StorageSize"] as? Int32 {
                    self.storageSize = value
                }
            }
        }
        public class LocalSSDInstanceTypeConstraints : Tea.TeaModel {
            public var cpu: Int32?

            public var diskNumber: String?

            public var display: String?

            public var ecsInstanceType: String?

            public var instanceType: String?

            public var isDefault: String?

            public var memory: Int32?

            public var storageSize: String?

            public override init() {
                super.init()
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
                if self.diskNumber != nil {
                    map["DiskNumber"] = self.diskNumber!
                }
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.ecsInstanceType != nil {
                    map["EcsInstanceType"] = self.ecsInstanceType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["DiskNumber"] as? String {
                    self.diskNumber = value
                }
                if let value = dict["Display"] as? String {
                    self.display = value
                }
                if let value = dict["EcsInstanceType"] as? String {
                    self.ecsInstanceType = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["IsDefault"] as? String {
                    self.isDefault = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["StorageSize"] as? String {
                    self.storageSize = value
                }
            }
        }
        public class NormalFeResourceSpec : Tea.TeaModel {
            public var cu: Int32?

            public var nodeNumber: Int32?

            public var storageSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cu != nil {
                    map["Cu"] = self.cu!
                }
                if self.nodeNumber != nil {
                    map["NodeNumber"] = self.nodeNumber!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cu"] as? Int32 {
                    self.cu = value
                }
                if let value = dict["NodeNumber"] as? Int32 {
                    self.nodeNumber = value
                }
                if let value = dict["StorageSize"] as? Int32 {
                    self.storageSize = value
                }
            }
        }
        public class SpecType : Tea.TeaModel {
            public var display: String?

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
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Display"] as? String {
                    self.display = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class VersionConstraint : Tea.TeaModel {
            public var betaVersions: [String]?

            public var defaultVersion: String?

            public var versions: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.betaVersions != nil {
                    map["BetaVersions"] = self.betaVersions!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.versions != nil {
                    map["Versions"] = self.versions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BetaVersions"] as? [String] {
                    self.betaVersions = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Versions"] as? [String] {
                    self.versions = value
                }
            }
        }
        public class CompactionServiceCuConstraint : Tea.TeaModel {
            public var def: Int32?

            public var max: Int32?

            public var min: Int32?

            public var step: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.def != nil {
                    map["def"] = self.def!
                }
                if self.max != nil {
                    map["max"] = self.max!
                }
                if self.min != nil {
                    map["min"] = self.min!
                }
                if self.step != nil {
                    map["step"] = self.step!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["def"] as? Int32 {
                    self.def = value
                }
                if let value = dict["max"] as? Int32 {
                    self.max = value
                }
                if let value = dict["min"] as? Int32 {
                    self.min = value
                }
                if let value = dict["step"] as? Int32 {
                    self.step = value
                }
            }
        }
        public var agentCu: [Int32]?

        public var beCu: [Int32]?

        public var beCuOnEcs: [Int32]?

        public var beNumber: DescribeResourceConstraintsResponseBody.Data.BeNumber?

        public var beStorageConstraints: [DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints]?

        public var bigDataInstanceTypeConstraints: [DescribeResourceConstraintsResponseBody.Data.BigDataInstanceTypeConstraints]?

        public var feCu: [Int32]?

        public var feCuOnEcs: [Int32]?

        public var feNumber: DescribeResourceConstraintsResponseBody.Data.FeNumber?

        public var feSpecType: [DescribeResourceConstraintsResponseBody.Data.FeSpecType]?

        public var feStorage: DescribeResourceConstraintsResponseBody.Data.FeStorage?

        public var haFeResourceSpec: DescribeResourceConstraintsResponseBody.Data.HaFeResourceSpec?

        public var localSSDInstanceTypeConstraints: [DescribeResourceConstraintsResponseBody.Data.LocalSSDInstanceTypeConstraints]?

        public var normalFeResourceSpec: DescribeResourceConstraintsResponseBody.Data.NormalFeResourceSpec?

        public var specType: [DescribeResourceConstraintsResponseBody.Data.SpecType]?

        public var splitDiskThresholdMap: [String: [String: Any]]?

        public var versionConstraint: DescribeResourceConstraintsResponseBody.Data.VersionConstraint?

        public var zoneSupportedEedTypes: [String: [String]]?

        public var zoneSupportedSpecTypes: [String: [String]]?

        public var compactionServiceCuConstraint: DescribeResourceConstraintsResponseBody.Data.CompactionServiceCuConstraint?

        public var zoneSupportCompactionService: [String: [DataZoneSupportCompactionServiceValue]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.beNumber?.validate()
            try self.feNumber?.validate()
            try self.feStorage?.validate()
            try self.haFeResourceSpec?.validate()
            try self.normalFeResourceSpec?.validate()
            try self.versionConstraint?.validate()
            try self.compactionServiceCuConstraint?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentCu != nil {
                map["AgentCu"] = self.agentCu!
            }
            if self.beCu != nil {
                map["BeCu"] = self.beCu!
            }
            if self.beCuOnEcs != nil {
                map["BeCuOnEcs"] = self.beCuOnEcs!
            }
            if self.beNumber != nil {
                map["BeNumber"] = self.beNumber?.toMap()
            }
            if self.beStorageConstraints != nil {
                var tmp : [Any] = []
                for k in self.beStorageConstraints! {
                    tmp.append(k.toMap())
                }
                map["BeStorageConstraints"] = tmp
            }
            if self.bigDataInstanceTypeConstraints != nil {
                var tmp : [Any] = []
                for k in self.bigDataInstanceTypeConstraints! {
                    tmp.append(k.toMap())
                }
                map["BigDataInstanceTypeConstraints"] = tmp
            }
            if self.feCu != nil {
                map["FeCu"] = self.feCu!
            }
            if self.feCuOnEcs != nil {
                map["FeCuOnEcs"] = self.feCuOnEcs!
            }
            if self.feNumber != nil {
                map["FeNumber"] = self.feNumber?.toMap()
            }
            if self.feSpecType != nil {
                var tmp : [Any] = []
                for k in self.feSpecType! {
                    tmp.append(k.toMap())
                }
                map["FeSpecType"] = tmp
            }
            if self.feStorage != nil {
                map["FeStorage"] = self.feStorage?.toMap()
            }
            if self.haFeResourceSpec != nil {
                map["HaFeResourceSpec"] = self.haFeResourceSpec?.toMap()
            }
            if self.localSSDInstanceTypeConstraints != nil {
                var tmp : [Any] = []
                for k in self.localSSDInstanceTypeConstraints! {
                    tmp.append(k.toMap())
                }
                map["LocalSSDInstanceTypeConstraints"] = tmp
            }
            if self.normalFeResourceSpec != nil {
                map["NormalFeResourceSpec"] = self.normalFeResourceSpec?.toMap()
            }
            if self.specType != nil {
                var tmp : [Any] = []
                for k in self.specType! {
                    tmp.append(k.toMap())
                }
                map["SpecType"] = tmp
            }
            if self.splitDiskThresholdMap != nil {
                map["SplitDiskThresholdMap"] = self.splitDiskThresholdMap!
            }
            if self.versionConstraint != nil {
                map["VersionConstraint"] = self.versionConstraint?.toMap()
            }
            if self.zoneSupportedEedTypes != nil {
                map["ZoneSupportedEedTypes"] = self.zoneSupportedEedTypes!
            }
            if self.zoneSupportedSpecTypes != nil {
                map["ZoneSupportedSpecTypes"] = self.zoneSupportedSpecTypes!
            }
            if self.compactionServiceCuConstraint != nil {
                map["compactionServiceCuConstraint"] = self.compactionServiceCuConstraint?.toMap()
            }
            if self.zoneSupportCompactionService != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.zoneSupportCompactionService! {
                    var l1 : [Any] = []
                    for k1 in v {
                        l1.append(k1.toMap())
                    }
                    tmp[k] = l1
                }
                map["zoneSupportCompactionService"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCu"] as? [Int32] {
                self.agentCu = value
            }
            if let value = dict["BeCu"] as? [Int32] {
                self.beCu = value
            }
            if let value = dict["BeCuOnEcs"] as? [Int32] {
                self.beCuOnEcs = value
            }
            if let value = dict["BeNumber"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.BeNumber()
                model.fromMap(value)
                self.beNumber = model
            }
            if let value = dict["BeStorageConstraints"] as? [Any?] {
                var tmp : [DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceConstraintsResponseBody.Data.BeStorageConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.beStorageConstraints = tmp
            }
            if let value = dict["BigDataInstanceTypeConstraints"] as? [Any?] {
                var tmp : [DescribeResourceConstraintsResponseBody.Data.BigDataInstanceTypeConstraints] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceConstraintsResponseBody.Data.BigDataInstanceTypeConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bigDataInstanceTypeConstraints = tmp
            }
            if let value = dict["FeCu"] as? [Int32] {
                self.feCu = value
            }
            if let value = dict["FeCuOnEcs"] as? [Int32] {
                self.feCuOnEcs = value
            }
            if let value = dict["FeNumber"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.FeNumber()
                model.fromMap(value)
                self.feNumber = model
            }
            if let value = dict["FeSpecType"] as? [Any?] {
                var tmp : [DescribeResourceConstraintsResponseBody.Data.FeSpecType] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceConstraintsResponseBody.Data.FeSpecType()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.feSpecType = tmp
            }
            if let value = dict["FeStorage"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.FeStorage()
                model.fromMap(value)
                self.feStorage = model
            }
            if let value = dict["HaFeResourceSpec"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.HaFeResourceSpec()
                model.fromMap(value)
                self.haFeResourceSpec = model
            }
            if let value = dict["LocalSSDInstanceTypeConstraints"] as? [Any?] {
                var tmp : [DescribeResourceConstraintsResponseBody.Data.LocalSSDInstanceTypeConstraints] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceConstraintsResponseBody.Data.LocalSSDInstanceTypeConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.localSSDInstanceTypeConstraints = tmp
            }
            if let value = dict["NormalFeResourceSpec"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.NormalFeResourceSpec()
                model.fromMap(value)
                self.normalFeResourceSpec = model
            }
            if let value = dict["SpecType"] as? [Any?] {
                var tmp : [DescribeResourceConstraintsResponseBody.Data.SpecType] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceConstraintsResponseBody.Data.SpecType()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.specType = tmp
            }
            if let value = dict["SplitDiskThresholdMap"] as? [String: [String: Any]] {
                self.splitDiskThresholdMap = value
            }
            if let value = dict["VersionConstraint"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.VersionConstraint()
                model.fromMap(value)
                self.versionConstraint = model
            }
            if let value = dict["ZoneSupportedEedTypes"] as? [String: [String]] {
                self.zoneSupportedEedTypes = value
            }
            if let value = dict["ZoneSupportedSpecTypes"] as? [String: [String]] {
                self.zoneSupportedSpecTypes = value
            }
            if let value = dict["compactionServiceCuConstraint"] as? [String: Any?] {
                var model = DescribeResourceConstraintsResponseBody.Data.CompactionServiceCuConstraint()
                model.fromMap(value)
                self.compactionServiceCuConstraint = model
            }
            if let value = dict["zoneSupportCompactionService"] as? [String: Any?] {
                var tmp : [String: [DataZoneSupportCompactionServiceValue]] = [:]
                for (k, v) in value {
                    var l1 : [DataZoneSupportCompactionServiceValue] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = DataZoneSupportCompactionServiceValue()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp[k] = l1
                }
                self.zoneSupportCompactionService = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: DescribeResourceConstraintsResponseBody.Data?

    public var errMessage: String?

    public var errorCode: String?

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
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeResourceConstraintsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DescribeResourceConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceConstraintsResponseBody?

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
            var model = DescribeResourceConstraintsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSystemTimezoneRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeSystemTimezoneResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeSystemTimezoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemTimezoneResponseBody?

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
            var model = DescribeSystemTimezoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTimeTriggerScalingRulesRequest : Tea.TeaModel {
    public var nodeGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class DescribeTimeTriggerScalingRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScalingInRule : Tea.TeaModel {
            public var day: Int32?

            public var hour: Int32?

            public var minute: Int32?

            public var month: Int32?

            public var recurrenceInterval: Int32?

            public var recurrenceType: String?

            public var recurrenceValues: [String]?

            public var second: Int32?

            public var year: Int32?

            public override init() {
                super.init()
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
                if self.hour != nil {
                    map["Hour"] = self.hour!
                }
                if self.minute != nil {
                    map["Minute"] = self.minute!
                }
                if self.month != nil {
                    map["Month"] = self.month!
                }
                if self.recurrenceInterval != nil {
                    map["RecurrenceInterval"] = self.recurrenceInterval!
                }
                if self.recurrenceType != nil {
                    map["RecurrenceType"] = self.recurrenceType!
                }
                if self.recurrenceValues != nil {
                    map["RecurrenceValues"] = self.recurrenceValues!
                }
                if self.second != nil {
                    map["Second"] = self.second!
                }
                if self.year != nil {
                    map["Year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Day"] as? Int32 {
                    self.day = value
                }
                if let value = dict["Hour"] as? Int32 {
                    self.hour = value
                }
                if let value = dict["Minute"] as? Int32 {
                    self.minute = value
                }
                if let value = dict["Month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["RecurrenceInterval"] as? Int32 {
                    self.recurrenceInterval = value
                }
                if let value = dict["RecurrenceType"] as? String {
                    self.recurrenceType = value
                }
                if let value = dict["RecurrenceValues"] as? [String] {
                    self.recurrenceValues = value
                }
                if let value = dict["Second"] as? Int32 {
                    self.second = value
                }
                if let value = dict["Year"] as? Int32 {
                    self.year = value
                }
            }
        }
        public class ScalingOutRule : Tea.TeaModel {
            public var day: Int32?

            public var hour: Int32?

            public var minute: Int32?

            public var month: Int32?

            public var recurrenceInterval: Int32?

            public var recurrenceType: String?

            public var recurrenceValues: [String]?

            public var second: Int32?

            public var year: Int32?

            public override init() {
                super.init()
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
                if self.hour != nil {
                    map["Hour"] = self.hour!
                }
                if self.minute != nil {
                    map["Minute"] = self.minute!
                }
                if self.month != nil {
                    map["Month"] = self.month!
                }
                if self.recurrenceInterval != nil {
                    map["RecurrenceInterval"] = self.recurrenceInterval!
                }
                if self.recurrenceType != nil {
                    map["RecurrenceType"] = self.recurrenceType!
                }
                if self.recurrenceValues != nil {
                    map["RecurrenceValues"] = self.recurrenceValues!
                }
                if self.second != nil {
                    map["Second"] = self.second!
                }
                if self.year != nil {
                    map["Year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Day"] as? Int32 {
                    self.day = value
                }
                if let value = dict["Hour"] as? Int32 {
                    self.hour = value
                }
                if let value = dict["Minute"] as? Int32 {
                    self.minute = value
                }
                if let value = dict["Month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["RecurrenceInterval"] as? Int32 {
                    self.recurrenceInterval = value
                }
                if let value = dict["RecurrenceType"] as? String {
                    self.recurrenceType = value
                }
                if let value = dict["RecurrenceValues"] as? [String] {
                    self.recurrenceValues = value
                }
                if let value = dict["Second"] as? Int32 {
                    self.second = value
                }
                if let value = dict["Year"] as? Int32 {
                    self.year = value
                }
            }
        }
        public var nodeNumber: String?

        public var scalingInRule: DescribeTimeTriggerScalingRulesResponseBody.Data.ScalingInRule?

        public var scalingOutRule: DescribeTimeTriggerScalingRulesResponseBody.Data.ScalingOutRule?

        public var scalingRuleId: String?

        public var scalingRuleName: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scalingInRule?.validate()
            try self.scalingOutRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeNumber != nil {
                map["NodeNumber"] = self.nodeNumber!
            }
            if self.scalingInRule != nil {
                map["ScalingInRule"] = self.scalingInRule?.toMap()
            }
            if self.scalingOutRule != nil {
                map["ScalingOutRule"] = self.scalingOutRule?.toMap()
            }
            if self.scalingRuleId != nil {
                map["ScalingRuleId"] = self.scalingRuleId!
            }
            if self.scalingRuleName != nil {
                map["ScalingRuleName"] = self.scalingRuleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeNumber"] as? String {
                self.nodeNumber = value
            }
            if let value = dict["ScalingInRule"] as? [String: Any?] {
                var model = DescribeTimeTriggerScalingRulesResponseBody.Data.ScalingInRule()
                model.fromMap(value)
                self.scalingInRule = model
            }
            if let value = dict["ScalingOutRule"] as? [String: Any?] {
                var model = DescribeTimeTriggerScalingRulesResponseBody.Data.ScalingOutRule()
                model.fromMap(value)
                self.scalingOutRule = model
            }
            if let value = dict["ScalingRuleId"] as? String {
                self.scalingRuleId = value
            }
            if let value = dict["ScalingRuleName"] as? String {
                self.scalingRuleName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [DescribeTimeTriggerScalingRulesResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeTimeTriggerScalingRulesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeTimeTriggerScalingRulesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DescribeTimeTriggerScalingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTimeTriggerScalingRulesResponseBody?

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
            var model = DescribeTimeTriggerScalingRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSSLConnectionRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DisableSSLConnectionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class DisableSSLConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSSLConnectionResponseBody?

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
            var model = DisableSSLConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableInternalSlbRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class EnableInternalSlbResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class EnableInternalSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInternalSlbResponseBody?

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
            var model = EnableInternalSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableMultiAzRequest : Tea.TeaModel {
    public class Observers : Tea.TeaModel {
        public var vswId: String?

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
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var instanceId: String?

    public var observers: [EnableMultiAzRequest.Observers]?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.observers != nil {
            var tmp : [Any] = []
            for k in self.observers! {
                tmp.append(k.toMap())
            }
            map["observers"] = tmp
        }
        if self.promotionOptionNo != nil {
            map["promotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["observers"] as? [Any?] {
            var tmp : [EnableMultiAzRequest.Observers] = []
            for v in value {
                if v != nil {
                    var model = EnableMultiAzRequest.Observers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.observers = tmp
        }
        if let value = dict["promotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class EnableMultiAzResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var nodeGroupId: String?

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
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: EnableMultiAzResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = EnableMultiAzResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class EnableMultiAzResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableMultiAzResponseBody?

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
            var model = EnableMultiAzResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSSLConnectionRequest : Tea.TeaModel {
    public var customSSLCertificate: String?

    public var enableCustom: Bool?

    public var instanceId: String?

    public var renewal: Bool?

    public var sslKeyPassword: String?

    public var sslKeystorePassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customSSLCertificate != nil {
            map["CustomSSLCertificate"] = self.customSSLCertificate!
        }
        if self.enableCustom != nil {
            map["EnableCustom"] = self.enableCustom!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.renewal != nil {
            map["Renewal"] = self.renewal!
        }
        if self.sslKeyPassword != nil {
            map["SslKeyPassword"] = self.sslKeyPassword!
        }
        if self.sslKeystorePassword != nil {
            map["SslKeystorePassword"] = self.sslKeystorePassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomSSLCertificate"] as? String {
            self.customSSLCertificate = value
        }
        if let value = dict["EnableCustom"] as? Bool {
            self.enableCustom = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Renewal"] as? Bool {
            self.renewal = value
        }
        if let value = dict["SslKeyPassword"] as? String {
            self.sslKeyPassword = value
        }
        if let value = dict["SslKeystorePassword"] as? String {
            self.sslKeystorePassword = value
        }
    }
}

public class EnableSSLConnectionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class EnableSSLConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSSLConnectionResponseBody?

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
            var model = EnableSSLConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceFeatureGateRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceFeatureGateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consoleControlRestart: Bool?

        public var enableManageMv: Bool?

        public var fullManagedSecurityGroup: Bool?

        public var mountDlfMetaToken: Bool?

        public var supportAddConfigTypes: [String]?

        public var supportBackup: Bool?

        public var supportCreateAgent: Bool?

        public var supportCreateNonStandardNodeGroup: Bool?

        public var supportEed: Bool?

        public var supportEnableAi: Bool?

        public var supportEnableSSL: Bool?

        public var supportFastModeModifyConfig: Bool?

        public var supportFastModeModifyResource: Bool?

        public var supportFastRestart: Bool?

        public var supportFeGateway: Bool?

        public var supportHostAlias: Bool?

        public var supportModifyTimezone: Bool?

        public var supportMultiAZ: Bool?

        public var useComputeNode: Bool?

        public var supportCompactionService: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consoleControlRestart != nil {
                map["ConsoleControlRestart"] = self.consoleControlRestart!
            }
            if self.enableManageMv != nil {
                map["EnableManageMv"] = self.enableManageMv!
            }
            if self.fullManagedSecurityGroup != nil {
                map["FullManagedSecurityGroup"] = self.fullManagedSecurityGroup!
            }
            if self.mountDlfMetaToken != nil {
                map["MountDlfMetaToken"] = self.mountDlfMetaToken!
            }
            if self.supportAddConfigTypes != nil {
                map["SupportAddConfigTypes"] = self.supportAddConfigTypes!
            }
            if self.supportBackup != nil {
                map["SupportBackup"] = self.supportBackup!
            }
            if self.supportCreateAgent != nil {
                map["SupportCreateAgent"] = self.supportCreateAgent!
            }
            if self.supportCreateNonStandardNodeGroup != nil {
                map["SupportCreateNonStandardNodeGroup"] = self.supportCreateNonStandardNodeGroup!
            }
            if self.supportEed != nil {
                map["SupportEed"] = self.supportEed!
            }
            if self.supportEnableAi != nil {
                map["SupportEnableAi"] = self.supportEnableAi!
            }
            if self.supportEnableSSL != nil {
                map["SupportEnableSSL"] = self.supportEnableSSL!
            }
            if self.supportFastModeModifyConfig != nil {
                map["SupportFastModeModifyConfig"] = self.supportFastModeModifyConfig!
            }
            if self.supportFastModeModifyResource != nil {
                map["SupportFastModeModifyResource"] = self.supportFastModeModifyResource!
            }
            if self.supportFastRestart != nil {
                map["SupportFastRestart"] = self.supportFastRestart!
            }
            if self.supportFeGateway != nil {
                map["SupportFeGateway"] = self.supportFeGateway!
            }
            if self.supportHostAlias != nil {
                map["SupportHostAlias"] = self.supportHostAlias!
            }
            if self.supportModifyTimezone != nil {
                map["SupportModifyTimezone"] = self.supportModifyTimezone!
            }
            if self.supportMultiAZ != nil {
                map["SupportMultiAZ"] = self.supportMultiAZ!
            }
            if self.useComputeNode != nil {
                map["UseComputeNode"] = self.useComputeNode!
            }
            if self.supportCompactionService != nil {
                map["supportCompactionService"] = self.supportCompactionService!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsoleControlRestart"] as? Bool {
                self.consoleControlRestart = value
            }
            if let value = dict["EnableManageMv"] as? Bool {
                self.enableManageMv = value
            }
            if let value = dict["FullManagedSecurityGroup"] as? Bool {
                self.fullManagedSecurityGroup = value
            }
            if let value = dict["MountDlfMetaToken"] as? Bool {
                self.mountDlfMetaToken = value
            }
            if let value = dict["SupportAddConfigTypes"] as? [String] {
                self.supportAddConfigTypes = value
            }
            if let value = dict["SupportBackup"] as? Bool {
                self.supportBackup = value
            }
            if let value = dict["SupportCreateAgent"] as? Bool {
                self.supportCreateAgent = value
            }
            if let value = dict["SupportCreateNonStandardNodeGroup"] as? Bool {
                self.supportCreateNonStandardNodeGroup = value
            }
            if let value = dict["SupportEed"] as? Bool {
                self.supportEed = value
            }
            if let value = dict["SupportEnableAi"] as? Bool {
                self.supportEnableAi = value
            }
            if let value = dict["SupportEnableSSL"] as? Bool {
                self.supportEnableSSL = value
            }
            if let value = dict["SupportFastModeModifyConfig"] as? Bool {
                self.supportFastModeModifyConfig = value
            }
            if let value = dict["SupportFastModeModifyResource"] as? Bool {
                self.supportFastModeModifyResource = value
            }
            if let value = dict["SupportFastRestart"] as? Bool {
                self.supportFastRestart = value
            }
            if let value = dict["SupportFeGateway"] as? Bool {
                self.supportFeGateway = value
            }
            if let value = dict["SupportHostAlias"] as? Bool {
                self.supportHostAlias = value
            }
            if let value = dict["SupportModifyTimezone"] as? Bool {
                self.supportModifyTimezone = value
            }
            if let value = dict["SupportMultiAZ"] as? Bool {
                self.supportMultiAZ = value
            }
            if let value = dict["UseComputeNode"] as? Bool {
                self.useComputeNode = value
            }
            if let value = dict["supportCompactionService"] as? Bool {
                self.supportCompactionService = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetInstanceFeatureGateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInstanceFeatureGateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetInstanceFeatureGateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceFeatureGateResponseBody?

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
            var model = GetInstanceFeatureGateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNodeGroupFeatureGateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class GetNodeGroupFeatureGateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var needRestartAfterModifyDiskSize: Bool?

        public var supportFastModeModifyResource: Bool?

        public var supportFastRestart: Bool?

        public var supportModifySpecType: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.needRestartAfterModifyDiskSize != nil {
                map["NeedRestartAfterModifyDiskSize"] = self.needRestartAfterModifyDiskSize!
            }
            if self.supportFastModeModifyResource != nil {
                map["SupportFastModeModifyResource"] = self.supportFastModeModifyResource!
            }
            if self.supportFastRestart != nil {
                map["SupportFastRestart"] = self.supportFastRestart!
            }
            if self.supportModifySpecType != nil {
                map["SupportModifySpecType"] = self.supportModifySpecType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NeedRestartAfterModifyDiskSize"] as? Bool {
                self.needRestartAfterModifyDiskSize = value
            }
            if let value = dict["SupportFastModeModifyResource"] as? Bool {
                self.supportFastModeModifyResource = value
            }
            if let value = dict["SupportFastRestart"] as? Bool {
                self.supportFastRestart = value
            }
            if let value = dict["SupportModifySpecType"] as? Bool {
                self.supportModifySpecType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetNodeGroupFeatureGateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNodeGroupFeatureGateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetNodeGroupFeatureGateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeGroupFeatureGateResponseBody?

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
            var model = GetNodeGroupFeatureGateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IsolateLeaderRequest : Tea.TeaModel {
    public var instanceId: String?

    public var isolateLeader: Bool?

    public override init() {
        super.init()
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
        if self.isolateLeader != nil {
            map["IsolateLeader"] = self.isolateLeader!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsolateLeader"] as? Bool {
            self.isolateLeader = value
        }
    }
}

public class IsolateLeaderResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class IsolateLeaderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsolateLeaderResponseBody?

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
            var model = IsolateLeaderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListGatewayResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var enablePublicNet: Bool?

        public var feNodeNumber: Int32?

        public var gatewayId: String?

        public var gatewayName: String?

        public var gatewayType: String?

        public var internalDomain: String?

        public var internalSlbId: String?

        public var privatezoneId: String?

        public var publicDomain: String?

        public var publicSlbAclId: String?

        public var publicSlbId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enablePublicNet != nil {
                map["EnablePublicNet"] = self.enablePublicNet!
            }
            if self.feNodeNumber != nil {
                map["FeNodeNumber"] = self.feNodeNumber!
            }
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.gatewayName != nil {
                map["GatewayName"] = self.gatewayName!
            }
            if self.gatewayType != nil {
                map["GatewayType"] = self.gatewayType!
            }
            if self.internalDomain != nil {
                map["InternalDomain"] = self.internalDomain!
            }
            if self.internalSlbId != nil {
                map["InternalSlbId"] = self.internalSlbId!
            }
            if self.privatezoneId != nil {
                map["PrivatezoneId"] = self.privatezoneId!
            }
            if self.publicDomain != nil {
                map["PublicDomain"] = self.publicDomain!
            }
            if self.publicSlbAclId != nil {
                map["PublicSlbAclId"] = self.publicSlbAclId!
            }
            if self.publicSlbId != nil {
                map["PublicSlbId"] = self.publicSlbId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnablePublicNet"] as? Bool {
                self.enablePublicNet = value
            }
            if let value = dict["FeNodeNumber"] as? Int32 {
                self.feNodeNumber = value
            }
            if let value = dict["GatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["GatewayName"] as? String {
                self.gatewayName = value
            }
            if let value = dict["GatewayType"] as? String {
                self.gatewayType = value
            }
            if let value = dict["InternalDomain"] as? String {
                self.internalDomain = value
            }
            if let value = dict["InternalSlbId"] as? String {
                self.internalSlbId = value
            }
            if let value = dict["PrivatezoneId"] as? String {
                self.privatezoneId = value
            }
            if let value = dict["PublicDomain"] as? String {
                self.publicDomain = value
            }
            if let value = dict["PublicSlbAclId"] as? String {
                self.publicSlbAclId = value
            }
            if let value = dict["PublicSlbId"] as? String {
                self.publicSlbId = value
            }
        }
    }
    public var data: [ListGatewayResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListGatewayResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListGatewayResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ListGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayResponseBody?

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
            var model = ListGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOperationActivityRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operationId: String?

    public override init() {
        super.init()
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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
    }
}

public class ListOperationActivityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityId: String?

        public var activityStatus: String?

        public var consoleRetryCount: Int32?

        public var endTime: Int64?

        public var errMessage: String?

        public var name: String?

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
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.activityStatus != nil {
                map["ActivityStatus"] = self.activityStatus!
            }
            if self.consoleRetryCount != nil {
                map["ConsoleRetryCount"] = self.consoleRetryCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.errMessage != nil {
                map["ErrMessage"] = self.errMessage!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityId"] as? String {
                self.activityId = value
            }
            if let value = dict["ActivityStatus"] as? String {
                self.activityStatus = value
            }
            if let value = dict["ConsoleRetryCount"] as? Int32 {
                self.consoleRetryCount = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ErrMessage"] as? String {
                self.errMessage = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListOperationActivityResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListOperationActivityResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListOperationActivityResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListOperationActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationActivityResponseBody?

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
            var model = ListOperationActivityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOperationHistoryRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceId: String?

    public var operationId: String?

    public var operationStatus: String?

    public var operationType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.operationStatus != nil {
            map["OperationStatus"] = self.operationStatus!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["OperationStatus"] as? String {
            self.operationStatus = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListOperationHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var afterValue: String?

        public var beforeValue: String?

        public var gmtCreate: Int64?

        public var gmtEnd: Int64?

        public var instanceId: String?

        public var operationDetail: String?

        public var operationId: String?

        public var operationStatus: String?

        public var operationType: String?

        public var progress: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterValue != nil {
                map["AfterValue"] = self.afterValue!
            }
            if self.beforeValue != nil {
                map["BeforeValue"] = self.beforeValue!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtEnd != nil {
                map["GmtEnd"] = self.gmtEnd!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.operationDetail != nil {
                map["OperationDetail"] = self.operationDetail!
            }
            if self.operationId != nil {
                map["OperationId"] = self.operationId!
            }
            if self.operationStatus != nil {
                map["OperationStatus"] = self.operationStatus!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterValue"] as? String {
                self.afterValue = value
            }
            if let value = dict["BeforeValue"] as? String {
                self.beforeValue = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtEnd"] as? Int64 {
                self.gmtEnd = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OperationDetail"] as? String {
                self.operationDetail = value
            }
            if let value = dict["OperationId"] as? String {
                self.operationId = value
            }
            if let value = dict["OperationStatus"] as? String {
                self.operationStatus = value
            }
            if let value = dict["OperationType"] as? String {
                self.operationType = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListOperationHistoryResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListOperationHistoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListOperationHistoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListOperationHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationHistoryResponseBody?

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
            var model = ListOperationHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyChargeTypeRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var billingInstanceIds: String?

    public var duration: String?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.billingInstanceIds != nil {
            map["BillingInstanceIds"] = self.billingInstanceIds!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BillingInstanceIds"] as? String {
            self.billingInstanceIds = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class ModifyChargeTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyChargeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyChargeTypeResponseBody?

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
            var model = ModifyChargeTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCuRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyCuResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyCuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCuResponseBody?

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
            var model = ModifyCuResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCuPreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyCuPreCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allow: Bool?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allow != nil {
                map["Allow"] = self.allow!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Allow"] as? Bool {
                self.allow = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifyCuPreCheckResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyCuPreCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyCuPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCuPreCheckResponseBody?

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
            var model = ModifyCuPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskNumberRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyDiskNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyDiskNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskNumberResponseBody?

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
            var model = ModifyDiskNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskPerformanceLevelRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class ModifyDiskPerformanceLevelResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyDiskPerformanceLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskPerformanceLevelResponseBody?

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
            var model = ModifyDiskPerformanceLevelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskSizeRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyDiskSizeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyDiskSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskSizeResponseBody?

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
            var model = ModifyDiskSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskTypeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var targetDiskType: String?

    public var targetPerformanceLevel: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.targetDiskType != nil {
            map["TargetDiskType"] = self.targetDiskType!
        }
        if self.targetPerformanceLevel != nil {
            map["TargetPerformanceLevel"] = self.targetPerformanceLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["TargetDiskType"] as? String {
            self.targetDiskType = value
        }
        if let value = dict["TargetPerformanceLevel"] as? String {
            self.targetPerformanceLevel = value
        }
    }
}

public class ModifyDiskTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyDiskTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskTypeResponseBody?

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
            var model = ModifyDiskTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyHostAliasRequest : Tea.TeaModel {
    public class HostAliases : Tea.TeaModel {
        public var hostnames: [String]?

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
            if self.hostnames != nil {
                map["hostnames"] = self.hostnames!
            }
            if self.ip != nil {
                map["ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["hostnames"] as? [String] {
                self.hostnames = value
            }
            if let value = dict["ip"] as? String {
                self.ip = value
            }
        }
    }
    public var instanceId: String?

    public var hostAliases: [ModifyHostAliasRequest.HostAliases]?

    public override init() {
        super.init()
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
        if self.hostAliases != nil {
            var tmp : [Any] = []
            for k in self.hostAliases! {
                tmp.append(k.toMap())
            }
            map["hostAliases"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["hostAliases"] as? [Any?] {
            var tmp : [ModifyHostAliasRequest.HostAliases] = []
            for v in value {
                if v != nil {
                    var model = ModifyHostAliasRequest.HostAliases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAliases = tmp
        }
    }
}

public class ModifyHostAliasResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyHostAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostAliasResponseBody?

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
            var model = ModifyHostAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceConfigRequest : Tea.TeaModel {
    public var addConfigList: String?

    public var configList: String?

    public var deleteConfigList: String?

    public var instanceId: String?

    public var reason: String?

    public var configsToAdd: [InstanceConfigDto]?

    public var configsToDelete: [InstanceConfigDto]?

    public var configsToUpdate: [InstanceConfigDto]?

    public var fastMode: Bool?

    public var restart: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addConfigList != nil {
            map["AddConfigList"] = self.addConfigList!
        }
        if self.configList != nil {
            map["ConfigList"] = self.configList!
        }
        if self.deleteConfigList != nil {
            map["DeleteConfigList"] = self.deleteConfigList!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.configsToAdd != nil {
            var tmp : [Any] = []
            for k in self.configsToAdd! {
                tmp.append(k.toMap())
            }
            map["configsToAdd"] = tmp
        }
        if self.configsToDelete != nil {
            var tmp : [Any] = []
            for k in self.configsToDelete! {
                tmp.append(k.toMap())
            }
            map["configsToDelete"] = tmp
        }
        if self.configsToUpdate != nil {
            var tmp : [Any] = []
            for k in self.configsToUpdate! {
                tmp.append(k.toMap())
            }
            map["configsToUpdate"] = tmp
        }
        if self.fastMode != nil {
            map["fastMode"] = self.fastMode!
        }
        if self.restart != nil {
            map["restart"] = self.restart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddConfigList"] as? String {
            self.addConfigList = value
        }
        if let value = dict["ConfigList"] as? String {
            self.configList = value
        }
        if let value = dict["DeleteConfigList"] as? String {
            self.deleteConfigList = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["configsToAdd"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToAdd = tmp
        }
        if let value = dict["configsToDelete"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToDelete = tmp
        }
        if let value = dict["configsToUpdate"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToUpdate = tmp
        }
        if let value = dict["fastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["restart"] as? Bool {
            self.restart = value
        }
    }
}

public class ModifyInstanceConfigResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceConfigResponseBody?

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
            var model = ModifyInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceConfigPreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var configsToAdd: [InstanceConfigDto]?

    public var configsToDelete: [InstanceConfigDto]?

    public var configsToUpdate: [InstanceConfigDto]?

    public override init() {
        super.init()
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
        if self.configsToAdd != nil {
            var tmp : [Any] = []
            for k in self.configsToAdd! {
                tmp.append(k.toMap())
            }
            map["configsToAdd"] = tmp
        }
        if self.configsToDelete != nil {
            var tmp : [Any] = []
            for k in self.configsToDelete! {
                tmp.append(k.toMap())
            }
            map["configsToDelete"] = tmp
        }
        if self.configsToUpdate != nil {
            var tmp : [Any] = []
            for k in self.configsToUpdate! {
                tmp.append(k.toMap())
            }
            map["configsToUpdate"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["configsToAdd"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToAdd = tmp
        }
        if let value = dict["configsToDelete"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToDelete = tmp
        }
        if let value = dict["configsToUpdate"] as? [Any?] {
            var tmp : [InstanceConfigDto] = []
            for v in value {
                if v != nil {
                    var model = InstanceConfigDto()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configsToUpdate = tmp
        }
    }
}

public class ModifyInstanceConfigPreCheckResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: [String]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyInstanceConfigPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceConfigPreCheckResponseBody?

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
            var model = ModifyInstanceConfigPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMaintainableTimeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maintainableTimePeriod: String?

    public override init() {
        super.init()
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
        if self.maintainableTimePeriod != nil {
            map["MaintainableTimePeriod"] = self.maintainableTimePeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaintainableTimePeriod"] as? String {
            self.maintainableTimePeriod = value
        }
    }
}

public class ModifyMaintainableTimeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyMaintainableTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMaintainableTimeResponseBody?

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
            var model = ModifyMaintainableTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodeNumberRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var parallelism: Int32?

    public var promotionOptionNo: String?

    public var target: Int32?

    public var terminationGracePeriodSeconds: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.terminationGracePeriodSeconds != nil {
            map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Parallelism"] as? Int32 {
            self.parallelism = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
        if let value = dict["TerminationGracePeriodSeconds"] as? Int32 {
            self.terminationGracePeriodSeconds = value
        }
    }
}

public class ModifyNodeNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyNodeNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeNumberResponseBody?

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
            var model = ModifyNodeNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodeNumberPreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class ModifyNodeNumberPreCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allow: Bool?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allow != nil {
                map["Allow"] = self.allow!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Allow"] as? Bool {
                self.allow = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifyNodeNumberPreCheckResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyNodeNumberPreCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyNodeNumberPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeNumberPreCheckResponseBody?

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
            var model = ModifyNodeNumberPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyScalingRuleRequest : Tea.TeaModel {
    public var newTriggerType: String?

    public var nodeGroupId: String?

    public var oldTriggerType: String?

    public var rule: String?

    public var scalingRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newTriggerType != nil {
            map["NewTriggerType"] = self.newTriggerType!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.oldTriggerType != nil {
            map["OldTriggerType"] = self.oldTriggerType!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewTriggerType"] as? String {
            self.newTriggerType = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["OldTriggerType"] as? String {
            self.oldTriggerType = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["ScalingRuleId"] as? String {
            self.scalingRuleId = value
        }
    }
}

public class ModifyScalingRuleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScalingRuleResponseBody?

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
            var model = ModifyScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySpecTypeRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var targetSpecType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.targetSpecType != nil {
            map["TargetSpecType"] = self.targetSpecType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["TargetSpecType"] as? String {
            self.targetSpecType = value
        }
    }
}

public class ModifySpecTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifySpecTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySpecTypeResponseBody?

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
            var model = ModifySpecTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySpecTypePreCheckRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var targetSpecType: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.targetSpecType != nil {
            map["TargetSpecType"] = self.targetSpecType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["TargetSpecType"] as? String {
            self.targetSpecType = value
        }
    }
}

public class ModifySpecTypePreCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allow: Bool?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allow != nil {
                map["Allow"] = self.allow!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Allow"] as? Bool {
                self.allow = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: ModifySpecTypePreCheckResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifySpecTypePreCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifySpecTypePreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySpecTypePreCheckResponseBody?

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
            var model = ModifySpecTypePreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyUserPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class ModifyUserPasswordResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserPasswordResponseBody?

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
            var model = ModifyUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEnableMultiAzPriceRequest : Tea.TeaModel {
    public class Observers : Tea.TeaModel {
        public var vswId: String?

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
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
            if let value = dict["zoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var instanceId: String?

    public var observers: [QueryEnableMultiAzPriceRequest.Observers]?

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
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.observers != nil {
            var tmp : [Any] = []
            for k in self.observers! {
                tmp.append(k.toMap())
            }
            map["observers"] = tmp
        }
        if self.promotionOptionNo != nil {
            map["promotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["observers"] as? [Any?] {
            var tmp : [QueryEnableMultiAzPriceRequest.Observers] = []
            for v in value {
                if v != nil {
                    var model = QueryEnableMultiAzPriceRequest.Observers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.observers = tmp
        }
        if let value = dict["promotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class QueryEnableMultiAzPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class ModuleInstance : Tea.TeaModel {
            public var moduleCode: String?

            public var moduleName: String?

            public var standPrice: String?

            public var totalProductFee: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.standPrice != nil {
                    map["StandPrice"] = self.standPrice!
                }
                if self.totalProductFee != nil {
                    map["TotalProductFee"] = self.totalProductFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
                if let value = dict["StandPrice"] as? String {
                    self.standPrice = value
                }
                if let value = dict["TotalProductFee"] as? String {
                    self.totalProductFee = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryEnableMultiAzPriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryEnableMultiAzPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var moduleInstance: [QueryEnableMultiAzPriceResponseBody.Data.ModuleInstance]?

        public var optionalPromotions: [QueryEnableMultiAzPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryEnableMultiAzPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if self.moduleInstance != nil {
                var tmp : [Any] = []
                for k in self.moduleInstance! {
                    tmp.append(k.toMap())
                }
                map["ModuleInstance"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryEnableMultiAzPriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryEnableMultiAzPriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryEnableMultiAzPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["ModuleInstance"] as? [Any?] {
                var tmp : [QueryEnableMultiAzPriceResponseBody.Data.ModuleInstance] = []
                for v in value {
                    if v != nil {
                        var model = QueryEnableMultiAzPriceResponseBody.Data.ModuleInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.moduleInstance = tmp
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryEnableMultiAzPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryEnableMultiAzPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryEnableMultiAzPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryEnableMultiAzPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryEnableMultiAzPriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryEnableMultiAzPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryEnableMultiAzPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnableMultiAzPriceResponseBody?

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
            var model = QueryEnableMultiAzPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMinorVersionRequest : Tea.TeaModel {
    public var regionId: String?

    public var version: String?

    public override init() {
        super.init()
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
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class QueryMinorVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryMinorVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMinorVersionResponseBody?

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
            var model = QueryMinorVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyChargeTypePriceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var billingInstanceIds: String?

    public var duration: String?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.billingInstanceIds != nil {
            map["BillingInstanceIds"] = self.billingInstanceIds!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BillingInstanceIds"] as? String {
            self.billingInstanceIds = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class QueryModifyChargeTypePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class ModuleInstance : Tea.TeaModel {
            public var moduleCode: String?

            public var moduleName: String?

            public var standPrice: String?

            public var totalProductFee: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.standPrice != nil {
                    map["StandPrice"] = self.standPrice!
                }
                if self.totalProductFee != nil {
                    map["TotalProductFee"] = self.totalProductFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
                if let value = dict["StandPrice"] as? String {
                    self.standPrice = value
                }
                if let value = dict["TotalProductFee"] as? String {
                    self.totalProductFee = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyChargeTypePriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyChargeTypePriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var moduleInstance: [QueryModifyChargeTypePriceResponseBody.Data.ModuleInstance]?

        public var optionalPromotions: [QueryModifyChargeTypePriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyChargeTypePriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if self.moduleInstance != nil {
                var tmp : [Any] = []
                for k in self.moduleInstance! {
                    tmp.append(k.toMap())
                }
                map["ModuleInstance"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyChargeTypePriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyChargeTypePriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyChargeTypePriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["ModuleInstance"] as? [Any?] {
                var tmp : [QueryModifyChargeTypePriceResponseBody.Data.ModuleInstance] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyChargeTypePriceResponseBody.Data.ModuleInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.moduleInstance = tmp
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyChargeTypePriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyChargeTypePriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyChargeTypePriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyChargeTypePriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyChargeTypePriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyChargeTypePriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyChargeTypePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyChargeTypePriceResponseBody?

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
            var model = QueryModifyChargeTypePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyCuPriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class QueryModifyCuPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyCuPriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyCuPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyCuPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyCuPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyCuPriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyCuPriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyCuPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyCuPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyCuPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyCuPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyCuPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyCuPriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyCuPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyCuPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyCuPriceResponseBody?

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
            var model = QueryModifyCuPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyDiskNumberPriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class QueryModifyDiskNumberPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyDiskNumberPriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyDiskNumberPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyDiskNumberPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyDiskNumberPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyDiskNumberPriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskNumberPriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyDiskNumberPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyDiskNumberPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskNumberPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyDiskNumberPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskNumberPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyDiskNumberPriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyDiskNumberPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyDiskNumberPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyDiskNumberPriceResponseBody?

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
            var model = QueryModifyDiskNumberPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyDiskPerformanceLevelPriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class QueryModifyDiskPerformanceLevelPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyDiskPerformanceLevelPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskPerformanceLevelPriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyDiskPerformanceLevelPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskPerformanceLevelPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyDiskPerformanceLevelPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskPerformanceLevelPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyDiskPerformanceLevelPriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyDiskPerformanceLevelPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyDiskPerformanceLevelPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyDiskPerformanceLevelPriceResponseBody?

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
            var model = QueryModifyDiskPerformanceLevelPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyDiskSizePriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class QueryModifyDiskSizePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyDiskSizePriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyDiskSizePriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyDiskSizePriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyDiskSizePriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyDiskSizePriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskSizePriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyDiskSizePriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyDiskSizePriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskSizePriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyDiskSizePriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskSizePriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyDiskSizePriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyDiskSizePriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyDiskSizePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyDiskSizePriceResponseBody?

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
            var model = QueryModifyDiskSizePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyDiskTypePriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var targetDiskType: String?

    public var targetPerformanceLevel: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.targetDiskType != nil {
            map["TargetDiskType"] = self.targetDiskType!
        }
        if self.targetPerformanceLevel != nil {
            map["TargetPerformanceLevel"] = self.targetPerformanceLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["TargetDiskType"] as? String {
            self.targetDiskType = value
        }
        if let value = dict["TargetPerformanceLevel"] as? String {
            self.targetPerformanceLevel = value
        }
    }
}

public class QueryModifyDiskTypePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyDiskTypePriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyDiskTypePriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyDiskTypePriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyDiskTypePriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyDiskTypePriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskTypePriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyDiskTypePriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyDiskTypePriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskTypePriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyDiskTypePriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyDiskTypePriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyDiskTypePriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyDiskTypePriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyDiskTypePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyDiskTypePriceResponseBody?

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
            var model = QueryModifyDiskTypePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifyNodeNumberPriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var target: Int32?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["Target"] as? Int32 {
            self.target = value
        }
    }
}

public class QueryModifyNodeNumberPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifyNodeNumberPriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifyNodeNumberPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifyNodeNumberPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifyNodeNumberPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifyNodeNumberPriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyNodeNumberPriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifyNodeNumberPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifyNodeNumberPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyNodeNumberPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifyNodeNumberPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifyNodeNumberPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifyNodeNumberPriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifyNodeNumberPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifyNodeNumberPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifyNodeNumberPriceResponseBody?

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
            var model = QueryModifyNodeNumberPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryModifySpecTypePriceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeGroupId: String?

    public var promotionOptionNo: String?

    public var targetSpecType: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.targetSpecType != nil {
            map["TargetSpecType"] = self.targetSpecType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["TargetSpecType"] as? String {
            self.targetSpecType = value
        }
    }
}

public class QueryModifySpecTypePriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryModifySpecTypePriceResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryModifySpecTypePriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryModifySpecTypePriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryModifySpecTypePriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryModifySpecTypePriceResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifySpecTypePriceResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryModifySpecTypePriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryModifySpecTypePriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifySpecTypePriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryModifySpecTypePriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryModifySpecTypePriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryModifySpecTypePriceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryModifySpecTypePriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryModifySpecTypePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryModifySpecTypePriceResponseBody?

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
            var model = QueryModifySpecTypePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPriceV1Request : Tea.TeaModel {
    public class AgentNodeGroup : Tea.TeaModel {
        public var cu: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? Int32 {
                self.cu = value
            }
        }
    }
    public class BackendNodeGroups : Tea.TeaModel {
        public var cu: String?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? String {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
        }
    }
    public class FrontendNodeGroups : Tea.TeaModel {
        public var cu: String?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? String {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
        }
    }
    public class ObserverNodeGroups : Tea.TeaModel {
        public var cu: String?

        public var diskNumber: Int32?

        public var localStorageInstanceType: String?

        public var residentNodeNumber: Int32?

        public var specType: String?

        public var storagePerformanceLevel: String?

        public var storageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cu != nil {
                map["cu"] = self.cu!
            }
            if self.diskNumber != nil {
                map["diskNumber"] = self.diskNumber!
            }
            if self.localStorageInstanceType != nil {
                map["localStorageInstanceType"] = self.localStorageInstanceType!
            }
            if self.residentNodeNumber != nil {
                map["residentNodeNumber"] = self.residentNodeNumber!
            }
            if self.specType != nil {
                map["specType"] = self.specType!
            }
            if self.storagePerformanceLevel != nil {
                map["storagePerformanceLevel"] = self.storagePerformanceLevel!
            }
            if self.storageSize != nil {
                map["storageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cu"] as? String {
                self.cu = value
            }
            if let value = dict["diskNumber"] as? Int32 {
                self.diskNumber = value
            }
            if let value = dict["localStorageInstanceType"] as? String {
                self.localStorageInstanceType = value
            }
            if let value = dict["residentNodeNumber"] as? Int32 {
                self.residentNodeNumber = value
            }
            if let value = dict["specType"] as? String {
                self.specType = value
            }
            if let value = dict["storagePerformanceLevel"] as? String {
                self.storagePerformanceLevel = value
            }
            if let value = dict["storageSize"] as? Int32 {
                self.storageSize = value
            }
        }
    }
    public var agentNodeGroup: QueryPriceV1Request.AgentNodeGroup?

    public var backendNodeGroups: [QueryPriceV1Request.BackendNodeGroups]?

    public var duration: Int32?

    public var frontendNodeGroups: [QueryPriceV1Request.FrontendNodeGroups]?

    public var observerNodeGroups: [QueryPriceV1Request.ObserverNodeGroups]?

    public var packageType: String?

    public var payType: String?

    public var pricingCycle: String?

    public var promotionOptionNo: String?

    public var regionId: String?

    public var runMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agentNodeGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentNodeGroup != nil {
            map["AgentNodeGroup"] = self.agentNodeGroup?.toMap()
        }
        if self.backendNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.backendNodeGroups! {
                tmp.append(k.toMap())
            }
            map["BackendNodeGroups"] = tmp
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.frontendNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.frontendNodeGroups! {
                tmp.append(k.toMap())
            }
            map["FrontendNodeGroups"] = tmp
        }
        if self.observerNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.observerNodeGroups! {
                tmp.append(k.toMap())
            }
            map["ObserverNodeGroups"] = tmp
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentNodeGroup"] as? [String: Any?] {
            var model = QueryPriceV1Request.AgentNodeGroup()
            model.fromMap(value)
            self.agentNodeGroup = model
        }
        if let value = dict["BackendNodeGroups"] as? [Any?] {
            var tmp : [QueryPriceV1Request.BackendNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = QueryPriceV1Request.BackendNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.backendNodeGroups = tmp
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["FrontendNodeGroups"] as? [Any?] {
            var tmp : [QueryPriceV1Request.FrontendNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = QueryPriceV1Request.FrontendNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.frontendNodeGroups = tmp
        }
        if let value = dict["ObserverNodeGroups"] as? [Any?] {
            var tmp : [QueryPriceV1Request.ObserverNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = QueryPriceV1Request.ObserverNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.observerNodeGroups = tmp
        }
        if let value = dict["PackageType"] as? String {
            self.packageType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
    }
}

public class QueryPriceV1ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ComponentPrices : Tea.TeaModel {
            public var componentName: String?

            public var discountAmount: Double?

            public var originalAmount: Double?

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
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["DiscountAmount"] as? Double {
                    self.discountAmount = value
                }
                if let value = dict["OriginalAmount"] as? Double {
                    self.originalAmount = value
                }
                if let value = dict["TradeAmount"] as? Double {
                    self.tradeAmount = value
                }
            }
        }
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class ModuleInstance : Tea.TeaModel {
            public var moduleCode: String?

            public var moduleName: String?

            public var standPrice: String?

            public var totalProductFee: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleCode != nil {
                    map["ModuleCode"] = self.moduleCode!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.standPrice != nil {
                    map["StandPrice"] = self.standPrice!
                }
                if self.totalProductFee != nil {
                    map["TotalProductFee"] = self.totalProductFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModuleCode"] as? String {
                    self.moduleCode = value
                }
                if let value = dict["ModuleName"] as? String {
                    self.moduleName = value
                }
                if let value = dict["StandPrice"] as? String {
                    self.standPrice = value
                }
                if let value = dict["TotalProductFee"] as? String {
                    self.totalProductFee = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var componentPrices: [QueryPriceV1ResponseBody.Data.ComponentPrices]?

        public var currency: String?

        public var depreciateInfo: QueryPriceV1ResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var moduleInstance: [QueryPriceV1ResponseBody.Data.ModuleInstance]?

        public var optionalPromotions: [QueryPriceV1ResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryPriceV1ResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.componentPrices != nil {
                var tmp : [Any] = []
                for k in self.componentPrices! {
                    tmp.append(k.toMap())
                }
                map["ComponentPrices"] = tmp
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
            if self.moduleInstance != nil {
                var tmp : [Any] = []
                for k in self.moduleInstance! {
                    tmp.append(k.toMap())
                }
                map["ModuleInstance"] = tmp
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
            if let value = dict["ComponentPrices"] as? [Any?] {
                var tmp : [QueryPriceV1ResponseBody.Data.ComponentPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryPriceV1ResponseBody.Data.ComponentPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentPrices = tmp
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryPriceV1ResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["ModuleInstance"] as? [Any?] {
                var tmp : [QueryPriceV1ResponseBody.Data.ModuleInstance] = []
                for v in value {
                    if v != nil {
                        var model = QueryPriceV1ResponseBody.Data.ModuleInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.moduleInstance = tmp
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryPriceV1ResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryPriceV1ResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryPriceV1ResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryPriceV1ResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: QueryPriceV1ResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryPriceV1ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryPriceV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPriceV1ResponseBody?

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
            var model = QueryPriceV1ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRefundPriceRequest : Tea.TeaModel {
    public var billingInstanceIds: String?

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
        if self.billingInstanceIds != nil {
            map["billingInstanceIds"] = self.billingInstanceIds!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["billingInstanceIds"] as? String {
            self.billingInstanceIds = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class QueryRefundPriceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Double?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? Double {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryRefundPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRefundPriceResponseBody?

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
            var model = QueryRefundPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRenewPriceRequest : Tea.TeaModel {
    public var billingInstanceIds: String?

    public var duration: Int32?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.billingInstanceIds != nil {
            map["BillingInstanceIds"] = self.billingInstanceIds!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingInstanceIds"] as? String {
            self.billingInstanceIds = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class QueryRenewPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DepreciateInfo : Tea.TeaModel {
            public var cheapRate: Double?

            public var cheapStandAmount: Double?

            public var isShow: Bool?

            public var originalStandAmount: Double?

            public override init() {
                super.init()
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
                if self.originalStandAmount != nil {
                    map["OriginalStandAmount"] = self.originalStandAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheapRate"] as? Double {
                    self.cheapRate = value
                }
                if let value = dict["CheapStandAmount"] as? Double {
                    self.cheapStandAmount = value
                }
                if let value = dict["IsShow"] as? Bool {
                    self.isShow = value
                }
                if let value = dict["OriginalStandAmount"] as? Double {
                    self.originalStandAmount = value
                }
            }
        }
        public class OptionalPromotions : Tea.TeaModel {
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
        public class Rules : Tea.TeaModel {
            public var amount: Double?

            public var name: String?

            public var ruleDescId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleDescId"] as? String {
                    self.ruleDescId = value
                }
            }
        }
        public var billingInstanceId: String?

        public var currency: String?

        public var depreciateInfo: QueryRenewPriceResponseBody.Data.DepreciateInfo?

        public var discountAmount: Double?

        public var optionalPromotions: [QueryRenewPriceResponseBody.Data.OptionalPromotions]?

        public var originalAmount: Double?

        public var rules: [QueryRenewPriceResponseBody.Data.Rules]?

        public var standDiscountPrice: Double?

        public var standPrice: Double?

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
            if self.billingInstanceId != nil {
                map["BillingInstanceId"] = self.billingInstanceId!
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
            if let value = dict["BillingInstanceId"] as? String {
                self.billingInstanceId = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DepreciateInfo"] as? [String: Any?] {
                var model = QueryRenewPriceResponseBody.Data.DepreciateInfo()
                model.fromMap(value)
                self.depreciateInfo = model
            }
            if let value = dict["DiscountAmount"] as? Double {
                self.discountAmount = value
            }
            if let value = dict["OptionalPromotions"] as? [Any?] {
                var tmp : [QueryRenewPriceResponseBody.Data.OptionalPromotions] = []
                for v in value {
                    if v != nil {
                        var model = QueryRenewPriceResponseBody.Data.OptionalPromotions()
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
                var tmp : [QueryRenewPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = QueryRenewPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
            if let value = dict["StandDiscountPrice"] as? Double {
                self.standDiscountPrice = value
            }
            if let value = dict["StandPrice"] as? Double {
                self.standPrice = value
            }
            if let value = dict["TradeAmount"] as? Double {
                self.tradeAmount = value
            }
        }
    }
    public var data: [QueryRenewPriceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryRenewPriceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryRenewPriceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryRenewPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRenewPriceResponseBody?

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
            var model = QueryRenewPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUnpaidOrderRequest : Tea.TeaModel {
    public var billingInstanceId: String?

    public var instanceId: String?

    public var orderType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingInstanceId != nil {
            map["BillingInstanceId"] = self.billingInstanceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingInstanceId"] as? String {
            self.billingInstanceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
    }
}

public class QueryUnpaidOrderResponseBody : Tea.TeaModel {
    public var data: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryUnpaidOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUnpaidOrderResponseBody?

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
            var model = QueryUnpaidOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUpgradableVersionsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var minor: Bool?

    public override init() {
        super.init()
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
        if self.minor != nil {
            map["Minor"] = self.minor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minor"] as? Bool {
            self.minor = value
        }
    }
}

public class QueryUpgradableVersionsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: [String]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class QueryUpgradableVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUpgradableVersionsResponseBody?

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
            var model = QueryUpgradableVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootECSRequest : Tea.TeaModel {
    public var eventId: String?

    public var instanceId: String?

    public var rebootTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.rebootTime != nil {
            map["RebootTime"] = self.rebootTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RebootTime"] as? Int64 {
            self.rebootTime = value
        }
    }
}

public class RebootECSResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class RebootECSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootECSResponseBody?

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
            var model = RebootECSResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

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
            var model = ReleaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var billingInstanceIds: String?

    public var duration: Int32?

    public var instanceId: String?

    public var pricingCycle: String?

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
        if self.billingInstanceIds != nil {
            map["BillingInstanceIds"] = self.billingInstanceIds!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingInstanceIds"] as? String {
            self.billingInstanceIds = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PromotionOptionNo"] as? String {
            self.promotionOptionNo = value
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderIds != nil {
                map["OrderIds"] = self.orderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderIds"] as? [String] {
                self.orderIds = value
            }
        }
    }
    public var data: RenewInstanceResponseBody.Data?

    public var errMessage: String?

    public var errorCode: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RestartInstanceRequest : Tea.TeaModel {
    public var fastMode: Bool?

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
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class RestartInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RestartNodeGroupRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
    }
}

public class RestartNodeGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RestartNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartNodeGroupResponseBody?

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
            var model = RestartNodeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartNodesRequest : Tea.TeaModel {
    public class RestartNodeGroups : Tea.TeaModel {
        public var fastMode: Bool?

        public var nodeGroupId: String?

        public var nodeIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fastMode != nil {
                map["FastMode"] = self.fastMode!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeIds != nil {
                map["NodeIds"] = self.nodeIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FastMode"] as? Bool {
                self.fastMode = value
            }
            if let value = dict["NodeGroupId"] as? String {
                self.nodeGroupId = value
            }
            if let value = dict["NodeIds"] as? [String] {
                self.nodeIds = value
            }
        }
    }
    public var instanceId: String?

    public var restartNodeGroups: [RestartNodesRequest.RestartNodeGroups]?

    public override init() {
        super.init()
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
        if self.restartNodeGroups != nil {
            var tmp : [Any] = []
            for k in self.restartNodeGroups! {
                tmp.append(k.toMap())
            }
            map["RestartNodeGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RestartNodeGroups"] as? [Any?] {
            var tmp : [RestartNodesRequest.RestartNodeGroups] = []
            for v in value {
                if v != nil {
                    var model = RestartNodesRequest.RestartNodeGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.restartNodeGroups = tmp
        }
    }
}

public class RestartNodesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RestartNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartNodesResponseBody?

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
            var model = RestartNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreInstanceRequest : Tea.TeaModel {
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
    public class VSwitches : Tea.TeaModel {
        public var vswId: String?

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
            if self.vswId != nil {
                map["VswId"] = self.vswId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VswId"] as? String {
                self.vswId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var adminPassword: String?

    public var autoRenew: Bool?

    public var backupTaskId: String?

    public var duration: Int32?

    public var instanceName: String?

    public var payType: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [RestoreInstanceRequest.Tags]?

    public var vSwitches: [RestoreInstanceRequest.VSwitches]?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminPassword != nil {
            map["AdminPassword"] = self.adminPassword!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.backupTaskId != nil {
            map["BackupTaskId"] = self.backupTaskId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if self.vSwitches != nil {
            var tmp : [Any] = []
            for k in self.vSwitches! {
                tmp.append(k.toMap())
            }
            map["VSwitches"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminPassword"] as? String {
            self.adminPassword = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BackupTaskId"] as? String {
            self.backupTaskId = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [RestoreInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = RestoreInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["VSwitches"] as? [Any?] {
            var tmp : [RestoreInstanceRequest.VSwitches] = []
            for v in value {
                if v != nil {
                    var model = RestoreInstanceRequest.VSwitches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitches = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class RestoreInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var accessDeniedDetail: String?

    public var data: RestoreInstanceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RestoreInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RestoreInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreInstanceResponseBody?

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
            var model = RestoreInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ResumeInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RollbackConfigModificationRequest : Tea.TeaModel {
    public var configHistoryId: Int64?

    public var instanceId: String?

    public var restart: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configHistoryId != nil {
            map["ConfigHistoryId"] = self.configHistoryId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.restart != nil {
            map["Restart"] = self.restart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigHistoryId"] as? Int64 {
            self.configHistoryId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Restart"] as? Bool {
            self.restart = value
        }
    }
}

public class RollbackConfigModificationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class RollbackConfigModificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackConfigModificationResponseBody?

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
            var model = RollbackConfigModificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchActiveStandbyZonesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var targetZoneId: String?

    public override init() {
        super.init()
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
        if self.targetZoneId != nil {
            map["TargetZoneId"] = self.targetZoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TargetZoneId"] as? String {
            self.targetZoneId = value
        }
    }
}

public class SwitchActiveStandbyZonesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class SwitchActiveStandbyZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchActiveStandbyZonesResponseBody?

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
            var model = SwitchActiveStandbyZonesResponseBody()
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

public class ToggleAutoMinorVersionUpgradeRequest : Tea.TeaModel {
    public var autoUpgrade: Bool?

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
        if self.autoUpgrade != nil {
            map["AutoUpgrade"] = self.autoUpgrade!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoUpgrade"] as? Bool {
            self.autoUpgrade = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ToggleAutoMinorVersionUpgradeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ToggleAutoMinorVersionUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ToggleAutoMinorVersionUpgradeResponseBody?

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
            var model = ToggleAutoMinorVersionUpgradeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TogglePublicSlbRequest : Tea.TeaModel {
    public var enablePublicSlb: Bool?

    public var gatewayId: String?

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
        if self.enablePublicSlb != nil {
            map["EnablePublicSlb"] = self.enablePublicSlb!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePublicSlb"] as? Bool {
            self.enablePublicSlb = value
        }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class TogglePublicSlbResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class TogglePublicSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TogglePublicSlbResponseBody?

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
            var model = TogglePublicSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnTagResourcesRequest : Tea.TeaModel {
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

public class UnTagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagKeyShrink: String?

    public override init() {
        super.init()
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
        if self.resourceIdShrink != nil {
            map["ResourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeyShrink != nil {
            map["TagKey"] = self.tagKeyShrink!
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
        if let value = dict["ResourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKeyShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateBackupRequest : Tea.TeaModel {
    public var regionId: String?

    public var backupTaskId: String?

    public var description_: String?

    public override init() {
        super.init()
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
        if self.backupTaskId != nil {
            map["backupTaskId"] = self.backupTaskId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["backupTaskId"] as? String {
            self.backupTaskId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateBackupResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBackupResponseBody?

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
            var model = UpdateBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateBackupPolicyRequest : Tea.TeaModel {
    public var expireDays: Int32?

    public var hour: Int32?

    public var instanceId: String?

    public var minute: Int32?

    public var policyId: String?

    public var recurrenceValues: [Int32]?

    public var timeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireDays != nil {
            map["ExpireDays"] = self.expireDays!
        }
        if self.hour != nil {
            map["Hour"] = self.hour!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.minute != nil {
            map["Minute"] = self.minute!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.recurrenceValues != nil {
            map["RecurrenceValues"] = self.recurrenceValues!
        }
        if self.timeoutSeconds != nil {
            map["TimeoutSeconds"] = self.timeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireDays"] as? Int32 {
            self.expireDays = value
        }
        if let value = dict["Hour"] as? Int32 {
            self.hour = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minute"] as? Int32 {
            self.minute = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RecurrenceValues"] as? [Int32] {
            self.recurrenceValues = value
        }
        if let value = dict["TimeoutSeconds"] as? Int32 {
            self.timeoutSeconds = value
        }
    }
}

public class UpdateBackupPolicyResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBackupPolicyResponseBody?

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
            var model = UpdateBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGatewayRequest : Tea.TeaModel {
    public var feNodeNumber: Int32?

    public var gatewayId: String?

    public var gatewayName: String?

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
        if self.feNodeNumber != nil {
            map["FeNodeNumber"] = self.feNodeNumber!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeNodeNumber"] as? Int32 {
            self.feNodeNumber = value
        }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["GatewayName"] as? String {
            self.gatewayName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateGatewayResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayResponseBody?

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
            var model = UpdateGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInnerIpWhitelistGroupRequest : Tea.TeaModel {
    public var cidrIpList: [String]?

    public var innerIpWhitelistGroupId: String?

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
        if self.cidrIpList != nil {
            map["CidrIpList"] = self.cidrIpList!
        }
        if self.innerIpWhitelistGroupId != nil {
            map["InnerIpWhitelistGroupId"] = self.innerIpWhitelistGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CidrIpList"] as? [String] {
            self.cidrIpList = value
        }
        if let value = dict["InnerIpWhitelistGroupId"] as? String {
            self.innerIpWhitelistGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateInnerIpWhitelistGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateInnerIpWhitelistGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInnerIpWhitelistGroupResponseBody?

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
            var model = UpdateInnerIpWhitelistGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceNameRequest : Tea.TeaModel {
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateInstanceNameResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateNodeGroupDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var nodeGroupId: String?

    public var xAcsRamAuthContext: String?

    public override init() {
        super.init()
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
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.xAcsRamAuthContext != nil {
            map["X-Acs-Ram-Auth-Context"] = self.xAcsRamAuthContext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["X-Acs-Ram-Auth-Context"] as? String {
            self.xAcsRamAuthContext = value
        }
    }
}

public class UpdateNodeGroupDescriptionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpdateNodeGroupDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNodeGroupDescriptionResponseBody?

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
            var model = UpdateNodeGroupDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePublicNetworkStatusRequest : Tea.TeaModel {
    public var componentType: String?

    public var instanceId: String?

    public var nodeGroupId: String?

    public var publicNetworkEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentType != nil {
            map["ComponentType"] = self.componentType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.publicNetworkEnabled != nil {
            map["PublicNetworkEnabled"] = self.publicNetworkEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentType"] as? String {
            self.componentType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupId"] as? String {
            self.nodeGroupId = value
        }
        if let value = dict["PublicNetworkEnabled"] as? Bool {
            self.publicNetworkEnabled = value
        }
    }
}

public class UpdatePublicNetworkStatusResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class UpdatePublicNetworkStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePublicNetworkStatusResponseBody?

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
            var model = UpdatePublicNetworkStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeVersionRequest : Tea.TeaModel {
    public var fastMode: Bool?

    public var instanceId: String?

    public var minor: Bool?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fastMode != nil {
            map["FastMode"] = self.fastMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.minor != nil {
            map["Minor"] = self.minor!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FastMode"] as? Bool {
            self.fastMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Minor"] as? Bool {
            self.minor = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class UpgradeVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class UpgradeVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeVersionResponseBody?

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
            var model = UpgradeVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
