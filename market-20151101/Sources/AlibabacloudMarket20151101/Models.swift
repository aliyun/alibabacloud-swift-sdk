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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identification") {
            self.identification = dict["Identification"] as! String
        }
        if dict.keys.contains("LicenseCode") {
            self.licenseCode = dict["LicenseCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ActivateLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewCycle") {
            self.autoRenewCycle = dict["AutoRenewCycle"] as! String
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("OrderBizId") {
            self.orderBizId = dict["OrderBizId"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AutoRenewInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            self.commodity = dict["Commodity"] as! String
        }
        if dict.keys.contains("OrderSouce") {
            self.orderSouce = dict["OrderSouce"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            var model = CreateOrderResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthRoles") {
                self.authRoles = dict["AuthRoles"] as! [String]
            }
            if dict.keys.contains("AuthTime") {
                self.authTime = dict["AuthTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CrossAccountVerifyTokenResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CrossAccountVerifyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("productCode") {
            self.productCode = dict["productCode"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunPk") {
                self.aliyunPk = dict["AliyunPk"] as! Int64
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("TotalCapacity") {
                self.totalCapacity = dict["TotalCapacity"] as! Int64
            }
            if dict.keys.contains("TotalQuota") {
                self.totalQuota = dict["TotalQuota"] as! Int64
            }
            if dict.keys.contains("TotalUsage") {
                self.totalUsage = dict["TotalUsage"] as! Int64
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("Fatal") {
            self.fatal = dict["Fatal"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
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
        if dict.keys.contains("Result") {
            var tmp : [DescribeApiMeteringResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeApiMeteringResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeApiMeteringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowRollbackNode") {
                self.allowRollbackNode = dict["AllowRollbackNode"] as! Bool
            }
            if dict.keys.contains("AutoFinishNode") {
                self.autoFinishNode = dict["AutoFinishNode"] as! Bool
            }
            if dict.keys.contains("FinalStepNo") {
                self.finalStepNo = dict["FinalStepNo"] as! Int32
            }
            if dict.keys.contains("GmtExpired") {
                self.gmtExpired = dict["GmtExpired"] as! Int64
            }
            if dict.keys.contains("GmtFinished") {
                self.gmtFinished = dict["GmtFinished"] as! Int64
            }
            if dict.keys.contains("GmtStart") {
                self.gmtStart = dict["GmtStart"] as! Int64
            }
            if dict.keys.contains("NeedAttachment") {
                self.needAttachment = dict["NeedAttachment"] as! Bool
            }
            if dict.keys.contains("NextNodeId") {
                self.nextNodeId = dict["NextNodeId"] as! Int64
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! Int64
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodeStatus") {
                self.nodeStatus = dict["NodeStatus"] as! String
            }
            if dict.keys.contains("OperatorRole") {
                self.operatorRole = dict["OperatorRole"] as! String
            }
            if dict.keys.contains("ParentNodeId") {
                self.parentNodeId = dict["ParentNodeId"] as! Int64
            }
            if dict.keys.contains("PreviousNodeId") {
                self.previousNodeId = dict["PreviousNodeId"] as! Int64
            }
            if dict.keys.contains("StepNo") {
                self.stepNo = dict["StepNo"] as! Int32
            }
            if dict.keys.contains("TemplateForm") {
                self.templateForm = dict["TemplateForm"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeCurrentNodeInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCurrentNodeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [DescribeDistributionProductsRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = DescribeDistributionProductsRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("FirstCategoryName") {
                self.firstCategoryName = dict["FirstCategoryName"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! String
            }
            if dict.keys.contains("SecondCategoryName") {
                self.secondCategoryName = dict["SecondCategoryName"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
            }
            if dict.keys.contains("SubmissionRadio") {
                self.submissionRadio = dict["SubmissionRadio"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUId") {
                self.supplierUId = dict["SupplierUId"] as! String
            }
            if dict.keys.contains("TradeCount") {
                self.tradeCount = dict["TradeCount"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserCommentCount") {
                self.userCommentCount = dict["UserCommentCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") {
            var tmp : [DescribeDistributionProductsResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DescribeDistributionProductsResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDistributionProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Codes") {
            self.codes = dict["Codes"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Codes") {
            self.codesShrink = dict["Codes"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeDistributionProductsLinkResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeDistributionProductsLinkResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDistributionProductsLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("DisplayName") {
                                    self.displayName = dict["DisplayName"] as! String
                                }
                                if dict.keys.contains("Max") {
                                    self.max = dict["Max"] as! String
                                }
                                if dict.keys.contains("Min") {
                                    self.min = dict["Min"] as! String
                                }
                                if dict.keys.contains("Remark") {
                                    self.remark = dict["Remark"] as! String
                                }
                                if dict.keys.contains("Step") {
                                    self.step = dict["Step"] as! String
                                }
                                if dict.keys.contains("Type") {
                                    self.type = dict["Type"] as! String
                                }
                                if dict.keys.contains("Value") {
                                    self.value = dict["Value"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("PropertyValue") {
                                var tmp : [DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues.PropertyValue] = []
                                for v in dict["PropertyValue"] as! [Any] {
                                    var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues.PropertyValue()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayUnit") {
                            self.displayUnit = dict["DisplayUnit"] as! String
                        }
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("PropertyValues") {
                            var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property.PropertyValues()
                            model.fromMap(dict["PropertyValues"] as! [String: Any])
                            self.propertyValues = model
                        }
                        if dict.keys.contains("ShowType") {
                            self.showType = dict["ShowType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Property") {
                        var tmp : [DescribeInstanceResponseBody.Modules.Module.Properties.Property] = []
                        for v in dict["Property"] as! [Any] {
                            var model = DescribeInstanceResponseBody.Modules.Module.Properties.Property()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Properties") {
                    var model = DescribeInstanceResponseBody.Modules.Module.Properties()
                    model.fromMap(dict["Properties"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Module") {
                var tmp : [DescribeInstanceResponseBody.Modules.Module] = []
                for v in dict["Module"] as! [Any] {
                    var model = DescribeInstanceResponseBody.Modules.Module()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddress") {
            self.activeAddress = dict["ActiveAddress"] as! String
        }
        if dict.keys.contains("AppJson") {
            self.appJson = dict["AppJson"] as! String
        }
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! String
        }
        if dict.keys.contains("BeganOn") {
            self.beganOn = dict["BeganOn"] as! Int64
        }
        if dict.keys.contains("ComponentJson") {
            self.componentJson = dict["ComponentJson"] as! String
        }
        if dict.keys.contains("Constraints") {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("CreatedOn") {
            self.createdOn = dict["CreatedOn"] as! Int64
        }
        if dict.keys.contains("EndOn") {
            self.endOn = dict["EndOn"] as! Int64
        }
        if dict.keys.contains("ExtendJson") {
            self.extendJson = dict["ExtendJson"] as! String
        }
        if dict.keys.contains("HostJson") {
            self.hostJson = dict["HostJson"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("IsTrial") {
            self.isTrial = dict["IsTrial"] as! Bool
        }
        if dict.keys.contains("LicenseCode") {
            self.licenseCode = dict["LicenseCode"] as! String
        }
        if dict.keys.contains("Modules") {
            var model = DescribeInstanceResponseBody.Modules()
            model.fromMap(dict["Modules"] as! [String: Any])
            self.modules = model
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductSkuCode") {
            self.productSkuCode = dict["ProductSkuCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RelationalData") {
            var model = DescribeInstanceResponseBody.RelationalData()
            model.fromMap(dict["RelationalData"] as! [String: Any])
            self.relationalData = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupplierName") {
            self.supplierName = dict["SupplierName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddress") {
            self.activeAddress = dict["ActiveAddress"] as! String
        }
        if dict.keys.contains("AppJson") {
            self.appJson = dict["AppJson"] as! String
        }
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! String
        }
        if dict.keys.contains("BeganOn") {
            self.beganOn = dict["BeganOn"] as! Int64
        }
        if dict.keys.contains("ComponentJson") {
            self.componentJson = dict["ComponentJson"] as! String
        }
        if dict.keys.contains("CreatedOn") {
            self.createdOn = dict["CreatedOn"] as! Int64
        }
        if dict.keys.contains("EndOn") {
            self.endOn = dict["EndOn"] as! Int64
        }
        if dict.keys.contains("ExtendJson") {
            self.extendJson = dict["ExtendJson"] as! String
        }
        if dict.keys.contains("HostJson") {
            self.hostJson = dict["HostJson"] as! String
        }
        if dict.keys.contains("ImageJson") {
            self.imageJson = dict["ImageJson"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("IsTrial") {
            self.isTrial = dict["IsTrial"] as! Bool
        }
        if dict.keys.contains("LicenseCode") {
            self.licenseCode = dict["LicenseCode"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductSkuCode") {
            self.productSkuCode = dict["ProductSkuCode"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RelationalData") {
            var model = DescribeInstanceForIsvResponseBody.RelationalData()
            model.fromMap(dict["RelationalData"] as! [String: Any])
            self.relationalData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupplierName") {
            self.supplierName = dict["SupplierName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceForIsvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Codes") {
            self.codes = dict["Codes"] as! String
        }
        if dict.keys.contains("ExceptCodes") {
            self.exceptCodes = dict["ExceptCodes"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiJson") {
                    self.apiJson = dict["ApiJson"] as! String
                }
                if dict.keys.contains("AppJson") {
                    self.appJson = dict["AppJson"] as! String
                }
                if dict.keys.contains("BeganOn") {
                    self.beganOn = dict["BeganOn"] as! Int64
                }
                if dict.keys.contains("CreatedOn") {
                    self.createdOn = dict["CreatedOn"] as! Int64
                }
                if dict.keys.contains("EndOn") {
                    self.endOn = dict["EndOn"] as! Int64
                }
                if dict.keys.contains("ExtendJson") {
                    self.extendJson = dict["ExtendJson"] as! String
                }
                if dict.keys.contains("HostJson") {
                    self.hostJson = dict["HostJson"] as! String
                }
                if dict.keys.contains("IdaasJson") {
                    self.idaasJson = dict["IdaasJson"] as! String
                }
                if dict.keys.contains("ImageJson") {
                    self.imageJson = dict["ImageJson"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! Int64
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! Int64
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
                }
                if dict.keys.contains("ProductSkuCode") {
                    self.productSkuCode = dict["ProductSkuCode"] as! String
                }
                if dict.keys.contains("ProductType") {
                    self.productType = dict["ProductType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupplierName") {
                    self.supplierName = dict["SupplierName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceItem") {
                var tmp : [DescribeInstancesResponseBody.InstanceItems.InstanceItem] = []
                for v in dict["InstanceItem"] as! [Any] {
                    var model = DescribeInstancesResponseBody.InstanceItems.InstanceItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceItems") {
            var model = DescribeInstancesResponseBody.InstanceItems()
            model.fromMap(dict["InstanceItems"] as! [String: Any])
            self.instanceItems = model
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LicenseCode") {
            self.licenseCode = dict["LicenseCode"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LicenseAttribute") {
                    var tmp : [DescribeLicenseResponseBody.License.ExtendArray.LicenseAttribute] = []
                    for v in dict["LicenseAttribute"] as! [Any] {
                        var model = DescribeLicenseResponseBody.License.ExtendArray.LicenseAttribute()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountQuantity") {
                    self.accountQuantity = dict["AccountQuantity"] as! Int64
                }
                if dict.keys.contains("AliUid") {
                    self.aliUid = dict["AliUid"] as! Int64
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivateTime") {
                self.activateTime = dict["ActivateTime"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("ExtendArray") {
                var model = DescribeLicenseResponseBody.License.ExtendArray()
                model.fromMap(dict["ExtendArray"] as! [String: Any])
                self.extendArray = model
            }
            if dict.keys.contains("ExtendInfo") {
                var model = DescribeLicenseResponseBody.License.ExtendInfo()
                model.fromMap(dict["ExtendInfo"] as! [String: Any])
                self.extendInfo = model
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LicenseCode") {
                self.licenseCode = dict["LicenseCode"] as! String
            }
            if dict.keys.contains("LicenseStatus") {
                self.licenseStatus = dict["LicenseStatus"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductSkuId") {
                self.productSkuId = dict["ProductSkuId"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("License") {
            var model = DescribeLicenseResponseBody.License()
            model.fromMap(dict["License"] as! [String: Any])
            self.license = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Telephone") {
                self.telephone = dict["Telephone"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountQuantity") {
            self.accountQuantity = dict["AccountQuantity"] as! Int64
        }
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! [String: Any]
        }
        if dict.keys.contains("CouponPrice") {
            self.couponPrice = dict["CouponPrice"] as! Double
        }
        if dict.keys.contains("CreatedOn") {
            self.createdOn = dict["CreatedOn"] as! Int64
        }
        if dict.keys.contains("InstanceIds") {
            var model = DescribeOrderResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! Double
        }
        if dict.keys.contains("PaidOn") {
            self.paidOn = dict["PaidOn"] as! Int64
        }
        if dict.keys.contains("PayStatus") {
            self.payStatus = dict["PayStatus"] as! String
        }
        if dict.keys.contains("PaymentPrice") {
            self.paymentPrice = dict["PaymentPrice"] as! Double
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductSkuCode") {
            self.productSkuCode = dict["ProductSkuCode"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupplierCompanyName") {
            self.supplierCompanyName = dict["SupplierCompanyName"] as! String
        }
        if dict.keys.contains("SupplierTelephones") {
            var model = DescribeOrderResponseBody.SupplierTelephones()
            model.fromMap(dict["SupplierTelephones"] as! [String: Any])
            self.supplierTelephones = model
        }
        if dict.keys.contains("TotalPrice") {
            self.totalPrice = dict["TotalPrice"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountQuantity") {
            self.accountQuantity = dict["AccountQuantity"] as! Int64
        }
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! Any
        }
        if dict.keys.contains("CouponPrice") {
            self.couponPrice = dict["CouponPrice"] as! Double
        }
        if dict.keys.contains("CreatedOn") {
            self.createdOn = dict["CreatedOn"] as! Int64
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! Double
        }
        if dict.keys.contains("PaidOn") {
            self.paidOn = dict["PaidOn"] as! Int64
        }
        if dict.keys.contains("PayStatus") {
            self.payStatus = dict["PayStatus"] as! String
        }
        if dict.keys.contains("PaymentPrice") {
            self.paymentPrice = dict["PaymentPrice"] as! Double
        }
        if dict.keys.contains("PeriodType") {
            self.periodType = dict["PeriodType"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductSkuCode") {
            self.productSkuCode = dict["ProductSkuCode"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalPrice") {
            self.totalPrice = dict["TotalPrice"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOrderForIsvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Commodity") {
            self.commodity = dict["Commodity"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CanPromFee") {
                    self.canPromFee = dict["CanPromFee"] as! Double
                }
                if dict.keys.contains("CouponDesc") {
                    self.couponDesc = dict["CouponDesc"] as! String
                }
                if dict.keys.contains("CouponName") {
                    self.couponName = dict["CouponName"] as! String
                }
                if dict.keys.contains("CouponOptionCode") {
                    self.couponOptionCode = dict["CouponOptionCode"] as! String
                }
                if dict.keys.contains("CouponOptionNo") {
                    self.couponOptionNo = dict["CouponOptionNo"] as! String
                }
                if dict.keys.contains("IsSelected") {
                    self.isSelected = dict["IsSelected"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Coupon") {
                var tmp : [DescribePriceResponseBody.Coupons.Coupon] = []
                for v in dict["Coupon"] as! [Any] {
                    var model = DescribePriceResponseBody.Coupons.Coupon()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PromotionRule") {
                var tmp : [DescribePriceResponseBody.PromotionRules.PromotionRule] = []
                for v in dict["PromotionRule"] as! [Any] {
                    var model = DescribePriceResponseBody.PromotionRules.PromotionRule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Coupons") {
            var model = DescribePriceResponseBody.Coupons()
            model.fromMap(dict["Coupons"] as! [String: Any])
            self.coupons = model
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("Cuxiao") {
            self.cuxiao = dict["Cuxiao"] as! Bool
        }
        if dict.keys.contains("Cycle") {
            self.cycle = dict["Cycle"] as! String
        }
        if dict.keys.contains("DiscountPrice") {
            self.discountPrice = dict["DiscountPrice"] as! Double
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("ExpressionCode") {
            self.expressionCode = dict["ExpressionCode"] as! String
        }
        if dict.keys.contains("ExpressionMessage") {
            self.expressionMessage = dict["ExpressionMessage"] as! String
        }
        if dict.keys.contains("InfoTitle") {
            self.infoTitle = dict["InfoTitle"] as! String
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! Double
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("PromotionRules") {
            var model = DescribePriceResponseBody.PromotionRules()
            model.fromMap(dict["PromotionRules"] as! [String: Any])
            self.promotionRules = model
        }
        if dict.keys.contains("TradePrice") {
            self.tradePrice = dict["TradePrice"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("QueryDraft") {
            self.queryDraft = dict["QueryDraft"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductExtra") {
                var tmp : [DescribeProductResponseBody.ProductExtras.ProductExtra] = []
                for v in dict["ProductExtra"] as! [Any] {
                    var model = DescribeProductResponseBody.ProductExtras.ProductExtra()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("DisplayName") {
                                            self.displayName = dict["DisplayName"] as! String
                                        }
                                        if dict.keys.contains("Max") {
                                            self.max = dict["Max"] as! String
                                        }
                                        if dict.keys.contains("Min") {
                                            self.min = dict["Min"] as! String
                                        }
                                        if dict.keys.contains("Remark") {
                                            self.remark = dict["Remark"] as! String
                                        }
                                        if dict.keys.contains("Step") {
                                            self.step = dict["Step"] as! String
                                        }
                                        if dict.keys.contains("Type") {
                                            self.type = dict["Type"] as! String
                                        }
                                        if dict.keys.contains("Value") {
                                            self.value = dict["Value"] as! String
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("PropertyValue") {
                                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues.PropertyValue] = []
                                        for v in dict["PropertyValue"] as! [Any] {
                                            var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues.PropertyValue()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("DisplayUnit") {
                                    self.displayUnit = dict["DisplayUnit"] as! String
                                }
                                if dict.keys.contains("Key") {
                                    self.key = dict["Key"] as! String
                                }
                                if dict.keys.contains("Name") {
                                    self.name = dict["Name"] as! String
                                }
                                if dict.keys.contains("PropertyValues") {
                                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property.PropertyValues()
                                    model.fromMap(dict["PropertyValues"] as! [String: Any])
                                    self.propertyValues = model
                                }
                                if dict.keys.contains("ShowType") {
                                    self.showType = dict["ShowType"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Property") {
                                var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property] = []
                                for v in dict["Property"] as! [Any] {
                                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties.Property()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Properties") {
                            var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module.Properties()
                            model.fromMap(dict["Properties"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Module") {
                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module] = []
                        for v in dict["Module"] as! [Any] {
                            var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules.Module()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("PeriodType") {
                            self.periodType = dict["PeriodType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OrderPeriod") {
                        var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods.OrderPeriod] = []
                        for v in dict["OrderPeriod"] as! [Any] {
                            var model = DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods.OrderPeriod()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChargeType") {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Constraints") {
                    self.constraints = dict["Constraints"] as! String
                }
                if dict.keys.contains("Hidden") {
                    self.hidden = dict["Hidden"] as! Bool
                }
                if dict.keys.contains("Modules") {
                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.Modules()
                    model.fromMap(dict["Modules"] as! [String: Any])
                    self.modules = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OrderPeriods") {
                    var model = DescribeProductResponseBody.ProductSkus.ProductSku.OrderPeriods()
                    model.fromMap(dict["OrderPeriods"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductSku") {
                var tmp : [DescribeProductResponseBody.ProductSkus.ProductSku] = []
                for v in dict["ProductSku"] as! [Any] {
                    var model = DescribeProductResponseBody.ProductSkus.ProductSku()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Telephone") {
                    self.telephone = dict["Telephone"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Remark") {
                        self.remark = dict["Remark"] as! String
                    }
                    if dict.keys.contains("UserName") {
                        self.userName = dict["UserName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("WangWang") {
                    var tmp : [DescribeProductResponseBody.ShopInfo.WangWangs.WangWang] = []
                    for v in dict["WangWang"] as! [Any] {
                        var model = DescribeProductResponseBody.ShopInfo.WangWangs.WangWang()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Emails") {
                self.emails = dict["Emails"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Telephones") {
                var model = DescribeProductResponseBody.ShopInfo.Telephones()
                model.fromMap(dict["Telephones"] as! [String: Any])
                self.telephones = model
            }
            if dict.keys.contains("WangWangs") {
                var model = DescribeProductResponseBody.ShopInfo.WangWangs()
                model.fromMap(dict["WangWangs"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditFailMsg") {
            self.auditFailMsg = dict["AuditFailMsg"] as! String
        }
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("AuditTime") {
            self.auditTime = dict["AuditTime"] as! Int64
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FrontCategoryId") {
            self.frontCategoryId = dict["FrontCategoryId"] as! Int64
        }
        if dict.keys.contains("GmtCreated") {
            self.gmtCreated = dict["GmtCreated"] as! Int64
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PicUrl") {
            self.picUrl = dict["PicUrl"] as! String
        }
        if dict.keys.contains("ProductExtras") {
            var model = DescribeProductResponseBody.ProductExtras()
            model.fromMap(dict["ProductExtras"] as! [String: Any])
            self.productExtras = model
        }
        if dict.keys.contains("ProductSkus") {
            var model = DescribeProductResponseBody.ProductSkus()
            model.fromMap(dict["ProductSkus"] as! [String: Any])
            self.productSkus = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Score") {
            self.score = dict["Score"] as! Double
        }
        if dict.keys.contains("ShopInfo") {
            var model = DescribeProductResponseBody.ShopInfo()
            model.fromMap(dict["ShopInfo"] as! [String: Any])
            self.shopInfo = model
        }
        if dict.keys.contains("ShortDescription") {
            self.shortDescription = dict["ShortDescription"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupplierPk") {
            self.supplierPk = dict["SupplierPk"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UseCount") {
            self.useCount = dict["UseCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [DescribeProductsRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = DescribeProductsRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchTerm") {
            self.searchTerm = dict["SearchTerm"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! Int64
                }
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DeliveryDate") {
                    self.deliveryDate = dict["DeliveryDate"] as! String
                }
                if dict.keys.contains("DeliveryWay") {
                    self.deliveryWay = dict["DeliveryWay"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OperationSystem") {
                    self.operationSystem = dict["OperationSystem"] as! String
                }
                if dict.keys.contains("PriceInfo") {
                    self.priceInfo = dict["PriceInfo"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
                }
                if dict.keys.contains("SuggestedPrice") {
                    self.suggestedPrice = dict["SuggestedPrice"] as! String
                }
                if dict.keys.contains("SupplierId") {
                    self.supplierId = dict["SupplierId"] as! Int64
                }
                if dict.keys.contains("SupplierName") {
                    self.supplierName = dict["SupplierName"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
                if dict.keys.contains("TargetUrl") {
                    self.targetUrl = dict["TargetUrl"] as! String
                }
                if dict.keys.contains("WarrantyDate") {
                    self.warrantyDate = dict["WarrantyDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductItem") {
                var tmp : [DescribeProductsResponseBody.ProductItems.ProductItem] = []
                for v in dict["ProductItem"] as! [Any] {
                    var model = DescribeProductsResponseBody.ProductItems.ProductItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductItems") {
            var model = DescribeProductsResponseBody.ProductItems()
            model.fromMap(dict["ProductItems"] as! [String: Any])
            self.productItems = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentToken") {
                self.attachmentToken = dict["AttachmentToken"] as! String
            }
            if dict.keys.contains("AttachmentType") {
                self.attachmentType = dict["AttachmentType"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("FileLink") {
                self.fileLink = dict["FileLink"] as! String
            }
            if dict.keys.contains("FileLinkGmtExpired") {
                self.fileLinkGmtExpired = dict["FileLinkGmtExpired"] as! Int64
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int64
            }
            if dict.keys.contains("FileSuffix") {
                self.fileSuffix = dict["FileSuffix"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! Int64
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! Int64
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("OperatorRole") {
                self.operatorRole = dict["OperatorRole"] as! String
            }
            if dict.keys.contains("StepNo") {
                self.stepNo = dict["StepNo"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeProjectAttachmentsResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeProjectAttachmentsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProjectAttachmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentStepNo") {
                self.currentStepNo = dict["CurrentStepNo"] as! Int32
            }
            if dict.keys.contains("CustomerAliUid") {
                self.customerAliUid = dict["CustomerAliUid"] as! Int64
            }
            if dict.keys.contains("FinalStepNo") {
                self.finalStepNo = dict["FinalStepNo"] as! Int32
            }
            if dict.keys.contains("FinishType") {
                self.finishType = dict["FinishType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtExpired") {
                self.gmtExpired = dict["GmtExpired"] as! Int64
            }
            if dict.keys.contains("GmtFinished") {
                self.gmtFinished = dict["GmtFinished"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductSkuCode") {
                self.productSkuCode = dict["ProductSkuCode"] as! String
            }
            if dict.keys.contains("ProductSkuName") {
                self.productSkuName = dict["ProductSkuName"] as! String
            }
            if dict.keys.contains("ProjectStatus") {
                self.projectStatus = dict["ProjectStatus"] as! String
            }
            if dict.keys.contains("SupplierAliUid") {
                self.supplierAliUid = dict["SupplierAliUid"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeProjectInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProjectInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! Int64
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("OperatorRole") {
                self.operatorRole = dict["OperatorRole"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeProjectMessagesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeProjectMessagesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProjectMessagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowRollbackNode") {
                self.allowRollbackNode = dict["AllowRollbackNode"] as! Bool
            }
            if dict.keys.contains("AutoFinishNode") {
                self.autoFinishNode = dict["AutoFinishNode"] as! Bool
            }
            if dict.keys.contains("FinalStepNo") {
                self.finalStepNo = dict["FinalStepNo"] as! Int32
            }
            if dict.keys.contains("GmtExpired") {
                self.gmtExpired = dict["GmtExpired"] as! Int64
            }
            if dict.keys.contains("GmtFinished") {
                self.gmtFinished = dict["GmtFinished"] as! Int64
            }
            if dict.keys.contains("GmtStart") {
                self.gmtStart = dict["GmtStart"] as! Int64
            }
            if dict.keys.contains("NeedAttachment") {
                self.needAttachment = dict["NeedAttachment"] as! Bool
            }
            if dict.keys.contains("NextNodeId") {
                self.nextNodeId = dict["NextNodeId"] as! Int64
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! Int64
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodeStatus") {
                self.nodeStatus = dict["NodeStatus"] as! String
            }
            if dict.keys.contains("OperatorRole") {
                self.operatorRole = dict["OperatorRole"] as! String
            }
            if dict.keys.contains("ParentNodeId") {
                self.parentNodeId = dict["ParentNodeId"] as! Int64
            }
            if dict.keys.contains("PreviousNodeId") {
                self.previousNodeId = dict["PreviousNodeId"] as! Int64
            }
            if dict.keys.contains("StepNo") {
                self.stepNo = dict["StepNo"] as! Int32
            }
            if dict.keys.contains("TemplateForm") {
                self.templateForm = dict["TemplateForm"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeProjectNodesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeProjectNodesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProjectNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! Int64
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("OperatorRole") {
                self.operatorRole = dict["OperatorRole"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeProjectOperateLogsResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeProjectOperateLogsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProjectOperateLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("TemplateForm") {
            self.templateForm = dict["TemplateForm"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FinishCurrentProjectNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PauseProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metering") {
            self.metering = dict["Metering"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PushMeteringDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResumeProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RollbackCurrentProjectNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
