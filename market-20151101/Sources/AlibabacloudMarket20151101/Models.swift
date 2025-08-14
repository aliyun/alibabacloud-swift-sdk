import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateLicenseRequest : Tea.TeaModel {
    public var identification: String?

    public var licenseCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identification != nil {
            map["Identification"] = self.identification!
        }
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Identification"] as? String {
            self.identification = value
        }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
    }
}

public class ActivateLicenseResponseBody : Tea.TeaModel {
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

public class ActivateLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateLicenseResponseBody?

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
            var model = ActivateLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AutoRenewInstanceRequest : Tea.TeaModel {
    public var autoRenewCycle: String?

    public var autoRenewDuration: Int32?

    public var orderBizId: Int64?

    public var ownerId: Int64?

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
        if self.autoRenewCycle != nil {
            map["AutoRenewCycle"] = self.autoRenewCycle!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.orderBizId != nil {
            map["OrderBizId"] = self.orderBizId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewCycle"] as? String {
            self.autoRenewCycle = value
        }
        if let value = dict["AutoRenewDuration"] as? Int32 {
            self.autoRenewDuration = value
        }
        if let value = dict["OrderBizId"] as? Int64 {
            self.orderBizId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class AutoRenewInstanceResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AutoRenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AutoRenewInstanceResponseBody?

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
            var model = AutoRenewInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfirmNotificationRequest : Tea.TeaModel {
    public var notificationRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notificationRequestId != nil {
            map["NotificationRequestId"] = self.notificationRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NotificationRequestId"] as? String {
            self.notificationRequestId = value
        }
    }
}

public class ConfirmNotificationResponseBody : Tea.TeaModel {
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

public class ConfirmNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmNotificationResponseBody?

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
            var model = ConfirmNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOrderRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodity: String?

    public var orderSouce: String?

    public var orderType: String?

    public var ownerId: String?

    public var paymentType: String?

    public override init() {
        super.init()
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
        if self.commodity != nil {
            map["Commodity"] = self.commodity!
        }
        if self.orderSouce != nil {
            map["OrderSouce"] = self.orderSouce!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? String {
            self.commodity = value
        }
        if let value = dict["OrderSouce"] as? String {
            self.orderSouce = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            if let value = dict["InstanceId"] as? [String] {
                self.instanceId = value
            }
        }
    }
    public var instanceIds: CreateOrderResponseBody.InstanceIds?

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
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String: Any?] {
            var model = CreateOrderResponseBody.InstanceIds()
            model.fromMap(value)
            self.instanceIds = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

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
            var model = CreateOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CrossAccountVerifyTokenRequest : Tea.TeaModel {
    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class CrossAccountVerifyTokenResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var authRoles: [String]?

        public var authTime: Int64?

        public var name: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authRoles != nil {
                map["AuthRoles"] = self.authRoles!
            }
            if self.authTime != nil {
                map["AuthTime"] = self.authTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthRoles"] as? [String] {
                self.authRoles = value
            }
            if let value = dict["AuthTime"] as? Int64 {
                self.authTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CrossAccountVerifyTokenResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = CrossAccountVerifyTokenResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CrossAccountVerifyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CrossAccountVerifyTokenResponseBody?

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
            var model = CrossAccountVerifyTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeApiMeteringRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var productCode: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class DescribeApiMeteringResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var aliyunPk: Int64?

        public var productCode: String?

        public var productName: String?

        public var totalCapacity: Int64?

        public var totalQuota: Int64?

        public var totalUsage: Int64?

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
            if self.aliyunPk != nil {
                map["AliyunPk"] = self.aliyunPk!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.totalCapacity != nil {
                map["TotalCapacity"] = self.totalCapacity!
            }
            if self.totalQuota != nil {
                map["TotalQuota"] = self.totalQuota!
            }
            if self.totalUsage != nil {
                map["TotalUsage"] = self.totalUsage!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunPk"] as? Int64 {
                self.aliyunPk = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["TotalCapacity"] as? Int64 {
                self.totalCapacity = value
            }
            if let value = dict["TotalQuota"] as? Int64 {
                self.totalQuota = value
            }
            if let value = dict["TotalUsage"] as? Int64 {
                self.totalUsage = value
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var fatal: Bool?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var result: [DescribeApiMeteringResponseBody.Result]?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.fatal != nil {
            map["Fatal"] = self.fatal!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["Fatal"] as? Bool {
            self.fatal = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeApiMeteringResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeApiMeteringResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class DescribeApiMeteringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiMeteringResponseBody?

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
            var model = DescribeApiMeteringResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCurrentNodeInfoRequest : Tea.TeaModel {
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

public class DescribeCurrentNodeInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var allowRollbackNode: Bool?

        public var autoFinishNode: Bool?

        public var finalStepNo: Int32?

        public var gmtExpired: Int64?

        public var gmtFinished: Int64?

        public var gmtStart: Int64?

        public var needAttachment: Bool?

        public var nextNodeId: Int64?

        public var nodeId: Int64?

        public var nodeName: String?

        public var nodeStatus: String?

        public var operatorRole: String?

        public var parentNodeId: Int64?

        public var previousNodeId: Int64?

        public var stepNo: Int32?

        public var templateForm: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowRollbackNode != nil {
                map["AllowRollbackNode"] = self.allowRollbackNode!
            }
            if self.autoFinishNode != nil {
                map["AutoFinishNode"] = self.autoFinishNode!
            }
            if self.finalStepNo != nil {
                map["FinalStepNo"] = self.finalStepNo!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtFinished != nil {
                map["GmtFinished"] = self.gmtFinished!
            }
            if self.gmtStart != nil {
                map["GmtStart"] = self.gmtStart!
            }
            if self.needAttachment != nil {
                map["NeedAttachment"] = self.needAttachment!
            }
            if self.nextNodeId != nil {
                map["NextNodeId"] = self.nextNodeId!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeStatus != nil {
                map["NodeStatus"] = self.nodeStatus!
            }
            if self.operatorRole != nil {
                map["OperatorRole"] = self.operatorRole!
            }
            if self.parentNodeId != nil {
                map["ParentNodeId"] = self.parentNodeId!
            }
            if self.previousNodeId != nil {
                map["PreviousNodeId"] = self.previousNodeId!
            }
            if self.stepNo != nil {
                map["StepNo"] = self.stepNo!
            }
            if self.templateForm != nil {
                map["TemplateForm"] = self.templateForm!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowRollbackNode"] as? Bool {
                self.allowRollbackNode = value
            }
            if let value = dict["AutoFinishNode"] as? Bool {
                self.autoFinishNode = value
            }
            if let value = dict["FinalStepNo"] as? Int32 {
                self.finalStepNo = value
            }
            if let value = dict["GmtExpired"] as? Int64 {
                self.gmtExpired = value
            }
            if let value = dict["GmtFinished"] as? Int64 {
                self.gmtFinished = value
            }
            if let value = dict["GmtStart"] as? Int64 {
                self.gmtStart = value
            }
            if let value = dict["NeedAttachment"] as? Bool {
                self.needAttachment = value
            }
            if let value = dict["NextNodeId"] as? Int64 {
                self.nextNodeId = value
            }
            if let value = dict["NodeId"] as? Int64 {
                self.nodeId = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["NodeStatus"] as? String {
                self.nodeStatus = value
            }
            if let value = dict["OperatorRole"] as? String {
                self.operatorRole = value
            }
            if let value = dict["ParentNodeId"] as? Int64 {
                self.parentNodeId = value
            }
            if let value = dict["PreviousNodeId"] as? Int64 {
                self.previousNodeId = value
            }
            if let value = dict["StepNo"] as? Int32 {
                self.stepNo = value
            }
            if let value = dict["TemplateForm"] as? String {
                self.templateForm = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeCurrentNodeInfoResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["Result"] as? [String: Any?] {
            var model = DescribeCurrentNodeInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCurrentNodeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCurrentNodeInfoResponseBody?

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
            var model = DescribeCurrentNodeInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDistributionProductsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
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
    public var filter: [DescribeDistributionProductsRequest.Filter]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [DescribeDistributionProductsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = DescribeDistributionProductsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class DescribeDistributionProductsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var firstCategoryName: String?

        public var imageUrl: String?

        public var name: String?

        public var price: String?

        public var score: String?

        public var secondCategoryName: String?

        public var shortDescription: String?

        public var submissionRadio: String?

        public var supplierName: String?

        public var supplierUId: String?

        public var tradeCount: String?

        public var type: String?

        public var userCommentCount: String?

        public override init() {
            super.init()
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
            if self.firstCategoryName != nil {
                map["FirstCategoryName"] = self.firstCategoryName!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.secondCategoryName != nil {
                map["SecondCategoryName"] = self.secondCategoryName!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.submissionRadio != nil {
                map["SubmissionRadio"] = self.submissionRadio!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUId != nil {
                map["SupplierUId"] = self.supplierUId!
            }
            if self.tradeCount != nil {
                map["TradeCount"] = self.tradeCount!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userCommentCount != nil {
                map["UserCommentCount"] = self.userCommentCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["FirstCategoryName"] as? String {
                self.firstCategoryName = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Price"] as? String {
                self.price = value
            }
            if let value = dict["Score"] as? String {
                self.score = value
            }
            if let value = dict["SecondCategoryName"] as? String {
                self.secondCategoryName = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["SubmissionRadio"] as? String {
                self.submissionRadio = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierUId"] as? String {
                self.supplierUId = value
            }
            if let value = dict["TradeCount"] as? String {
                self.tradeCount = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserCommentCount"] as? String {
                self.userCommentCount = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var results: [DescribeDistributionProductsResponseBody.Results]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DescribeDistributionProductsResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DescribeDistributionProductsResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDistributionProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDistributionProductsResponseBody?

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
            var model = DescribeDistributionProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDistributionProductsLinkRequest : Tea.TeaModel {
    public var codes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codes != nil {
            map["Codes"] = self.codes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Codes"] as? [String] {
            self.codes = value
        }
    }
}

public class DescribeDistributionProductsLinkShrinkRequest : Tea.TeaModel {
    public var codesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codesShrink != nil {
            map["Codes"] = self.codesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Codes"] as? String {
            self.codesShrink = value
        }
    }
}

public class DescribeDistributionProductsLinkResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var code: String?

        public var name: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeDistributionProductsLinkResponseBody.Result]?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeDistributionProductsLinkResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeDistributionProductsLinkResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDistributionProductsLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDistributionProductsLinkResponseBody?

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
            var model = DescribeDistributionProductsLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFailedNotificationsRequest : Tea.TeaModel {
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeFailedNotificationsResponseBody : Tea.TeaModel {
    public class NotificationList : Tea.TeaModel {
        public var action: String?

        public var createTime: Int64?

        public var message: String?

        public var notificationRequestId: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.notificationRequestId != nil {
                map["NotificationRequestId"] = self.notificationRequestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NotificationRequestId"] as? String {
                self.notificationRequestId = value
            }
        }
    }
    public var notificationList: [DescribeFailedNotificationsResponseBody.NotificationList]?

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
        if self.notificationList != nil {
            var tmp : [Any] = []
            for k in self.notificationList! {
                tmp.append(k.toMap())
            }
            map["NotificationList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NotificationList"] as? [Any?] {
            var tmp : [DescribeFailedNotificationsResponseBody.NotificationList] = []
            for v in value {
                if v != nil {
                    var model = DescribeFailedNotificationsResponseBody.NotificationList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.notificationList = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeFailedNotificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFailedNotificationsResponseBody?

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
            var model = DescribeFailedNotificationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImageInstanceForIsvRequest : Tea.TeaModel {
    public var customerPk: Int64?

    public var ecsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerPk != nil {
            map["CustomerPk"] = self.customerPk!
        }
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerPk"] as? Int64 {
            self.customerPk = value
        }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
        }
    }
}

public class DescribeImageInstanceForIsvResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
        public class Properties : Tea.TeaModel {
            public class PropertyValues : Tea.TeaModel {
                public var displayName: String?

                public var max: String?

                public var min: String?

                public var remark: String?

                public var step: String?

                public var type: String?

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
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.max != nil {
                        map["Max"] = self.max!
                    }
                    if self.min != nil {
                        map["Min"] = self.min!
                    }
                    if self.remark != nil {
                        map["Remark"] = self.remark!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DisplayName"] as? String {
                        self.displayName = value
                    }
                    if let value = dict["Max"] as? String {
                        self.max = value
                    }
                    if let value = dict["Min"] as? String {
                        self.min = value
                    }
                    if let value = dict["Remark"] as? String {
                        self.remark = value
                    }
                    if let value = dict["Step"] as? String {
                        self.step = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var displayUnit: String?

            public var key: String?

            public var name: String?

            public var propertyValues: [DescribeImageInstanceForIsvResponseBody.Modules.Properties.PropertyValues]?

            public var showType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayUnit != nil {
                    map["DisplayUnit"] = self.displayUnit!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.propertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.propertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["PropertyValues"] = tmp
                }
                if self.showType != nil {
                    map["ShowType"] = self.showType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayUnit"] as? String {
                    self.displayUnit = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PropertyValues"] as? [Any?] {
                    var tmp : [DescribeImageInstanceForIsvResponseBody.Modules.Properties.PropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeImageInstanceForIsvResponseBody.Modules.Properties.PropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.propertyValues = tmp
                }
                if let value = dict["ShowType"] as? String {
                    self.showType = value
                }
            }
        }
        public var code: String?

        public var id: String?

        public var name: String?

        public var properties: [DescribeImageInstanceForIsvResponseBody.Modules.Properties]?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.properties != nil {
                var tmp : [Any] = []
                for k in self.properties! {
                    tmp.append(k.toMap())
                }
                map["Properties"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Properties"] as? [Any?] {
                var tmp : [DescribeImageInstanceForIsvResponseBody.Modules.Properties] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageInstanceForIsvResponseBody.Modules.Properties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.properties = tmp
            }
        }
    }
    public class RelationalData : Tea.TeaModel {
        public var serviceStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
        }
    }
    public var activeAddress: String?

    public var appJson: String?

    public var autoRenewal: String?

    public var beganOn: Int64?

    public var componentJson: String?

    public var constraints: String?

    public var createdOn: Int64?

    public var endOn: Int64?

    public var extendJson: String?

    public var hostJson: String?

    public var instanceId: Int64?

    public var isTrial: Bool?

    public var licenseCode: String?

    public var modules: [DescribeImageInstanceForIsvResponseBody.Modules]?

    public var orderId: Int64?

    public var productCode: String?

    public var productName: String?

    public var productSkuCode: String?

    public var productType: String?

    public var relationalData: DescribeImageInstanceForIsvResponseBody.RelationalData?

    public var requestId: String?

    public var status: String?

    public var supplierName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.relationalData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddress != nil {
            map["ActiveAddress"] = self.activeAddress!
        }
        if self.appJson != nil {
            map["AppJson"] = self.appJson!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.beganOn != nil {
            map["BeganOn"] = self.beganOn!
        }
        if self.componentJson != nil {
            map["ComponentJson"] = self.componentJson!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.createdOn != nil {
            map["CreatedOn"] = self.createdOn!
        }
        if self.endOn != nil {
            map["EndOn"] = self.endOn!
        }
        if self.extendJson != nil {
            map["ExtendJson"] = self.extendJson!
        }
        if self.hostJson != nil {
            map["HostJson"] = self.hostJson!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        if self.modules != nil {
            var tmp : [Any] = []
            for k in self.modules! {
                tmp.append(k.toMap())
            }
            map["Modules"] = tmp
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productSkuCode != nil {
            map["ProductSkuCode"] = self.productSkuCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.relationalData != nil {
            map["RelationalData"] = self.relationalData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddress"] as? String {
            self.activeAddress = value
        }
        if let value = dict["AppJson"] as? String {
            self.appJson = value
        }
        if let value = dict["AutoRenewal"] as? String {
            self.autoRenewal = value
        }
        if let value = dict["BeganOn"] as? Int64 {
            self.beganOn = value
        }
        if let value = dict["ComponentJson"] as? String {
            self.componentJson = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["CreatedOn"] as? Int64 {
            self.createdOn = value
        }
        if let value = dict["EndOn"] as? Int64 {
            self.endOn = value
        }
        if let value = dict["ExtendJson"] as? String {
            self.extendJson = value
        }
        if let value = dict["HostJson"] as? String {
            self.hostJson = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
        if let value = dict["Modules"] as? [Any?] {
            var tmp : [DescribeImageInstanceForIsvResponseBody.Modules] = []
            for v in value {
                if v != nil {
                    var model = DescribeImageInstanceForIsvResponseBody.Modules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modules = tmp
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductSkuCode"] as? String {
            self.productSkuCode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RelationalData"] as? [String: Any?] {
            var model = DescribeImageInstanceForIsvResponseBody.RelationalData()
            model.fromMap(value)
            self.relationalData = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
    }
}

public class DescribeImageInstanceForIsvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageInstanceForIsvResponseBody?

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
            var model = DescribeImageInstanceForIsvResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var orderType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
        public class Module : Tea.TeaModel {
            public class Properties : Tea.TeaModel {
                public class Property : Tea.TeaModel {
                    public class PropertyValues : Tea.TeaModel {
                        public class PropertyValue : Tea.TeaModel {
                            public var displayName: String?

                            public var max: String?

                            public var min: String?

                            public var remark: String?

                            public var step: String?

                            public var type: String?

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
                                if self.displayName != nil {
                                    map["DisplayName"] = self.displayName!
                                }
                                if self.max != nil {
                                    map["Max"] = self.max!
                                }
                                if self.min != nil {
                                    map["Min"] = self.min!
                                }
                                if self.remark != nil {
                                    map["Remark"] = self.remark!
                                }
                                if self.step != nil {
                                    map["Step"] = self.step!
                                }
                                if self.type != nil {
                                    map["Type"] = self.type!
                                }
                                if self.value != nil {
                                    map["Value"] = self.value!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["DisplayName"] as? String {
                                    self.displayName = value
                                }
                                if let value = dict["Max"] as? String {
                                    self.max = value
                                }
                                if let value = dict["Min"] as? String {
                                    self.min = value
                                }
                                if let value = dict["Remark"] as? String {
                                    self.remark = value
                                }
                                if let value = dict["Step"] as? String {
                                    self.step = value
                                }
                                if let value = dict["Type"] as? String {
                                    self.type = value
                                }
                                if let value = dict["Value"] as? String {
                                    self.value = value
                                }
                            }
                        }
                        public var propertyValue: [DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues.PropertyValue]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.propertyValue != nil {
                                var tmp : [Any] = []
                                for k in self.propertyValue! {
                                    tmp.append(k.toMap())
                                }
                                map["PropertyValue"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["PropertyValue"] as? [Any?] {
                                var tmp : [DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues.PropertyValue] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues.PropertyValue()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.propertyValue = tmp
                            }
                        }
                    }
                    public var displayUnit: String?

                    public var key: String?

                    public var name: String?

                    public var propertyValues: DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues?

                    public var showType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.propertyValues?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.displayUnit != nil {
                            map["DisplayUnit"] = self.displayUnit!
                        }
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.propertyValues != nil {
                            map["PropertyValues"] = self.propertyValues?.toMap()
                        }
                        if self.showType != nil {
                            map["ShowType"] = self.showType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DisplayUnit"] as? String {
                            self.displayUnit = value
                        }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["PropertyValues"] as? [String: Any?] {
                            var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues()
                            model.fromMap(value)
                            self.propertyValues = model
                        }
                        if let value = dict["ShowType"] as? String {
                            self.showType = value
                        }
                    }
                }
                public var property: [DescribeInstanceResponseBody.Modules.Module.Properties.Property]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.property != nil {
                        var tmp : [Any] = []
                        for k in self.property! {
                            tmp.append(k.toMap())
                        }
                        map["Property"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Property"] as? [Any?] {
                        var tmp : [DescribeInstanceResponseBody.Modules.Module.Properties.Property] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.property = tmp
                    }
                }
            }
            public var code: String?

            public var id: String?

            public var name: String?

            public var properties: DescribeInstanceResponseBody.Modules.Module.Properties?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.properties?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Properties"] as? [String: Any?] {
                    var model = DescribeInstanceResponseBody.Modules.Module.Properties()
                    model.fromMap(value)
                    self.properties = model
                }
            }
        }
        public var module: [DescribeInstanceResponseBody.Modules.Module]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.module != nil {
                var tmp : [Any] = []
                for k in self.module! {
                    tmp.append(k.toMap())
                }
                map["Module"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Module"] as? [Any?] {
                var tmp : [DescribeInstanceResponseBody.Modules.Module] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceResponseBody.Modules.Module()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.module = tmp
            }
        }
    }
    public class RelationalData : Tea.TeaModel {
        public var serviceStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
        }
    }
    public var activeAddress: String?

    public var appJson: String?

    public var autoRenewal: String?

    public var beganOn: Int64?

    public var componentJson: String?

    public var constraints: String?

    public var createdOn: Int64?

    public var endOn: Int64?

    public var extendJson: String?

    public var hostJson: String?

    public var instanceId: Int64?

    public var isTrial: Bool?

    public var licenseCode: String?

    public var modules: DescribeInstanceResponseBody.Modules?

    public var orderId: Int64?

    public var productCode: String?

    public var productName: String?

    public var productSkuCode: String?

    public var productType: String?

    public var relationalData: DescribeInstanceResponseBody.RelationalData?

    public var status: String?

    public var supplierName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modules?.validate()
        try self.relationalData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddress != nil {
            map["ActiveAddress"] = self.activeAddress!
        }
        if self.appJson != nil {
            map["AppJson"] = self.appJson!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.beganOn != nil {
            map["BeganOn"] = self.beganOn!
        }
        if self.componentJson != nil {
            map["ComponentJson"] = self.componentJson!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.createdOn != nil {
            map["CreatedOn"] = self.createdOn!
        }
        if self.endOn != nil {
            map["EndOn"] = self.endOn!
        }
        if self.extendJson != nil {
            map["ExtendJson"] = self.extendJson!
        }
        if self.hostJson != nil {
            map["HostJson"] = self.hostJson!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        if self.modules != nil {
            map["Modules"] = self.modules?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productSkuCode != nil {
            map["ProductSkuCode"] = self.productSkuCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.relationalData != nil {
            map["RelationalData"] = self.relationalData?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddress"] as? String {
            self.activeAddress = value
        }
        if let value = dict["AppJson"] as? String {
            self.appJson = value
        }
        if let value = dict["AutoRenewal"] as? String {
            self.autoRenewal = value
        }
        if let value = dict["BeganOn"] as? Int64 {
            self.beganOn = value
        }
        if let value = dict["ComponentJson"] as? String {
            self.componentJson = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["CreatedOn"] as? Int64 {
            self.createdOn = value
        }
        if let value = dict["EndOn"] as? Int64 {
            self.endOn = value
        }
        if let value = dict["ExtendJson"] as? String {
            self.extendJson = value
        }
        if let value = dict["HostJson"] as? String {
            self.hostJson = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
        if let value = dict["Modules"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody.Modules()
            model.fromMap(value)
            self.modules = model
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductSkuCode"] as? String {
            self.productSkuCode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RelationalData"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody.RelationalData()
            model.fromMap(value)
            self.relationalData = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
            var model = DescribeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceForIsvRequest : Tea.TeaModel {
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

public class DescribeInstanceForIsvResponseBody : Tea.TeaModel {
    public class RelationalData : Tea.TeaModel {
        public var serviceStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
        }
    }
    public var activeAddress: String?

    public var appJson: String?

    public var autoRenewal: String?

    public var beganOn: Int64?

    public var componentJson: String?

    public var createdOn: Int64?

    public var endOn: Int64?

    public var extendJson: String?

    public var hostJson: String?

    public var imageJson: String?

    public var instanceId: Int64?

    public var isTrial: Bool?

    public var licenseCode: String?

    public var orderId: Int64?

    public var productCode: String?

    public var productName: String?

    public var productSkuCode: String?

    public var productType: String?

    public var relationalData: DescribeInstanceForIsvResponseBody.RelationalData?

    public var requestId: String?

    public var status: String?

    public var supplierName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.relationalData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddress != nil {
            map["ActiveAddress"] = self.activeAddress!
        }
        if self.appJson != nil {
            map["AppJson"] = self.appJson!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.beganOn != nil {
            map["BeganOn"] = self.beganOn!
        }
        if self.componentJson != nil {
            map["ComponentJson"] = self.componentJson!
        }
        if self.createdOn != nil {
            map["CreatedOn"] = self.createdOn!
        }
        if self.endOn != nil {
            map["EndOn"] = self.endOn!
        }
        if self.extendJson != nil {
            map["ExtendJson"] = self.extendJson!
        }
        if self.hostJson != nil {
            map["HostJson"] = self.hostJson!
        }
        if self.imageJson != nil {
            map["ImageJson"] = self.imageJson!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productSkuCode != nil {
            map["ProductSkuCode"] = self.productSkuCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.relationalData != nil {
            map["RelationalData"] = self.relationalData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddress"] as? String {
            self.activeAddress = value
        }
        if let value = dict["AppJson"] as? String {
            self.appJson = value
        }
        if let value = dict["AutoRenewal"] as? String {
            self.autoRenewal = value
        }
        if let value = dict["BeganOn"] as? Int64 {
            self.beganOn = value
        }
        if let value = dict["ComponentJson"] as? String {
            self.componentJson = value
        }
        if let value = dict["CreatedOn"] as? Int64 {
            self.createdOn = value
        }
        if let value = dict["EndOn"] as? Int64 {
            self.endOn = value
        }
        if let value = dict["ExtendJson"] as? String {
            self.extendJson = value
        }
        if let value = dict["HostJson"] as? String {
            self.hostJson = value
        }
        if let value = dict["ImageJson"] as? String {
            self.imageJson = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductSkuCode"] as? String {
            self.productSkuCode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RelationalData"] as? [String: Any?] {
            var model = DescribeInstanceForIsvResponseBody.RelationalData()
            model.fromMap(value)
            self.relationalData = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
    }
}

public class DescribeInstanceForIsvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceForIsvResponseBody?

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
            var model = DescribeInstanceForIsvResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
    public var codes: String?

    public var exceptCodes: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codes != nil {
            map["Codes"] = self.codes!
        }
        if self.exceptCodes != nil {
            map["ExceptCodes"] = self.exceptCodes!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Codes"] as? String {
            self.codes = value
        }
        if let value = dict["ExceptCodes"] as? String {
            self.exceptCodes = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class InstanceItems : Tea.TeaModel {
        public class InstanceItem : Tea.TeaModel {
            public var apiJson: String?

            public var appJson: String?

            public var beganOn: Int64?

            public var createdOn: Int64?

            public var endOn: Int64?

            public var extendJson: String?

            public var hostJson: String?

            public var idaasJson: String?

            public var imageJson: String?

            public var instanceId: Int64?

            public var orderId: Int64?

            public var productCode: String?

            public var productName: String?

            public var productSkuCode: String?

            public var productType: String?

            public var status: String?

            public var supplierName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiJson != nil {
                    map["ApiJson"] = self.apiJson!
                }
                if self.appJson != nil {
                    map["AppJson"] = self.appJson!
                }
                if self.beganOn != nil {
                    map["BeganOn"] = self.beganOn!
                }
                if self.createdOn != nil {
                    map["CreatedOn"] = self.createdOn!
                }
                if self.endOn != nil {
                    map["EndOn"] = self.endOn!
                }
                if self.extendJson != nil {
                    map["ExtendJson"] = self.extendJson!
                }
                if self.hostJson != nil {
                    map["HostJson"] = self.hostJson!
                }
                if self.idaasJson != nil {
                    map["IdaasJson"] = self.idaasJson!
                }
                if self.imageJson != nil {
                    map["ImageJson"] = self.imageJson!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.productSkuCode != nil {
                    map["ProductSkuCode"] = self.productSkuCode!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.supplierName != nil {
                    map["SupplierName"] = self.supplierName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiJson"] as? String {
                    self.apiJson = value
                }
                if let value = dict["AppJson"] as? String {
                    self.appJson = value
                }
                if let value = dict["BeganOn"] as? Int64 {
                    self.beganOn = value
                }
                if let value = dict["CreatedOn"] as? Int64 {
                    self.createdOn = value
                }
                if let value = dict["EndOn"] as? Int64 {
                    self.endOn = value
                }
                if let value = dict["ExtendJson"] as? String {
                    self.extendJson = value
                }
                if let value = dict["HostJson"] as? String {
                    self.hostJson = value
                }
                if let value = dict["IdaasJson"] as? String {
                    self.idaasJson = value
                }
                if let value = dict["ImageJson"] as? String {
                    self.imageJson = value
                }
                if let value = dict["InstanceId"] as? Int64 {
                    self.instanceId = value
                }
                if let value = dict["OrderId"] as? Int64 {
                    self.orderId = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
                if let value = dict["ProductSkuCode"] as? String {
                    self.productSkuCode = value
                }
                if let value = dict["ProductType"] as? String {
                    self.productType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SupplierName"] as? String {
                    self.supplierName = value
                }
            }
        }
        public var instanceItem: [DescribeInstancesResponseBody.InstanceItems.InstanceItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceItem != nil {
                var tmp : [Any] = []
                for k in self.instanceItem! {
                    tmp.append(k.toMap())
                }
                map["InstanceItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceItem"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.InstanceItems.InstanceItem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.InstanceItems.InstanceItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceItem = tmp
            }
        }
    }
    public var instanceItems: DescribeInstancesResponseBody.InstanceItems?

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
        try self.instanceItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceItems != nil {
            map["InstanceItems"] = self.instanceItems?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceItems"] as? [String: Any?] {
            var model = DescribeInstancesResponseBody.InstanceItems()
            model.fromMap(value)
            self.instanceItems = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

public class DescribeInvoiceForIsvRequest : Tea.TeaModel {
    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var invoiceId: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageIndex: Int64?

    public var pageSize: Int64?

    public var status: Int64?

    public var type: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.invoiceId != nil {
            map["InvoiceId"] = self.invoiceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateTimeStart"] as? String {
            self.createTimeStart = value
        }
        if let value = dict["InvoiceId"] as? Int64 {
            self.invoiceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageIndex"] as? Int64 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DescribeInvoiceForIsvResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class EvaluateList : Tea.TeaModel {
            public var agent: Bool?

            public var amount: String?

            public var bizTimeStr: String?

            public var id: String?

            public var orderType: String?

            public var outBizId: String?

            public var productCode: String?

            public var productName: String?

            public var realAliyunId: String?

            public var realAliyunPk: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agent != nil {
                    map["Agent"] = self.agent!
                }
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.bizTimeStr != nil {
                    map["BizTimeStr"] = self.bizTimeStr!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.outBizId != nil {
                    map["OutBizId"] = self.outBizId!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.realAliyunId != nil {
                    map["RealAliyunId"] = self.realAliyunId!
                }
                if self.realAliyunPk != nil {
                    map["RealAliyunPk"] = self.realAliyunPk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Agent"] as? Bool {
                    self.agent = value
                }
                if let value = dict["Amount"] as? String {
                    self.amount = value
                }
                if let value = dict["BizTimeStr"] as? String {
                    self.bizTimeStr = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["OrderType"] as? String {
                    self.orderType = value
                }
                if let value = dict["OutBizId"] as? String {
                    self.outBizId = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
                if let value = dict["RealAliyunId"] as? String {
                    self.realAliyunId = value
                }
                if let value = dict["RealAliyunPk"] as? String {
                    self.realAliyunPk = value
                }
            }
        }
        public class InvoiceList : Tea.TeaModel {
            public var id: String?

            public var invoiceAmount: String?

            public override init() {
                super.init()
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
                if self.invoiceAmount != nil {
                    map["InvoiceAmount"] = self.invoiceAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["InvoiceAmount"] as? String {
                    self.invoiceAmount = value
                }
            }
        }
        public class ReceiptUserInfoDto : Tea.TeaModel {
            public var taxNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.taxNumber != nil {
                    map["TaxNumber"] = self.taxNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TaxNumber"] as? String {
                    self.taxNumber = value
                }
            }
        }
        public class UserAddressDto : Tea.TeaModel {
            public var addressee: String?

            public var aliyunPk: String?

            public var bizType: String?

            public var deliveryAddress: String?

            public var emails: String?

            public var phone: String?

            public var postalCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressee != nil {
                    map["Addressee"] = self.addressee!
                }
                if self.aliyunPk != nil {
                    map["AliyunPk"] = self.aliyunPk!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.deliveryAddress != nil {
                    map["DeliveryAddress"] = self.deliveryAddress!
                }
                if self.emails != nil {
                    map["Emails"] = self.emails!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.postalCode != nil {
                    map["PostalCode"] = self.postalCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Addressee"] as? String {
                    self.addressee = value
                }
                if let value = dict["AliyunPk"] as? String {
                    self.aliyunPk = value
                }
                if let value = dict["BizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["DeliveryAddress"] as? String {
                    self.deliveryAddress = value
                }
                if let value = dict["Emails"] as? String {
                    self.emails = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
                if let value = dict["PostalCode"] as? String {
                    self.postalCode = value
                }
            }
        }
        public var aliyunPk: String?

        public var checkNotice: String?

        public var createTimeStr: String?

        public var evaluateList: [DescribeInvoiceForIsvResponseBody.Result.EvaluateList]?

        public var id: String?

        public var invoiceId: String?

        public var invoiceList: [DescribeInvoiceForIsvResponseBody.Result.InvoiceList]?

        public var materialType: String?

        public var modifiedTime: String?

        public var modifiedTimeStr: String?

        public var price: String?

        public var receiptUserInfoDto: DescribeInvoiceForIsvResponseBody.Result.ReceiptUserInfoDto?

        public var status: String?

        public var title: String?

        public var type: String?

        public var userAddressDto: DescribeInvoiceForIsvResponseBody.Result.UserAddressDto?

        public var userNotice: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.receiptUserInfoDto?.validate()
            try self.userAddressDto?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunPk != nil {
                map["AliyunPk"] = self.aliyunPk!
            }
            if self.checkNotice != nil {
                map["CheckNotice"] = self.checkNotice!
            }
            if self.createTimeStr != nil {
                map["CreateTimeStr"] = self.createTimeStr!
            }
            if self.evaluateList != nil {
                var tmp : [Any] = []
                for k in self.evaluateList! {
                    tmp.append(k.toMap())
                }
                map["EvaluateList"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.invoiceId != nil {
                map["InvoiceId"] = self.invoiceId!
            }
            if self.invoiceList != nil {
                var tmp : [Any] = []
                for k in self.invoiceList! {
                    tmp.append(k.toMap())
                }
                map["InvoiceList"] = tmp
            }
            if self.materialType != nil {
                map["MaterialType"] = self.materialType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.modifiedTimeStr != nil {
                map["ModifiedTimeStr"] = self.modifiedTimeStr!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.receiptUserInfoDto != nil {
                map["ReceiptUserInfoDto"] = self.receiptUserInfoDto?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userAddressDto != nil {
                map["UserAddressDto"] = self.userAddressDto?.toMap()
            }
            if self.userNotice != nil {
                map["UserNotice"] = self.userNotice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunPk"] as? String {
                self.aliyunPk = value
            }
            if let value = dict["CheckNotice"] as? String {
                self.checkNotice = value
            }
            if let value = dict["CreateTimeStr"] as? String {
                self.createTimeStr = value
            }
            if let value = dict["EvaluateList"] as? [Any?] {
                var tmp : [DescribeInvoiceForIsvResponseBody.Result.EvaluateList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInvoiceForIsvResponseBody.Result.EvaluateList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.evaluateList = tmp
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InvoiceId"] as? String {
                self.invoiceId = value
            }
            if let value = dict["InvoiceList"] as? [Any?] {
                var tmp : [DescribeInvoiceForIsvResponseBody.Result.InvoiceList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInvoiceForIsvResponseBody.Result.InvoiceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invoiceList = tmp
            }
            if let value = dict["MaterialType"] as? String {
                self.materialType = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ModifiedTimeStr"] as? String {
                self.modifiedTimeStr = value
            }
            if let value = dict["Price"] as? String {
                self.price = value
            }
            if let value = dict["ReceiptUserInfoDto"] as? [String: Any?] {
                var model = DescribeInvoiceForIsvResponseBody.Result.ReceiptUserInfoDto()
                model.fromMap(value)
                self.receiptUserInfoDto = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserAddressDto"] as? [String: Any?] {
                var model = DescribeInvoiceForIsvResponseBody.Result.UserAddressDto()
                model.fromMap(value)
                self.userAddressDto = model
            }
            if let value = dict["UserNotice"] as? String {
                self.userNotice = value
            }
        }
    }
    public var code: String?

    public var count: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var result: [DescribeInvoiceForIsvResponseBody.Result]?

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
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
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
        if let value = dict["Count"] as? String {
            self.count = value
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
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeInvoiceForIsvResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeInvoiceForIsvResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeInvoiceForIsvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvoiceForIsvResponseBody?

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
            var model = DescribeInvoiceForIsvResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLicenseRequest : Tea.TeaModel {
    public var licenseCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
    }
}

public class DescribeLicenseResponseBody : Tea.TeaModel {
    public class License : Tea.TeaModel {
        public class ExtendArray : Tea.TeaModel {
            public class LicenseAttribute : Tea.TeaModel {
                public var code: String?

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
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var licenseAttribute: [DescribeLicenseResponseBody.License.ExtendArray.LicenseAttribute]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.licenseAttribute != nil {
                    var tmp : [Any] = []
                    for k in self.licenseAttribute! {
                        tmp.append(k.toMap())
                    }
                    map["LicenseAttribute"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LicenseAttribute"] as? [Any?] {
                    var tmp : [DescribeLicenseResponseBody.License.ExtendArray.LicenseAttribute] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeLicenseResponseBody.License.ExtendArray.LicenseAttribute()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.licenseAttribute = tmp
                }
            }
        }
        public class ExtendInfo : Tea.TeaModel {
            public var accountQuantity: Int64?

            public var aliUid: Int64?

            public var email: String?

            public var mobile: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountQuantity != nil {
                    map["AccountQuantity"] = self.accountQuantity!
                }
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountQuantity"] as? Int64 {
                    self.accountQuantity = value
                }
                if let value = dict["AliUid"] as? Int64 {
                    self.aliUid = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
            }
        }
        public var activateTime: String?

        public var createTime: String?

        public var expiredTime: String?

        public var extendArray: DescribeLicenseResponseBody.License.ExtendArray?

        public var extendInfo: DescribeLicenseResponseBody.License.ExtendInfo?

        public var instanceId: String?

        public var licenseCode: String?

        public var licenseStatus: String?

        public var productCode: String?

        public var productName: String?

        public var productSkuId: String?

        public var supplierName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extendArray?.validate()
            try self.extendInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activateTime != nil {
                map["ActivateTime"] = self.activateTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.extendArray != nil {
                map["ExtendArray"] = self.extendArray?.toMap()
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.licenseStatus != nil {
                map["LicenseStatus"] = self.licenseStatus!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productSkuId != nil {
                map["ProductSkuId"] = self.productSkuId!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivateTime"] as? String {
                self.activateTime = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["ExtendArray"] as? [String: Any?] {
                var model = DescribeLicenseResponseBody.License.ExtendArray()
                model.fromMap(value)
                self.extendArray = model
            }
            if let value = dict["ExtendInfo"] as? [String: Any?] {
                var model = DescribeLicenseResponseBody.License.ExtendInfo()
                model.fromMap(value)
                self.extendInfo = model
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["LicenseStatus"] as? String {
                self.licenseStatus = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProductSkuId"] as? String {
                self.productSkuId = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
        }
    }
    public var license: DescribeLicenseResponseBody.License?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.license?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.license != nil {
            map["License"] = self.license?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["License"] as? [String: Any?] {
            var model = DescribeLicenseResponseBody.License()
            model.fromMap(value)
            self.license = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLicenseResponseBody?

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
            var model = DescribeLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOrderRequest : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
    }
}

public class DescribeOrderResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            if let value = dict["InstanceId"] as? [String] {
                self.instanceId = value
            }
        }
    }
    public class SupplierTelephones : Tea.TeaModel {
        public var telephone: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.telephone != nil {
                map["Telephone"] = self.telephone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Telephone"] as? [String] {
                self.telephone = value
            }
        }
    }
    public var accountQuantity: Int64?

    public var aliUid: Int64?

    public var components: [String: Any]?

    public var couponPrice: Double?

    public var createdOn: Int64?

    public var instanceIds: DescribeOrderResponseBody.InstanceIds?

    public var orderId: Int64?

    public var orderStatus: String?

    public var orderType: String?

    public var originalPrice: Double?

    public var paidOn: Int64?

    public var payStatus: String?

    public var paymentPrice: Double?

    public var periodType: String?

    public var productCode: String?

    public var productName: String?

    public var productSkuCode: String?

    public var quantity: Int32?

    public var requestId: String?

    public var supplierCompanyName: String?

    public var supplierTelephones: DescribeOrderResponseBody.SupplierTelephones?

    public var totalPrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
        try self.supplierTelephones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountQuantity != nil {
            map["AccountQuantity"] = self.accountQuantity!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.couponPrice != nil {
            map["CouponPrice"] = self.couponPrice!
        }
        if self.createdOn != nil {
            map["CreatedOn"] = self.createdOn!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.paidOn != nil {
            map["PaidOn"] = self.paidOn!
        }
        if self.payStatus != nil {
            map["PayStatus"] = self.payStatus!
        }
        if self.paymentPrice != nil {
            map["PaymentPrice"] = self.paymentPrice!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productSkuCode != nil {
            map["ProductSkuCode"] = self.productSkuCode!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supplierCompanyName != nil {
            map["SupplierCompanyName"] = self.supplierCompanyName!
        }
        if self.supplierTelephones != nil {
            map["SupplierTelephones"] = self.supplierTelephones?.toMap()
        }
        if self.totalPrice != nil {
            map["TotalPrice"] = self.totalPrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountQuantity"] as? Int64 {
            self.accountQuantity = value
        }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["Components"] as? [String: Any] {
            self.components = value
        }
        if let value = dict["CouponPrice"] as? Double {
            self.couponPrice = value
        }
        if let value = dict["CreatedOn"] as? Int64 {
            self.createdOn = value
        }
        if let value = dict["InstanceIds"] as? [String: Any?] {
            var model = DescribeOrderResponseBody.InstanceIds()
            model.fromMap(value)
            self.instanceIds = model
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OriginalPrice"] as? Double {
            self.originalPrice = value
        }
        if let value = dict["PaidOn"] as? Int64 {
            self.paidOn = value
        }
        if let value = dict["PayStatus"] as? String {
            self.payStatus = value
        }
        if let value = dict["PaymentPrice"] as? Double {
            self.paymentPrice = value
        }
        if let value = dict["PeriodType"] as? String {
            self.periodType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductSkuCode"] as? String {
            self.productSkuCode = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupplierCompanyName"] as? String {
            self.supplierCompanyName = value
        }
        if let value = dict["SupplierTelephones"] as? [String: Any?] {
            var model = DescribeOrderResponseBody.SupplierTelephones()
            model.fromMap(value)
            self.supplierTelephones = model
        }
        if let value = dict["TotalPrice"] as? Double {
            self.totalPrice = value
        }
    }
}

public class DescribeOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOrderResponseBody?

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
            var model = DescribeOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOrderForIsvRequest : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
    }
}

public class DescribeOrderForIsvResponseBody : Tea.TeaModel {
    public var accountQuantity: Int64?

    public var aliUid: Int64?

    public var components: Any?

    public var couponPrice: Double?

    public var createdOn: Int64?

    public var instanceIds: [String]?

    public var orderId: Int64?

    public var orderStatus: String?

    public var orderType: String?

    public var originalPrice: Double?

    public var paidOn: Int64?

    public var payStatus: String?

    public var paymentPrice: Double?

    public var periodType: String?

    public var productCode: String?

    public var productName: String?

    public var productSkuCode: String?

    public var quantity: Int32?

    public var requestId: String?

    public var totalPrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountQuantity != nil {
            map["AccountQuantity"] = self.accountQuantity!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.couponPrice != nil {
            map["CouponPrice"] = self.couponPrice!
        }
        if self.createdOn != nil {
            map["CreatedOn"] = self.createdOn!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.paidOn != nil {
            map["PaidOn"] = self.paidOn!
        }
        if self.payStatus != nil {
            map["PayStatus"] = self.payStatus!
        }
        if self.paymentPrice != nil {
            map["PaymentPrice"] = self.paymentPrice!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productSkuCode != nil {
            map["ProductSkuCode"] = self.productSkuCode!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalPrice != nil {
            map["TotalPrice"] = self.totalPrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountQuantity"] as? Int64 {
            self.accountQuantity = value
        }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["Components"] as? Any {
            self.components = value
        }
        if let value = dict["CouponPrice"] as? Double {
            self.couponPrice = value
        }
        if let value = dict["CreatedOn"] as? Int64 {
            self.createdOn = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderStatus"] as? String {
            self.orderStatus = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["OriginalPrice"] as? Double {
            self.originalPrice = value
        }
        if let value = dict["PaidOn"] as? Int64 {
            self.paidOn = value
        }
        if let value = dict["PayStatus"] as? String {
            self.payStatus = value
        }
        if let value = dict["PaymentPrice"] as? Double {
            self.paymentPrice = value
        }
        if let value = dict["PeriodType"] as? String {
            self.periodType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductSkuCode"] as? String {
            self.productSkuCode = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalPrice"] as? Double {
            self.totalPrice = value
        }
    }
}

public class DescribeOrderForIsvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOrderForIsvResponseBody?

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
            var model = DescribeOrderForIsvResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePriceRequest : Tea.TeaModel {
    public var commodity: String?

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
        if self.commodity != nil {
            map["Commodity"] = self.commodity!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commodity"] as? String {
            self.commodity = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
    }
}

public class DescribePriceResponseBody : Tea.TeaModel {
    public class Coupons : Tea.TeaModel {
        public class Coupon : Tea.TeaModel {
            public var canPromFee: Double?

            public var couponDesc: String?

            public var couponName: String?

            public var couponOptionCode: String?

            public var couponOptionNo: String?

            public var isSelected: Bool?

            public override init() {
                super.init()
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
                if self.couponDesc != nil {
                    map["CouponDesc"] = self.couponDesc!
                }
                if self.couponName != nil {
                    map["CouponName"] = self.couponName!
                }
                if self.couponOptionCode != nil {
                    map["CouponOptionCode"] = self.couponOptionCode!
                }
                if self.couponOptionNo != nil {
                    map["CouponOptionNo"] = self.couponOptionNo!
                }
                if self.isSelected != nil {
                    map["IsSelected"] = self.isSelected!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CanPromFee"] as? Double {
                    self.canPromFee = value
                }
                if let value = dict["CouponDesc"] as? String {
                    self.couponDesc = value
                }
                if let value = dict["CouponName"] as? String {
                    self.couponName = value
                }
                if let value = dict["CouponOptionCode"] as? String {
                    self.couponOptionCode = value
                }
                if let value = dict["CouponOptionNo"] as? String {
                    self.couponOptionNo = value
                }
                if let value = dict["IsSelected"] as? Bool {
                    self.isSelected = value
                }
            }
        }
        public var coupon: [DescribePriceResponseBody.Coupons.Coupon]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coupon != nil {
                var tmp : [Any] = []
                for k in self.coupon! {
                    tmp.append(k.toMap())
                }
                map["Coupon"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Coupon"] as? [Any?] {
                var tmp : [DescribePriceResponseBody.Coupons.Coupon] = []
                for v in value {
                    if v != nil {
                        var model = DescribePriceResponseBody.Coupons.Coupon()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.coupon = tmp
            }
        }
    }
    public class PromotionRules : Tea.TeaModel {
        public class PromotionRule : Tea.TeaModel {
            public var name: String?

            public var ruleId: String?

            public var title: String?

            public override init() {
                super.init()
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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public var promotionRule: [DescribePriceResponseBody.PromotionRules.PromotionRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.promotionRule != nil {
                var tmp : [Any] = []
                for k in self.promotionRule! {
                    tmp.append(k.toMap())
                }
                map["PromotionRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PromotionRule"] as? [Any?] {
                var tmp : [DescribePriceResponseBody.PromotionRules.PromotionRule] = []
                for v in value {
                    if v != nil {
                        var model = DescribePriceResponseBody.PromotionRules.PromotionRule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.promotionRule = tmp
            }
        }
    }
    public var coupons: DescribePriceResponseBody.Coupons?

    public var currency: String?

    public var cuxiao: Bool?

    public var cycle: String?

    public var discountPrice: Double?

    public var duration: Int32?

    public var expressionCode: String?

    public var expressionMessage: String?

    public var infoTitle: String?

    public var originalPrice: Double?

    public var productCode: String?

    public var promotionRules: DescribePriceResponseBody.PromotionRules?

    public var tradePrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.coupons?.validate()
        try self.promotionRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coupons != nil {
            map["Coupons"] = self.coupons?.toMap()
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.cuxiao != nil {
            map["Cuxiao"] = self.cuxiao!
        }
        if self.cycle != nil {
            map["Cycle"] = self.cycle!
        }
        if self.discountPrice != nil {
            map["DiscountPrice"] = self.discountPrice!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.expressionCode != nil {
            map["ExpressionCode"] = self.expressionCode!
        }
        if self.expressionMessage != nil {
            map["ExpressionMessage"] = self.expressionMessage!
        }
        if self.infoTitle != nil {
            map["InfoTitle"] = self.infoTitle!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.promotionRules != nil {
            map["PromotionRules"] = self.promotionRules?.toMap()
        }
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Coupons"] as? [String: Any?] {
            var model = DescribePriceResponseBody.Coupons()
            model.fromMap(value)
            self.coupons = model
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["Cuxiao"] as? Bool {
            self.cuxiao = value
        }
        if let value = dict["Cycle"] as? String {
            self.cycle = value
        }
        if let value = dict["DiscountPrice"] as? Double {
            self.discountPrice = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ExpressionCode"] as? String {
            self.expressionCode = value
        }
        if let value = dict["ExpressionMessage"] as? String {
            self.expressionMessage = value
        }
        if let value = dict["InfoTitle"] as? String {
            self.infoTitle = value
        }
        if let value = dict["OriginalPrice"] as? Double {
            self.originalPrice = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["PromotionRules"] as? [String: Any?] {
            var model = DescribePriceResponseBody.PromotionRules()
            model.fromMap(value)
            self.promotionRules = model
        }
        if let value = dict["TradePrice"] as? Double {
            self.tradePrice = value
        }
    }
}

public class DescribePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePriceResponseBody?

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
            var model = DescribePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProductRequest : Tea.TeaModel {
    public var aliUid: String?

    public var code: String?

    public var queryDraft: Bool?

    public override init() {
        super.init()
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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.queryDraft != nil {
            map["QueryDraft"] = self.queryDraft!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? String {
            self.aliUid = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["QueryDraft"] as? Bool {
            self.queryDraft = value
        }
    }
}

public class DescribeProductResponseBody : Tea.TeaModel {
    public class ProductExtras : Tea.TeaModel {
        public class ProductExtra : Tea.TeaModel {
            public var key: String?

            public var label: String?

            public var order: Int32?

            public var type: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Order"] as? Int32 {
                    self.order = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Values"] as? String {
                    self.values = value
                }
            }
        }
        public var productExtra: [DescribeProductResponseBody.ProductExtras.ProductExtra]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productExtra != nil {
                var tmp : [Any] = []
                for k in self.productExtra! {
                    tmp.append(k.toMap())
                }
                map["ProductExtra"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductExtra"] as? [Any?] {
                var tmp : [DescribeProductResponseBody.ProductExtras.ProductExtra] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProductResponseBody.ProductExtras.ProductExtra()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productExtra = tmp
            }
        }
    }
    public class ProductSkus : Tea.TeaModel {
        public class ProductSku : Tea.TeaModel {
            public class Modules : Tea.TeaModel {
                public class Module : Tea.TeaModel {
                    public class Properties : Tea.TeaModel {
                        public class Property : Tea.TeaModel {
                            public class PropertyValues : Tea.TeaModel {
                                public class PropertyValue : Tea.TeaModel {
                                    public var displayName: String?

                                    public var max: String?

                                    public var min: String?

                                    public var remark: String?

                                    public var step: String?

                                    public var type: String?

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
                                        if self.displayName != nil {
                                            map["DisplayName"] = self.displayName!
                                        }
                                        if self.max != nil {
                                            map["Max"] = self.max!
                                        }
                                        if self.min != nil {
                                            map["Min"] = self.min!
                                        }
                                        if self.remark != nil {
                                            map["Remark"] = self.remark!
                                        }
                                        if self.step != nil {
                                            map["Step"] = self.step!
                                        }
                                        if self.type != nil {
                                            map["Type"] = self.type!
                                        }
                                        if self.value != nil {
                                            map["Value"] = self.value!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["DisplayName"] as? String {
                                            self.displayName = value
                                        }
                                        if let value = dict["Max"] as? String {
                                            self.max = value
                                        }
                                        if let value = dict["Min"] as? String {
                                            self.min = value
                                        }
                                        if let value = dict["Remark"] as? String {
                                            self.remark = value
                                        }
                                        if let value = dict["Step"] as? String {
                                            self.step = value
                                        }
                                        if let value = dict["Type"] as? String {
                                            self.type = value
                                        }
                                        if let value = dict["Value"] as? String {
                                            self.value = value
                                        }
                                    }
                                }
                                public var propertyValue: [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues.PropertyValue]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.propertyValue != nil {
                                        var tmp : [Any] = []
                                        for k in self.propertyValue! {
                                            tmp.append(k.toMap())
                                        }
                                        map["PropertyValue"] = tmp
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["PropertyValue"] as? [Any?] {
                                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues.PropertyValue] = []
                                        for v in value {
                                            if v != nil {
                                                var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues.PropertyValue()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.propertyValue = tmp
                                    }
                                }
                            }
                            public var displayUnit: String?

                            public var key: String?

                            public var name: String?

                            public var propertyValues: DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues?

                            public var showType: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.propertyValues?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.displayUnit != nil {
                                    map["DisplayUnit"] = self.displayUnit!
                                }
                                if self.key != nil {
                                    map["Key"] = self.key!
                                }
                                if self.name != nil {
                                    map["Name"] = self.name!
                                }
                                if self.propertyValues != nil {
                                    map["PropertyValues"] = self.propertyValues?.toMap()
                                }
                                if self.showType != nil {
                                    map["ShowType"] = self.showType!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["DisplayUnit"] as? String {
                                    self.displayUnit = value
                                }
                                if let value = dict["Key"] as? String {
                                    self.key = value
                                }
                                if let value = dict["Name"] as? String {
                                    self.name = value
                                }
                                if let value = dict["PropertyValues"] as? [String: Any?] {
                                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues()
                                    model.fromMap(value)
                                    self.propertyValues = model
                                }
                                if let value = dict["ShowType"] as? String {
                                    self.showType = value
                                }
                            }
                        }
                        public var property: [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.property != nil {
                                var tmp : [Any] = []
                                for k in self.property! {
                                    tmp.append(k.toMap())
                                }
                                map["Property"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Property"] as? [Any?] {
                                var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.property = tmp
                            }
                        }
                    }
                    public var code: String?

                    public var id: String?

                    public var name: String?

                    public var properties: DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.properties?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.code != nil {
                            map["Code"] = self.code!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.properties != nil {
                            map["Properties"] = self.properties?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Code"] as? String {
                            self.code = value
                        }
                        if let value = dict["Id"] as? String {
                            self.id = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Properties"] as? [String: Any?] {
                            var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties()
                            model.fromMap(value)
                            self.properties = model
                        }
                    }
                }
                public var module: [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.module != nil {
                        var tmp : [Any] = []
                        for k in self.module! {
                            tmp.append(k.toMap())
                        }
                        map["Module"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Module"] as? [Any?] {
                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.module = tmp
                    }
                }
            }
            public class OrderPeriods : Tea.TeaModel {
                public class OrderPeriod : Tea.TeaModel {
                    public var name: String?

                    public var periodType: String?

                    public override init() {
                        super.init()
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
                        if self.periodType != nil {
                            map["PeriodType"] = self.periodType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["PeriodType"] as? String {
                            self.periodType = value
                        }
                    }
                }
                public var orderPeriod: [DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods.OrderPeriod]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.orderPeriod != nil {
                        var tmp : [Any] = []
                        for k in self.orderPeriod! {
                            tmp.append(k.toMap())
                        }
                        map["OrderPeriod"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OrderPeriod"] as? [Any?] {
                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods.OrderPeriod] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods.OrderPeriod()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.orderPeriod = tmp
                    }
                }
            }
            public var chargeType: String?

            public var code: String?

            public var constraints: String?

            public var hidden: Bool?

            public var modules: DescribeProductResponseBody.ProductSkus.ProductSku.Modules?

            public var name: String?

            public var orderPeriods: DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.modules?.validate()
                try self.orderPeriods?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.constraints != nil {
                    map["Constraints"] = self.constraints!
                }
                if self.hidden != nil {
                    map["Hidden"] = self.hidden!
                }
                if self.modules != nil {
                    map["Modules"] = self.modules?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.orderPeriods != nil {
                    map["OrderPeriods"] = self.orderPeriods?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Constraints"] as? String {
                    self.constraints = value
                }
                if let value = dict["Hidden"] as? Bool {
                    self.hidden = value
                }
                if let value = dict["Modules"] as? [String: Any?] {
                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules()
                    model.fromMap(value)
                    self.modules = model
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OrderPeriods"] as? [String: Any?] {
                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods()
                    model.fromMap(value)
                    self.orderPeriods = model
                }
            }
        }
        public var productSku: [DescribeProductResponseBody.ProductSkus.ProductSku]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productSku != nil {
                var tmp : [Any] = []
                for k in self.productSku! {
                    tmp.append(k.toMap())
                }
                map["ProductSku"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductSku"] as? [Any?] {
                var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProductResponseBody.ProductSkus.ProductSku()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productSku = tmp
            }
        }
    }
    public class ShopInfo : Tea.TeaModel {
        public class Telephones : Tea.TeaModel {
            public var telephone: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.telephone != nil {
                    map["Telephone"] = self.telephone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Telephone"] as? [String] {
                    self.telephone = value
                }
            }
        }
        public class WangWangs : Tea.TeaModel {
            public class WangWang : Tea.TeaModel {
                public var remark: String?

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
                    if self.remark != nil {
                        map["Remark"] = self.remark!
                    }
                    if self.userName != nil {
                        map["UserName"] = self.userName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Remark"] as? String {
                        self.remark = value
                    }
                    if let value = dict["UserName"] as? String {
                        self.userName = value
                    }
                }
            }
            public var wangWang: [DescribeProductResponseBody.ShopInfo.WangWangs.WangWang]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.wangWang != nil {
                    var tmp : [Any] = []
                    for k in self.wangWang! {
                        tmp.append(k.toMap())
                    }
                    map["WangWang"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["WangWang"] as? [Any?] {
                    var tmp : [DescribeProductResponseBody.ShopInfo.WangWangs.WangWang] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeProductResponseBody.ShopInfo.WangWangs.WangWang()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.wangWang = tmp
                }
            }
        }
        public var emails: String?

        public var id: Int64?

        public var name: String?

        public var telephones: DescribeProductResponseBody.ShopInfo.Telephones?

        public var wangWangs: DescribeProductResponseBody.ShopInfo.WangWangs?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.telephones?.validate()
            try self.wangWangs?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.emails != nil {
                map["Emails"] = self.emails!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.telephones != nil {
                map["Telephones"] = self.telephones?.toMap()
            }
            if self.wangWangs != nil {
                map["WangWangs"] = self.wangWangs?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Emails"] as? String {
                self.emails = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Telephones"] as? [String: Any?] {
                var model = DescribeProductResponseBody.ShopInfo.Telephones()
                model.fromMap(value)
                self.telephones = model
            }
            if let value = dict["WangWangs"] as? [String: Any?] {
                var model = DescribeProductResponseBody.ShopInfo.WangWangs()
                model.fromMap(value)
                self.wangWangs = model
            }
        }
    }
    public var auditFailMsg: String?

    public var auditStatus: String?

    public var auditTime: Int64?

    public var code: String?

    public var description_: String?

    public var frontCategoryId: Int64?

    public var gmtCreated: Int64?

    public var gmtModified: Int64?

    public var name: String?

    public var picUrl: String?

    public var productExtras: DescribeProductResponseBody.ProductExtras?

    public var productSkus: DescribeProductResponseBody.ProductSkus?

    public var requestId: String?

    public var score: Double?

    public var shopInfo: DescribeProductResponseBody.ShopInfo?

    public var shortDescription: String?

    public var status: String?

    public var supplierPk: Int64?

    public var type: String?

    public var useCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productExtras?.validate()
        try self.productSkus?.validate()
        try self.shopInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditFailMsg != nil {
            map["AuditFailMsg"] = self.auditFailMsg!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.auditTime != nil {
            map["AuditTime"] = self.auditTime!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.frontCategoryId != nil {
            map["FrontCategoryId"] = self.frontCategoryId!
        }
        if self.gmtCreated != nil {
            map["GmtCreated"] = self.gmtCreated!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.picUrl != nil {
            map["PicUrl"] = self.picUrl!
        }
        if self.productExtras != nil {
            map["ProductExtras"] = self.productExtras?.toMap()
        }
        if self.productSkus != nil {
            map["ProductSkus"] = self.productSkus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.shopInfo != nil {
            map["ShopInfo"] = self.shopInfo?.toMap()
        }
        if self.shortDescription != nil {
            map["ShortDescription"] = self.shortDescription!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supplierPk != nil {
            map["SupplierPk"] = self.supplierPk!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditFailMsg"] as? String {
            self.auditFailMsg = value
        }
        if let value = dict["AuditStatus"] as? String {
            self.auditStatus = value
        }
        if let value = dict["AuditTime"] as? Int64 {
            self.auditTime = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FrontCategoryId"] as? Int64 {
            self.frontCategoryId = value
        }
        if let value = dict["GmtCreated"] as? Int64 {
            self.gmtCreated = value
        }
        if let value = dict["GmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PicUrl"] as? String {
            self.picUrl = value
        }
        if let value = dict["ProductExtras"] as? [String: Any?] {
            var model = DescribeProductResponseBody.ProductExtras()
            model.fromMap(value)
            self.productExtras = model
        }
        if let value = dict["ProductSkus"] as? [String: Any?] {
            var model = DescribeProductResponseBody.ProductSkus()
            model.fromMap(value)
            self.productSkus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["ShopInfo"] as? [String: Any?] {
            var model = DescribeProductResponseBody.ShopInfo()
            model.fromMap(value)
            self.shopInfo = model
        }
        if let value = dict["ShortDescription"] as? String {
            self.shortDescription = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SupplierPk"] as? Int64 {
            self.supplierPk = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UseCount"] as? Int64 {
            self.useCount = value
        }
    }
}

public class DescribeProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductResponseBody?

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
            var model = DescribeProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProductsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
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
    public var filter: [DescribeProductsRequest.Filter]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchTerm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchTerm != nil {
            map["SearchTerm"] = self.searchTerm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [DescribeProductsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = DescribeProductsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchTerm"] as? String {
            self.searchTerm = value
        }
    }
}

public class DescribeProductsResponseBody : Tea.TeaModel {
    public class ProductItems : Tea.TeaModel {
        public class ProductItem : Tea.TeaModel {
            public var categoryId: Int64?

            public var code: String?

            public var deliveryDate: String?

            public var deliveryWay: String?

            public var imageUrl: String?

            public var name: String?

            public var operationSystem: String?

            public var priceInfo: String?

            public var score: String?

            public var shortDescription: String?

            public var suggestedPrice: String?

            public var supplierId: Int64?

            public var supplierName: String?

            public var tags: String?

            public var targetUrl: String?

            public var warrantyDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.deliveryDate != nil {
                    map["DeliveryDate"] = self.deliveryDate!
                }
                if self.deliveryWay != nil {
                    map["DeliveryWay"] = self.deliveryWay!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.operationSystem != nil {
                    map["OperationSystem"] = self.operationSystem!
                }
                if self.priceInfo != nil {
                    map["PriceInfo"] = self.priceInfo!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                if self.suggestedPrice != nil {
                    map["SuggestedPrice"] = self.suggestedPrice!
                }
                if self.supplierId != nil {
                    map["SupplierId"] = self.supplierId!
                }
                if self.supplierName != nil {
                    map["SupplierName"] = self.supplierName!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.targetUrl != nil {
                    map["TargetUrl"] = self.targetUrl!
                }
                if self.warrantyDate != nil {
                    map["WarrantyDate"] = self.warrantyDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryId"] as? Int64 {
                    self.categoryId = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DeliveryDate"] as? String {
                    self.deliveryDate = value
                }
                if let value = dict["DeliveryWay"] as? String {
                    self.deliveryWay = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OperationSystem"] as? String {
                    self.operationSystem = value
                }
                if let value = dict["PriceInfo"] as? String {
                    self.priceInfo = value
                }
                if let value = dict["Score"] as? String {
                    self.score = value
                }
                if let value = dict["ShortDescription"] as? String {
                    self.shortDescription = value
                }
                if let value = dict["SuggestedPrice"] as? String {
                    self.suggestedPrice = value
                }
                if let value = dict["SupplierId"] as? Int64 {
                    self.supplierId = value
                }
                if let value = dict["SupplierName"] as? String {
                    self.supplierName = value
                }
                if let value = dict["Tags"] as? String {
                    self.tags = value
                }
                if let value = dict["TargetUrl"] as? String {
                    self.targetUrl = value
                }
                if let value = dict["WarrantyDate"] as? String {
                    self.warrantyDate = value
                }
            }
        }
        public var productItem: [DescribeProductsResponseBody.ProductItems.ProductItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productItem != nil {
                var tmp : [Any] = []
                for k in self.productItem! {
                    tmp.append(k.toMap())
                }
                map["ProductItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductItem"] as? [Any?] {
                var tmp : [DescribeProductsResponseBody.ProductItems.ProductItem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProductsResponseBody.ProductItems.ProductItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productItem = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productItems: DescribeProductsResponseBody.ProductItems?

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
        try self.productItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productItems != nil {
            map["ProductItems"] = self.productItems?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductItems"] as? [String: Any?] {
            var model = DescribeProductsResponseBody.ProductItems()
            model.fromMap(value)
            self.productItems = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductsResponseBody?

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
            var model = DescribeProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectAttachmentsRequest : Tea.TeaModel {
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

public class DescribeProjectAttachmentsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var attachmentToken: String?

        public var attachmentType: String?

        public var content: String?

        public var fileLink: String?

        public var fileLinkGmtExpired: Int64?

        public var fileName: String?

        public var fileSize: Int64?

        public var fileSuffix: String?

        public var gmtCreate: Int64?

        public var nodeId: Int64?

        public var nodeName: String?

        public var operator_: Int64?

        public var operatorName: String?

        public var operatorRole: String?

        public var stepNo: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentToken != nil {
                map["AttachmentToken"] = self.attachmentToken!
            }
            if self.attachmentType != nil {
                map["AttachmentType"] = self.attachmentType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.fileLink != nil {
                map["FileLink"] = self.fileLink!
            }
            if self.fileLinkGmtExpired != nil {
                map["FileLinkGmtExpired"] = self.fileLinkGmtExpired!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.fileSuffix != nil {
                map["FileSuffix"] = self.fileSuffix!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorRole != nil {
                map["OperatorRole"] = self.operatorRole!
            }
            if self.stepNo != nil {
                map["StepNo"] = self.stepNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentToken"] as? String {
                self.attachmentToken = value
            }
            if let value = dict["AttachmentType"] as? String {
                self.attachmentType = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["FileLink"] as? String {
                self.fileLink = value
            }
            if let value = dict["FileLinkGmtExpired"] as? Int64 {
                self.fileLinkGmtExpired = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileSize"] as? Int64 {
                self.fileSize = value
            }
            if let value = dict["FileSuffix"] as? String {
                self.fileSuffix = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["NodeId"] as? Int64 {
                self.nodeId = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["Operator"] as? Int64 {
                self.operator_ = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["OperatorRole"] as? String {
                self.operatorRole = value
            }
            if let value = dict["StepNo"] as? Int32 {
                self.stepNo = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeProjectAttachmentsResponseBody.Result]?

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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
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
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeProjectAttachmentsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeProjectAttachmentsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeProjectAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectAttachmentsResponseBody?

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
            var model = DescribeProjectAttachmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectInfoRequest : Tea.TeaModel {
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

public class DescribeProjectInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var currentStepNo: Int32?

        public var customerAliUid: Int64?

        public var finalStepNo: Int32?

        public var finishType: String?

        public var gmtCreate: Int64?

        public var gmtExpired: Int64?

        public var gmtFinished: Int64?

        public var instanceId: String?

        public var orderId: Int64?

        public var productCode: String?

        public var productName: String?

        public var productSkuCode: String?

        public var productSkuName: String?

        public var projectStatus: String?

        public var supplierAliUid: Int64?

        public var templateId: Int64?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentStepNo != nil {
                map["CurrentStepNo"] = self.currentStepNo!
            }
            if self.customerAliUid != nil {
                map["CustomerAliUid"] = self.customerAliUid!
            }
            if self.finalStepNo != nil {
                map["FinalStepNo"] = self.finalStepNo!
            }
            if self.finishType != nil {
                map["FinishType"] = self.finishType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtFinished != nil {
                map["GmtFinished"] = self.gmtFinished!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productSkuCode != nil {
                map["ProductSkuCode"] = self.productSkuCode!
            }
            if self.productSkuName != nil {
                map["ProductSkuName"] = self.productSkuName!
            }
            if self.projectStatus != nil {
                map["ProjectStatus"] = self.projectStatus!
            }
            if self.supplierAliUid != nil {
                map["SupplierAliUid"] = self.supplierAliUid!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentStepNo"] as? Int32 {
                self.currentStepNo = value
            }
            if let value = dict["CustomerAliUid"] as? Int64 {
                self.customerAliUid = value
            }
            if let value = dict["FinalStepNo"] as? Int32 {
                self.finalStepNo = value
            }
            if let value = dict["FinishType"] as? String {
                self.finishType = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtExpired"] as? Int64 {
                self.gmtExpired = value
            }
            if let value = dict["GmtFinished"] as? Int64 {
                self.gmtFinished = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProductSkuCode"] as? String {
                self.productSkuCode = value
            }
            if let value = dict["ProductSkuName"] as? String {
                self.productSkuName = value
            }
            if let value = dict["ProjectStatus"] as? String {
                self.projectStatus = value
            }
            if let value = dict["SupplierAliUid"] as? Int64 {
                self.supplierAliUid = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateType"] as? String {
                self.templateType = value
            }
        }
    }
    public var requestId: String?

    public var result: DescribeProjectInfoResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["Result"] as? [String: Any?] {
            var model = DescribeProjectInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeProjectInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectInfoResponseBody?

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
            var model = DescribeProjectInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectMessagesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageIndex: Int32?

    public override init() {
        super.init()
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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
    }
}

public class DescribeProjectMessagesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var gmtCreate: Int64?

        public var operator_: Int64?

        public var operatorName: String?

        public var operatorRole: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorRole != nil {
                map["OperatorRole"] = self.operatorRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Operator"] as? Int64 {
                self.operator_ = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["OperatorRole"] as? String {
                self.operatorRole = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeProjectMessagesResponseBody.Result]?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeProjectMessagesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeProjectMessagesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeProjectMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectMessagesResponseBody?

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
            var model = DescribeProjectMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectNodesRequest : Tea.TeaModel {
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

public class DescribeProjectNodesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var allowRollbackNode: Bool?

        public var autoFinishNode: Bool?

        public var finalStepNo: Int32?

        public var gmtExpired: Int64?

        public var gmtFinished: Int64?

        public var gmtStart: Int64?

        public var needAttachment: Bool?

        public var nextNodeId: Int64?

        public var nodeId: Int64?

        public var nodeName: String?

        public var nodeStatus: String?

        public var operatorRole: String?

        public var parentNodeId: Int64?

        public var previousNodeId: Int64?

        public var stepNo: Int32?

        public var templateForm: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowRollbackNode != nil {
                map["AllowRollbackNode"] = self.allowRollbackNode!
            }
            if self.autoFinishNode != nil {
                map["AutoFinishNode"] = self.autoFinishNode!
            }
            if self.finalStepNo != nil {
                map["FinalStepNo"] = self.finalStepNo!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtFinished != nil {
                map["GmtFinished"] = self.gmtFinished!
            }
            if self.gmtStart != nil {
                map["GmtStart"] = self.gmtStart!
            }
            if self.needAttachment != nil {
                map["NeedAttachment"] = self.needAttachment!
            }
            if self.nextNodeId != nil {
                map["NextNodeId"] = self.nextNodeId!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeStatus != nil {
                map["NodeStatus"] = self.nodeStatus!
            }
            if self.operatorRole != nil {
                map["OperatorRole"] = self.operatorRole!
            }
            if self.parentNodeId != nil {
                map["ParentNodeId"] = self.parentNodeId!
            }
            if self.previousNodeId != nil {
                map["PreviousNodeId"] = self.previousNodeId!
            }
            if self.stepNo != nil {
                map["StepNo"] = self.stepNo!
            }
            if self.templateForm != nil {
                map["TemplateForm"] = self.templateForm!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowRollbackNode"] as? Bool {
                self.allowRollbackNode = value
            }
            if let value = dict["AutoFinishNode"] as? Bool {
                self.autoFinishNode = value
            }
            if let value = dict["FinalStepNo"] as? Int32 {
                self.finalStepNo = value
            }
            if let value = dict["GmtExpired"] as? Int64 {
                self.gmtExpired = value
            }
            if let value = dict["GmtFinished"] as? Int64 {
                self.gmtFinished = value
            }
            if let value = dict["GmtStart"] as? Int64 {
                self.gmtStart = value
            }
            if let value = dict["NeedAttachment"] as? Bool {
                self.needAttachment = value
            }
            if let value = dict["NextNodeId"] as? Int64 {
                self.nextNodeId = value
            }
            if let value = dict["NodeId"] as? Int64 {
                self.nodeId = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["NodeStatus"] as? String {
                self.nodeStatus = value
            }
            if let value = dict["OperatorRole"] as? String {
                self.operatorRole = value
            }
            if let value = dict["ParentNodeId"] as? Int64 {
                self.parentNodeId = value
            }
            if let value = dict["PreviousNodeId"] as? Int64 {
                self.previousNodeId = value
            }
            if let value = dict["StepNo"] as? Int32 {
                self.stepNo = value
            }
            if let value = dict["TemplateForm"] as? String {
                self.templateForm = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeProjectNodesResponseBody.Result]?

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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
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
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeProjectNodesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeProjectNodesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeProjectNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectNodesResponseBody?

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
            var model = DescribeProjectNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectOperateLogsRequest : Tea.TeaModel {
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

public class DescribeProjectOperateLogsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: Int64?

        public var operator_: Int64?

        public var operatorName: String?

        public var operatorRole: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorRole != nil {
                map["OperatorRole"] = self.operatorRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Operator"] as? Int64 {
                self.operator_ = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["OperatorRole"] as? String {
                self.operatorRole = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeProjectOperateLogsResponseBody.Result]?

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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
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
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeProjectOperateLogsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeProjectOperateLogsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeProjectOperateLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectOperateLogsResponseBody?

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
            var model = DescribeProjectOperateLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FinishCurrentProjectNodeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeId: Int64?

    public var remark: String?

    public var templateForm: String?

    public override init() {
        super.init()
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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.templateForm != nil {
            map["TemplateForm"] = self.templateForm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeId"] as? Int64 {
            self.nodeId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["TemplateForm"] as? String {
            self.templateForm = value
        }
    }
}

public class FinishCurrentProjectNodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
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
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FinishCurrentProjectNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FinishCurrentProjectNodeResponseBody?

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
            var model = FinishCurrentProjectNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInvoiceForIsvRequest : Tea.TeaModel {
    public var checkNotice: String?

    public var electronUrl: String?

    public var invoiceId: Int64?

    public var number: String?

    public var operateType: Int32?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkNotice != nil {
            map["CheckNotice"] = self.checkNotice!
        }
        if self.electronUrl != nil {
            map["ElectronUrl"] = self.electronUrl!
        }
        if self.invoiceId != nil {
            map["InvoiceId"] = self.invoiceId!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckNotice"] as? String {
            self.checkNotice = value
        }
        if let value = dict["ElectronUrl"] as? String {
            self.electronUrl = value
        }
        if let value = dict["InvoiceId"] as? Int64 {
            self.invoiceId = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
        if let value = dict["OperateType"] as? Int32 {
            self.operateType = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class ModifyInvoiceForIsvResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class ModifyInvoiceForIsvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInvoiceForIsvResponseBody?

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
            var model = ModifyInvoiceForIsvResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PauseProjectRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeId: Int64?

    public var remark: String?

    public override init() {
        super.init()
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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeId"] as? Int64 {
            self.nodeId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class PauseProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
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
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PauseProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PauseProjectResponseBody?

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
            var model = PauseProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushMeteringDataRequest : Tea.TeaModel {
    public var metering: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metering != nil {
            map["Metering"] = self.metering!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metering"] as? String {
            self.metering = value
        }
    }
}

public class PushMeteringDataResponseBody : Tea.TeaModel {
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

public class PushMeteringDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMeteringDataResponseBody?

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
            var model = PushMeteringDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeProjectRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeId: Int64?

    public var remark: String?

    public override init() {
        super.init()
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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeId"] as? Int64 {
            self.nodeId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class ResumeProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
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
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ResumeProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeProjectResponseBody?

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
            var model = ResumeProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RollbackCurrentProjectNodeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nodeId: Int64?

    public var remark: String?

    public override init() {
        super.init()
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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeId"] as? Int64 {
            self.nodeId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class RollbackCurrentProjectNodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.result != nil {
            map["Result"] = self.result!
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
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RollbackCurrentProjectNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackCurrentProjectNodeResponseBody?

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
            var model = RollbackCurrentProjectNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
