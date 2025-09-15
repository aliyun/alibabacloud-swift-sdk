import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class OrderQosProductRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var channelId: String?

    public var IPv6: String?

    public var instanceId: String?

    public var ipType: String?

    public var mobileNumber: String?

    public var operator_: String?

    public var privateIpv4: String?

    public var productId: String?

    public var provice: String?

    public var publicIpv4: String?

    public var qosRequestId: String?

    public var targetIpList: [String]?

    public var token: String?

    public var unitNum: Int32?

    public override init() {
        super.init()
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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.IPv6 != nil {
            map["IPv6"] = self.IPv6!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipType != nil {
            map["IpType"] = self.ipType!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.privateIpv4 != nil {
            map["PrivateIpv4"] = self.privateIpv4!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.provice != nil {
            map["Provice"] = self.provice!
        }
        if self.publicIpv4 != nil {
            map["PublicIpv4"] = self.publicIpv4!
        }
        if self.qosRequestId != nil {
            map["QosRequestId"] = self.qosRequestId!
        }
        if self.targetIpList != nil {
            map["TargetIpList"] = self.targetIpList!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.unitNum != nil {
            map["UnitNum"] = self.unitNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["IPv6"] as? String {
            self.IPv6 = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpType"] as? String {
            self.ipType = value
        }
        if let value = dict["MobileNumber"] as? String {
            self.mobileNumber = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["PrivateIpv4"] as? String {
            self.privateIpv4 = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Provice"] as? String {
            self.provice = value
        }
        if let value = dict["PublicIpv4"] as? String {
            self.publicIpv4 = value
        }
        if let value = dict["QosRequestId"] as? String {
            self.qosRequestId = value
        }
        if let value = dict["TargetIpList"] as? [String] {
            self.targetIpList = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UnitNum"] as? Int32 {
            self.unitNum = value
        }
    }
}

public class OrderQosProductResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var requestId: String?

    public var rt: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rt != nil {
            map["Rt"] = self.rt!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rt"] as? Int64 {
            self.rt = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class OrderQosProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderQosProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OrderQosProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
