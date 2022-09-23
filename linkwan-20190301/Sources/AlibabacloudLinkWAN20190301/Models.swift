import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptJoinPermissionAuthOrderRequest : Tea.TeaModel {
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

public class AcceptJoinPermissionAuthOrderResponseBody : Tea.TeaModel {
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

public class AcceptJoinPermissionAuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptJoinPermissionAuthOrderResponseBody?

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
            var model = AcceptJoinPermissionAuthOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddNodeToGroupRequest : Tea.TeaModel {
    public var devEui: String?

    public var nodeGroupId: String?

    public var pinCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.pinCode != nil {
            map["PinCode"] = self.pinCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PinCode") {
            self.pinCode = dict["PinCode"] as! String
        }
    }
}

public class AddNodeToGroupResponseBody : Tea.TeaModel {
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

public class AddNodeToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddNodeToGroupResponseBody?

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
            var model = AddNodeToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyRoamingJoinPermissionRequest : Tea.TeaModel {
    public var classMode: String?

    public var dataRate: Int64?

    public var freqBandPlanGroupId: Int64?

    public var joinPermissionName: String?

    public var rxDelay: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classMode != nil {
            map["ClassMode"] = self.classMode!
        }
        if self.dataRate != nil {
            map["DataRate"] = self.dataRate!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.joinPermissionName != nil {
            map["JoinPermissionName"] = self.joinPermissionName!
        }
        if self.rxDelay != nil {
            map["RxDelay"] = self.rxDelay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClassMode") {
            self.classMode = dict["ClassMode"] as! String
        }
        if dict.keys.contains("DataRate") {
            self.dataRate = dict["DataRate"] as! Int64
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("JoinPermissionName") {
            self.joinPermissionName = dict["JoinPermissionName"] as! String
        }
        if dict.keys.contains("RxDelay") {
            self.rxDelay = dict["RxDelay"] as! Int64
        }
    }
}

public class ApplyRoamingJoinPermissionResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ApplyRoamingJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyRoamingJoinPermissionResponseBody?

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
            var model = ApplyRoamingJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindJoinPermissionToNodeGroupRequest : Tea.TeaModel {
    public var joinPermissionId: String?

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
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class BindJoinPermissionToNodeGroupResponseBody : Tea.TeaModel {
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

public class BindJoinPermissionToNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindJoinPermissionToNodeGroupResponseBody?

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
            var model = BindJoinPermissionToNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelJoinPermissionAuthOrderRequest : Tea.TeaModel {
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

public class CancelJoinPermissionAuthOrderResponseBody : Tea.TeaModel {
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

public class CancelJoinPermissionAuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelJoinPermissionAuthOrderResponseBody?

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
            var model = CancelJoinPermissionAuthOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckCloudProductOpenStatusRequest : Tea.TeaModel {
    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
    }
}

public class CheckCloudProductOpenStatusResponseBody : Tea.TeaModel {
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

public class CheckCloudProductOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCloudProductOpenStatusResponseBody?

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
            var model = CheckCloudProductOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUserChargeStatusResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckUserChargeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUserChargeStatusResponseBody?

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
            var model = CheckUserChargeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountGatewayTupleOrdersRequest : Tea.TeaModel {
    public var states: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.states != nil {
            map["States"] = self.states!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("States") {
            self.states = dict["States"] as! [String]
        }
    }
}

public class CountGatewayTupleOrdersResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountGatewayTupleOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountGatewayTupleOrdersResponseBody?

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
            var model = CountGatewayTupleOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountGatewaysRequest : Tea.TeaModel {
    public var freqBandPlanGroupId: Int64?

    public var fuzzyCity: String?

    public var fuzzyGwEui: String?

    public var fuzzyName: String?

    public var iotInstanceId: String?

    public var isEnabled: Bool?

    public var onlineState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.fuzzyCity != nil {
            map["FuzzyCity"] = self.fuzzyCity!
        }
        if self.fuzzyGwEui != nil {
            map["FuzzyGwEui"] = self.fuzzyGwEui!
        }
        if self.fuzzyName != nil {
            map["FuzzyName"] = self.fuzzyName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.onlineState != nil {
            map["OnlineState"] = self.onlineState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("FuzzyCity") {
            self.fuzzyCity = dict["FuzzyCity"] as! String
        }
        if dict.keys.contains("FuzzyGwEui") {
            self.fuzzyGwEui = dict["FuzzyGwEui"] as! String
        }
        if dict.keys.contains("FuzzyName") {
            self.fuzzyName = dict["FuzzyName"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsEnabled") {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("OnlineState") {
            self.onlineState = dict["OnlineState"] as! String
        }
    }
}

public class CountGatewaysResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountGatewaysResponseBody?

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
            var model = CountGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountNodeGroupsRequest : Tea.TeaModel {
    public var fuzzyDevEui: String?

    public var fuzzyJoinEui: String?

    public var fuzzyName: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyName != nil {
            map["FuzzyName"] = self.fuzzyName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyName") {
            self.fuzzyName = dict["FuzzyName"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class CountNodeGroupsResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountNodeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountNodeGroupsResponseBody?

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
            var model = CountNodeGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountNodeTupleOrdersRequest : Tea.TeaModel {
    public var isKpm: Bool?

    public var states: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isKpm != nil {
            map["IsKpm"] = self.isKpm!
        }
        if self.states != nil {
            map["States"] = self.states!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsKpm") {
            self.isKpm = dict["IsKpm"] as! Bool
        }
        if dict.keys.contains("States") {
            self.states = dict["States"] as! [String]
        }
    }
}

public class CountNodeTupleOrdersResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountNodeTupleOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountNodeTupleOrdersResponseBody?

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
            var model = CountNodeTupleOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountNodesByNodeGroupIdRequest : Tea.TeaModel {
    public var fuzzyDevEui: String?

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
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class CountNodesByNodeGroupIdResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountNodesByNodeGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountNodesByNodeGroupIdResponseBody?

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
            var model = CountNodesByNodeGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountNodesByOwnedJoinPermissionIdRequest : Tea.TeaModel {
    public var fuzzyDevEui: String?

    public var joinPermissionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class CountNodesByOwnedJoinPermissionIdResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountNodesByOwnedJoinPermissionIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountNodesByOwnedJoinPermissionIdResponseBody?

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
            var model = CountNodesByOwnedJoinPermissionIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountNotificationsRequest : Tea.TeaModel {
    public var beginMillis: Int64?

    public var category: [String]?

    public var endMillis: Int64?

    public var handleState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.handleState != nil {
            map["HandleState"] = self.handleState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! [String]
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("HandleState") {
            self.handleState = dict["HandleState"] as! String
        }
    }
}

public class CountNotificationsResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountNotificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountNotificationsResponseBody?

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
            var model = CountNotificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountOwnedJoinPermissionsRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var fuzzyJoinEui: String?

    public var fuzzyJoinPermissionName: String?

    public var fuzzyRenterAliyunId: String?

    public override init() {
        super.init()
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
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyJoinPermissionName != nil {
            map["FuzzyJoinPermissionName"] = self.fuzzyJoinPermissionName!
        }
        if self.fuzzyRenterAliyunId != nil {
            map["FuzzyRenterAliyunId"] = self.fuzzyRenterAliyunId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinPermissionName") {
            self.fuzzyJoinPermissionName = dict["FuzzyJoinPermissionName"] as! String
        }
        if dict.keys.contains("FuzzyRenterAliyunId") {
            self.fuzzyRenterAliyunId = dict["FuzzyRenterAliyunId"] as! String
        }
    }
}

public class CountOwnedJoinPermissionsResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountOwnedJoinPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountOwnedJoinPermissionsResponseBody?

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
            var model = CountOwnedJoinPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CountRentedJoinPermissionsRequest : Tea.TeaModel {
    public var boundNodeGroup: Bool?

    public var enabled: Bool?

    public var fuzzyJoinEui: String?

    public var fuzzyJoinPermissionName: String?

    public var fuzzyOwnerAliyunId: String?

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
        if self.boundNodeGroup != nil {
            map["BoundNodeGroup"] = self.boundNodeGroup!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyJoinPermissionName != nil {
            map["FuzzyJoinPermissionName"] = self.fuzzyJoinPermissionName!
        }
        if self.fuzzyOwnerAliyunId != nil {
            map["FuzzyOwnerAliyunId"] = self.fuzzyOwnerAliyunId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BoundNodeGroup") {
            self.boundNodeGroup = dict["BoundNodeGroup"] as! Bool
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinPermissionName") {
            self.fuzzyJoinPermissionName = dict["FuzzyJoinPermissionName"] as! String
        }
        if dict.keys.contains("FuzzyOwnerAliyunId") {
            self.fuzzyOwnerAliyunId = dict["FuzzyOwnerAliyunId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CountRentedJoinPermissionsResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CountRentedJoinPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountRentedJoinPermissionsResponseBody?

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
            var model = CountRentedJoinPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public var address: String?

    public var addressCode: Int64?

    public var city: String?

    public var communicationMode: String?

    public var description_: String?

    public var district: String?

    public var freqBandPlanGroupId: Int64?

    public var gisCoordinateSystem: String?

    public var gwEui: String?

    public var iotInstanceId: String?

    public var latitude: Double?

    public var longitude: Double?

    public var name: String?

    public var pinCode: String?

    public override init() {
        super.init()
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
        if self.addressCode != nil {
            map["AddressCode"] = self.addressCode!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.communicationMode != nil {
            map["CommunicationMode"] = self.communicationMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.gisCoordinateSystem != nil {
            map["GisCoordinateSystem"] = self.gisCoordinateSystem!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pinCode != nil {
            map["PinCode"] = self.pinCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressCode") {
            self.addressCode = dict["AddressCode"] as! Int64
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("CommunicationMode") {
            self.communicationMode = dict["CommunicationMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("District") {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("GisCoordinateSystem") {
            self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! Double
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! Double
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PinCode") {
            self.pinCode = dict["PinCode"] as! String
        }
    }
}

public class CreateGatewayResponseBody : Tea.TeaModel {
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

public class CreateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayResponseBody?

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
            var model = CreateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLocalJoinPermissionRequest : Tea.TeaModel {
    public var classMode: String?

    public var dataRate: Int64?

    public var freqBandPlanGroupId: Int64?

    public var iotInstanceId: String?

    public var joinEui: String?

    public var joinPermissionName: String?

    public var rxDelay: Int64?

    public var useDefaultJoinEui: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classMode != nil {
            map["ClassMode"] = self.classMode!
        }
        if self.dataRate != nil {
            map["DataRate"] = self.dataRate!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinEui != nil {
            map["JoinEui"] = self.joinEui!
        }
        if self.joinPermissionName != nil {
            map["JoinPermissionName"] = self.joinPermissionName!
        }
        if self.rxDelay != nil {
            map["RxDelay"] = self.rxDelay!
        }
        if self.useDefaultJoinEui != nil {
            map["UseDefaultJoinEui"] = self.useDefaultJoinEui!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClassMode") {
            self.classMode = dict["ClassMode"] as! String
        }
        if dict.keys.contains("DataRate") {
            self.dataRate = dict["DataRate"] as! Int64
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinEui") {
            self.joinEui = dict["JoinEui"] as! String
        }
        if dict.keys.contains("JoinPermissionName") {
            self.joinPermissionName = dict["JoinPermissionName"] as! String
        }
        if dict.keys.contains("RxDelay") {
            self.rxDelay = dict["RxDelay"] as! Int64
        }
        if dict.keys.contains("UseDefaultJoinEui") {
            self.useDefaultJoinEui = dict["UseDefaultJoinEui"] as! Bool
        }
    }
}

public class CreateLocalJoinPermissionResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateLocalJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLocalJoinPermissionResponseBody?

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
            var model = CreateLocalJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNodeGroupRequest : Tea.TeaModel {
    public var joinPermissionId: String?

    public var nodeGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
    }
}

public class CreateNodeGroupResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNodeGroupResponseBody?

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
            var model = CreateNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayRequest : Tea.TeaModel {
    public var gwEui: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
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
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLocalJoinPermissionRequest : Tea.TeaModel {
    public var iotInstanceId: String?

    public var joinPermissionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class DeleteLocalJoinPermissionResponseBody : Tea.TeaModel {
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

public class DeleteLocalJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLocalJoinPermissionResponseBody?

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
            var model = DeleteLocalJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNodeGroupRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class DeleteNodeGroupResponseBody : Tea.TeaModel {
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

public class DeleteNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodeGroupResponseBody?

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
            var model = DeleteNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFreqBandPlanGroupRequest : Tea.TeaModel {
    public var groupId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
    }
}

public class GetFreqBandPlanGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginFrequency: Int64?

        public var endFrequency: Int64?

        public var frequencyRegionId: String?

        public var frequencyType: String?

        public var groupId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginFrequency != nil {
                map["BeginFrequency"] = self.beginFrequency!
            }
            if self.endFrequency != nil {
                map["EndFrequency"] = self.endFrequency!
            }
            if self.frequencyRegionId != nil {
                map["FrequencyRegionId"] = self.frequencyRegionId!
            }
            if self.frequencyType != nil {
                map["FrequencyType"] = self.frequencyType!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginFrequency") {
                self.beginFrequency = dict["BeginFrequency"] as! Int64
            }
            if dict.keys.contains("EndFrequency") {
                self.endFrequency = dict["EndFrequency"] as! Int64
            }
            if dict.keys.contains("FrequencyRegionId") {
                self.frequencyRegionId = dict["FrequencyRegionId"] as! String
            }
            if dict.keys.contains("FrequencyType") {
                self.frequencyType = dict["FrequencyType"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! Int64
            }
        }
    }
    public var data: GetFreqBandPlanGroupResponseBody.Data?

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
            var model = GetFreqBandPlanGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetFreqBandPlanGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFreqBandPlanGroupResponseBody?

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
            var model = GetFreqBandPlanGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayRequest : Tea.TeaModel {
    public var gwEui: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class GetGatewayResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var addressCode: Int64?

        public var authTypes: String?

        public var chargeStatus: String?

        public var city: String?

        public var classBSupported: Bool?

        public var classBWorking: Bool?

        public var communicationMode: String?

        public var description_: String?

        public var district: String?

        public var embeddedNsId: String?

        public var enabled: Bool?

        public var freqBandPlanGroupId: Int64?

        public var gisCoordinateSystem: String?

        public var gwEui: String?

        public var latitude: Double?

        public var longitude: Double?

        public var name: String?

        public var onlineState: String?

        public var onlineStateChangedMillis: Int64?

        public var timeCorrectable: Bool?

        public override init() {
            super.init()
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
            if self.addressCode != nil {
                map["AddressCode"] = self.addressCode!
            }
            if self.authTypes != nil {
                map["AuthTypes"] = self.authTypes!
            }
            if self.chargeStatus != nil {
                map["ChargeStatus"] = self.chargeStatus!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.classBSupported != nil {
                map["ClassBSupported"] = self.classBSupported!
            }
            if self.classBWorking != nil {
                map["ClassBWorking"] = self.classBWorking!
            }
            if self.communicationMode != nil {
                map["CommunicationMode"] = self.communicationMode!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.district != nil {
                map["District"] = self.district!
            }
            if self.embeddedNsId != nil {
                map["EmbeddedNsId"] = self.embeddedNsId!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.gisCoordinateSystem != nil {
                map["GisCoordinateSystem"] = self.gisCoordinateSystem!
            }
            if self.gwEui != nil {
                map["GwEui"] = self.gwEui!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.onlineState != nil {
                map["OnlineState"] = self.onlineState!
            }
            if self.onlineStateChangedMillis != nil {
                map["OnlineStateChangedMillis"] = self.onlineStateChangedMillis!
            }
            if self.timeCorrectable != nil {
                map["TimeCorrectable"] = self.timeCorrectable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AddressCode") {
                self.addressCode = dict["AddressCode"] as! Int64
            }
            if dict.keys.contains("AuthTypes") {
                self.authTypes = dict["AuthTypes"] as! String
            }
            if dict.keys.contains("ChargeStatus") {
                self.chargeStatus = dict["ChargeStatus"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("ClassBSupported") {
                self.classBSupported = dict["ClassBSupported"] as! Bool
            }
            if dict.keys.contains("ClassBWorking") {
                self.classBWorking = dict["ClassBWorking"] as! Bool
            }
            if dict.keys.contains("CommunicationMode") {
                self.communicationMode = dict["CommunicationMode"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("District") {
                self.district = dict["District"] as! String
            }
            if dict.keys.contains("EmbeddedNsId") {
                self.embeddedNsId = dict["EmbeddedNsId"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("GisCoordinateSystem") {
                self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
            }
            if dict.keys.contains("GwEui") {
                self.gwEui = dict["GwEui"] as! String
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! Double
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OnlineState") {
                self.onlineState = dict["OnlineState"] as! String
            }
            if dict.keys.contains("OnlineStateChangedMillis") {
                self.onlineStateChangedMillis = dict["OnlineStateChangedMillis"] as! Int64
            }
            if dict.keys.contains("TimeCorrectable") {
                self.timeCorrectable = dict["TimeCorrectable"] as! Bool
            }
        }
    }
    public var data: GetGatewayResponseBody.Data?

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
            var model = GetGatewayResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayResponseBody?

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
            var model = GetGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayPacketStatRequest : Tea.TeaModel {
    public var beginMillis: Int64?

    public var endMillis: Int64?

    public var gwEui: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class GetGatewayPacketStatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downlinkInvalid: Int32?

        public var downlinkValid: Int32?

        public var uplinkInvalid: Int32?

        public var uplinkValid: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downlinkInvalid != nil {
                map["DownlinkInvalid"] = self.downlinkInvalid!
            }
            if self.downlinkValid != nil {
                map["DownlinkValid"] = self.downlinkValid!
            }
            if self.uplinkInvalid != nil {
                map["UplinkInvalid"] = self.uplinkInvalid!
            }
            if self.uplinkValid != nil {
                map["UplinkValid"] = self.uplinkValid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownlinkInvalid") {
                self.downlinkInvalid = dict["DownlinkInvalid"] as! Int32
            }
            if dict.keys.contains("DownlinkValid") {
                self.downlinkValid = dict["DownlinkValid"] as! Int32
            }
            if dict.keys.contains("UplinkInvalid") {
                self.uplinkInvalid = dict["UplinkInvalid"] as! Int32
            }
            if dict.keys.contains("UplinkValid") {
                self.uplinkValid = dict["UplinkValid"] as! Int32
            }
        }
    }
    public var data: GetGatewayPacketStatResponseBody.Data?

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
            var model = GetGatewayPacketStatResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayPacketStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayPacketStatResponseBody?

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
            var model = GetGatewayPacketStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayStatusStatRequest : Tea.TeaModel {
    public var gwEui: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class GetGatewayStatusStatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cpuRadio: Double?

        public var enabled: Bool?

        public var gwEui: String?

        public var memoryRadio: Double?

        public var onlineHour: Int64?

        public var onlineState: String?

        public var rxCount: Int64?

        public var txCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuRadio != nil {
                map["CpuRadio"] = self.cpuRadio!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.gwEui != nil {
                map["GwEui"] = self.gwEui!
            }
            if self.memoryRadio != nil {
                map["MemoryRadio"] = self.memoryRadio!
            }
            if self.onlineHour != nil {
                map["OnlineHour"] = self.onlineHour!
            }
            if self.onlineState != nil {
                map["OnlineState"] = self.onlineState!
            }
            if self.rxCount != nil {
                map["RxCount"] = self.rxCount!
            }
            if self.txCount != nil {
                map["TxCount"] = self.txCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuRadio") {
                self.cpuRadio = dict["CpuRadio"] as! Double
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("GwEui") {
                self.gwEui = dict["GwEui"] as! String
            }
            if dict.keys.contains("MemoryRadio") {
                self.memoryRadio = dict["MemoryRadio"] as! Double
            }
            if dict.keys.contains("OnlineHour") {
                self.onlineHour = dict["OnlineHour"] as! Int64
            }
            if dict.keys.contains("OnlineState") {
                self.onlineState = dict["OnlineState"] as! String
            }
            if dict.keys.contains("RxCount") {
                self.rxCount = dict["RxCount"] as! Int64
            }
            if dict.keys.contains("TxCount") {
                self.txCount = dict["TxCount"] as! Int64
            }
        }
    }
    public var data: GetGatewayStatusStatResponseBody.Data?

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
            var model = GetGatewayStatusStatResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayStatusStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayStatusStatResponseBody?

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
            var model = GetGatewayStatusStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayTransferPacketsDownloadUrlRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var gwEui: String?

    public var iotInstanceId: String?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class GetGatewayTransferPacketsDownloadUrlResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayTransferPacketsDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayTransferPacketsDownloadUrlResponseBody?

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
            var model = GetGatewayTransferPacketsDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayTupleOrderRequest : Tea.TeaModel {
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

public class GetGatewayTupleOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var acceptedMillis: Int64?

        public var createdMillis: Int64?

        public var orderId: String?

        public var orderState: String?

        public var requiredCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedMillis != nil {
                map["AcceptedMillis"] = self.acceptedMillis!
            }
            if self.createdMillis != nil {
                map["CreatedMillis"] = self.createdMillis!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderState != nil {
                map["OrderState"] = self.orderState!
            }
            if self.requiredCount != nil {
                map["RequiredCount"] = self.requiredCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedMillis") {
                self.acceptedMillis = dict["AcceptedMillis"] as! Int64
            }
            if dict.keys.contains("CreatedMillis") {
                self.createdMillis = dict["CreatedMillis"] as! Int64
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderState") {
                self.orderState = dict["OrderState"] as! String
            }
            if dict.keys.contains("RequiredCount") {
                self.requiredCount = dict["RequiredCount"] as! Int64
            }
        }
    }
    public var data: GetGatewayTupleOrderResponseBody.Data?

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
            var model = GetGatewayTupleOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayTupleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayTupleOrderResponseBody?

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
            var model = GetGatewayTupleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGatewayTuplesDownloadUrlRequest : Tea.TeaModel {
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

public class GetGatewayTuplesDownloadUrlResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGatewayTuplesDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayTuplesDownloadUrlResponseBody?

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
            var model = GetGatewayTuplesDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJoinPermissionAuthOrderRequest : Tea.TeaModel {
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

public class GetJoinPermissionAuthOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var acceptedMillis: Int64?

        public var applyingMillis: Int64?

        public var canceledMillis: Int64?

        public var joinPermissionId: String?

        public var orderId: String?

        public var orderState: String?

        public var ownerAliyunId: String?

        public var rejectedMillis: Int64?

        public var renterAliyunId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedMillis != nil {
                map["AcceptedMillis"] = self.acceptedMillis!
            }
            if self.applyingMillis != nil {
                map["ApplyingMillis"] = self.applyingMillis!
            }
            if self.canceledMillis != nil {
                map["CanceledMillis"] = self.canceledMillis!
            }
            if self.joinPermissionId != nil {
                map["JoinPermissionId"] = self.joinPermissionId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderState != nil {
                map["OrderState"] = self.orderState!
            }
            if self.ownerAliyunId != nil {
                map["OwnerAliyunId"] = self.ownerAliyunId!
            }
            if self.rejectedMillis != nil {
                map["RejectedMillis"] = self.rejectedMillis!
            }
            if self.renterAliyunId != nil {
                map["RenterAliyunId"] = self.renterAliyunId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedMillis") {
                self.acceptedMillis = dict["AcceptedMillis"] as! Int64
            }
            if dict.keys.contains("ApplyingMillis") {
                self.applyingMillis = dict["ApplyingMillis"] as! Int64
            }
            if dict.keys.contains("CanceledMillis") {
                self.canceledMillis = dict["CanceledMillis"] as! Int64
            }
            if dict.keys.contains("JoinPermissionId") {
                self.joinPermissionId = dict["JoinPermissionId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderState") {
                self.orderState = dict["OrderState"] as! String
            }
            if dict.keys.contains("OwnerAliyunId") {
                self.ownerAliyunId = dict["OwnerAliyunId"] as! String
            }
            if dict.keys.contains("RejectedMillis") {
                self.rejectedMillis = dict["RejectedMillis"] as! Int64
            }
            if dict.keys.contains("RenterAliyunId") {
                self.renterAliyunId = dict["RenterAliyunId"] as! String
            }
        }
    }
    public var data: GetJoinPermissionAuthOrderResponseBody.Data?

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
            var model = GetJoinPermissionAuthOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetJoinPermissionAuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJoinPermissionAuthOrderResponseBody?

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
            var model = GetJoinPermissionAuthOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeRequest : Tea.TeaModel {
    public var devEui: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
    }
}

public class GetNodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authTypes: String?

        public var boundMillis: Int64?

        public var classMode: String?

        public var devAddr: String?

        public var devEui: String?

        public var lastJoinMillis: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authTypes != nil {
                map["AuthTypes"] = self.authTypes!
            }
            if self.boundMillis != nil {
                map["BoundMillis"] = self.boundMillis!
            }
            if self.classMode != nil {
                map["ClassMode"] = self.classMode!
            }
            if self.devAddr != nil {
                map["DevAddr"] = self.devAddr!
            }
            if self.devEui != nil {
                map["DevEui"] = self.devEui!
            }
            if self.lastJoinMillis != nil {
                map["LastJoinMillis"] = self.lastJoinMillis!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthTypes") {
                self.authTypes = dict["AuthTypes"] as! String
            }
            if dict.keys.contains("BoundMillis") {
                self.boundMillis = dict["BoundMillis"] as! Int64
            }
            if dict.keys.contains("ClassMode") {
                self.classMode = dict["ClassMode"] as! String
            }
            if dict.keys.contains("DevAddr") {
                self.devAddr = dict["DevAddr"] as! String
            }
            if dict.keys.contains("DevEui") {
                self.devEui = dict["DevEui"] as! String
            }
            if dict.keys.contains("LastJoinMillis") {
                self.lastJoinMillis = dict["LastJoinMillis"] as! Int64
            }
        }
    }
    public var data: GetNodeResponseBody.Data?

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
            var model = GetNodeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeResponseBody?

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
            var model = GetNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeGroupRequest : Tea.TeaModel {
    public var iotInstanceId: String?

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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class GetNodeGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataDispatchConfig : Tea.TeaModel {
            public class IotProduct : Tea.TeaModel {
                public var debugSwitch: Bool?

                public var productKey: String?

                public var productName: String?

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
                    if self.debugSwitch != nil {
                        map["DebugSwitch"] = self.debugSwitch!
                    }
                    if self.productKey != nil {
                        map["ProductKey"] = self.productKey!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    if self.productType != nil {
                        map["ProductType"] = self.productType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DebugSwitch") {
                        self.debugSwitch = dict["DebugSwitch"] as! Bool
                    }
                    if dict.keys.contains("ProductKey") {
                        self.productKey = dict["ProductKey"] as! String
                    }
                    if dict.keys.contains("ProductName") {
                        self.productName = dict["ProductName"] as! String
                    }
                    if dict.keys.contains("ProductType") {
                        self.productType = dict["ProductType"] as! String
                    }
                }
            }
            public class OnsTopics : Tea.TeaModel {
                public var downlinkRegionName: String?

                public var downlinkTopic: String?

                public var uplinkRegionName: String?

                public var uplinkTopic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.downlinkRegionName != nil {
                        map["DownlinkRegionName"] = self.downlinkRegionName!
                    }
                    if self.downlinkTopic != nil {
                        map["DownlinkTopic"] = self.downlinkTopic!
                    }
                    if self.uplinkRegionName != nil {
                        map["UplinkRegionName"] = self.uplinkRegionName!
                    }
                    if self.uplinkTopic != nil {
                        map["UplinkTopic"] = self.uplinkTopic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DownlinkRegionName") {
                        self.downlinkRegionName = dict["DownlinkRegionName"] as! String
                    }
                    if dict.keys.contains("DownlinkTopic") {
                        self.downlinkTopic = dict["DownlinkTopic"] as! String
                    }
                    if dict.keys.contains("UplinkRegionName") {
                        self.uplinkRegionName = dict["UplinkRegionName"] as! String
                    }
                    if dict.keys.contains("UplinkTopic") {
                        self.uplinkTopic = dict["UplinkTopic"] as! String
                    }
                }
            }
            public var destination: String?

            public var iotProduct: GetNodeGroupResponseBody.Data.DataDispatchConfig.IotProduct?

            public var onsTopics: GetNodeGroupResponseBody.Data.DataDispatchConfig.OnsTopics?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.iotProduct?.validate()
                try self.onsTopics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destination != nil {
                    map["Destination"] = self.destination!
                }
                if self.iotProduct != nil {
                    map["IotProduct"] = self.iotProduct?.toMap()
                }
                if self.onsTopics != nil {
                    map["OnsTopics"] = self.onsTopics?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") {
                    self.destination = dict["Destination"] as! String
                }
                if dict.keys.contains("IotProduct") {
                    var model = GetNodeGroupResponseBody.Data.DataDispatchConfig.IotProduct()
                    model.fromMap(dict["IotProduct"] as! [String: Any])
                    self.iotProduct = model
                }
                if dict.keys.contains("OnsTopics") {
                    var model = GetNodeGroupResponseBody.Data.DataDispatchConfig.OnsTopics()
                    model.fromMap(dict["OnsTopics"] as! [String: Any])
                    self.onsTopics = model
                }
            }
        }
        public class Locks : Tea.TeaModel {
            public var createMillis: Int64?

            public var enabled: Bool?

            public var lockId: String?

            public var lockType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createMillis != nil {
                    map["CreateMillis"] = self.createMillis!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.lockId != nil {
                    map["LockId"] = self.lockId!
                }
                if self.lockType != nil {
                    map["LockType"] = self.lockType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateMillis") {
                    self.createMillis = dict["CreateMillis"] as! Int64
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("LockId") {
                    self.lockId = dict["LockId"] as! String
                }
                if dict.keys.contains("LockType") {
                    self.lockType = dict["LockType"] as! String
                }
            }
        }
        public var classMode: String?

        public var createMillis: Int64?

        public var dataDispatchConfig: GetNodeGroupResponseBody.Data.DataDispatchConfig?

        public var dataDispatchEnabled: Bool?

        public var freqBandPlanGroupId: Int64?

        public var joinEui: String?

        public var joinPermissionEnabled: Bool?

        public var joinPermissionId: String?

        public var joinPermissionName: String?

        public var joinPermissionOwnerAliyunId: String?

        public var joinPermissionType: String?

        public var locks: [GetNodeGroupResponseBody.Data.Locks]?

        public var multicastEnabled: Bool?

        public var multicastGroupId: String?

        public var multicastNodeCapacity: Int32?

        public var multicastNodeCount: Int32?

        public var nodeGroupId: String?

        public var nodeGroupName: String?

        public var nodesCnt: Int64?

        public var rxDailySum: String?

        public var rxMonthSum: Int64?

        public var txDailySum: Int64?

        public var txMonthSum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataDispatchConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classMode != nil {
                map["ClassMode"] = self.classMode!
            }
            if self.createMillis != nil {
                map["CreateMillis"] = self.createMillis!
            }
            if self.dataDispatchConfig != nil {
                map["DataDispatchConfig"] = self.dataDispatchConfig?.toMap()
            }
            if self.dataDispatchEnabled != nil {
                map["DataDispatchEnabled"] = self.dataDispatchEnabled!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.joinEui != nil {
                map["JoinEui"] = self.joinEui!
            }
            if self.joinPermissionEnabled != nil {
                map["JoinPermissionEnabled"] = self.joinPermissionEnabled!
            }
            if self.joinPermissionId != nil {
                map["JoinPermissionId"] = self.joinPermissionId!
            }
            if self.joinPermissionName != nil {
                map["JoinPermissionName"] = self.joinPermissionName!
            }
            if self.joinPermissionOwnerAliyunId != nil {
                map["JoinPermissionOwnerAliyunId"] = self.joinPermissionOwnerAliyunId!
            }
            if self.joinPermissionType != nil {
                map["JoinPermissionType"] = self.joinPermissionType!
            }
            if self.locks != nil {
                var tmp : [Any] = []
                for k in self.locks! {
                    tmp.append(k.toMap())
                }
                map["Locks"] = tmp
            }
            if self.multicastEnabled != nil {
                map["MulticastEnabled"] = self.multicastEnabled!
            }
            if self.multicastGroupId != nil {
                map["MulticastGroupId"] = self.multicastGroupId!
            }
            if self.multicastNodeCapacity != nil {
                map["MulticastNodeCapacity"] = self.multicastNodeCapacity!
            }
            if self.multicastNodeCount != nil {
                map["MulticastNodeCount"] = self.multicastNodeCount!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.nodesCnt != nil {
                map["NodesCnt"] = self.nodesCnt!
            }
            if self.rxDailySum != nil {
                map["RxDailySum"] = self.rxDailySum!
            }
            if self.rxMonthSum != nil {
                map["RxMonthSum"] = self.rxMonthSum!
            }
            if self.txDailySum != nil {
                map["TxDailySum"] = self.txDailySum!
            }
            if self.txMonthSum != nil {
                map["TxMonthSum"] = self.txMonthSum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassMode") {
                self.classMode = dict["ClassMode"] as! String
            }
            if dict.keys.contains("CreateMillis") {
                self.createMillis = dict["CreateMillis"] as! Int64
            }
            if dict.keys.contains("DataDispatchConfig") {
                var model = GetNodeGroupResponseBody.Data.DataDispatchConfig()
                model.fromMap(dict["DataDispatchConfig"] as! [String: Any])
                self.dataDispatchConfig = model
            }
            if dict.keys.contains("DataDispatchEnabled") {
                self.dataDispatchEnabled = dict["DataDispatchEnabled"] as! Bool
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("JoinEui") {
                self.joinEui = dict["JoinEui"] as! String
            }
            if dict.keys.contains("JoinPermissionEnabled") {
                self.joinPermissionEnabled = dict["JoinPermissionEnabled"] as! Bool
            }
            if dict.keys.contains("JoinPermissionId") {
                self.joinPermissionId = dict["JoinPermissionId"] as! String
            }
            if dict.keys.contains("JoinPermissionName") {
                self.joinPermissionName = dict["JoinPermissionName"] as! String
            }
            if dict.keys.contains("JoinPermissionOwnerAliyunId") {
                self.joinPermissionOwnerAliyunId = dict["JoinPermissionOwnerAliyunId"] as! String
            }
            if dict.keys.contains("JoinPermissionType") {
                self.joinPermissionType = dict["JoinPermissionType"] as! String
            }
            if dict.keys.contains("Locks") {
                self.locks = dict["Locks"] as! [GetNodeGroupResponseBody.Data.Locks]
            }
            if dict.keys.contains("MulticastEnabled") {
                self.multicastEnabled = dict["MulticastEnabled"] as! Bool
            }
            if dict.keys.contains("MulticastGroupId") {
                self.multicastGroupId = dict["MulticastGroupId"] as! String
            }
            if dict.keys.contains("MulticastNodeCapacity") {
                self.multicastNodeCapacity = dict["MulticastNodeCapacity"] as! Int32
            }
            if dict.keys.contains("MulticastNodeCount") {
                self.multicastNodeCount = dict["MulticastNodeCount"] as! Int32
            }
            if dict.keys.contains("NodeGroupId") {
                self.nodeGroupId = dict["NodeGroupId"] as! String
            }
            if dict.keys.contains("NodeGroupName") {
                self.nodeGroupName = dict["NodeGroupName"] as! String
            }
            if dict.keys.contains("NodesCnt") {
                self.nodesCnt = dict["NodesCnt"] as! Int64
            }
            if dict.keys.contains("RxDailySum") {
                self.rxDailySum = dict["RxDailySum"] as! String
            }
            if dict.keys.contains("RxMonthSum") {
                self.rxMonthSum = dict["RxMonthSum"] as! Int64
            }
            if dict.keys.contains("TxDailySum") {
                self.txDailySum = dict["TxDailySum"] as! Int64
            }
            if dict.keys.contains("TxMonthSum") {
                self.txMonthSum = dict["TxMonthSum"] as! Int64
            }
        }
    }
    public var data: GetNodeGroupResponseBody.Data?

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
            var model = GetNodeGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeGroupResponseBody?

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
            var model = GetNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeGroupTransferPacketsDownloadUrlRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var iotInstanceId: String?

    public var nodeGroupId: String?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class GetNodeGroupTransferPacketsDownloadUrlResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeGroupTransferPacketsDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeGroupTransferPacketsDownloadUrlResponseBody?

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
            var model = GetNodeGroupTransferPacketsDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeTransferPacketRequest : Tea.TeaModel {
    public var base64EncodedMacPayload: String?

    public var devEui: String?

    public var iotInstanceId: String?

    public var logMillis: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.base64EncodedMacPayload != nil {
            map["Base64EncodedMacPayload"] = self.base64EncodedMacPayload!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.logMillis != nil {
            map["LogMillis"] = self.logMillis!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Base64EncodedMacPayload") {
            self.base64EncodedMacPayload = dict["Base64EncodedMacPayload"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("LogMillis") {
            self.logMillis = dict["LogMillis"] as! Int64
        }
    }
}

public class GetNodeTransferPacketResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var base64EncodedMacPayload: String?

        public var classMode: String?

        public var datr: String?

        public var devAddr: String?

        public var devEui: String?

        public var FPort: Int32?

        public var freq: Double?

        public var freqBandPlanGroupId: Int64?

        public var gwEui: String?

        public var gwOwnerAliyunId: String?

        public var hasData: Bool?

        public var hasMacCommand: Bool?

        public var logMillis: Int64?

        public var lsnr: Double?

        public var macCommandCIDs: [[String: Any]]?

        public var macPayloadSize: Int32?

        public var messageType: String?

        public var processEvent: String?

        public var rssi: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.base64EncodedMacPayload != nil {
                map["Base64EncodedMacPayload"] = self.base64EncodedMacPayload!
            }
            if self.classMode != nil {
                map["ClassMode"] = self.classMode!
            }
            if self.datr != nil {
                map["Datr"] = self.datr!
            }
            if self.devAddr != nil {
                map["DevAddr"] = self.devAddr!
            }
            if self.devEui != nil {
                map["DevEui"] = self.devEui!
            }
            if self.FPort != nil {
                map["FPort"] = self.FPort!
            }
            if self.freq != nil {
                map["Freq"] = self.freq!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.gwEui != nil {
                map["GwEui"] = self.gwEui!
            }
            if self.gwOwnerAliyunId != nil {
                map["GwOwnerAliyunId"] = self.gwOwnerAliyunId!
            }
            if self.hasData != nil {
                map["HasData"] = self.hasData!
            }
            if self.hasMacCommand != nil {
                map["HasMacCommand"] = self.hasMacCommand!
            }
            if self.logMillis != nil {
                map["LogMillis"] = self.logMillis!
            }
            if self.lsnr != nil {
                map["Lsnr"] = self.lsnr!
            }
            if self.macCommandCIDs != nil {
                map["MacCommandCIDs"] = self.macCommandCIDs!
            }
            if self.macPayloadSize != nil {
                map["MacPayloadSize"] = self.macPayloadSize!
            }
            if self.messageType != nil {
                map["MessageType"] = self.messageType!
            }
            if self.processEvent != nil {
                map["ProcessEvent"] = self.processEvent!
            }
            if self.rssi != nil {
                map["Rssi"] = self.rssi!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Base64EncodedMacPayload") {
                self.base64EncodedMacPayload = dict["Base64EncodedMacPayload"] as! String
            }
            if dict.keys.contains("ClassMode") {
                self.classMode = dict["ClassMode"] as! String
            }
            if dict.keys.contains("Datr") {
                self.datr = dict["Datr"] as! String
            }
            if dict.keys.contains("DevAddr") {
                self.devAddr = dict["DevAddr"] as! String
            }
            if dict.keys.contains("DevEui") {
                self.devEui = dict["DevEui"] as! String
            }
            if dict.keys.contains("FPort") {
                self.FPort = dict["FPort"] as! Int32
            }
            if dict.keys.contains("Freq") {
                self.freq = dict["Freq"] as! Double
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("GwEui") {
                self.gwEui = dict["GwEui"] as! String
            }
            if dict.keys.contains("GwOwnerAliyunId") {
                self.gwOwnerAliyunId = dict["GwOwnerAliyunId"] as! String
            }
            if dict.keys.contains("HasData") {
                self.hasData = dict["HasData"] as! Bool
            }
            if dict.keys.contains("HasMacCommand") {
                self.hasMacCommand = dict["HasMacCommand"] as! Bool
            }
            if dict.keys.contains("LogMillis") {
                self.logMillis = dict["LogMillis"] as! Int64
            }
            if dict.keys.contains("Lsnr") {
                self.lsnr = dict["Lsnr"] as! Double
            }
            if dict.keys.contains("MacCommandCIDs") {
                self.macCommandCIDs = dict["MacCommandCIDs"] as! [[String: Any]]
            }
            if dict.keys.contains("MacPayloadSize") {
                self.macPayloadSize = dict["MacPayloadSize"] as! Int32
            }
            if dict.keys.contains("MessageType") {
                self.messageType = dict["MessageType"] as! String
            }
            if dict.keys.contains("ProcessEvent") {
                self.processEvent = dict["ProcessEvent"] as! String
            }
            if dict.keys.contains("Rssi") {
                self.rssi = dict["Rssi"] as! Int32
            }
        }
    }
    public var data: GetNodeTransferPacketResponseBody.Data?

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
            var model = GetNodeTransferPacketResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeTransferPacketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeTransferPacketResponseBody?

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
            var model = GetNodeTransferPacketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeTransferPacketsDownloadUrlRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var gwEui: String?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class GetNodeTransferPacketsDownloadUrlResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeTransferPacketsDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeTransferPacketsDownloadUrlResponseBody?

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
            var model = GetNodeTransferPacketsDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeTupleOrderRequest : Tea.TeaModel {
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

public class GetNodeTupleOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var acceptedMillis: Int64?

        public var createdMillis: Int64?

        public var isKpm: Bool?

        public var orderId: String?

        public var orderState: String?

        public var requiredCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedMillis != nil {
                map["AcceptedMillis"] = self.acceptedMillis!
            }
            if self.createdMillis != nil {
                map["CreatedMillis"] = self.createdMillis!
            }
            if self.isKpm != nil {
                map["IsKpm"] = self.isKpm!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderState != nil {
                map["OrderState"] = self.orderState!
            }
            if self.requiredCount != nil {
                map["RequiredCount"] = self.requiredCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedMillis") {
                self.acceptedMillis = dict["AcceptedMillis"] as! Int64
            }
            if dict.keys.contains("CreatedMillis") {
                self.createdMillis = dict["CreatedMillis"] as! Int64
            }
            if dict.keys.contains("IsKpm") {
                self.isKpm = dict["IsKpm"] as! Bool
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderState") {
                self.orderState = dict["OrderState"] as! String
            }
            if dict.keys.contains("RequiredCount") {
                self.requiredCount = dict["RequiredCount"] as! Int64
            }
        }
    }
    public var data: GetNodeTupleOrderResponseBody.Data?

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
            var model = GetNodeTupleOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeTupleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeTupleOrderResponseBody?

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
            var model = GetNodeTupleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeTuplesDownloadUrlRequest : Tea.TeaModel {
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

public class GetNodeTuplesDownloadUrlResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeTuplesDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeTuplesDownloadUrlResponseBody?

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
            var model = GetNodeTuplesDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNotificationRequest : Tea.TeaModel {
    public var notificationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notificationId != nil {
            map["NotificationId"] = self.notificationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotificationId") {
            self.notificationId = dict["NotificationId"] as! String
        }
    }
}

public class GetNotificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GatewayOfflineInfo : Tea.TeaModel {
            public var gwEui: String?

            public var offlineMillis: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.offlineMillis != nil {
                    map["OfflineMillis"] = self.offlineMillis!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("OfflineMillis") {
                    self.offlineMillis = dict["OfflineMillis"] as! Int64
                }
            }
        }
        public class JoinPermissionAuthInfo : Tea.TeaModel {
            public var acceptedMillis: Int64?

            public var applyingMillis: Int64?

            public var canceledMillis: Int64?

            public var joinEui: String?

            public var joinPermissionId: String?

            public var joinPermissionName: String?

            public var orderId: String?

            public var orderState: String?

            public var ownerAliyunId: String?

            public var rejectedMillis: Int64?

            public var renterAliyunId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptedMillis != nil {
                    map["AcceptedMillis"] = self.acceptedMillis!
                }
                if self.applyingMillis != nil {
                    map["ApplyingMillis"] = self.applyingMillis!
                }
                if self.canceledMillis != nil {
                    map["CanceledMillis"] = self.canceledMillis!
                }
                if self.joinEui != nil {
                    map["JoinEui"] = self.joinEui!
                }
                if self.joinPermissionId != nil {
                    map["JoinPermissionId"] = self.joinPermissionId!
                }
                if self.joinPermissionName != nil {
                    map["JoinPermissionName"] = self.joinPermissionName!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderState != nil {
                    map["OrderState"] = self.orderState!
                }
                if self.ownerAliyunId != nil {
                    map["OwnerAliyunId"] = self.ownerAliyunId!
                }
                if self.rejectedMillis != nil {
                    map["RejectedMillis"] = self.rejectedMillis!
                }
                if self.renterAliyunId != nil {
                    map["RenterAliyunId"] = self.renterAliyunId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptedMillis") {
                    self.acceptedMillis = dict["AcceptedMillis"] as! Int64
                }
                if dict.keys.contains("ApplyingMillis") {
                    self.applyingMillis = dict["ApplyingMillis"] as! Int64
                }
                if dict.keys.contains("CanceledMillis") {
                    self.canceledMillis = dict["CanceledMillis"] as! Int64
                }
                if dict.keys.contains("JoinEui") {
                    self.joinEui = dict["JoinEui"] as! String
                }
                if dict.keys.contains("JoinPermissionId") {
                    self.joinPermissionId = dict["JoinPermissionId"] as! String
                }
                if dict.keys.contains("JoinPermissionName") {
                    self.joinPermissionName = dict["JoinPermissionName"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderState") {
                    self.orderState = dict["OrderState"] as! String
                }
                if dict.keys.contains("OwnerAliyunId") {
                    self.ownerAliyunId = dict["OwnerAliyunId"] as! String
                }
                if dict.keys.contains("RejectedMillis") {
                    self.rejectedMillis = dict["RejectedMillis"] as! Int64
                }
                if dict.keys.contains("RenterAliyunId") {
                    self.renterAliyunId = dict["RenterAliyunId"] as! String
                }
            }
        }
        public var category: String?

        public var gatewayOfflineInfo: GetNotificationResponseBody.Data.GatewayOfflineInfo?

        public var handleState: String?

        public var handledMillis: Int64?

        public var joinPermissionAuthInfo: GetNotificationResponseBody.Data.JoinPermissionAuthInfo?

        public var noticeMillis: Int64?

        public var notificationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gatewayOfflineInfo?.validate()
            try self.joinPermissionAuthInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.gatewayOfflineInfo != nil {
                map["GatewayOfflineInfo"] = self.gatewayOfflineInfo?.toMap()
            }
            if self.handleState != nil {
                map["HandleState"] = self.handleState!
            }
            if self.handledMillis != nil {
                map["HandledMillis"] = self.handledMillis!
            }
            if self.joinPermissionAuthInfo != nil {
                map["JoinPermissionAuthInfo"] = self.joinPermissionAuthInfo?.toMap()
            }
            if self.noticeMillis != nil {
                map["NoticeMillis"] = self.noticeMillis!
            }
            if self.notificationId != nil {
                map["NotificationId"] = self.notificationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("GatewayOfflineInfo") {
                var model = GetNotificationResponseBody.Data.GatewayOfflineInfo()
                model.fromMap(dict["GatewayOfflineInfo"] as! [String: Any])
                self.gatewayOfflineInfo = model
            }
            if dict.keys.contains("HandleState") {
                self.handleState = dict["HandleState"] as! String
            }
            if dict.keys.contains("HandledMillis") {
                self.handledMillis = dict["HandledMillis"] as! Int64
            }
            if dict.keys.contains("JoinPermissionAuthInfo") {
                var model = GetNotificationResponseBody.Data.JoinPermissionAuthInfo()
                model.fromMap(dict["JoinPermissionAuthInfo"] as! [String: Any])
                self.joinPermissionAuthInfo = model
            }
            if dict.keys.contains("NoticeMillis") {
                self.noticeMillis = dict["NoticeMillis"] as! Int64
            }
            if dict.keys.contains("NotificationId") {
                self.notificationId = dict["NotificationId"] as! String
            }
        }
    }
    public var data: GetNotificationResponseBody.Data?

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
            var model = GetNotificationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNotificationResponseBody?

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
            var model = GetNotificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOwnedJoinPermissionRequest : Tea.TeaModel {
    public var iotInstanceId: String?

    public var joinPermissionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class GetOwnedJoinPermissionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authState: String?

        public var boundProductName: String?

        public var classMode: String?

        public var createMillis: Int64?

        public var dataDispatchDestination: String?

        public var dataRate: Int64?

        public var enabled: Bool?

        public var freqBandPlanGroupId: Int64?

        public var joinEui: String?

        public var joinPermissionId: String?

        public var joinPermissionName: String?

        public var multicastEnabled: Bool?

        public var multicastNodeCapacity: Int32?

        public var multicastNodeCount: Int32?

        public var nodesCnt: Int64?

        public var renterAliyunId: String?

        public var rxDailySum: Int64?

        public var rxDelay: Int64?

        public var rxMonthSum: Int64?

        public var txDailySum: Int64?

        public var txMonthSum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authState != nil {
                map["AuthState"] = self.authState!
            }
            if self.boundProductName != nil {
                map["BoundProductName"] = self.boundProductName!
            }
            if self.classMode != nil {
                map["ClassMode"] = self.classMode!
            }
            if self.createMillis != nil {
                map["CreateMillis"] = self.createMillis!
            }
            if self.dataDispatchDestination != nil {
                map["DataDispatchDestination"] = self.dataDispatchDestination!
            }
            if self.dataRate != nil {
                map["DataRate"] = self.dataRate!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.joinEui != nil {
                map["JoinEui"] = self.joinEui!
            }
            if self.joinPermissionId != nil {
                map["JoinPermissionId"] = self.joinPermissionId!
            }
            if self.joinPermissionName != nil {
                map["JoinPermissionName"] = self.joinPermissionName!
            }
            if self.multicastEnabled != nil {
                map["MulticastEnabled"] = self.multicastEnabled!
            }
            if self.multicastNodeCapacity != nil {
                map["MulticastNodeCapacity"] = self.multicastNodeCapacity!
            }
            if self.multicastNodeCount != nil {
                map["MulticastNodeCount"] = self.multicastNodeCount!
            }
            if self.nodesCnt != nil {
                map["NodesCnt"] = self.nodesCnt!
            }
            if self.renterAliyunId != nil {
                map["RenterAliyunId"] = self.renterAliyunId!
            }
            if self.rxDailySum != nil {
                map["RxDailySum"] = self.rxDailySum!
            }
            if self.rxDelay != nil {
                map["RxDelay"] = self.rxDelay!
            }
            if self.rxMonthSum != nil {
                map["RxMonthSum"] = self.rxMonthSum!
            }
            if self.txDailySum != nil {
                map["TxDailySum"] = self.txDailySum!
            }
            if self.txMonthSum != nil {
                map["TxMonthSum"] = self.txMonthSum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthState") {
                self.authState = dict["AuthState"] as! String
            }
            if dict.keys.contains("BoundProductName") {
                self.boundProductName = dict["BoundProductName"] as! String
            }
            if dict.keys.contains("ClassMode") {
                self.classMode = dict["ClassMode"] as! String
            }
            if dict.keys.contains("CreateMillis") {
                self.createMillis = dict["CreateMillis"] as! Int64
            }
            if dict.keys.contains("DataDispatchDestination") {
                self.dataDispatchDestination = dict["DataDispatchDestination"] as! String
            }
            if dict.keys.contains("DataRate") {
                self.dataRate = dict["DataRate"] as! Int64
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("JoinEui") {
                self.joinEui = dict["JoinEui"] as! String
            }
            if dict.keys.contains("JoinPermissionId") {
                self.joinPermissionId = dict["JoinPermissionId"] as! String
            }
            if dict.keys.contains("JoinPermissionName") {
                self.joinPermissionName = dict["JoinPermissionName"] as! String
            }
            if dict.keys.contains("MulticastEnabled") {
                self.multicastEnabled = dict["MulticastEnabled"] as! Bool
            }
            if dict.keys.contains("MulticastNodeCapacity") {
                self.multicastNodeCapacity = dict["MulticastNodeCapacity"] as! Int32
            }
            if dict.keys.contains("MulticastNodeCount") {
                self.multicastNodeCount = dict["MulticastNodeCount"] as! Int32
            }
            if dict.keys.contains("NodesCnt") {
                self.nodesCnt = dict["NodesCnt"] as! Int64
            }
            if dict.keys.contains("RenterAliyunId") {
                self.renterAliyunId = dict["RenterAliyunId"] as! String
            }
            if dict.keys.contains("RxDailySum") {
                self.rxDailySum = dict["RxDailySum"] as! Int64
            }
            if dict.keys.contains("RxDelay") {
                self.rxDelay = dict["RxDelay"] as! Int64
            }
            if dict.keys.contains("RxMonthSum") {
                self.rxMonthSum = dict["RxMonthSum"] as! Int64
            }
            if dict.keys.contains("TxDailySum") {
                self.txDailySum = dict["TxDailySum"] as! Int64
            }
            if dict.keys.contains("TxMonthSum") {
                self.txMonthSum = dict["TxMonthSum"] as! Int64
            }
        }
    }
    public var data: GetOwnedJoinPermissionResponseBody.Data?

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
            var model = GetOwnedJoinPermissionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOwnedJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOwnedJoinPermissionResponseBody?

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
            var model = GetOwnedJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRentedJoinPermissionRequest : Tea.TeaModel {
    public var joinPermissionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class GetRentedJoinPermissionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var boundNodeGroupId: String?

        public var boundNodeGroupName: String?

        public var classMode: String?

        public var createMillis: Int64?

        public var dataRate: Int64?

        public var enabled: Bool?

        public var freqBandPlanGroupId: Int64?

        public var joinEui: String?

        public var joinPermissionId: String?

        public var joinPermissionName: String?

        public var nodesCnt: Int64?

        public var rxDailySum: Int64?

        public var rxDelay: Int64?

        public var rxMonthSum: Int64?

        public var txDailySum: Int64?

        public var txMonthSum: Int64?

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
            if self.boundNodeGroupId != nil {
                map["BoundNodeGroupId"] = self.boundNodeGroupId!
            }
            if self.boundNodeGroupName != nil {
                map["BoundNodeGroupName"] = self.boundNodeGroupName!
            }
            if self.classMode != nil {
                map["ClassMode"] = self.classMode!
            }
            if self.createMillis != nil {
                map["CreateMillis"] = self.createMillis!
            }
            if self.dataRate != nil {
                map["DataRate"] = self.dataRate!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.joinEui != nil {
                map["JoinEui"] = self.joinEui!
            }
            if self.joinPermissionId != nil {
                map["JoinPermissionId"] = self.joinPermissionId!
            }
            if self.joinPermissionName != nil {
                map["JoinPermissionName"] = self.joinPermissionName!
            }
            if self.nodesCnt != nil {
                map["NodesCnt"] = self.nodesCnt!
            }
            if self.rxDailySum != nil {
                map["RxDailySum"] = self.rxDailySum!
            }
            if self.rxDelay != nil {
                map["RxDelay"] = self.rxDelay!
            }
            if self.rxMonthSum != nil {
                map["RxMonthSum"] = self.rxMonthSum!
            }
            if self.txDailySum != nil {
                map["TxDailySum"] = self.txDailySum!
            }
            if self.txMonthSum != nil {
                map["TxMonthSum"] = self.txMonthSum!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BoundNodeGroupId") {
                self.boundNodeGroupId = dict["BoundNodeGroupId"] as! String
            }
            if dict.keys.contains("BoundNodeGroupName") {
                self.boundNodeGroupName = dict["BoundNodeGroupName"] as! String
            }
            if dict.keys.contains("ClassMode") {
                self.classMode = dict["ClassMode"] as! String
            }
            if dict.keys.contains("CreateMillis") {
                self.createMillis = dict["CreateMillis"] as! Int64
            }
            if dict.keys.contains("DataRate") {
                self.dataRate = dict["DataRate"] as! Int64
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("JoinEui") {
                self.joinEui = dict["JoinEui"] as! String
            }
            if dict.keys.contains("JoinPermissionId") {
                self.joinPermissionId = dict["JoinPermissionId"] as! String
            }
            if dict.keys.contains("JoinPermissionName") {
                self.joinPermissionName = dict["JoinPermissionName"] as! String
            }
            if dict.keys.contains("NodesCnt") {
                self.nodesCnt = dict["NodesCnt"] as! Int64
            }
            if dict.keys.contains("RxDailySum") {
                self.rxDailySum = dict["RxDailySum"] as! Int64
            }
            if dict.keys.contains("RxDelay") {
                self.rxDelay = dict["RxDelay"] as! Int64
            }
            if dict.keys.contains("RxMonthSum") {
                self.rxMonthSum = dict["RxMonthSum"] as! Int64
            }
            if dict.keys.contains("TxDailySum") {
                self.txDailySum = dict["TxDailySum"] as! Int64
            }
            if dict.keys.contains("TxMonthSum") {
                self.txMonthSum = dict["TxMonthSum"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: GetRentedJoinPermissionResponseBody.Data?

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
            var model = GetRentedJoinPermissionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRentedJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRentedJoinPermissionResponseBody?

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
            var model = GetRentedJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gatewayCount: Int64?

        public var gatewayDingTalkCount: Int64?

        public var gatewayDingTalkLimit: Int64?

        public var gatewayFreeLimit: Int64?

        public var gatewayLimit: Int64?

        public var gatewayPrePayCount: Int64?

        public var gatewayProfessionalCount: Int64?

        public var gatewayProfessionalLimit: Int64?

        public var gatewayTupleCount: Int64?

        public var gatewayTupleFreeLimit: Int64?

        public var gatewayTupleHybridCount: Int64?

        public var gatewayTupleHybridLimit: Int64?

        public var gatewayTupleLimit: Int64?

        public var gatewayTupleSingleChannelCount: Int64?

        public var gatewayTupleSingleChannelLimit: Int64?

        public var gatewayTupleStandardCount: Int64?

        public var gatewayTupleStandardLimit: Int64?

        public var localJoinPermissionCount: Int64?

        public var localJoinPermissionFreeLimit: Int64?

        public var localJoinPermissionLimit: Int64?

        public var nodeCount: Int64?

        public var nodeFreeLimit: Int64?

        public var nodeLimit: Int64?

        public var nodeTupleCount: Int64?

        public var nodeTupleFreeLimit: Int64?

        public var nodeTupleLimit: Int64?

        public var nodeTupleRelayCount: Int64?

        public var nodeTupleRelayLimit: Int64?

        public var nodeTupleStandardCount: Int64?

        public var nodeTupleStandardLimit: Int64?

        public var oui: String?

        public var relayCount: Int64?

        public var relayLimit: Int64?

        public var roamingJoinPermissionCount: Int64?

        public var roamingJoinPermissionFreeLimit: Int64?

        public var roamingJoinPermissionLimit: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gatewayCount != nil {
                map["GatewayCount"] = self.gatewayCount!
            }
            if self.gatewayDingTalkCount != nil {
                map["GatewayDingTalkCount"] = self.gatewayDingTalkCount!
            }
            if self.gatewayDingTalkLimit != nil {
                map["GatewayDingTalkLimit"] = self.gatewayDingTalkLimit!
            }
            if self.gatewayFreeLimit != nil {
                map["GatewayFreeLimit"] = self.gatewayFreeLimit!
            }
            if self.gatewayLimit != nil {
                map["GatewayLimit"] = self.gatewayLimit!
            }
            if self.gatewayPrePayCount != nil {
                map["GatewayPrePayCount"] = self.gatewayPrePayCount!
            }
            if self.gatewayProfessionalCount != nil {
                map["GatewayProfessionalCount"] = self.gatewayProfessionalCount!
            }
            if self.gatewayProfessionalLimit != nil {
                map["GatewayProfessionalLimit"] = self.gatewayProfessionalLimit!
            }
            if self.gatewayTupleCount != nil {
                map["GatewayTupleCount"] = self.gatewayTupleCount!
            }
            if self.gatewayTupleFreeLimit != nil {
                map["GatewayTupleFreeLimit"] = self.gatewayTupleFreeLimit!
            }
            if self.gatewayTupleHybridCount != nil {
                map["GatewayTupleHybridCount"] = self.gatewayTupleHybridCount!
            }
            if self.gatewayTupleHybridLimit != nil {
                map["GatewayTupleHybridLimit"] = self.gatewayTupleHybridLimit!
            }
            if self.gatewayTupleLimit != nil {
                map["GatewayTupleLimit"] = self.gatewayTupleLimit!
            }
            if self.gatewayTupleSingleChannelCount != nil {
                map["GatewayTupleSingleChannelCount"] = self.gatewayTupleSingleChannelCount!
            }
            if self.gatewayTupleSingleChannelLimit != nil {
                map["GatewayTupleSingleChannelLimit"] = self.gatewayTupleSingleChannelLimit!
            }
            if self.gatewayTupleStandardCount != nil {
                map["GatewayTupleStandardCount"] = self.gatewayTupleStandardCount!
            }
            if self.gatewayTupleStandardLimit != nil {
                map["GatewayTupleStandardLimit"] = self.gatewayTupleStandardLimit!
            }
            if self.localJoinPermissionCount != nil {
                map["LocalJoinPermissionCount"] = self.localJoinPermissionCount!
            }
            if self.localJoinPermissionFreeLimit != nil {
                map["LocalJoinPermissionFreeLimit"] = self.localJoinPermissionFreeLimit!
            }
            if self.localJoinPermissionLimit != nil {
                map["LocalJoinPermissionLimit"] = self.localJoinPermissionLimit!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.nodeFreeLimit != nil {
                map["NodeFreeLimit"] = self.nodeFreeLimit!
            }
            if self.nodeLimit != nil {
                map["NodeLimit"] = self.nodeLimit!
            }
            if self.nodeTupleCount != nil {
                map["NodeTupleCount"] = self.nodeTupleCount!
            }
            if self.nodeTupleFreeLimit != nil {
                map["NodeTupleFreeLimit"] = self.nodeTupleFreeLimit!
            }
            if self.nodeTupleLimit != nil {
                map["NodeTupleLimit"] = self.nodeTupleLimit!
            }
            if self.nodeTupleRelayCount != nil {
                map["NodeTupleRelayCount"] = self.nodeTupleRelayCount!
            }
            if self.nodeTupleRelayLimit != nil {
                map["NodeTupleRelayLimit"] = self.nodeTupleRelayLimit!
            }
            if self.nodeTupleStandardCount != nil {
                map["NodeTupleStandardCount"] = self.nodeTupleStandardCount!
            }
            if self.nodeTupleStandardLimit != nil {
                map["NodeTupleStandardLimit"] = self.nodeTupleStandardLimit!
            }
            if self.oui != nil {
                map["Oui"] = self.oui!
            }
            if self.relayCount != nil {
                map["RelayCount"] = self.relayCount!
            }
            if self.relayLimit != nil {
                map["RelayLimit"] = self.relayLimit!
            }
            if self.roamingJoinPermissionCount != nil {
                map["RoamingJoinPermissionCount"] = self.roamingJoinPermissionCount!
            }
            if self.roamingJoinPermissionFreeLimit != nil {
                map["RoamingJoinPermissionFreeLimit"] = self.roamingJoinPermissionFreeLimit!
            }
            if self.roamingJoinPermissionLimit != nil {
                map["RoamingJoinPermissionLimit"] = self.roamingJoinPermissionLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayCount") {
                self.gatewayCount = dict["GatewayCount"] as! Int64
            }
            if dict.keys.contains("GatewayDingTalkCount") {
                self.gatewayDingTalkCount = dict["GatewayDingTalkCount"] as! Int64
            }
            if dict.keys.contains("GatewayDingTalkLimit") {
                self.gatewayDingTalkLimit = dict["GatewayDingTalkLimit"] as! Int64
            }
            if dict.keys.contains("GatewayFreeLimit") {
                self.gatewayFreeLimit = dict["GatewayFreeLimit"] as! Int64
            }
            if dict.keys.contains("GatewayLimit") {
                self.gatewayLimit = dict["GatewayLimit"] as! Int64
            }
            if dict.keys.contains("GatewayPrePayCount") {
                self.gatewayPrePayCount = dict["GatewayPrePayCount"] as! Int64
            }
            if dict.keys.contains("GatewayProfessionalCount") {
                self.gatewayProfessionalCount = dict["GatewayProfessionalCount"] as! Int64
            }
            if dict.keys.contains("GatewayProfessionalLimit") {
                self.gatewayProfessionalLimit = dict["GatewayProfessionalLimit"] as! Int64
            }
            if dict.keys.contains("GatewayTupleCount") {
                self.gatewayTupleCount = dict["GatewayTupleCount"] as! Int64
            }
            if dict.keys.contains("GatewayTupleFreeLimit") {
                self.gatewayTupleFreeLimit = dict["GatewayTupleFreeLimit"] as! Int64
            }
            if dict.keys.contains("GatewayTupleHybridCount") {
                self.gatewayTupleHybridCount = dict["GatewayTupleHybridCount"] as! Int64
            }
            if dict.keys.contains("GatewayTupleHybridLimit") {
                self.gatewayTupleHybridLimit = dict["GatewayTupleHybridLimit"] as! Int64
            }
            if dict.keys.contains("GatewayTupleLimit") {
                self.gatewayTupleLimit = dict["GatewayTupleLimit"] as! Int64
            }
            if dict.keys.contains("GatewayTupleSingleChannelCount") {
                self.gatewayTupleSingleChannelCount = dict["GatewayTupleSingleChannelCount"] as! Int64
            }
            if dict.keys.contains("GatewayTupleSingleChannelLimit") {
                self.gatewayTupleSingleChannelLimit = dict["GatewayTupleSingleChannelLimit"] as! Int64
            }
            if dict.keys.contains("GatewayTupleStandardCount") {
                self.gatewayTupleStandardCount = dict["GatewayTupleStandardCount"] as! Int64
            }
            if dict.keys.contains("GatewayTupleStandardLimit") {
                self.gatewayTupleStandardLimit = dict["GatewayTupleStandardLimit"] as! Int64
            }
            if dict.keys.contains("LocalJoinPermissionCount") {
                self.localJoinPermissionCount = dict["LocalJoinPermissionCount"] as! Int64
            }
            if dict.keys.contains("LocalJoinPermissionFreeLimit") {
                self.localJoinPermissionFreeLimit = dict["LocalJoinPermissionFreeLimit"] as! Int64
            }
            if dict.keys.contains("LocalJoinPermissionLimit") {
                self.localJoinPermissionLimit = dict["LocalJoinPermissionLimit"] as! Int64
            }
            if dict.keys.contains("NodeCount") {
                self.nodeCount = dict["NodeCount"] as! Int64
            }
            if dict.keys.contains("NodeFreeLimit") {
                self.nodeFreeLimit = dict["NodeFreeLimit"] as! Int64
            }
            if dict.keys.contains("NodeLimit") {
                self.nodeLimit = dict["NodeLimit"] as! Int64
            }
            if dict.keys.contains("NodeTupleCount") {
                self.nodeTupleCount = dict["NodeTupleCount"] as! Int64
            }
            if dict.keys.contains("NodeTupleFreeLimit") {
                self.nodeTupleFreeLimit = dict["NodeTupleFreeLimit"] as! Int64
            }
            if dict.keys.contains("NodeTupleLimit") {
                self.nodeTupleLimit = dict["NodeTupleLimit"] as! Int64
            }
            if dict.keys.contains("NodeTupleRelayCount") {
                self.nodeTupleRelayCount = dict["NodeTupleRelayCount"] as! Int64
            }
            if dict.keys.contains("NodeTupleRelayLimit") {
                self.nodeTupleRelayLimit = dict["NodeTupleRelayLimit"] as! Int64
            }
            if dict.keys.contains("NodeTupleStandardCount") {
                self.nodeTupleStandardCount = dict["NodeTupleStandardCount"] as! Int64
            }
            if dict.keys.contains("NodeTupleStandardLimit") {
                self.nodeTupleStandardLimit = dict["NodeTupleStandardLimit"] as! Int64
            }
            if dict.keys.contains("Oui") {
                self.oui = dict["Oui"] as! String
            }
            if dict.keys.contains("RelayCount") {
                self.relayCount = dict["RelayCount"] as! Int64
            }
            if dict.keys.contains("RelayLimit") {
                self.relayLimit = dict["RelayLimit"] as! Int64
            }
            if dict.keys.contains("RoamingJoinPermissionCount") {
                self.roamingJoinPermissionCount = dict["RoamingJoinPermissionCount"] as! Int64
            }
            if dict.keys.contains("RoamingJoinPermissionFreeLimit") {
                self.roamingJoinPermissionFreeLimit = dict["RoamingJoinPermissionFreeLimit"] as! Int64
            }
            if dict.keys.contains("RoamingJoinPermissionLimit") {
                self.roamingJoinPermissionLimit = dict["RoamingJoinPermissionLimit"] as! Int64
            }
        }
    }
    public var data: GetUserLicenseResponseBody.Data?

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
            var model = GetUserLicenseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserLicenseResponseBody?

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
            var model = GetUserLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListActivatedFeaturesRequest : Tea.TeaModel {
    public var environment: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
    }
}

public class ListActivatedFeaturesResponseBody : Tea.TeaModel {
    public var data: [String]?

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
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListActivatedFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActivatedFeaturesResponseBody?

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
            var model = ListActivatedFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListActiveGatewaysResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var addressCode: Int64?

        public var chargeStatus: String?

        public var city: String?

        public var communicationMode: String?

        public var description_: String?

        public var district: String?

        public var freqBandPlanGroupId: Int64?

        public var gisCoordinateSystem: String?

        public var gwEui: String?

        public var latitude: Double?

        public var longitude: Double?

        public var name: String?

        public var onlineState: String?

        public override init() {
            super.init()
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
            if self.addressCode != nil {
                map["AddressCode"] = self.addressCode!
            }
            if self.chargeStatus != nil {
                map["ChargeStatus"] = self.chargeStatus!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.communicationMode != nil {
                map["CommunicationMode"] = self.communicationMode!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.district != nil {
                map["District"] = self.district!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.gisCoordinateSystem != nil {
                map["GisCoordinateSystem"] = self.gisCoordinateSystem!
            }
            if self.gwEui != nil {
                map["GwEui"] = self.gwEui!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.onlineState != nil {
                map["OnlineState"] = self.onlineState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AddressCode") {
                self.addressCode = dict["AddressCode"] as! Int64
            }
            if dict.keys.contains("ChargeStatus") {
                self.chargeStatus = dict["ChargeStatus"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("CommunicationMode") {
                self.communicationMode = dict["CommunicationMode"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("District") {
                self.district = dict["District"] as! String
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("GisCoordinateSystem") {
                self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
            }
            if dict.keys.contains("GwEui") {
                self.gwEui = dict["GwEui"] as! String
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! Double
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OnlineState") {
                self.onlineState = dict["OnlineState"] as! String
            }
        }
    }
    public var data: [ListActiveGatewaysResponseBody.Data]?

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
            self.data = dict["Data"] as! [ListActiveGatewaysResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListActiveGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActiveGatewaysResponseBody?

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
            var model = ListActiveGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFreqBandPlanGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginFrequency: Int64?

        public var endFrequency: Int64?

        public var frequencyRegionId: String?

        public var frequencyType: String?

        public var groupId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginFrequency != nil {
                map["BeginFrequency"] = self.beginFrequency!
            }
            if self.endFrequency != nil {
                map["EndFrequency"] = self.endFrequency!
            }
            if self.frequencyRegionId != nil {
                map["FrequencyRegionId"] = self.frequencyRegionId!
            }
            if self.frequencyType != nil {
                map["FrequencyType"] = self.frequencyType!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginFrequency") {
                self.beginFrequency = dict["BeginFrequency"] as! Int64
            }
            if dict.keys.contains("EndFrequency") {
                self.endFrequency = dict["EndFrequency"] as! Int64
            }
            if dict.keys.contains("FrequencyRegionId") {
                self.frequencyRegionId = dict["FrequencyRegionId"] as! String
            }
            if dict.keys.contains("FrequencyType") {
                self.frequencyType = dict["FrequencyType"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! Int64
            }
        }
    }
    public var data: [ListFreqBandPlanGroupsResponseBody.Data]?

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
            self.data = dict["Data"] as! [ListFreqBandPlanGroupsResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListFreqBandPlanGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFreqBandPlanGroupsResponseBody?

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
            var model = ListFreqBandPlanGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayOnlineRecordsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var gwEui: String?

    public var limit: Int64?

    public var offSet: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offSet != nil {
            map["OffSet"] = self.offSet!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("OffSet") {
            self.offSet = dict["OffSet"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListGatewayOnlineRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var gwEui: String?

            public var onlineState: String?

            public var stateChangedMillis: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.onlineState != nil {
                    map["OnlineState"] = self.onlineState!
                }
                if self.stateChangedMillis != nil {
                    map["StateChangedMillis"] = self.stateChangedMillis!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("OnlineState") {
                    self.onlineState = dict["OnlineState"] as! String
                }
                if dict.keys.contains("StateChangedMillis") {
                    self.stateChangedMillis = dict["StateChangedMillis"] as! Int64
                }
            }
        }
        public var list: [ListGatewayOnlineRecordsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListGatewayOnlineRecordsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListGatewayOnlineRecordsResponseBody.Data?

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
            var model = ListGatewayOnlineRecordsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewayOnlineRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayOnlineRecordsResponseBody?

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
            var model = ListGatewayOnlineRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayTransferFlowStatsRequest : Tea.TeaModel {
    public var beginMillis: Int64?

    public var endMillis: Int64?

    public var gwEui: String?

    public var iotInstanceId: String?

    public var timeIntervalUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.timeIntervalUnit != nil {
            map["TimeIntervalUnit"] = self.timeIntervalUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("TimeIntervalUnit") {
            self.timeIntervalUnit = dict["TimeIntervalUnit"] as! String
        }
    }
}

public class ListGatewayTransferFlowStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downlinkCount: Int64?

        public var statMillis: String?

        public var uplinkCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downlinkCount != nil {
                map["DownlinkCount"] = self.downlinkCount!
            }
            if self.statMillis != nil {
                map["StatMillis"] = self.statMillis!
            }
            if self.uplinkCount != nil {
                map["UplinkCount"] = self.uplinkCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownlinkCount") {
                self.downlinkCount = dict["DownlinkCount"] as! Int64
            }
            if dict.keys.contains("StatMillis") {
                self.statMillis = dict["StatMillis"] as! String
            }
            if dict.keys.contains("UplinkCount") {
                self.uplinkCount = dict["UplinkCount"] as! Int64
            }
        }
    }
    public var data: [ListGatewayTransferFlowStatsResponseBody.Data]?

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
            self.data = dict["Data"] as! [ListGatewayTransferFlowStatsResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewayTransferFlowStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayTransferFlowStatsResponseBody?

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
            var model = ListGatewayTransferFlowStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayTransferPacketsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var gwEui: String?

    public var iotInstanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListGatewayTransferPacketsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var base64EncodedMacPayload: String?

            public var classMode: String?

            public var datr: String?

            public var devAddr: String?

            public var devEui: String?

            public var FPort: Int32?

            public var freq: String?

            public var gwEui: String?

            public var hasData: Bool?

            public var hasMacCommand: Bool?

            public var logMillis: String?

            public var lsnr: Double?

            public var macCommandCIDs: [[String: Any]]?

            public var macPayloadSize: Int64?

            public var messageType: String?

            public var nodeOwnerAliyunId: String?

            public var processEvent: String?

            public var rssi: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.base64EncodedMacPayload != nil {
                    map["Base64EncodedMacPayload"] = self.base64EncodedMacPayload!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.datr != nil {
                    map["Datr"] = self.datr!
                }
                if self.devAddr != nil {
                    map["DevAddr"] = self.devAddr!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.FPort != nil {
                    map["FPort"] = self.FPort!
                }
                if self.freq != nil {
                    map["Freq"] = self.freq!
                }
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.hasData != nil {
                    map["HasData"] = self.hasData!
                }
                if self.hasMacCommand != nil {
                    map["HasMacCommand"] = self.hasMacCommand!
                }
                if self.logMillis != nil {
                    map["LogMillis"] = self.logMillis!
                }
                if self.lsnr != nil {
                    map["Lsnr"] = self.lsnr!
                }
                if self.macCommandCIDs != nil {
                    map["MacCommandCIDs"] = self.macCommandCIDs!
                }
                if self.macPayloadSize != nil {
                    map["MacPayloadSize"] = self.macPayloadSize!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.nodeOwnerAliyunId != nil {
                    map["NodeOwnerAliyunId"] = self.nodeOwnerAliyunId!
                }
                if self.processEvent != nil {
                    map["ProcessEvent"] = self.processEvent!
                }
                if self.rssi != nil {
                    map["Rssi"] = self.rssi!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Base64EncodedMacPayload") {
                    self.base64EncodedMacPayload = dict["Base64EncodedMacPayload"] as! String
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("Datr") {
                    self.datr = dict["Datr"] as! String
                }
                if dict.keys.contains("DevAddr") {
                    self.devAddr = dict["DevAddr"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("FPort") {
                    self.FPort = dict["FPort"] as! Int32
                }
                if dict.keys.contains("Freq") {
                    self.freq = dict["Freq"] as! String
                }
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("HasData") {
                    self.hasData = dict["HasData"] as! Bool
                }
                if dict.keys.contains("HasMacCommand") {
                    self.hasMacCommand = dict["HasMacCommand"] as! Bool
                }
                if dict.keys.contains("LogMillis") {
                    self.logMillis = dict["LogMillis"] as! String
                }
                if dict.keys.contains("Lsnr") {
                    self.lsnr = dict["Lsnr"] as! Double
                }
                if dict.keys.contains("MacCommandCIDs") {
                    self.macCommandCIDs = dict["MacCommandCIDs"] as! [[String: Any]]
                }
                if dict.keys.contains("MacPayloadSize") {
                    self.macPayloadSize = dict["MacPayloadSize"] as! Int64
                }
                if dict.keys.contains("MessageType") {
                    self.messageType = dict["MessageType"] as! String
                }
                if dict.keys.contains("NodeOwnerAliyunId") {
                    self.nodeOwnerAliyunId = dict["NodeOwnerAliyunId"] as! String
                }
                if dict.keys.contains("ProcessEvent") {
                    self.processEvent = dict["ProcessEvent"] as! String
                }
                if dict.keys.contains("Rssi") {
                    self.rssi = dict["Rssi"] as! Int32
                }
            }
        }
        public var list: [ListGatewayTransferPacketsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListGatewayTransferPacketsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListGatewayTransferPacketsResponseBody.Data?

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
            var model = ListGatewayTransferPacketsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewayTransferPacketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayTransferPacketsResponseBody?

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
            var model = ListGatewayTransferPacketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayTupleOrdersRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public var state: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! [String]
        }
    }
}

public class ListGatewayTupleOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var acceptedMillis: Int64?

            public var createdMillis: Int64?

            public var orderId: String?

            public var orderState: String?

            public var requiredCount: Int64?

            public var tupleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptedMillis != nil {
                    map["AcceptedMillis"] = self.acceptedMillis!
                }
                if self.createdMillis != nil {
                    map["CreatedMillis"] = self.createdMillis!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderState != nil {
                    map["OrderState"] = self.orderState!
                }
                if self.requiredCount != nil {
                    map["RequiredCount"] = self.requiredCount!
                }
                if self.tupleType != nil {
                    map["TupleType"] = self.tupleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptedMillis") {
                    self.acceptedMillis = dict["AcceptedMillis"] as! Int64
                }
                if dict.keys.contains("CreatedMillis") {
                    self.createdMillis = dict["CreatedMillis"] as! Int64
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderState") {
                    self.orderState = dict["OrderState"] as! String
                }
                if dict.keys.contains("RequiredCount") {
                    self.requiredCount = dict["RequiredCount"] as! Int64
                }
                if dict.keys.contains("TupleType") {
                    self.tupleType = dict["TupleType"] as! String
                }
            }
        }
        public var list: [ListGatewayTupleOrdersResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListGatewayTupleOrdersResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListGatewayTupleOrdersResponseBody.Data?

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
            var model = ListGatewayTupleOrdersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewayTupleOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayTupleOrdersResponseBody?

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
            var model = ListGatewayTupleOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewaysRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var freqBandPlanGroupId: Int64?

    public var fuzzyCity: String?

    public var fuzzyGwEui: String?

    public var fuzzyName: String?

    public var iotInstanceId: String?

    public var isEnabled: Bool?

    public var limit: Int64?

    public var offset: Int64?

    public var onlineState: String?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.fuzzyCity != nil {
            map["FuzzyCity"] = self.fuzzyCity!
        }
        if self.fuzzyGwEui != nil {
            map["FuzzyGwEui"] = self.fuzzyGwEui!
        }
        if self.fuzzyName != nil {
            map["FuzzyName"] = self.fuzzyName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.onlineState != nil {
            map["OnlineState"] = self.onlineState!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("FuzzyCity") {
            self.fuzzyCity = dict["FuzzyCity"] as! String
        }
        if dict.keys.contains("FuzzyGwEui") {
            self.fuzzyGwEui = dict["FuzzyGwEui"] as! String
        }
        if dict.keys.contains("FuzzyName") {
            self.fuzzyName = dict["FuzzyName"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("IsEnabled") {
            self.isEnabled = dict["IsEnabled"] as! Bool
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("OnlineState") {
            self.onlineState = dict["OnlineState"] as! String
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListGatewaysResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var address: String?

            public var addressCode: Int64?

            public var authTypes: String?

            public var chargeStatus: String?

            public var city: String?

            public var classBSupported: Bool?

            public var classBWorking: Bool?

            public var communicationMode: String?

            public var description_: String?

            public var district: String?

            public var embeddedNsId: String?

            public var enabled: Bool?

            public var freqBandPlanGroupId: Int64?

            public var gisCoordinateSystem: String?

            public var gwEui: String?

            public var latitude: Double?

            public var longitude: Double?

            public var name: String?

            public var onlineState: String?

            public var onlineStateChangedMillis: Int64?

            public var timeCorrectable: Bool?

            public override init() {
                super.init()
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
                if self.addressCode != nil {
                    map["AddressCode"] = self.addressCode!
                }
                if self.authTypes != nil {
                    map["AuthTypes"] = self.authTypes!
                }
                if self.chargeStatus != nil {
                    map["ChargeStatus"] = self.chargeStatus!
                }
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.classBSupported != nil {
                    map["ClassBSupported"] = self.classBSupported!
                }
                if self.classBWorking != nil {
                    map["ClassBWorking"] = self.classBWorking!
                }
                if self.communicationMode != nil {
                    map["CommunicationMode"] = self.communicationMode!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.district != nil {
                    map["District"] = self.district!
                }
                if self.embeddedNsId != nil {
                    map["EmbeddedNsId"] = self.embeddedNsId!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.freqBandPlanGroupId != nil {
                    map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
                }
                if self.gisCoordinateSystem != nil {
                    map["GisCoordinateSystem"] = self.gisCoordinateSystem!
                }
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.latitude != nil {
                    map["Latitude"] = self.latitude!
                }
                if self.longitude != nil {
                    map["Longitude"] = self.longitude!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.onlineState != nil {
                    map["OnlineState"] = self.onlineState!
                }
                if self.onlineStateChangedMillis != nil {
                    map["OnlineStateChangedMillis"] = self.onlineStateChangedMillis!
                }
                if self.timeCorrectable != nil {
                    map["TimeCorrectable"] = self.timeCorrectable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("AddressCode") {
                    self.addressCode = dict["AddressCode"] as! Int64
                }
                if dict.keys.contains("AuthTypes") {
                    self.authTypes = dict["AuthTypes"] as! String
                }
                if dict.keys.contains("ChargeStatus") {
                    self.chargeStatus = dict["ChargeStatus"] as! String
                }
                if dict.keys.contains("City") {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("ClassBSupported") {
                    self.classBSupported = dict["ClassBSupported"] as! Bool
                }
                if dict.keys.contains("ClassBWorking") {
                    self.classBWorking = dict["ClassBWorking"] as! Bool
                }
                if dict.keys.contains("CommunicationMode") {
                    self.communicationMode = dict["CommunicationMode"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("District") {
                    self.district = dict["District"] as! String
                }
                if dict.keys.contains("EmbeddedNsId") {
                    self.embeddedNsId = dict["EmbeddedNsId"] as! String
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("FreqBandPlanGroupId") {
                    self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
                }
                if dict.keys.contains("GisCoordinateSystem") {
                    self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
                }
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("Latitude") {
                    self.latitude = dict["Latitude"] as! Double
                }
                if dict.keys.contains("Longitude") {
                    self.longitude = dict["Longitude"] as! Double
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OnlineState") {
                    self.onlineState = dict["OnlineState"] as! String
                }
                if dict.keys.contains("OnlineStateChangedMillis") {
                    self.onlineStateChangedMillis = dict["OnlineStateChangedMillis"] as! Int64
                }
                if dict.keys.contains("TimeCorrectable") {
                    self.timeCorrectable = dict["TimeCorrectable"] as! Bool
                }
            }
        }
        public var list: [ListGatewaysResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListGatewaysResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListGatewaysResponseBody.Data?

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
            var model = ListGatewaysResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewaysResponseBody?

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
            var model = ListGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewaysGisInfoRequest : Tea.TeaModel {
    public var iotInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class ListGatewaysGisInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authTypes: String?

        public var chargeStatus: String?

        public var enabled: Bool?

        public var freqBandPlanGroupId: Int64?

        public var gisCoordinateSystem: String?

        public var gisSourceType: String?

        public var gwEui: String?

        public var latitude: Double?

        public var longitude: Double?

        public var name: String?

        public var onlineState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authTypes != nil {
                map["AuthTypes"] = self.authTypes!
            }
            if self.chargeStatus != nil {
                map["ChargeStatus"] = self.chargeStatus!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.freqBandPlanGroupId != nil {
                map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
            }
            if self.gisCoordinateSystem != nil {
                map["GisCoordinateSystem"] = self.gisCoordinateSystem!
            }
            if self.gisSourceType != nil {
                map["GisSourceType"] = self.gisSourceType!
            }
            if self.gwEui != nil {
                map["GwEui"] = self.gwEui!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.onlineState != nil {
                map["OnlineState"] = self.onlineState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthTypes") {
                self.authTypes = dict["AuthTypes"] as! String
            }
            if dict.keys.contains("ChargeStatus") {
                self.chargeStatus = dict["ChargeStatus"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("FreqBandPlanGroupId") {
                self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
            }
            if dict.keys.contains("GisCoordinateSystem") {
                self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
            }
            if dict.keys.contains("GisSourceType") {
                self.gisSourceType = dict["GisSourceType"] as! String
            }
            if dict.keys.contains("GwEui") {
                self.gwEui = dict["GwEui"] as! String
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! Double
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OnlineState") {
                self.onlineState = dict["OnlineState"] as! String
            }
        }
    }
    public var data: [ListGatewaysGisInfoResponseBody.Data]?

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
            self.data = dict["Data"] as! [ListGatewaysGisInfoResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListGatewaysGisInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewaysGisInfoResponseBody?

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
            var model = ListGatewaysGisInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeGroupTransferFlowStatsRequest : Tea.TeaModel {
    public var beginMillis: Int64?

    public var endMillis: Int64?

    public var iotInstanceId: String?

    public var nodeGroupId: String?

    public var timeIntervalUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.timeIntervalUnit != nil {
            map["TimeIntervalUnit"] = self.timeIntervalUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("TimeIntervalUnit") {
            self.timeIntervalUnit = dict["TimeIntervalUnit"] as! String
        }
    }
}

public class ListNodeGroupTransferFlowStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downlinkCount: Int64?

        public var statMillis: Int64?

        public var uplinkCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downlinkCount != nil {
                map["DownlinkCount"] = self.downlinkCount!
            }
            if self.statMillis != nil {
                map["StatMillis"] = self.statMillis!
            }
            if self.uplinkCount != nil {
                map["UplinkCount"] = self.uplinkCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownlinkCount") {
                self.downlinkCount = dict["DownlinkCount"] as! Int64
            }
            if dict.keys.contains("StatMillis") {
                self.statMillis = dict["StatMillis"] as! Int64
            }
            if dict.keys.contains("UplinkCount") {
                self.uplinkCount = dict["UplinkCount"] as! Int64
            }
        }
    }
    public var data: [ListNodeGroupTransferFlowStatsResponseBody.Data]?

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
            self.data = dict["Data"] as! [ListNodeGroupTransferFlowStatsResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeGroupTransferFlowStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupTransferFlowStatsResponseBody?

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
            var model = ListNodeGroupTransferFlowStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeGroupTransferPacketsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var iotInstanceId: String?

    public var nodeGroupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
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
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNodeGroupTransferPacketsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var base64EncodedMacPayload: String?

            public var classMode: String?

            public var datr: String?

            public var devAddr: String?

            public var devEui: String?

            public var FPort: Int32?

            public var fcntDown: Int64?

            public var fcntUp: Int64?

            public var freq: Double?

            public var freqBandPlanGroupId: Int64?

            public var gwEui: String?

            public var gwOwnerAliyunId: String?

            public var hasData: Bool?

            public var hasMacCommand: Bool?

            public var logMillis: Int64?

            public var lsnr: Double?

            public var macCommandCIDs: String?

            public var macPayloadSize: Int64?

            public var messageType: String?

            public var processEvent: String?

            public var rssi: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.base64EncodedMacPayload != nil {
                    map["Base64EncodedMacPayload"] = self.base64EncodedMacPayload!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.datr != nil {
                    map["Datr"] = self.datr!
                }
                if self.devAddr != nil {
                    map["DevAddr"] = self.devAddr!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.FPort != nil {
                    map["FPort"] = self.FPort!
                }
                if self.fcntDown != nil {
                    map["FcntDown"] = self.fcntDown!
                }
                if self.fcntUp != nil {
                    map["FcntUp"] = self.fcntUp!
                }
                if self.freq != nil {
                    map["Freq"] = self.freq!
                }
                if self.freqBandPlanGroupId != nil {
                    map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
                }
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.gwOwnerAliyunId != nil {
                    map["GwOwnerAliyunId"] = self.gwOwnerAliyunId!
                }
                if self.hasData != nil {
                    map["HasData"] = self.hasData!
                }
                if self.hasMacCommand != nil {
                    map["HasMacCommand"] = self.hasMacCommand!
                }
                if self.logMillis != nil {
                    map["LogMillis"] = self.logMillis!
                }
                if self.lsnr != nil {
                    map["Lsnr"] = self.lsnr!
                }
                if self.macCommandCIDs != nil {
                    map["MacCommandCIDs"] = self.macCommandCIDs!
                }
                if self.macPayloadSize != nil {
                    map["MacPayloadSize"] = self.macPayloadSize!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.processEvent != nil {
                    map["ProcessEvent"] = self.processEvent!
                }
                if self.rssi != nil {
                    map["Rssi"] = self.rssi!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Base64EncodedMacPayload") {
                    self.base64EncodedMacPayload = dict["Base64EncodedMacPayload"] as! String
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("Datr") {
                    self.datr = dict["Datr"] as! String
                }
                if dict.keys.contains("DevAddr") {
                    self.devAddr = dict["DevAddr"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("FPort") {
                    self.FPort = dict["FPort"] as! Int32
                }
                if dict.keys.contains("FcntDown") {
                    self.fcntDown = dict["FcntDown"] as! Int64
                }
                if dict.keys.contains("FcntUp") {
                    self.fcntUp = dict["FcntUp"] as! Int64
                }
                if dict.keys.contains("Freq") {
                    self.freq = dict["Freq"] as! Double
                }
                if dict.keys.contains("FreqBandPlanGroupId") {
                    self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
                }
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("GwOwnerAliyunId") {
                    self.gwOwnerAliyunId = dict["GwOwnerAliyunId"] as! String
                }
                if dict.keys.contains("HasData") {
                    self.hasData = dict["HasData"] as! Bool
                }
                if dict.keys.contains("HasMacCommand") {
                    self.hasMacCommand = dict["HasMacCommand"] as! Bool
                }
                if dict.keys.contains("LogMillis") {
                    self.logMillis = dict["LogMillis"] as! Int64
                }
                if dict.keys.contains("Lsnr") {
                    self.lsnr = dict["Lsnr"] as! Double
                }
                if dict.keys.contains("MacCommandCIDs") {
                    self.macCommandCIDs = dict["MacCommandCIDs"] as! String
                }
                if dict.keys.contains("MacPayloadSize") {
                    self.macPayloadSize = dict["MacPayloadSize"] as! Int64
                }
                if dict.keys.contains("MessageType") {
                    self.messageType = dict["MessageType"] as! String
                }
                if dict.keys.contains("ProcessEvent") {
                    self.processEvent = dict["ProcessEvent"] as! String
                }
                if dict.keys.contains("Rssi") {
                    self.rssi = dict["Rssi"] as! Int32
                }
            }
        }
        public var list: [ListNodeGroupTransferPacketsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodeGroupTransferPacketsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodeGroupTransferPacketsResponseBody.Data?

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
            var model = ListNodeGroupTransferPacketsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeGroupTransferPacketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupTransferPacketsResponseBody?

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
            var model = ListNodeGroupTransferPacketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeGroupsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var fuzzyDevEui: String?

    public var fuzzyJoinEui: String?

    public var fuzzyName: String?

    public var iotInstanceId: String?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyName != nil {
            map["FuzzyName"] = self.fuzzyName!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyName") {
            self.fuzzyName = dict["FuzzyName"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNodeGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class DataDispatchConfig : Tea.TeaModel {
                public class IotProduct : Tea.TeaModel {
                    public var debugSwitch: Bool?

                    public var productKey: String?

                    public var productName: String?

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
                        if self.debugSwitch != nil {
                            map["DebugSwitch"] = self.debugSwitch!
                        }
                        if self.productKey != nil {
                            map["ProductKey"] = self.productKey!
                        }
                        if self.productName != nil {
                            map["ProductName"] = self.productName!
                        }
                        if self.productType != nil {
                            map["ProductType"] = self.productType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DebugSwitch") {
                            self.debugSwitch = dict["DebugSwitch"] as! Bool
                        }
                        if dict.keys.contains("ProductKey") {
                            self.productKey = dict["ProductKey"] as! String
                        }
                        if dict.keys.contains("ProductName") {
                            self.productName = dict["ProductName"] as! String
                        }
                        if dict.keys.contains("ProductType") {
                            self.productType = dict["ProductType"] as! String
                        }
                    }
                }
                public class OnsTopics : Tea.TeaModel {
                    public var downlinkRegionName: String?

                    public var downlinkTopic: String?

                    public var uplinkRegionName: String?

                    public var uplinkTopic: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.downlinkRegionName != nil {
                            map["DownlinkRegionName"] = self.downlinkRegionName!
                        }
                        if self.downlinkTopic != nil {
                            map["DownlinkTopic"] = self.downlinkTopic!
                        }
                        if self.uplinkRegionName != nil {
                            map["UplinkRegionName"] = self.uplinkRegionName!
                        }
                        if self.uplinkTopic != nil {
                            map["UplinkTopic"] = self.uplinkTopic!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DownlinkRegionName") {
                            self.downlinkRegionName = dict["DownlinkRegionName"] as! String
                        }
                        if dict.keys.contains("DownlinkTopic") {
                            self.downlinkTopic = dict["DownlinkTopic"] as! String
                        }
                        if dict.keys.contains("UplinkRegionName") {
                            self.uplinkRegionName = dict["UplinkRegionName"] as! String
                        }
                        if dict.keys.contains("UplinkTopic") {
                            self.uplinkTopic = dict["UplinkTopic"] as! String
                        }
                    }
                }
                public var destination: String?

                public var iotProduct: ListNodeGroupsResponseBody.Data.List.DataDispatchConfig.IotProduct?

                public var onsTopics: ListNodeGroupsResponseBody.Data.List.DataDispatchConfig.OnsTopics?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.iotProduct?.validate()
                    try self.onsTopics?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destination != nil {
                        map["Destination"] = self.destination!
                    }
                    if self.iotProduct != nil {
                        map["IotProduct"] = self.iotProduct?.toMap()
                    }
                    if self.onsTopics != nil {
                        map["OnsTopics"] = self.onsTopics?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Destination") {
                        self.destination = dict["Destination"] as! String
                    }
                    if dict.keys.contains("IotProduct") {
                        var model = ListNodeGroupsResponseBody.Data.List.DataDispatchConfig.IotProduct()
                        model.fromMap(dict["IotProduct"] as! [String: Any])
                        self.iotProduct = model
                    }
                    if dict.keys.contains("OnsTopics") {
                        var model = ListNodeGroupsResponseBody.Data.List.DataDispatchConfig.OnsTopics()
                        model.fromMap(dict["OnsTopics"] as! [String: Any])
                        self.onsTopics = model
                    }
                }
            }
            public class Locks : Tea.TeaModel {
                public var createMillis: Int64?

                public var enabled: Bool?

                public var lockId: String?

                public var lockType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createMillis != nil {
                        map["CreateMillis"] = self.createMillis!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.lockId != nil {
                        map["LockId"] = self.lockId!
                    }
                    if self.lockType != nil {
                        map["LockType"] = self.lockType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreateMillis") {
                        self.createMillis = dict["CreateMillis"] as! Int64
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("LockId") {
                        self.lockId = dict["LockId"] as! String
                    }
                    if dict.keys.contains("LockType") {
                        self.lockType = dict["LockType"] as! String
                    }
                }
            }
            public var classMode: String?

            public var createMillis: Int64?

            public var dataDispatchConfig: ListNodeGroupsResponseBody.Data.List.DataDispatchConfig?

            public var dataDispatchEnabled: Bool?

            public var freqBandPlanGroupId: Int64?

            public var joinEui: String?

            public var joinPermissionEnabled: Bool?

            public var joinPermissionId: String?

            public var joinPermissionName: String?

            public var joinPermissionOwnerAliyunId: String?

            public var joinPermissionType: String?

            public var locks: [ListNodeGroupsResponseBody.Data.List.Locks]?

            public var nodeGroupId: String?

            public var nodeGroupName: String?

            public var nodesCnt: Int64?

            public var rxDailySum: Int64?

            public var rxMonthSum: Int64?

            public var txDailySum: Int64?

            public var txMonthSum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDispatchConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.createMillis != nil {
                    map["CreateMillis"] = self.createMillis!
                }
                if self.dataDispatchConfig != nil {
                    map["DataDispatchConfig"] = self.dataDispatchConfig?.toMap()
                }
                if self.dataDispatchEnabled != nil {
                    map["DataDispatchEnabled"] = self.dataDispatchEnabled!
                }
                if self.freqBandPlanGroupId != nil {
                    map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
                }
                if self.joinEui != nil {
                    map["JoinEui"] = self.joinEui!
                }
                if self.joinPermissionEnabled != nil {
                    map["JoinPermissionEnabled"] = self.joinPermissionEnabled!
                }
                if self.joinPermissionId != nil {
                    map["JoinPermissionId"] = self.joinPermissionId!
                }
                if self.joinPermissionName != nil {
                    map["JoinPermissionName"] = self.joinPermissionName!
                }
                if self.joinPermissionOwnerAliyunId != nil {
                    map["JoinPermissionOwnerAliyunId"] = self.joinPermissionOwnerAliyunId!
                }
                if self.joinPermissionType != nil {
                    map["JoinPermissionType"] = self.joinPermissionType!
                }
                if self.locks != nil {
                    var tmp : [Any] = []
                    for k in self.locks! {
                        tmp.append(k.toMap())
                    }
                    map["Locks"] = tmp
                }
                if self.nodeGroupId != nil {
                    map["NodeGroupId"] = self.nodeGroupId!
                }
                if self.nodeGroupName != nil {
                    map["NodeGroupName"] = self.nodeGroupName!
                }
                if self.nodesCnt != nil {
                    map["NodesCnt"] = self.nodesCnt!
                }
                if self.rxDailySum != nil {
                    map["RxDailySum"] = self.rxDailySum!
                }
                if self.rxMonthSum != nil {
                    map["RxMonthSum"] = self.rxMonthSum!
                }
                if self.txDailySum != nil {
                    map["TxDailySum"] = self.txDailySum!
                }
                if self.txMonthSum != nil {
                    map["TxMonthSum"] = self.txMonthSum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("CreateMillis") {
                    self.createMillis = dict["CreateMillis"] as! Int64
                }
                if dict.keys.contains("DataDispatchConfig") {
                    var model = ListNodeGroupsResponseBody.Data.List.DataDispatchConfig()
                    model.fromMap(dict["DataDispatchConfig"] as! [String: Any])
                    self.dataDispatchConfig = model
                }
                if dict.keys.contains("DataDispatchEnabled") {
                    self.dataDispatchEnabled = dict["DataDispatchEnabled"] as! Bool
                }
                if dict.keys.contains("FreqBandPlanGroupId") {
                    self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
                }
                if dict.keys.contains("JoinEui") {
                    self.joinEui = dict["JoinEui"] as! String
                }
                if dict.keys.contains("JoinPermissionEnabled") {
                    self.joinPermissionEnabled = dict["JoinPermissionEnabled"] as! Bool
                }
                if dict.keys.contains("JoinPermissionId") {
                    self.joinPermissionId = dict["JoinPermissionId"] as! String
                }
                if dict.keys.contains("JoinPermissionName") {
                    self.joinPermissionName = dict["JoinPermissionName"] as! String
                }
                if dict.keys.contains("JoinPermissionOwnerAliyunId") {
                    self.joinPermissionOwnerAliyunId = dict["JoinPermissionOwnerAliyunId"] as! String
                }
                if dict.keys.contains("JoinPermissionType") {
                    self.joinPermissionType = dict["JoinPermissionType"] as! String
                }
                if dict.keys.contains("Locks") {
                    self.locks = dict["Locks"] as! [ListNodeGroupsResponseBody.Data.List.Locks]
                }
                if dict.keys.contains("NodeGroupId") {
                    self.nodeGroupId = dict["NodeGroupId"] as! String
                }
                if dict.keys.contains("NodeGroupName") {
                    self.nodeGroupName = dict["NodeGroupName"] as! String
                }
                if dict.keys.contains("NodesCnt") {
                    self.nodesCnt = dict["NodesCnt"] as! Int64
                }
                if dict.keys.contains("RxDailySum") {
                    self.rxDailySum = dict["RxDailySum"] as! Int64
                }
                if dict.keys.contains("RxMonthSum") {
                    self.rxMonthSum = dict["RxMonthSum"] as! Int64
                }
                if dict.keys.contains("TxDailySum") {
                    self.txDailySum = dict["TxDailySum"] as! Int64
                }
                if dict.keys.contains("TxMonthSum") {
                    self.txMonthSum = dict["TxMonthSum"] as! Int64
                }
            }
        }
        public var list: [ListNodeGroupsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodeGroupsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodeGroupsResponseBody.Data?

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
            var model = ListNodeGroupsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupsResponseBody?

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
            var model = ListNodeGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeTransferPacketPathsRequest : Tea.TeaModel {
    public var base64EncodedMacPayload: String?

    public var devEui: String?

    public var iotInstanceId: String?

    public var logMillis: Int64?

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
        if self.base64EncodedMacPayload != nil {
            map["Base64EncodedMacPayload"] = self.base64EncodedMacPayload!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.logMillis != nil {
            map["LogMillis"] = self.logMillis!
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
        if dict.keys.contains("Base64EncodedMacPayload") {
            self.base64EncodedMacPayload = dict["Base64EncodedMacPayload"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("LogMillis") {
            self.logMillis = dict["LogMillis"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListNodeTransferPacketPathsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var bestPath: Bool?

            public var devEui: String?

            public var gwEui: String?

            public var lsnr: Double?

            public var rssi: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bestPath != nil {
                    map["BestPath"] = self.bestPath!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.lsnr != nil {
                    map["Lsnr"] = self.lsnr!
                }
                if self.rssi != nil {
                    map["Rssi"] = self.rssi!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BestPath") {
                    self.bestPath = dict["BestPath"] as! Bool
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("Lsnr") {
                    self.lsnr = dict["Lsnr"] as! Double
                }
                if dict.keys.contains("Rssi") {
                    self.rssi = dict["Rssi"] as! Int32
                }
            }
        }
        public var list: [ListNodeTransferPacketPathsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodeTransferPacketPathsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodeTransferPacketPathsResponseBody.Data?

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
            var model = ListNodeTransferPacketPathsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeTransferPacketPathsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeTransferPacketPathsResponseBody?

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
            var model = ListNodeTransferPacketPathsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeTransferPacketsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: String?

    public var devEui: String?

    public var endMillis: Int64?

    public var gwEui: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNodeTransferPacketsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var classMode: String?

            public var datr: String?

            public var devEui: String?

            public var freq: Double?

            public var gwEui: String?

            public var logMillis: Int64?

            public var rssi: Int32?

            public var snr: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.datr != nil {
                    map["Datr"] = self.datr!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.freq != nil {
                    map["Freq"] = self.freq!
                }
                if self.gwEui != nil {
                    map["GwEui"] = self.gwEui!
                }
                if self.logMillis != nil {
                    map["LogMillis"] = self.logMillis!
                }
                if self.rssi != nil {
                    map["Rssi"] = self.rssi!
                }
                if self.snr != nil {
                    map["Snr"] = self.snr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("Datr") {
                    self.datr = dict["Datr"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("Freq") {
                    self.freq = dict["Freq"] as! Double
                }
                if dict.keys.contains("GwEui") {
                    self.gwEui = dict["GwEui"] as! String
                }
                if dict.keys.contains("LogMillis") {
                    self.logMillis = dict["LogMillis"] as! Int64
                }
                if dict.keys.contains("Rssi") {
                    self.rssi = dict["Rssi"] as! Int32
                }
                if dict.keys.contains("Snr") {
                    self.snr = dict["Snr"] as! Double
                }
            }
        }
        public var list: [ListNodeTransferPacketsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodeTransferPacketsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodeTransferPacketsResponseBody.Data?

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
            var model = ListNodeTransferPacketsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeTransferPacketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeTransferPacketsResponseBody?

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
            var model = ListNodeTransferPacketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeTupleOrdersRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var isKpm: Bool?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public var state: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.isKpm != nil {
            map["IsKpm"] = self.isKpm!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("IsKpm") {
            self.isKpm = dict["IsKpm"] as! Bool
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! [String]
        }
    }
}

public class ListNodeTupleOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var acceptedMillis: Int64?

            public var createdMillis: Int64?

            public var failedCount: Int64?

            public var isKpm: Bool?

            public var loraVersion: String?

            public var orderId: String?

            public var orderState: String?

            public var requiredCount: Int64?

            public var successCount: Int64?

            public var tupleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptedMillis != nil {
                    map["AcceptedMillis"] = self.acceptedMillis!
                }
                if self.createdMillis != nil {
                    map["CreatedMillis"] = self.createdMillis!
                }
                if self.failedCount != nil {
                    map["FailedCount"] = self.failedCount!
                }
                if self.isKpm != nil {
                    map["IsKpm"] = self.isKpm!
                }
                if self.loraVersion != nil {
                    map["LoraVersion"] = self.loraVersion!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderState != nil {
                    map["OrderState"] = self.orderState!
                }
                if self.requiredCount != nil {
                    map["RequiredCount"] = self.requiredCount!
                }
                if self.successCount != nil {
                    map["SuccessCount"] = self.successCount!
                }
                if self.tupleType != nil {
                    map["TupleType"] = self.tupleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptedMillis") {
                    self.acceptedMillis = dict["AcceptedMillis"] as! Int64
                }
                if dict.keys.contains("CreatedMillis") {
                    self.createdMillis = dict["CreatedMillis"] as! Int64
                }
                if dict.keys.contains("FailedCount") {
                    self.failedCount = dict["FailedCount"] as! Int64
                }
                if dict.keys.contains("IsKpm") {
                    self.isKpm = dict["IsKpm"] as! Bool
                }
                if dict.keys.contains("LoraVersion") {
                    self.loraVersion = dict["LoraVersion"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderState") {
                    self.orderState = dict["OrderState"] as! String
                }
                if dict.keys.contains("RequiredCount") {
                    self.requiredCount = dict["RequiredCount"] as! Int64
                }
                if dict.keys.contains("SuccessCount") {
                    self.successCount = dict["SuccessCount"] as! Int64
                }
                if dict.keys.contains("TupleType") {
                    self.tupleType = dict["TupleType"] as! String
                }
            }
        }
        public var list: [ListNodeTupleOrdersResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodeTupleOrdersResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodeTupleOrdersResponseBody.Data?

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
            var model = ListNodeTupleOrdersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeTupleOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeTupleOrdersResponseBody?

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
            var model = ListNodeTupleOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesByNodeGroupIdRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var fuzzyDevEui: String?

    public var iotInstanceId: String?

    public var limit: Int64?

    public var nodeGroupId: String?

    public var offset: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNodesByNodeGroupIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var appkey: String?

            public var authTypes: String?

            public var boundMillis: Int64?

            public var classMode: String?

            public var devAddr: String?

            public var devEui: String?

            public var joinEui: String?

            public var lastJoinMillis: Int64?

            public var multicastGroupId: String?

            public var nodeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appkey != nil {
                    map["Appkey"] = self.appkey!
                }
                if self.authTypes != nil {
                    map["AuthTypes"] = self.authTypes!
                }
                if self.boundMillis != nil {
                    map["BoundMillis"] = self.boundMillis!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.devAddr != nil {
                    map["DevAddr"] = self.devAddr!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.joinEui != nil {
                    map["JoinEui"] = self.joinEui!
                }
                if self.lastJoinMillis != nil {
                    map["LastJoinMillis"] = self.lastJoinMillis!
                }
                if self.multicastGroupId != nil {
                    map["MulticastGroupId"] = self.multicastGroupId!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Appkey") {
                    self.appkey = dict["Appkey"] as! String
                }
                if dict.keys.contains("AuthTypes") {
                    self.authTypes = dict["AuthTypes"] as! String
                }
                if dict.keys.contains("BoundMillis") {
                    self.boundMillis = dict["BoundMillis"] as! Int64
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("DevAddr") {
                    self.devAddr = dict["DevAddr"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("JoinEui") {
                    self.joinEui = dict["JoinEui"] as! String
                }
                if dict.keys.contains("LastJoinMillis") {
                    self.lastJoinMillis = dict["LastJoinMillis"] as! Int64
                }
                if dict.keys.contains("MulticastGroupId") {
                    self.multicastGroupId = dict["MulticastGroupId"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
            }
        }
        public var list: [ListNodesByNodeGroupIdResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodesByNodeGroupIdResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodesByNodeGroupIdResponseBody.Data?

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
            var model = ListNodesByNodeGroupIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodesByNodeGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesByNodeGroupIdResponseBody?

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
            var model = ListNodesByNodeGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesByOwnedJoinPermissionIdRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var fuzzyDevEui: String?

    public var iotInstanceId: String?

    public var joinPermissionId: String?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.fuzzyDevEui != nil {
            map["FuzzyDevEui"] = self.fuzzyDevEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("FuzzyDevEui") {
            self.fuzzyDevEui = dict["FuzzyDevEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNodesByOwnedJoinPermissionIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var boundMillis: Int64?

            public var classMode: String?

            public var devAddr: String?

            public var devEui: String?

            public var lastJoinMillis: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.boundMillis != nil {
                    map["BoundMillis"] = self.boundMillis!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.devAddr != nil {
                    map["DevAddr"] = self.devAddr!
                }
                if self.devEui != nil {
                    map["DevEui"] = self.devEui!
                }
                if self.lastJoinMillis != nil {
                    map["LastJoinMillis"] = self.lastJoinMillis!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BoundMillis") {
                    self.boundMillis = dict["BoundMillis"] as! Int64
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("DevAddr") {
                    self.devAddr = dict["DevAddr"] as! String
                }
                if dict.keys.contains("DevEui") {
                    self.devEui = dict["DevEui"] as! String
                }
                if dict.keys.contains("LastJoinMillis") {
                    self.lastJoinMillis = dict["LastJoinMillis"] as! Int64
                }
            }
        }
        public var list: [ListNodesByOwnedJoinPermissionIdResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNodesByOwnedJoinPermissionIdResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNodesByOwnedJoinPermissionIdResponseBody.Data?

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
            var model = ListNodesByOwnedJoinPermissionIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodesByOwnedJoinPermissionIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesByOwnedJoinPermissionIdResponseBody?

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
            var model = ListNodesByOwnedJoinPermissionIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNotificationsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var beginMillis: Int64?

    public var category: [String]?

    public var endMillis: Int64?

    public var handleState: String?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.beginMillis != nil {
            map["BeginMillis"] = self.beginMillis!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.handleState != nil {
            map["HandleState"] = self.handleState!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BeginMillis") {
            self.beginMillis = dict["BeginMillis"] as! Int64
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! [String]
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("HandleState") {
            self.handleState = dict["HandleState"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListNotificationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class GatewayDataflowLimit : Tea.TeaModel {
                public var alarmDetail: String?

                public var dataflowLimitMillis: Int64?

                public var gwEui: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alarmDetail != nil {
                        map["AlarmDetail"] = self.alarmDetail!
                    }
                    if self.dataflowLimitMillis != nil {
                        map["DataflowLimitMillis"] = self.dataflowLimitMillis!
                    }
                    if self.gwEui != nil {
                        map["GwEui"] = self.gwEui!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AlarmDetail") {
                        self.alarmDetail = dict["AlarmDetail"] as! String
                    }
                    if dict.keys.contains("DataflowLimitMillis") {
                        self.dataflowLimitMillis = dict["DataflowLimitMillis"] as! Int64
                    }
                    if dict.keys.contains("GwEui") {
                        self.gwEui = dict["GwEui"] as! String
                    }
                }
            }
            public class GatewayOfflineInfo : Tea.TeaModel {
                public var gwEui: String?

                public var offlineMillis: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gwEui != nil {
                        map["GwEui"] = self.gwEui!
                    }
                    if self.offlineMillis != nil {
                        map["OfflineMillis"] = self.offlineMillis!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("GwEui") {
                        self.gwEui = dict["GwEui"] as! String
                    }
                    if dict.keys.contains("OfflineMillis") {
                        self.offlineMillis = dict["OfflineMillis"] as! Int64
                    }
                }
            }
            public class JoinPermissionAuthInfo : Tea.TeaModel {
                public var acceptedMillis: Int64?

                public var applyingMillis: Int64?

                public var canceledMillis: Int64?

                public var joinEui: String?

                public var joinPermissionId: String?

                public var joinPermissionName: String?

                public var orderId: String?

                public var orderState: String?

                public var ownerAliyunId: String?

                public var rejectedMillis: Int64?

                public var renterAliyunId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.acceptedMillis != nil {
                        map["AcceptedMillis"] = self.acceptedMillis!
                    }
                    if self.applyingMillis != nil {
                        map["ApplyingMillis"] = self.applyingMillis!
                    }
                    if self.canceledMillis != nil {
                        map["CanceledMillis"] = self.canceledMillis!
                    }
                    if self.joinEui != nil {
                        map["JoinEui"] = self.joinEui!
                    }
                    if self.joinPermissionId != nil {
                        map["JoinPermissionId"] = self.joinPermissionId!
                    }
                    if self.joinPermissionName != nil {
                        map["JoinPermissionName"] = self.joinPermissionName!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderState != nil {
                        map["OrderState"] = self.orderState!
                    }
                    if self.ownerAliyunId != nil {
                        map["OwnerAliyunId"] = self.ownerAliyunId!
                    }
                    if self.rejectedMillis != nil {
                        map["RejectedMillis"] = self.rejectedMillis!
                    }
                    if self.renterAliyunId != nil {
                        map["RenterAliyunId"] = self.renterAliyunId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AcceptedMillis") {
                        self.acceptedMillis = dict["AcceptedMillis"] as! Int64
                    }
                    if dict.keys.contains("ApplyingMillis") {
                        self.applyingMillis = dict["ApplyingMillis"] as! Int64
                    }
                    if dict.keys.contains("CanceledMillis") {
                        self.canceledMillis = dict["CanceledMillis"] as! Int64
                    }
                    if dict.keys.contains("JoinEui") {
                        self.joinEui = dict["JoinEui"] as! String
                    }
                    if dict.keys.contains("JoinPermissionId") {
                        self.joinPermissionId = dict["JoinPermissionId"] as! String
                    }
                    if dict.keys.contains("JoinPermissionName") {
                        self.joinPermissionName = dict["JoinPermissionName"] as! String
                    }
                    if dict.keys.contains("OrderId") {
                        self.orderId = dict["OrderId"] as! String
                    }
                    if dict.keys.contains("OrderState") {
                        self.orderState = dict["OrderState"] as! String
                    }
                    if dict.keys.contains("OwnerAliyunId") {
                        self.ownerAliyunId = dict["OwnerAliyunId"] as! String
                    }
                    if dict.keys.contains("RejectedMillis") {
                        self.rejectedMillis = dict["RejectedMillis"] as! Int64
                    }
                    if dict.keys.contains("RenterAliyunId") {
                        self.renterAliyunId = dict["RenterAliyunId"] as! String
                    }
                }
            }
            public var category: String?

            public var gatewayDataflowLimit: ListNotificationsResponseBody.Data.List.GatewayDataflowLimit?

            public var gatewayOfflineInfo: ListNotificationsResponseBody.Data.List.GatewayOfflineInfo?

            public var handleState: String?

            public var handledMillis: Int64?

            public var joinPermissionAuthInfo: ListNotificationsResponseBody.Data.List.JoinPermissionAuthInfo?

            public var noticeMillis: Int64?

            public var notificationId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.gatewayDataflowLimit?.validate()
                try self.gatewayOfflineInfo?.validate()
                try self.joinPermissionAuthInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.gatewayDataflowLimit != nil {
                    map["GatewayDataflowLimit"] = self.gatewayDataflowLimit?.toMap()
                }
                if self.gatewayOfflineInfo != nil {
                    map["GatewayOfflineInfo"] = self.gatewayOfflineInfo?.toMap()
                }
                if self.handleState != nil {
                    map["HandleState"] = self.handleState!
                }
                if self.handledMillis != nil {
                    map["HandledMillis"] = self.handledMillis!
                }
                if self.joinPermissionAuthInfo != nil {
                    map["JoinPermissionAuthInfo"] = self.joinPermissionAuthInfo?.toMap()
                }
                if self.noticeMillis != nil {
                    map["NoticeMillis"] = self.noticeMillis!
                }
                if self.notificationId != nil {
                    map["NotificationId"] = self.notificationId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("GatewayDataflowLimit") {
                    var model = ListNotificationsResponseBody.Data.List.GatewayDataflowLimit()
                    model.fromMap(dict["GatewayDataflowLimit"] as! [String: Any])
                    self.gatewayDataflowLimit = model
                }
                if dict.keys.contains("GatewayOfflineInfo") {
                    var model = ListNotificationsResponseBody.Data.List.GatewayOfflineInfo()
                    model.fromMap(dict["GatewayOfflineInfo"] as! [String: Any])
                    self.gatewayOfflineInfo = model
                }
                if dict.keys.contains("HandleState") {
                    self.handleState = dict["HandleState"] as! String
                }
                if dict.keys.contains("HandledMillis") {
                    self.handledMillis = dict["HandledMillis"] as! Int64
                }
                if dict.keys.contains("JoinPermissionAuthInfo") {
                    var model = ListNotificationsResponseBody.Data.List.JoinPermissionAuthInfo()
                    model.fromMap(dict["JoinPermissionAuthInfo"] as! [String: Any])
                    self.joinPermissionAuthInfo = model
                }
                if dict.keys.contains("NoticeMillis") {
                    self.noticeMillis = dict["NoticeMillis"] as! Int64
                }
                if dict.keys.contains("NotificationId") {
                    self.notificationId = dict["NotificationId"] as! String
                }
            }
        }
        public var list: [ListNotificationsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListNotificationsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListNotificationsResponseBody.Data?

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
            var model = ListNotificationsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNotificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNotificationsResponseBody?

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
            var model = ListNotificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOwnedJoinPermissionsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var enabled: Bool?

    public var fuzzyJoinEui: String?

    public var fuzzyJoinPermissionName: String?

    public var fuzzyRenterAliyunId: String?

    public var iotInstanceId: String?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyJoinPermissionName != nil {
            map["FuzzyJoinPermissionName"] = self.fuzzyJoinPermissionName!
        }
        if self.fuzzyRenterAliyunId != nil {
            map["FuzzyRenterAliyunId"] = self.fuzzyRenterAliyunId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinPermissionName") {
            self.fuzzyJoinPermissionName = dict["FuzzyJoinPermissionName"] as! String
        }
        if dict.keys.contains("FuzzyRenterAliyunId") {
            self.fuzzyRenterAliyunId = dict["FuzzyRenterAliyunId"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
    }
}

public class ListOwnedJoinPermissionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var authState: String?

            public var classMode: String?

            public var dataRate: Int64?

            public var enabled: Bool?

            public var freqBandPlanGroupId: Int64?

            public var joinEui: String?

            public var joinPermissionId: String?

            public var joinPermissionName: String?

            public var renterAliyunId: String?

            public var rxDelay: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authState != nil {
                    map["AuthState"] = self.authState!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.dataRate != nil {
                    map["DataRate"] = self.dataRate!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.freqBandPlanGroupId != nil {
                    map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
                }
                if self.joinEui != nil {
                    map["JoinEui"] = self.joinEui!
                }
                if self.joinPermissionId != nil {
                    map["JoinPermissionId"] = self.joinPermissionId!
                }
                if self.joinPermissionName != nil {
                    map["JoinPermissionName"] = self.joinPermissionName!
                }
                if self.renterAliyunId != nil {
                    map["RenterAliyunId"] = self.renterAliyunId!
                }
                if self.rxDelay != nil {
                    map["RxDelay"] = self.rxDelay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthState") {
                    self.authState = dict["AuthState"] as! String
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("DataRate") {
                    self.dataRate = dict["DataRate"] as! Int64
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("FreqBandPlanGroupId") {
                    self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
                }
                if dict.keys.contains("JoinEui") {
                    self.joinEui = dict["JoinEui"] as! String
                }
                if dict.keys.contains("JoinPermissionId") {
                    self.joinPermissionId = dict["JoinPermissionId"] as! String
                }
                if dict.keys.contains("JoinPermissionName") {
                    self.joinPermissionName = dict["JoinPermissionName"] as! String
                }
                if dict.keys.contains("RenterAliyunId") {
                    self.renterAliyunId = dict["RenterAliyunId"] as! String
                }
                if dict.keys.contains("RxDelay") {
                    self.rxDelay = dict["RxDelay"] as! Int64
                }
            }
        }
        public var list: [ListOwnedJoinPermissionsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListOwnedJoinPermissionsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListOwnedJoinPermissionsResponseBody.Data?

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
            var model = ListOwnedJoinPermissionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListOwnedJoinPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOwnedJoinPermissionsResponseBody?

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
            var model = ListOwnedJoinPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRentedJoinPermissionsRequest : Tea.TeaModel {
    public var ascending: Bool?

    public var boundNodeGroup: Bool?

    public var enabled: Bool?

    public var fuzzyJoinEui: String?

    public var fuzzyJoinPermissionName: String?

    public var fuzzyOwnerAliyunId: String?

    public var iotInstanceId: String?

    public var limit: Int64?

    public var offset: Int64?

    public var sortingField: String?

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
        if self.ascending != nil {
            map["Ascending"] = self.ascending!
        }
        if self.boundNodeGroup != nil {
            map["BoundNodeGroup"] = self.boundNodeGroup!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.fuzzyJoinEui != nil {
            map["FuzzyJoinEui"] = self.fuzzyJoinEui!
        }
        if self.fuzzyJoinPermissionName != nil {
            map["FuzzyJoinPermissionName"] = self.fuzzyJoinPermissionName!
        }
        if self.fuzzyOwnerAliyunId != nil {
            map["FuzzyOwnerAliyunId"] = self.fuzzyOwnerAliyunId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.sortingField != nil {
            map["SortingField"] = self.sortingField!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ascending") {
            self.ascending = dict["Ascending"] as! Bool
        }
        if dict.keys.contains("BoundNodeGroup") {
            self.boundNodeGroup = dict["BoundNodeGroup"] as! Bool
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("FuzzyJoinEui") {
            self.fuzzyJoinEui = dict["FuzzyJoinEui"] as! String
        }
        if dict.keys.contains("FuzzyJoinPermissionName") {
            self.fuzzyJoinPermissionName = dict["FuzzyJoinPermissionName"] as! String
        }
        if dict.keys.contains("FuzzyOwnerAliyunId") {
            self.fuzzyOwnerAliyunId = dict["FuzzyOwnerAliyunId"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int64
        }
        if dict.keys.contains("SortingField") {
            self.sortingField = dict["SortingField"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListRentedJoinPermissionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class DataDispatchConfig : Tea.TeaModel {
                public class IotProduct : Tea.TeaModel {
                    public var debugSwitch: Bool?

                    public var productKey: String?

                    public var productName: String?

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
                        if self.debugSwitch != nil {
                            map["DebugSwitch"] = self.debugSwitch!
                        }
                        if self.productKey != nil {
                            map["ProductKey"] = self.productKey!
                        }
                        if self.productName != nil {
                            map["ProductName"] = self.productName!
                        }
                        if self.productType != nil {
                            map["ProductType"] = self.productType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DebugSwitch") {
                            self.debugSwitch = dict["DebugSwitch"] as! Bool
                        }
                        if dict.keys.contains("ProductKey") {
                            self.productKey = dict["ProductKey"] as! String
                        }
                        if dict.keys.contains("ProductName") {
                            self.productName = dict["ProductName"] as! String
                        }
                        if dict.keys.contains("ProductType") {
                            self.productType = dict["ProductType"] as! String
                        }
                    }
                }
                public class OnsTopics : Tea.TeaModel {
                    public var downlinkRegionName: String?

                    public var downlinkTopic: String?

                    public var uplinkRegionName: String?

                    public var uplinkTopic: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.downlinkRegionName != nil {
                            map["DownlinkRegionName"] = self.downlinkRegionName!
                        }
                        if self.downlinkTopic != nil {
                            map["DownlinkTopic"] = self.downlinkTopic!
                        }
                        if self.uplinkRegionName != nil {
                            map["UplinkRegionName"] = self.uplinkRegionName!
                        }
                        if self.uplinkTopic != nil {
                            map["UplinkTopic"] = self.uplinkTopic!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DownlinkRegionName") {
                            self.downlinkRegionName = dict["DownlinkRegionName"] as! String
                        }
                        if dict.keys.contains("DownlinkTopic") {
                            self.downlinkTopic = dict["DownlinkTopic"] as! String
                        }
                        if dict.keys.contains("UplinkRegionName") {
                            self.uplinkRegionName = dict["UplinkRegionName"] as! String
                        }
                        if dict.keys.contains("UplinkTopic") {
                            self.uplinkTopic = dict["UplinkTopic"] as! String
                        }
                    }
                }
                public var destination: String?

                public var iotProduct: ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig.IotProduct?

                public var onsTopics: ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig.OnsTopics?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.iotProduct?.validate()
                    try self.onsTopics?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destination != nil {
                        map["Destination"] = self.destination!
                    }
                    if self.iotProduct != nil {
                        map["IotProduct"] = self.iotProduct?.toMap()
                    }
                    if self.onsTopics != nil {
                        map["OnsTopics"] = self.onsTopics?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Destination") {
                        self.destination = dict["Destination"] as! String
                    }
                    if dict.keys.contains("IotProduct") {
                        var model = ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig.IotProduct()
                        model.fromMap(dict["IotProduct"] as! [String: Any])
                        self.iotProduct = model
                    }
                    if dict.keys.contains("OnsTopics") {
                        var model = ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig.OnsTopics()
                        model.fromMap(dict["OnsTopics"] as! [String: Any])
                        self.onsTopics = model
                    }
                }
            }
            public var boundNodeGroup: Bool?

            public var boundNodeGroupId: String?

            public var boundNodeGroupName: String?

            public var classMode: String?

            public var dataDispatchConfig: ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig?

            public var dataRate: String?

            public var enabled: Bool?

            public var freqBandPlanGroupId: String?

            public var joinEui: String?

            public var joinPermissionId: String?

            public var joinPermissionName: String?

            public var ownerAliyunId: String?

            public var rxDelay: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDispatchConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.boundNodeGroup != nil {
                    map["BoundNodeGroup"] = self.boundNodeGroup!
                }
                if self.boundNodeGroupId != nil {
                    map["BoundNodeGroupId"] = self.boundNodeGroupId!
                }
                if self.boundNodeGroupName != nil {
                    map["BoundNodeGroupName"] = self.boundNodeGroupName!
                }
                if self.classMode != nil {
                    map["ClassMode"] = self.classMode!
                }
                if self.dataDispatchConfig != nil {
                    map["DataDispatchConfig"] = self.dataDispatchConfig?.toMap()
                }
                if self.dataRate != nil {
                    map["DataRate"] = self.dataRate!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.freqBandPlanGroupId != nil {
                    map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
                }
                if self.joinEui != nil {
                    map["JoinEui"] = self.joinEui!
                }
                if self.joinPermissionId != nil {
                    map["JoinPermissionId"] = self.joinPermissionId!
                }
                if self.joinPermissionName != nil {
                    map["JoinPermissionName"] = self.joinPermissionName!
                }
                if self.ownerAliyunId != nil {
                    map["OwnerAliyunId"] = self.ownerAliyunId!
                }
                if self.rxDelay != nil {
                    map["RxDelay"] = self.rxDelay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BoundNodeGroup") {
                    self.boundNodeGroup = dict["BoundNodeGroup"] as! Bool
                }
                if dict.keys.contains("BoundNodeGroupId") {
                    self.boundNodeGroupId = dict["BoundNodeGroupId"] as! String
                }
                if dict.keys.contains("BoundNodeGroupName") {
                    self.boundNodeGroupName = dict["BoundNodeGroupName"] as! String
                }
                if dict.keys.contains("ClassMode") {
                    self.classMode = dict["ClassMode"] as! String
                }
                if dict.keys.contains("DataDispatchConfig") {
                    var model = ListRentedJoinPermissionsResponseBody.Data.List.DataDispatchConfig()
                    model.fromMap(dict["DataDispatchConfig"] as! [String: Any])
                    self.dataDispatchConfig = model
                }
                if dict.keys.contains("DataRate") {
                    self.dataRate = dict["DataRate"] as! String
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("FreqBandPlanGroupId") {
                    self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! String
                }
                if dict.keys.contains("JoinEui") {
                    self.joinEui = dict["JoinEui"] as! String
                }
                if dict.keys.contains("JoinPermissionId") {
                    self.joinPermissionId = dict["JoinPermissionId"] as! String
                }
                if dict.keys.contains("JoinPermissionName") {
                    self.joinPermissionName = dict["JoinPermissionName"] as! String
                }
                if dict.keys.contains("OwnerAliyunId") {
                    self.ownerAliyunId = dict["OwnerAliyunId"] as! String
                }
                if dict.keys.contains("RxDelay") {
                    self.rxDelay = dict["RxDelay"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var list: [ListRentedJoinPermissionsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                self.list = dict["List"] as! [ListRentedJoinPermissionsResponseBody.Data.List]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: ListRentedJoinPermissionsResponseBody.Data?

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
            var model = ListRentedJoinPermissionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListRentedJoinPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRentedJoinPermissionsResponseBody?

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
            var model = ListRentedJoinPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RejectJoinPermissionAuthOrderRequest : Tea.TeaModel {
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

public class RejectJoinPermissionAuthOrderResponseBody : Tea.TeaModel {
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

public class RejectJoinPermissionAuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectJoinPermissionAuthOrderResponseBody?

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
            var model = RejectJoinPermissionAuthOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveNodeFromGroupRequest : Tea.TeaModel {
    public var devEui: String?

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
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class RemoveNodeFromGroupResponseBody : Tea.TeaModel {
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

public class RemoveNodeFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveNodeFromGroupResponseBody?

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
            var model = RemoveNodeFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReturnJoinPermissionRequest : Tea.TeaModel {
    public var joinPermissionId: String?

    public var joinPermissionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.joinPermissionType != nil {
            map["JoinPermissionType"] = self.joinPermissionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("JoinPermissionType") {
            self.joinPermissionType = dict["JoinPermissionType"] as! String
        }
    }
}

public class ReturnJoinPermissionResponseBody : Tea.TeaModel {
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

public class ReturnJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReturnJoinPermissionResponseBody?

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
            var model = ReturnJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendUnicastCommandRequest : Tea.TeaModel {
    public var cleanUp: Bool?

    public var confirmed: Bool?

    public var content: String?

    public var devEui: String?

    public var FPort: Int32?

    public var iotInstanceId: String?

    public var maxRetries: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cleanUp != nil {
            map["CleanUp"] = self.cleanUp!
        }
        if self.confirmed != nil {
            map["Confirmed"] = self.confirmed!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.devEui != nil {
            map["DevEui"] = self.devEui!
        }
        if self.FPort != nil {
            map["FPort"] = self.FPort!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.maxRetries != nil {
            map["MaxRetries"] = self.maxRetries!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CleanUp") {
            self.cleanUp = dict["CleanUp"] as! Bool
        }
        if dict.keys.contains("Confirmed") {
            self.confirmed = dict["Confirmed"] as! Bool
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DevEui") {
            self.devEui = dict["DevEui"] as! String
        }
        if dict.keys.contains("FPort") {
            self.FPort = dict["FPort"] as! Int32
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("MaxRetries") {
            self.maxRetries = dict["MaxRetries"] as! Int32
        }
    }
}

public class SendUnicastCommandResponseBody : Tea.TeaModel {
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

public class SendUnicastCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendUnicastCommandResponseBody?

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
            var model = SendUnicastCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitGatewayTupleOrderRequest : Tea.TeaModel {
    public var requiredCount: Int64?

    public var tupleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requiredCount != nil {
            map["RequiredCount"] = self.requiredCount!
        }
        if self.tupleType != nil {
            map["TupleType"] = self.tupleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequiredCount") {
            self.requiredCount = dict["RequiredCount"] as! Int64
        }
        if dict.keys.contains("TupleType") {
            self.tupleType = dict["TupleType"] as! String
        }
    }
}

public class SubmitGatewayTupleOrderResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitGatewayTupleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitGatewayTupleOrderResponseBody?

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
            var model = SubmitGatewayTupleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitJoinPermissionAuthOrderRequest : Tea.TeaModel {
    public var joinPermissionId: String?

    public var renterAliyunId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.renterAliyunId != nil {
            map["RenterAliyunId"] = self.renterAliyunId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("RenterAliyunId") {
            self.renterAliyunId = dict["RenterAliyunId"] as! String
        }
    }
}

public class SubmitJoinPermissionAuthOrderResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitJoinPermissionAuthOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitJoinPermissionAuthOrderResponseBody?

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
            var model = SubmitJoinPermissionAuthOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitNodeTupleOrderRequest : Tea.TeaModel {
    public var loraVersion: String?

    public var requiredCount: Int64?

    public var tupleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loraVersion != nil {
            map["LoraVersion"] = self.loraVersion!
        }
        if self.requiredCount != nil {
            map["RequiredCount"] = self.requiredCount!
        }
        if self.tupleType != nil {
            map["TupleType"] = self.tupleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoraVersion") {
            self.loraVersion = dict["LoraVersion"] as! String
        }
        if dict.keys.contains("RequiredCount") {
            self.requiredCount = dict["RequiredCount"] as! Int64
        }
        if dict.keys.contains("TupleType") {
            self.tupleType = dict["TupleType"] as! String
        }
    }
}

public class SubmitNodeTupleOrderResponseBody : Tea.TeaModel {
    public var data: String?

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
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitNodeTupleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitNodeTupleOrderResponseBody?

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
            var model = SubmitNodeTupleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindJoinPermissionFromNodeGroupRequest : Tea.TeaModel {
    public var joinPermissionId: String?

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
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class UnbindJoinPermissionFromNodeGroupResponseBody : Tea.TeaModel {
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

public class UnbindJoinPermissionFromNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindJoinPermissionFromNodeGroupResponseBody?

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
            var model = UnbindJoinPermissionFromNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataDispatchConfigRequest : Tea.TeaModel {
    public var dataDispatchDestination: String?

    public var debugSwitch: Bool?

    public var nodeGroupId: String?

    public var productKey: String?

    public var productName: String?

    public var productType: String?

    public var uplinkRegionName: String?

    public var uplinkTopic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataDispatchDestination != nil {
            map["DataDispatchDestination"] = self.dataDispatchDestination!
        }
        if self.debugSwitch != nil {
            map["DebugSwitch"] = self.debugSwitch!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.productKey != nil {
            map["ProductKey"] = self.productKey!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.uplinkRegionName != nil {
            map["UplinkRegionName"] = self.uplinkRegionName!
        }
        if self.uplinkTopic != nil {
            map["UplinkTopic"] = self.uplinkTopic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDispatchDestination") {
            self.dataDispatchDestination = dict["DataDispatchDestination"] as! String
        }
        if dict.keys.contains("DebugSwitch") {
            self.debugSwitch = dict["DebugSwitch"] as! Bool
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("ProductKey") {
            self.productKey = dict["ProductKey"] as! String
        }
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("UplinkRegionName") {
            self.uplinkRegionName = dict["UplinkRegionName"] as! String
        }
        if dict.keys.contains("UplinkTopic") {
            self.uplinkTopic = dict["UplinkTopic"] as! String
        }
    }
}

public class UpdateDataDispatchConfigResponseBody : Tea.TeaModel {
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

public class UpdateDataDispatchConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataDispatchConfigResponseBody?

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
            var model = UpdateDataDispatchConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataDispatchEnablingStateRequest : Tea.TeaModel {
    public var dataDispatchEnabled: Bool?

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
        if self.dataDispatchEnabled != nil {
            map["DataDispatchEnabled"] = self.dataDispatchEnabled!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDispatchEnabled") {
            self.dataDispatchEnabled = dict["DataDispatchEnabled"] as! Bool
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class UpdateDataDispatchEnablingStateResponseBody : Tea.TeaModel {
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

public class UpdateDataDispatchEnablingStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataDispatchEnablingStateResponseBody?

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
            var model = UpdateDataDispatchEnablingStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayRequest : Tea.TeaModel {
    public var address: String?

    public var addressCode: Int64?

    public var city: String?

    public var communicationMode: String?

    public var description_: String?

    public var district: String?

    public var freqBandPlanGroupId: Int64?

    public var gisCoordinateSystem: String?

    public var gwEui: String?

    public var iotInstanceId: String?

    public var latitude: Double?

    public var longitude: Double?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressCode != nil {
            map["AddressCode"] = self.addressCode!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.communicationMode != nil {
            map["CommunicationMode"] = self.communicationMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.gisCoordinateSystem != nil {
            map["GisCoordinateSystem"] = self.gisCoordinateSystem!
        }
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressCode") {
            self.addressCode = dict["AddressCode"] as! Int64
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("CommunicationMode") {
            self.communicationMode = dict["CommunicationMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("District") {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("GisCoordinateSystem") {
            self.gisCoordinateSystem = dict["GisCoordinateSystem"] as! String
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! Double
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! Double
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateGatewayResponseBody : Tea.TeaModel {
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
            var model = UpdateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayEnablingStateRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var gwEui: String?

    public var iotInstanceId: String?

    public override init() {
        super.init()
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
        if self.gwEui != nil {
            map["GwEui"] = self.gwEui!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("GwEui") {
            self.gwEui = dict["GwEui"] as! String
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
    }
}

public class UpdateGatewayEnablingStateResponseBody : Tea.TeaModel {
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

public class UpdateGatewayEnablingStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayEnablingStateResponseBody?

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
            var model = UpdateGatewayEnablingStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNodeGroupRequest : Tea.TeaModel {
    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public override init() {
        super.init()
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
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
    }
}

public class UpdateNodeGroupResponseBody : Tea.TeaModel {
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

public class UpdateNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNodeGroupResponseBody?

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
            var model = UpdateNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNotificationsHandleStateRequest : Tea.TeaModel {
    public var notificationId: [Int64]?

    public var targetHandleState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notificationId != nil {
            map["NotificationId"] = self.notificationId!
        }
        if self.targetHandleState != nil {
            map["TargetHandleState"] = self.targetHandleState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotificationId") {
            self.notificationId = dict["NotificationId"] as! [Int64]
        }
        if dict.keys.contains("TargetHandleState") {
            self.targetHandleState = dict["TargetHandleState"] as! String
        }
    }
}

public class UpdateNotificationsHandleStateResponseBody : Tea.TeaModel {
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

public class UpdateNotificationsHandleStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNotificationsHandleStateResponseBody?

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
            var model = UpdateNotificationsHandleStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOwnedLocalJoinPermissionRequest : Tea.TeaModel {
    public var classMode: String?

    public var dataRate: String?

    public var freqBandPlanGroupId: Int64?

    public var iotInstanceId: String?

    public var joinEui: String?

    public var joinPermissionId: String?

    public var joinPermissionName: String?

    public var rxDelay: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classMode != nil {
            map["ClassMode"] = self.classMode!
        }
        if self.dataRate != nil {
            map["DataRate"] = self.dataRate!
        }
        if self.freqBandPlanGroupId != nil {
            map["FreqBandPlanGroupId"] = self.freqBandPlanGroupId!
        }
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinEui != nil {
            map["JoinEui"] = self.joinEui!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.joinPermissionName != nil {
            map["JoinPermissionName"] = self.joinPermissionName!
        }
        if self.rxDelay != nil {
            map["RxDelay"] = self.rxDelay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClassMode") {
            self.classMode = dict["ClassMode"] as! String
        }
        if dict.keys.contains("DataRate") {
            self.dataRate = dict["DataRate"] as! String
        }
        if dict.keys.contains("FreqBandPlanGroupId") {
            self.freqBandPlanGroupId = dict["FreqBandPlanGroupId"] as! Int64
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinEui") {
            self.joinEui = dict["JoinEui"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("JoinPermissionName") {
            self.joinPermissionName = dict["JoinPermissionName"] as! String
        }
        if dict.keys.contains("RxDelay") {
            self.rxDelay = dict["RxDelay"] as! String
        }
    }
}

public class UpdateOwnedLocalJoinPermissionResponseBody : Tea.TeaModel {
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

public class UpdateOwnedLocalJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOwnedLocalJoinPermissionResponseBody?

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
            var model = UpdateOwnedLocalJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOwnedLocalJoinPermissionEnablingStateRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var iotInstanceId: String?

    public var joinPermissionId: String?

    public override init() {
        super.init()
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
        if self.iotInstanceId != nil {
            map["IotInstanceId"] = self.iotInstanceId!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("IotInstanceId") {
            self.iotInstanceId = dict["IotInstanceId"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class UpdateOwnedLocalJoinPermissionEnablingStateResponseBody : Tea.TeaModel {
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

public class UpdateOwnedLocalJoinPermissionEnablingStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOwnedLocalJoinPermissionEnablingStateResponseBody?

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
            var model = UpdateOwnedLocalJoinPermissionEnablingStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRoamingJoinPermissionRequest : Tea.TeaModel {
    public var dataRate: String?

    public var joinPermissionId: String?

    public var joinPermissionName: String?

    public var rxDelay: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataRate != nil {
            map["DataRate"] = self.dataRate!
        }
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        if self.joinPermissionName != nil {
            map["JoinPermissionName"] = self.joinPermissionName!
        }
        if self.rxDelay != nil {
            map["RxDelay"] = self.rxDelay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataRate") {
            self.dataRate = dict["DataRate"] as! String
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
        if dict.keys.contains("JoinPermissionName") {
            self.joinPermissionName = dict["JoinPermissionName"] as! String
        }
        if dict.keys.contains("RxDelay") {
            self.rxDelay = dict["RxDelay"] as! String
        }
    }
}

public class UpdateRoamingJoinPermissionResponseBody : Tea.TeaModel {
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

public class UpdateRoamingJoinPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoamingJoinPermissionResponseBody?

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
            var model = UpdateRoamingJoinPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRoamingJoinPermissionEnablingStateRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var joinPermissionId: String?

    public override init() {
        super.init()
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
        if self.joinPermissionId != nil {
            map["JoinPermissionId"] = self.joinPermissionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("JoinPermissionId") {
            self.joinPermissionId = dict["JoinPermissionId"] as! String
        }
    }
}

public class UpdateRoamingJoinPermissionEnablingStateResponseBody : Tea.TeaModel {
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

public class UpdateRoamingJoinPermissionEnablingStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoamingJoinPermissionEnablingStateResponseBody?

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
            var model = UpdateRoamingJoinPermissionEnablingStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
