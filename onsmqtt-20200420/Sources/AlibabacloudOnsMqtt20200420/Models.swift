import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActiveCaCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class ActiveCaCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sn: String?

    public override init() {
        super.init()
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
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class ActiveCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveCaCertificateResponseBody?

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
            var model = ActiveCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ActiveDeviceCertificateRequest : Tea.TeaModel {
    public var caSn: String?

    public var deviceSn: String?

    public var mqttInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caSn != nil {
            map["CaSn"] = self.caSn!
        }
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaSn") {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
    }
}

public class ActiveDeviceCertificateResponseBody : Tea.TeaModel {
    public var deviceSn: String?

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
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ActiveDeviceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveDeviceCertificateResponseBody?

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
            var model = ActiveDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyTokenRequest : Tea.TeaModel {
    public var actions: String?

    public var expireTime: Int64?

    public var instanceId: String?

    public var resources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            map["Actions"] = self.actions!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actions = dict["Actions"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
    }
}

public class ApplyTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class ApplyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyTokenResponseBody?

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
            var model = ApplyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchQuerySessionByClientIdsRequest : Tea.TeaModel {
    public var clientIdList: [String]?

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
        if self.clientIdList != nil {
            map["ClientIdList"] = self.clientIdList!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIdList") {
            self.clientIdList = dict["ClientIdList"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class BatchQuerySessionByClientIdsResponseBody : Tea.TeaModel {
    public class OnlineStatusList : Tea.TeaModel {
        public var clientId: String?

        public var onlineStatus: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.onlineStatus != nil {
                map["OnlineStatus"] = self.onlineStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("OnlineStatus") {
                self.onlineStatus = dict["OnlineStatus"] as! Bool
            }
        }
    }
    public var onlineStatusList: [BatchQuerySessionByClientIdsResponseBody.OnlineStatusList]?

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
        if self.onlineStatusList != nil {
            var tmp : [Any] = []
            for k in self.onlineStatusList! {
                tmp.append(k.toMap())
            }
            map["OnlineStatusList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OnlineStatusList") {
            self.onlineStatusList = dict["OnlineStatusList"] as! [BatchQuerySessionByClientIdsResponseBody.OnlineStatusList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchQuerySessionByClientIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQuerySessionByClientIdsResponseBody?

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
            var model = BatchQuerySessionByClientIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupIdRequest : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateGroupIdResponseBody : Tea.TeaModel {
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

public class CreateGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupIdResponseBody?

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
            var model = CreateGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCaCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class DeleteCaCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sn: String?

    public override init() {
        super.init()
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
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class DeleteCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCaCertificateResponseBody?

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
            var model = DeleteCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDeviceCertificateRequest : Tea.TeaModel {
    public var caSn: String?

    public var deviceSn: String?

    public var mqttInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caSn != nil {
            map["CaSn"] = self.caSn!
        }
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaSn") {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
    }
}

public class DeleteDeviceCertificateResponseBody : Tea.TeaModel {
    public var deviceSn: String?

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
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDeviceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeviceCertificateResponseBody?

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
            var model = DeleteDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupIdRequest : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteGroupIdResponseBody : Tea.TeaModel {
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

public class DeleteGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupIdResponseBody?

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
            var model = DeleteGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCaCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class GetCaCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caContent: String?

        public var caName: String?

        public var registrationCode: String?

        public var sn: String?

        public var status: String?

        public var validBegin: String?

        public var validEnd: String?

        public var verificationContent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caContent != nil {
                map["CaContent"] = self.caContent!
            }
            if self.caName != nil {
                map["CaName"] = self.caName!
            }
            if self.registrationCode != nil {
                map["RegistrationCode"] = self.registrationCode!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.validBegin != nil {
                map["ValidBegin"] = self.validBegin!
            }
            if self.validEnd != nil {
                map["ValidEnd"] = self.validEnd!
            }
            if self.verificationContent != nil {
                map["VerificationContent"] = self.verificationContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaContent") {
                self.caContent = dict["CaContent"] as! String
            }
            if dict.keys.contains("CaName") {
                self.caName = dict["CaName"] as! String
            }
            if dict.keys.contains("RegistrationCode") {
                self.registrationCode = dict["RegistrationCode"] as! String
            }
            if dict.keys.contains("Sn") {
                self.sn = dict["Sn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ValidBegin") {
                self.validBegin = dict["ValidBegin"] as! String
            }
            if dict.keys.contains("ValidEnd") {
                self.validEnd = dict["ValidEnd"] as! String
            }
            if dict.keys.contains("VerificationContent") {
                self.verificationContent = dict["VerificationContent"] as! String
            }
        }
    }
    public var data: GetCaCertificateResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetCaCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCaCertificateResponseBody?

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
            var model = GetCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceCertificateRequest : Tea.TeaModel {
    public var caSn: String?

    public var deviceSn: String?

    public var mqttInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caSn != nil {
            map["CaSn"] = self.caSn!
        }
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaSn") {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
    }
}

public class GetDeviceCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caSn: String?

        public var deviceContent: String?

        public var deviceName: String?

        public var deviceSn: String?

        public var status: String?

        public var validBegin: String?

        public var validEnd: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caSn != nil {
                map["CaSn"] = self.caSn!
            }
            if self.deviceContent != nil {
                map["DeviceContent"] = self.deviceContent!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.deviceSn != nil {
                map["DeviceSn"] = self.deviceSn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.validBegin != nil {
                map["ValidBegin"] = self.validBegin!
            }
            if self.validEnd != nil {
                map["ValidEnd"] = self.validEnd!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaSn") {
                self.caSn = dict["CaSn"] as! String
            }
            if dict.keys.contains("DeviceContent") {
                self.deviceContent = dict["DeviceContent"] as! String
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceSn") {
                self.deviceSn = dict["DeviceSn"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ValidBegin") {
                self.validBegin = dict["ValidBegin"] as! String
            }
            if dict.keys.contains("ValidEnd") {
                self.validEnd = dict["ValidEnd"] as! String
            }
        }
    }
    public var data: GetDeviceCertificateResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetDeviceCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDeviceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceCertificateResponseBody?

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
            var model = GetDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceCredentialRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetDeviceCredentialResponseBody : Tea.TeaModel {
    public class DeviceCredential : Tea.TeaModel {
        public var clientId: String?

        public var createTime: Int64?

        public var deviceAccessKeyId: String?

        public var deviceAccessKeySecret: String?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deviceAccessKeyId != nil {
                map["DeviceAccessKeyId"] = self.deviceAccessKeyId!
            }
            if self.deviceAccessKeySecret != nil {
                map["DeviceAccessKeySecret"] = self.deviceAccessKeySecret!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var deviceCredential: GetDeviceCredentialResponseBody.DeviceCredential?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCredential != nil {
            map["DeviceCredential"] = self.deviceCredential?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCredential") {
            var model = GetDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDeviceCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceCredentialResponseBody?

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
            var model = GetDeviceCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRegisterCodeRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
    }
}

public class GetRegisterCodeResponseBody : Tea.TeaModel {
    public var registerCode: String?

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
        if self.registerCode != nil {
            map["RegisterCode"] = self.registerCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegisterCode") {
            self.registerCode = dict["RegisterCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRegisterCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegisterCodeResponseBody?

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
            var model = GetRegisterCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InactivateCaCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class InactivateCaCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sn: String?

    public override init() {
        super.init()
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
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class InactivateCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InactivateCaCertificateResponseBody?

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
            var model = InactivateCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InactivateDeviceCertificateRequest : Tea.TeaModel {
    public var caSn: String?

    public var deviceSn: String?

    public var mqttInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caSn != nil {
            map["CaSn"] = self.caSn!
        }
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaSn") {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
    }
}

public class InactivateDeviceCertificateResponseBody : Tea.TeaModel {
    public var deviceSn: String?

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
        if self.deviceSn != nil {
            map["DeviceSn"] = self.deviceSn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceSn") {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InactivateDeviceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InactivateDeviceCertificateResponseBody?

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
            var model = InactivateDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCaCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var pageNo: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListCaCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CaCertificateVOS : Tea.TeaModel {
            public var caContent: String?

            public var caName: String?

            public var registrationCode: String?

            public var sn: String?

            public var status: String?

            public var validBegin: String?

            public var validEnd: String?

            public var verificationContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caContent != nil {
                    map["CaContent"] = self.caContent!
                }
                if self.caName != nil {
                    map["CaName"] = self.caName!
                }
                if self.registrationCode != nil {
                    map["RegistrationCode"] = self.registrationCode!
                }
                if self.sn != nil {
                    map["Sn"] = self.sn!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.validBegin != nil {
                    map["ValidBegin"] = self.validBegin!
                }
                if self.validEnd != nil {
                    map["ValidEnd"] = self.validEnd!
                }
                if self.verificationContent != nil {
                    map["VerificationContent"] = self.verificationContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CaContent") {
                    self.caContent = dict["CaContent"] as! String
                }
                if dict.keys.contains("CaName") {
                    self.caName = dict["CaName"] as! String
                }
                if dict.keys.contains("RegistrationCode") {
                    self.registrationCode = dict["RegistrationCode"] as! String
                }
                if dict.keys.contains("Sn") {
                    self.sn = dict["Sn"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") {
                    self.validEnd = dict["ValidEnd"] as! String
                }
                if dict.keys.contains("VerificationContent") {
                    self.verificationContent = dict["VerificationContent"] as! String
                }
            }
        }
        public var caCertificateVOS: [ListCaCertificateResponseBody.Data.CaCertificateVOS]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.caCertificateVOS != nil {
                var tmp : [Any] = []
                for k in self.caCertificateVOS! {
                    tmp.append(k.toMap())
                }
                map["CaCertificateVOS"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaCertificateVOS") {
                self.caCertificateVOS = dict["CaCertificateVOS"] as! [ListCaCertificateResponseBody.Data.CaCertificateVOS]
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: ListCaCertificateResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListCaCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCaCertificateResponseBody?

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
            var model = ListCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceCertificateRequest : Tea.TeaModel {
    public var mqttInstanceId: String?

    public var pageNo: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListDeviceCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceCertificateVOS : Tea.TeaModel {
            public var caSn: String?

            public var deviceContent: String?

            public var deviceName: String?

            public var deviceSn: String?

            public var status: String?

            public var validBegin: String?

            public var validEnd: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caSn != nil {
                    map["CaSn"] = self.caSn!
                }
                if self.deviceContent != nil {
                    map["DeviceContent"] = self.deviceContent!
                }
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.deviceSn != nil {
                    map["DeviceSn"] = self.deviceSn!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.validBegin != nil {
                    map["ValidBegin"] = self.validBegin!
                }
                if self.validEnd != nil {
                    map["ValidEnd"] = self.validEnd!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CaSn") {
                    self.caSn = dict["CaSn"] as! String
                }
                if dict.keys.contains("DeviceContent") {
                    self.deviceContent = dict["DeviceContent"] as! String
                }
                if dict.keys.contains("DeviceName") {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("DeviceSn") {
                    self.deviceSn = dict["DeviceSn"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") {
                    self.validEnd = dict["ValidEnd"] as! String
                }
            }
        }
        public var deviceCertificateVOS: [ListDeviceCertificateResponseBody.Data.DeviceCertificateVOS]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.deviceCertificateVOS != nil {
                var tmp : [Any] = []
                for k in self.deviceCertificateVOS! {
                    tmp.append(k.toMap())
                }
                map["DeviceCertificateVOS"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceCertificateVOS") {
                self.deviceCertificateVOS = dict["DeviceCertificateVOS"] as! [ListDeviceCertificateResponseBody.Data.DeviceCertificateVOS]
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: ListDeviceCertificateResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListDeviceCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceCertificateResponseBody?

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
            var model = ListDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceCertificateByCaSnRequest : Tea.TeaModel {
    public var caSn: String?

    public var mqttInstanceId: String?

    public var pageNo: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caSn != nil {
            map["CaSn"] = self.caSn!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaSn") {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListDeviceCertificateByCaSnResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceCertificateVOS : Tea.TeaModel {
            public var caSn: String?

            public var deviceContent: String?

            public var deviceName: String?

            public var deviceSn: String?

            public var status: String?

            public var validBegin: String?

            public var validEnd: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caSn != nil {
                    map["CaSn"] = self.caSn!
                }
                if self.deviceContent != nil {
                    map["DeviceContent"] = self.deviceContent!
                }
                if self.deviceName != nil {
                    map["DeviceName"] = self.deviceName!
                }
                if self.deviceSn != nil {
                    map["DeviceSn"] = self.deviceSn!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.validBegin != nil {
                    map["ValidBegin"] = self.validBegin!
                }
                if self.validEnd != nil {
                    map["ValidEnd"] = self.validEnd!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CaSn") {
                    self.caSn = dict["CaSn"] as! String
                }
                if dict.keys.contains("DeviceContent") {
                    self.deviceContent = dict["DeviceContent"] as! String
                }
                if dict.keys.contains("DeviceName") {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("DeviceSn") {
                    self.deviceSn = dict["DeviceSn"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") {
                    self.validEnd = dict["ValidEnd"] as! String
                }
            }
        }
        public var deviceCertificateVOS: [ListDeviceCertificateByCaSnResponseBody.Data.DeviceCertificateVOS]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.deviceCertificateVOS != nil {
                var tmp : [Any] = []
                for k in self.deviceCertificateVOS! {
                    tmp.append(k.toMap())
                }
                map["DeviceCertificateVOS"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceCertificateVOS") {
                self.deviceCertificateVOS = dict["DeviceCertificateVOS"] as! [ListDeviceCertificateByCaSnResponseBody.Data.DeviceCertificateVOS]
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: ListDeviceCertificateByCaSnResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListDeviceCertificateByCaSnResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceCertificateByCaSnResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceCertificateByCaSnResponseBody?

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
            var model = ListDeviceCertificateByCaSnResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupIdRequest : Tea.TeaModel {
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

public class ListGroupIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var groupId: String?

        public var independentNaming: Bool?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.independentNaming != nil {
                map["IndependentNaming"] = self.independentNaming!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("IndependentNaming") {
                self.independentNaming = dict["IndependentNaming"] as! Bool
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var data: [ListGroupIdResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListGroupIdResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupIdResponseBody?

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
            var model = ListGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMqttTraceDeviceRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var clientId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var mqttRegionId: String?

    public var pageSize: Int32?

    public var reverse: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqttRegionId != nil {
            map["MqttRegionId"] = self.mqttRegionId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
    }
}

public class QueryMqttTraceDeviceResponseBody : Tea.TeaModel {
    public class DeviceInfoList : Tea.TeaModel {
        public var action: String?

        public var actionCode: String?

        public var actionInfo: String?

        public var channelId: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.actionInfo != nil {
                map["ActionInfo"] = self.actionInfo!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var deviceInfoList: [QueryMqttTraceDeviceResponseBody.DeviceInfoList]?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceInfoList != nil {
            var tmp : [Any] = []
            for k in self.deviceInfoList! {
                tmp.append(k.toMap())
            }
            map["DeviceInfoList"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceInfoList") {
            self.deviceInfoList = dict["DeviceInfoList"] as! [QueryMqttTraceDeviceResponseBody.DeviceInfoList]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class QueryMqttTraceDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMqttTraceDeviceResponseBody?

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
            var model = QueryMqttTraceDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMqttTraceMessageOfClientRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var clientId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var mqttRegionId: String?

    public var pageSize: Int32?

    public var reverse: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqttRegionId != nil {
            map["MqttRegionId"] = self.mqttRegionId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
    }
}

public class QueryMqttTraceMessageOfClientResponseBody : Tea.TeaModel {
    public class MessageOfClientList : Tea.TeaModel {
        public var action: String?

        public var actionCode: String?

        public var actionInfo: String?

        public var clientId: String?

        public var msgId: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.actionInfo != nil {
                map["ActionInfo"] = self.actionInfo!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var messageOfClientList: [QueryMqttTraceMessageOfClientResponseBody.MessageOfClientList]?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.messageOfClientList != nil {
            var tmp : [Any] = []
            for k in self.messageOfClientList! {
                tmp.append(k.toMap())
            }
            map["MessageOfClientList"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("MessageOfClientList") {
            self.messageOfClientList = dict["MessageOfClientList"] as! [QueryMqttTraceMessageOfClientResponseBody.MessageOfClientList]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class QueryMqttTraceMessageOfClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMqttTraceMessageOfClientResponseBody?

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
            var model = QueryMqttTraceMessageOfClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMqttTraceMessagePublishRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var instanceId: String?

    public var mqttRegionId: String?

    public var msgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqttRegionId != nil {
            map["MqttRegionId"] = self.mqttRegionId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("MsgId") {
            self.msgId = dict["MsgId"] as! String
        }
    }
}

public class QueryMqttTraceMessagePublishResponseBody : Tea.TeaModel {
    public class MessageTraceLists : Tea.TeaModel {
        public var action: String?

        public var actionCode: String?

        public var actionInfo: String?

        public var clientId: String?

        public var msgId: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.actionInfo != nil {
                map["ActionInfo"] = self.actionInfo!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var messageTraceLists: [QueryMqttTraceMessagePublishResponseBody.MessageTraceLists]?

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
        if self.messageTraceLists != nil {
            var tmp : [Any] = []
            for k in self.messageTraceLists! {
                tmp.append(k.toMap())
            }
            map["MessageTraceLists"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageTraceLists") {
            self.messageTraceLists = dict["MessageTraceLists"] as! [QueryMqttTraceMessagePublishResponseBody.MessageTraceLists]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryMqttTraceMessagePublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMqttTraceMessagePublishResponseBody?

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
            var model = QueryMqttTraceMessagePublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMqttTraceMessageSubscribeRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var clientId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var mqttRegionId: String?

    public var msgId: String?

    public var pageSize: Int32?

    public var reverse: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqttRegionId != nil {
            map["MqttRegionId"] = self.mqttRegionId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("MsgId") {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
    }
}

public class QueryMqttTraceMessageSubscribeResponseBody : Tea.TeaModel {
    public class MessageTraceLists : Tea.TeaModel {
        public var action: String?

        public var actionCode: String?

        public var actionInfo: String?

        public var clientId: String?

        public var msgId: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.actionCode != nil {
                map["ActionCode"] = self.actionCode!
            }
            if self.actionInfo != nil {
                map["ActionInfo"] = self.actionInfo!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var messageTraceLists: [QueryMqttTraceMessageSubscribeResponseBody.MessageTraceLists]?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.messageTraceLists != nil {
            var tmp : [Any] = []
            for k in self.messageTraceLists! {
                tmp.append(k.toMap())
            }
            map["MessageTraceLists"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("MessageTraceLists") {
            self.messageTraceLists = dict["MessageTraceLists"] as! [QueryMqttTraceMessageSubscribeResponseBody.MessageTraceLists]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class QueryMqttTraceMessageSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMqttTraceMessageSubscribeResponseBody?

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
            var model = QueryMqttTraceMessageSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySessionByClientIdRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class QuerySessionByClientIdResponseBody : Tea.TeaModel {
    public var onlineStatus: Bool?

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
        if self.onlineStatus != nil {
            map["OnlineStatus"] = self.onlineStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OnlineStatus") {
            self.onlineStatus = dict["OnlineStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QuerySessionByClientIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySessionByClientIdResponseBody?

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
            var model = QuerySessionByClientIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTokenRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class QueryTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tokenStatus: Bool?

    public override init() {
        super.init()
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
        if self.tokenStatus != nil {
            map["TokenStatus"] = self.tokenStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TokenStatus") {
            self.tokenStatus = dict["TokenStatus"] as! Bool
        }
    }
}

public class QueryTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTokenResponseBody?

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
            var model = QueryTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshDeviceCredentialRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class RefreshDeviceCredentialResponseBody : Tea.TeaModel {
    public class DeviceCredential : Tea.TeaModel {
        public var clientId: String?

        public var createTime: Int64?

        public var deviceAccessKeyId: String?

        public var deviceAccessKeySecret: String?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deviceAccessKeyId != nil {
                map["DeviceAccessKeyId"] = self.deviceAccessKeyId!
            }
            if self.deviceAccessKeySecret != nil {
                map["DeviceAccessKeySecret"] = self.deviceAccessKeySecret!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var deviceCredential: RefreshDeviceCredentialResponseBody.DeviceCredential?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCredential != nil {
            map["DeviceCredential"] = self.deviceCredential?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCredential") {
            var model = RefreshDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshDeviceCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshDeviceCredentialResponseBody?

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
            var model = RefreshDeviceCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterCaCertificateRequest : Tea.TeaModel {
    public var caContent: String?

    public var caName: String?

    public var mqttInstanceId: String?

    public var verificationContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caContent != nil {
            map["CaContent"] = self.caContent!
        }
        if self.caName != nil {
            map["CaName"] = self.caName!
        }
        if self.mqttInstanceId != nil {
            map["MqttInstanceId"] = self.mqttInstanceId!
        }
        if self.verificationContent != nil {
            map["VerificationContent"] = self.verificationContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaContent") {
            self.caContent = dict["CaContent"] as! String
        }
        if dict.keys.contains("CaName") {
            self.caName = dict["CaName"] as! String
        }
        if dict.keys.contains("MqttInstanceId") {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("VerificationContent") {
            self.verificationContent = dict["VerificationContent"] as! String
        }
    }
}

public class RegisterCaCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sn: String?

    public override init() {
        super.init()
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
        if self.sn != nil {
            map["Sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") {
            self.sn = dict["Sn"] as! String
        }
    }
}

public class RegisterCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterCaCertificateResponseBody?

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
            var model = RegisterCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterDeviceCredentialRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class RegisterDeviceCredentialResponseBody : Tea.TeaModel {
    public class DeviceCredential : Tea.TeaModel {
        public var clientId: String?

        public var createTime: Int64?

        public var deviceAccessKeyId: String?

        public var deviceAccessKeySecret: String?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deviceAccessKeyId != nil {
                map["DeviceAccessKeyId"] = self.deviceAccessKeyId!
            }
            if self.deviceAccessKeySecret != nil {
                map["DeviceAccessKeySecret"] = self.deviceAccessKeySecret!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var deviceCredential: RegisterDeviceCredentialResponseBody.DeviceCredential?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCredential != nil {
            map["DeviceCredential"] = self.deviceCredential?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCredential") {
            var model = RegisterDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterDeviceCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDeviceCredentialResponseBody?

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
            var model = RegisterDeviceCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeTokenRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class RevokeTokenResponseBody : Tea.TeaModel {
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

public class RevokeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeTokenResponseBody?

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
            var model = RevokeTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mqttTopic: String?

    public var payload: String?

    public override init() {
        super.init()
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
        if self.mqttTopic != nil {
            map["MqttTopic"] = self.mqttTopic!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttTopic") {
            self.mqttTopic = dict["MqttTopic"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
    public var msgId: String?

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
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MsgId") {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageResponseBody?

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
            var model = SendMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnRegisterDeviceCredentialRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UnRegisterDeviceCredentialResponseBody : Tea.TeaModel {
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

public class UnRegisterDeviceCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnRegisterDeviceCredentialResponseBody?

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
            var model = UnRegisterDeviceCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
